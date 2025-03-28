#!/bin/sh

session=`loginctl session-status | head -n 1 | awk '{print $1}'`
echo session is $session.
echo attempting logout now...
#session=`loginctl session-status | awk 'NR==1{print $1}'`
#status=`loginctl terminate-session $session`
status=`loginctl kill-session $session`
echo got status $status
