#!/bin/sh

find . -type f | grep "200[5678]-0[678]" | xargs cat
