log_monitoring.sh is a simple Bash script that reads entries from /var/log/auth.log to find instances of 'authentication failure'. If such entries are found, they are written to the report. Report files are generated every 60 seconds.
To run the bash script, 
  1. Open a terminal
  2. Set the terminal path to the path of <filename.sh>
  3. use the command 'bash <filename.sh>' to run the bash file.

My next goal is to setup a mailutils and trigger an email whenever there is a new instance of 'authentication failure'.
