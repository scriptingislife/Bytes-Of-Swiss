#!/bin/bash

echo "Content-type: text/html"
echo ""

echo '<html>'
echo '<head>'
echo '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">'

PATH="/bin:/usr/bin:/usr/ucb:/usr/opt/bin"
export $PATH

echo '<title>System Uptime</title>'
echo '</head>'
echo '<body>'

echo '<h3>'
hostname
echo '</h3>'

uptime

echo '</body>'
echo '</html>'

exit 0
