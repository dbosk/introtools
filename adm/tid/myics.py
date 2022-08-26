import arrow
import ics.icalendar
import nytid.schedules as sched
import nytid.schedules.utils as utils
import os
import sys

COURSES = {
        "DD1301":
        "https://cloud.timeedit.net/kth/web/public01/ri.ics?sid=7&p=0.w%2C12.n&objects=453078.10%2C203482.9%2C203489&e=220813&enol=t&ku=29&k=525C9D88748D006E2E700F1600C9BE1D9B3"
        }

SIGNUP = {
        "DD1301": utils.google_sheet_to_csv_url(
            "https://docs.google.com/spreadsheets/d/1ac9xNFfUNsf0rXeWcgiHumNZb-7t9Ktcy_pOqCBLH3E/edit#gid=0")
        }

def generate_schedule():
    """Generates schedule, uses sys.args or USER environment variable, returns 
    schedule as ics.icalendar.Calendar object"""

    schedule_csv = []

    for course, url in SIGNUP.items():
        schedule_csv += utils.read_signup_sheet_from_url(url)

    if len(sys.argv) < 2:
        user = os.environ["USER"]
    else:
        user = sys.argv[1]

    schedule_csv = utils.filter_events_by_TA(user, schedule_csv)

    schedule = ics.icalendar.Calendar()
    schedule.events |= set(map(utils.EventFromCSV, schedule_csv))

    return schedule


def main():
    """Main program"""
    print(generate_schedule())


if __name__ == "__main__":
    main()
