#!/bin/bash
# Script to tell the time every minute using espeak

# Create a shell script for telling the time
tell_time_script="/path/to/tell_time.sh"

# Check if the tell_time.sh script already exists; if not, create it
if [ ! -f "$tell_time_script" ]; then
    echo "#!/bin/bash" > "$tell_time_script"
    echo 'current_time=$(date +"%I:%M %p")' >> "$tell_time_script"
    echo 'espeak "The time is $current_time"' >> "$tell_time_script"
    chmod +x "$tell_time_script"
fi

# Add a cron job to run the tell_time.sh script every minute
(crontab -l ; echo "* * * * * $tell_time_script") | crontab -

echo "Cron job to tell the time every minute has been set."
