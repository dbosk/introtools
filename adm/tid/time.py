import nytid.schedules.utils as utils

SIGNUP = {
        "DD1301": utils.google_sheet_to_csv_url(
            "https://docs.google.com/spreadsheets/d/1ac9xNFfUNsf0rXeWcgiHumNZb-7t9Ktcy_pOqCBLH3E/edit?usp=sharing")
        }

def to_hours(td):
    return td.total_seconds()/60/60

datintro = []

for course, url in SIGNUP.items():
    datintro += utils.read_signup_sheet_from_url(url)

print("# datintro")

h_per_student = utils.hours_per_student(datintro)

for event, hours in h_per_student.items():
    print(f"{event}: {to_hours(hours):.2f} h/student")

print(f"Booked: {to_hours(utils.total_hours(datintro)):.2f} h "
        f"({to_hours(utils.max_hours(datintro)):.2f} h)\n")


print("# Amanuenser")
amanuensis = utils.compute_amanuensis_data(datintro)
for user, data in amanuensis.items():
    if not user:
        continue
    print(f"{user}: {data[2]:.2f} h, "
          f"{100*utils.compute_percentage(*data):.1f}%: "
          f"{data[0].format('YYYY-MM-DD')}--{data[1].format('YYYY-MM-DD')}")

print()
print("# Hourly")
for user, hours in utils.hours_per_TA(datintro).items():
    if not user or user in amanuensis:
        continue
    print(f"{user}: {to_hours(hours):.2f} h")

