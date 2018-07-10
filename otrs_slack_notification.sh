#!/bin/bash

# This is a script to send a notification from OTRS to Slack.
# Create a new Generic Agent and select "TicketCreate" under event based events.
# Finally, put in the path to the script into the command box.

SLACK_WEBHOOK_URL="SLACK_WEBHOOK_URL"

SLACK_BOTNAME="OTRS"
SLACK_CHANNEL="#CHANNEL_NAME"

TICKET_NUMBER=$1
TICKET_ID=$2


link="https://otrs/index.pl?Action=AgentTicketZoom;TicketID=$TICKET_ID"


PAYLOAD="payload={\"channel\": \"${SLACK_CHANNEL}\", \"username\": \"${SLACK_BOTNAME}\", \"text\": \"*Ticket*: ${TICKET_NUMBER}\n${SERVICE_MESSAGE}*Link*:${link}\"}"



curl --connect-timeout 30 --max-time 60 -s -S -X POST --data-urlencode "${PAYLOAD}" "${SLACK_WEBHOOK_URL}"

