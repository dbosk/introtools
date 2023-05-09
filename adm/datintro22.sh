#!/bin/bash

source ~/.credentials

# Setup
for year in 21 22; do
  COURSE_CODE_ORG="${COURSE_CODE_ORG} DD1301.?HT${year}:datintro${year}"
  COURSE_CODE_ORG="${COURSE_CODE_ORG} DD1337.?HT${year}:dd1337-ht${year}-intro"
done

export COURSE_CODE COURSE_CODE_ORG

if [[ -n "$*" ]]; then
  docker run -it \
    -e KRB_USER -e KRB_PASS \
    -e CANVAS_SERVER -e CANVAS_TOKEN \
    -e REPOBEE_USER -e REPOBEE_URL -e REPOBEE_TOKEN \
    -e COURSE_CODE -e COURSE_CODE_ORG \
      datintro22-setup:latest $*
else
  docker run \
    -e KRB_USER -e KRB_PASS \
    -e CANVAS_SERVER -e CANVAS_TOKEN \
    -e REPOBEE_USER -e REPOBEE_URL -e REPOBEE_TOKEN \
    -e COURSE_CODE -e COURSE_CODE_ORG \
      datintro22-setup:latest
fi

# Grading
COURSE_CODE="DD1301.?HT2[0-2] DD1337.?HT2[0-2]"

for year in 20 21 22; do
  COURSE_CODE_ORG="${COURSE_CODE_ORG} DD1301.?HT${year}:datintro${year}"
  COURSE_CODE_ORG="${COURSE_CODE_ORG} DD1337.?HT${year}:dd1337-ht${year}-intro"
done

export COURSE_CODE COURSE_CODE_ORG

# Reporting to LADOK
courses="DD1301.?HT2[0-2]"
components="LAB1"

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
      datintro22-grade:latest $*
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
      sed -E "s/ ?[HV]T[0-9]*[^\t]*//" | \
      ladok report -fv
  fi
fi

echo "-> Finished $(date)" >> $LOG_FILE
