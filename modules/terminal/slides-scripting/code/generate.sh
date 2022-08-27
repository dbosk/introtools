#!/bin/sh

mkdir -p tmp-reports
cd tmp-reports

for i in $(seq 1 9); do
  for j in $(seq 1 12); do
    for k in $(seq 1 30); do
      if test "$(echo -n $j | wc -c)" -lt 2; then
        month="0$j"
      else
        month="$j"
      fi
      if test "$(echo -n $k | wc -c)" -lt 2; then
        day="0$k"
      else
        day="$k"
      fi
      echo "data 200$i-$month-$day" > 200$i-$month-$day.txt
    done
  done
done
