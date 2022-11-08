import csv
import nytid.schedules.utils as utils
import sys

SIGNUP = {
        "DD1301": utils.google_sheet_to_csv_url(
            "https://docs.google.com/spreadsheets/d/1ac9xNFfUNsf0rXeWcgiHumNZb-7t9Ktcy_pOqCBLH3E/edit?usp=sharing")
        }

def to_hours(td):
    return td.total_seconds()/60/60

datintro = []

for course, url in SIGNUP.items():
    datintro += utils.read_signup_sheet_from_url(url)

amanuensis = utils.compute_amanuensis_data(datintro, low_percentage=0.01)
others = utils.hours_per_TA(datintro).items()

out = csv.writer(sys.stdout, delimiter="\t")

for user, data in amanuensis.items():
    if not user:
        continue
    out.writerow([
        user,
        round(data[2]*150),
        data[0].format('YYYY-MM-DD'),
        data[1].format('YYYY-MM-DD')
    ])

for user, hours in others:
    if not user or user in amanuensis:
        continue
    out.writerow([user, round(to_hours(hours)*150)])

