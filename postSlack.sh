#!/bin/sh

# postSlack.sh (チャンネル) (アイコン) (Bot名) (本文)

WEBHOOKURL="YOUR WEBHOOK URL"

DATA_PAYLOAD=`cat <<_EOT_
payload={ \
    "channel": "$1", \
    "icon_emoji": "$2", \
    "username": "$3", \
    "text": "$4" \
}
_EOT_`

curl -s -S -X POST --data-urlencode "${DATA_PAYLOAD}" "${WEBHOOKURL}" > /dev/null
