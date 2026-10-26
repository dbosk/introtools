# Reporting from Canvas to LADOK

To report results from Canvas to LADOK we can run the following script:
```bash
#!/bin/bash

. ${HOME}/.profile

COURSE="datintro26"
COURSE_CODE="DD1301"
STUDENT=""
ASSIGN="()"
ASSIGN_GRPS="(LAB1)"
canvaslms results \
  -c "${COURSE}" \
  -A "${ASSIGN_GRPS}" \
  -u "${STUDENT}" \
  -S canvaslms.grades.conjunctavgsurvey \
| awk -F "\t" -v OFS="\t" -v code=$COURSE_CODE "{\$1=code; print}" \
| ladok -v report -f
```

This requires the `canvaslms` and `ladok3` Python packages:
```bash
pipx install canvaslms ladok3 # or update
canvaslms login
ladok login
```

