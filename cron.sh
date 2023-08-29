#!/bin/bash

# Simulate scheduling a job using cron
echo "* * * * * /usr/bin/echo 'Cron job executed'" > /tmp/cron_job
crontab /tmp/cron_job
rm /tmp/cron_job

# Simulate scheduling a job using at
echo '/usr/bin/echo "At job executed"' | at now + 1 minute
