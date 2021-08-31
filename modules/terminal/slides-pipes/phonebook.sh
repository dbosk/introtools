sort -t , -k 3 names.csv > names-sorted.csv
sort -t , -k 1 phone.csv > phone-sorted.csv
join -1 3 -2 1 -t , names-sorted.csv phone-sorted.csv | \
  cut -d , -f 2,3,4 | sort -t , -k 2
rm names-sorted.csv phone-sorted.csv
