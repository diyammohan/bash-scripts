1. log_monitoring.sh is a simple Bash script that reads entries from /var/log/auth.log to find instances of 'authentication failure'. If such entries are found, they are written to the report. Report files are generated every 60 seconds.
2. To run the bash script, 
   a. Open a terminal
   b. Set the terminal path to the path of <filename.sh>
   c. use the command 'bash <filename.sh>' to run the bash file.
3. The function generate_report() uses a for loop to iterate through all files in the LOG_FILES variable. This means that when initializing, we can add multiple files to LOG_FILES. By doing this, we can check for error messages in multiple files simultaneously
4. My next goal is to setup a mailutils and trigger an email whenever there is a new instance of 'authentication failure'.
