#!/bin/bash -
# utility to show all chars of a script, limited to 2000 characters

Usage() { echo "$0 FontFile"; exit 1; }
SayError() { local error=$1; shift; echo "$0: $@"; exit "$error"; }

[ "$#" -ne 1 ] && Usage

width=70
fontfile="$1"

[ -f "$fontfile" ] || SayError 4 'File not found'

list=$(fc-query --format='%{charset}\n' "$fontfile")

output=""
char_count=0
max_chars=30000

for range in $list; do
    IFS=- read start end <<<"$range"
    if [ "$end" ]; then
        start=$((16#$start))
        end=$((16#$end))
        for ((i=start; i<=end; i++)); do
            printf -v char '\\U%x' "$i"
            output+="$(printf '%b' "$char  ")"
            char_count=${#output}
            if [ "$char_count" -ge "$max_chars" ]; then
                break 2
            fi
        done
    else
        output+="$(printf '%b' "\\U$start  ")"
        char_count=${#output}
        if [ "$char_count" -ge "$max_chars" ]; then
            break
        fi
    fi
done

echo "${output:0:max_chars}" | grep -oP '.{'"$width"'}'
