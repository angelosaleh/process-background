#!/usr/bin/sh

# This script is used to trigger selenium jar file in background mode, and remain idle
# if the jar file is running. Can be executed by using the command: "sh TriggerSeleniumJar.sh &"

no_instances_running=`ps -ef | grep -i "selenium.jar" | wc -l`

if [ "$no_instances_running" -gt 1 ]
then
 exit 0
else
 java -jar /usr/local/bin/selenium.jar > selenium_log_file &
 sleep 20
 exit 0
fi

