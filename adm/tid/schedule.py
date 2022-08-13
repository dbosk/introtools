import arrow
import ics.icalendar
import nytid.schedules as sched
import nytid.schedules.utils as utils
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
    """Generates schedule, uses sys.args, returns schedule
    as ics.icalendar.Calendar object"""

    schedule = ics.icalendar.Calendar()

    if len(sys.argv) > 1:
        schedule.events |= set(map(utils.EventFromCSV,
                utils.read_signup_sheet_from_url(SIGNUP[sys.argv[1]])))
    else:
        for course, url in SIGNUP.items():
            schedule.events |= set(map(utils.EventFromCSV,
                utils.read_signup_sheet_from_url(url)))

    return schedule


def main():
    """Main program"""
    schedule = generate_schedule()

    first = True
    time_limit = arrow.get(2022, 8, 29).shift(weeks=+4)

    for event in schedule.timeline:
        if first:
            first = False
            current_week = event.begin.isocalendar()[1]
        elif event.begin.isocalendar()[1] != current_week:
            current_week = event.begin.isocalendar()[1]
            print()

        """
        if event.begin > time_limit:
            break
        """

        print(sched.format_event_short(event))


if __name__ == "__main__":
    main()
