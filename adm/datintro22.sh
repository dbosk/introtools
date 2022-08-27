#!/bin/bash

export CANVAS_SERVER="https://canvas.kth.se"
export CANVAS_TOKEN=""

KTH_LOGIN="dbosk"
KTH_PASSWD=""

LADOK_USER=${KTH_LOGIN}
LADOK_PASS="${KTH_PASSWD}"

KRB_USER=${KTH_LOGIN}@KTH.SE
KRB_PASS="${KTH_PASSWD}"

export KTH_LOGIN KTH_PASSWD LADOK_USER LADOK_PASS KRB_USER KRB_PASS

export REPOBEE_USER=dbosk
export REPOBEE_URL=https://gits-15.sys.kth.se/api/v3
export REPOBEE_TOKEN=""

COURSE_CODE="DD1301.?HT[2-9][1-9] DD1337.?HT[2-9][1-9]"
COURSE_CODE_ORG="DD1301.?HT22:datintro22 DD1337.?HT22:dd1337-ht22-intro"

export COURSE_CODE COURSE_CODE_ORG

courses="DD1301.?HT2[1-9]"
components="LAB1"

bash datintro-setup.sh

LOG_FILE="/afs/kth.se/home/d/b/dbosk/public_html/datintro/grader.log"
mkdir -p $(dirname $LOG_FILE)

echo -n "Started grading $(date) " >> $LOG_FILE

if [[ -n "$1" ]]
then
	docker run -it \
	  -e KRB_USER -e KRB_PASS \
	  -e CANVAS_SERVER -e CANVAS_TOKEN \
	  -e REPOBEE_USER -e REPOBEE_URL -e REPOBEE_TOKEN \
    -e COURSE_CODE -e COURSE_CODE_ORG \
    -v /afs:/afs \
      datintro22-grade:latest /bin/bash
else
  out="$(docker run \
	  -e KRB_USER -e KRB_PASS \
	  -e CANVAS_SERVER -e CANVAS_TOKEN \
	  -e REPOBEE_USER -e REPOBEE_URL -e REPOBEE_TOKEN \
    -e COURSE_CODE -e COURSE_CODE_ORG \
	  -v /afs:/afs \
      datintro22-grade:latest)"
  if [ -n "$out" ]; then
    echo "$out"
    echo
    echo "LADOK:"
    canvaslms results -c "$courses" -A "$components" | \
      sed -E "s/ ?[HV]T[0-9]*[^\t]*//" \
      ladok report -fv
  fi
fi

echo "-> Finished $(date)" >> $LOG_FILE
