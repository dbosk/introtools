# Reporting from Canvas to LADOK

To report results from Canvas to LADOK we can run the following script:
```bash
#!/bin/bash

. ${HOME}/.profile

year=21
courses="DD1301HT${year}[0-9]?"
components="LAB1"

canvaslms results -c "$courses" -A "$components" | \
  sed -E "s/[HV]T${year}[0-9]?//" | \
  ladok report -fv
```

This requires the `canvaslms` and `ladok3` Python packages:
```bash
python3 -m pip install --upgrade canvaslms ladok3
canvaslms login
ladok login
```
