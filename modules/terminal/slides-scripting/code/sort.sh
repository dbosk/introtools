#!/bin/sh

year=$1

mkdir $year
mv $year-* $year
cd $year

mkdir summer
mv $year-06-* $year-07-* $year-08-* summer

mkdir autumn
mv $year-09-* $year-10-* $year-11-* autumn

mkdir winter
mv $year-12-* $year-01-* $year-02-* winter

mkdir spring
mv $year-03-* $year-04-* $year-05-* spring
