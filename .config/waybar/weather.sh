#!/bin/sh

[ ! -f /tmp/weather.json ] && curl -s "https://wttr.in/?format=j1" > /tmp/weather.json
TIME=$(echo $(($(date +%H)/3)))
DATE=$(date +"%Y-%m-%d")

TEMPERATURE=$(jq -r --arg date $DATE --arg time $TIME '.weather.[] | select(.date==$date).hourly.[$time|tonumber].tempC' /tmp/weather.json)
DESCRIPTION=$(jq -r --arg date $DATE --arg time $TIME '.weather.[] | select(.date==$date).hourly.[$time|tonumber].weatherDesc.[].value' /tmp/weather.json)

TOOLTIP="\
Temp: $TEMPERATURE\n\
Desc: $DESCRIPTION\
"

CLASS=$(echo $DESCRIPTION | tr '[:upper:]' '[:lower:]' | tr -d ' ')
[ $TIME -gt 5 ] && CLASS="$CLASS-night"

echo "{\"text\":\"$TEMPERATURE\", \"tooltip\":\"$TOOLTIP\", \"class\":\"$CLASS\"}"
