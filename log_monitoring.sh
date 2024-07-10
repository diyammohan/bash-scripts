#!/bin/bash

# Configuration
LOG_FILES=("/var/log/auth.log")
ALERT_THRESHOLD=1
REPORT_FILE="/var/log/log_report.txt"

# Function to generate report
generate_report() {
    echo "Generating report..."
    echo "Intrusion Detection System Report - $(date)" > $REPORT_FILE
    echo "-------------------------------------------" >> $REPORT_FILE
    for FILE in "${LOG_FILES[@]}"; do
        echo "Log file: $FILE" >> $REPORT_FILE
        grep -i "authentication failure" $FILE >> $REPORT_FILE
        echo "" >> $REPORT_FILE
    done
    echo "Report generated at $REPORT_FILE"
}

# Main script
# Generate initial report
generate_report

# Keep the script running
while true; do
    sleep 60
    generate_report
done
