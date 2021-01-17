#!/bin/bash
cat access.log
cat access.log | grep -Eo '(http|https)://[^/"]+'
cat access.log | grep -Eo '(http|https)://[^/"]+' | sort -nr
cat access.log | grep -Eo '(http|https)://[^/"]+' | sort -nr | wc -l
cat access.log | grep -Eo '(http|https)://[^/"]+' | uniq -c | sort -nr| head -4
