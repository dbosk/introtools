import nytid.schedules.utils as utils

COURSES = {
        "DD1301":
        "https://cloud.timeedit.net/kth/web/public01/ri.ics?sid=7&p=0.w%2C12.n&objects=453078.10%2C203482.9%2C203489&e=2208&ku=29&k=92B95E594BB7182FC764771D658323B4"
        }

def to_hours(td):
    return td.total_seconds()/60/60

def needed_TAs(event):
    if "aboration" in event.name:
        return len(event.location.split(", ")) * 4
    return utils.needed_TAs(event)

for course, url in COURSES.items():
    utils.generate_signup_sheet(course, url, needed_TAs)

