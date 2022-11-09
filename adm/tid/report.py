import arrow
import csv
import nytid.schedules as sched
import nytid.schedules.utils as utils
import operator
import sys

def to_hours(td):
    return td.total_seconds()/60/60

def summarize_user(user, course_events):
    csvout = csv.writer(sys.stdout)

    hours = to_hours(utils.hours_per_TA(course_events)[user])

    csvout.writerow([f"{user}@kth.se", "Total (inkl förberedelsetid): ",
                     f"{round(hours, 2)} h", f"{round(hours*150)} kr"])

    start_idx = utils.SIGNUP_SHEET_HEADER.index("Start")
    end_idx = utils.SIGNUP_SHEET_HEADER.index("End")
    type_idx = utils.SIGNUP_SHEET_HEADER.index("Event")

    events = utils.filter_events_by_TA(user, sorted(course_events,
            key=operator.itemgetter(start_idx)))
    events = filter(lambda x: user in utils.get_booked_TAs_from_csv(x)[0], 
                    events)
    events = list(map(lambda x: x[0:len(utils.SIGNUP_SHEET_HEADER)] + [user], 
                      events))

    for event, hours in utils.hours_per_event(events).items():
        csvout.writerow(["", event, f"{round(to_hours(hours), 2)} h"])

    csvout.writerow([])

    for event in events:
        csvout.writerow(["", event[start_idx].split()[0], event[type_idx]])

    csvout.writerow([])
    csvout.writerow([])


SIGNUP = {
        "DD1301": utils.google_sheet_to_csv_url(
            "https://docs.google.com/spreadsheets/d/1ac9xNFfUNsf0rXeWcgiHumNZb-7t9Ktcy_pOqCBLH3E/edit?usp=sharing")
        }

datintro = []

for course, url in SIGNUP.items():
    datintro += utils.read_signup_sheet_from_url(url)

csvout = csv.writer(sys.stdout)
csvout.writerow(["Tidrapport"])
csvout.writerow([])

for user in utils.hours_per_TA(datintro):
    summarize_user(user, datintro)

csvout.writerow([])
csvout.writerow(["Kontering:"])
csvout.writerow([])
csvout.writerow([])
csvout.writerow([])
csvout.writerow([])
csvout.writerow([])
csvout.writerow([])
csvout.writerow([])
csvout.writerow(["Signatur", "Avdelningschef", "", "Kursansvarig"])
