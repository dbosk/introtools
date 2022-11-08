import kthutils.ug
import os
from pprint import pprint
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

ug = kthutils.ug.UGsession(os.environ["KTH_LOGIN"], os.environ["KTH_PASSWD"])

members = []

for user in utils.hours_per_TA(datintro):
    user_data = ug.find_user_by_username(user)
    if len(user_data) > 1:
        pprint(user_data)
        continue
    members.append(user_data[0]["kthid"])

group = next(ug.find_group_by_name("edu.courses.DD.DD1301.20222.1.assistants"))
ug.set_group_members(members, group["kthid"])

