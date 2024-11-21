# whoareyou.sh

## Overview
This script, along with an alias, provides a convenient way to generate detailed user reports on a Linux system.

## Creating the Script
### 1. Create the Script File:
Create a new file named user_report.sh and paste the code within the GitHub repo file `whoareyou.sh`...
```
:~$ vim whoareyou.sh
```
...Save and exit VIM.

### 2. Make the Script Executable:
```
chmod +x user_report.sh
```

### 3. Creating the Alias
Edit Your Bash Configuration File...

Open your .bashrc file in a text editor:
```
nano ~/.bashrc
```
...Add the Alias to your .bashrc file:
```
alias whoareyou="bash /path/to/your/script/whoareyou.sh'
```
...Replace /path/to/your/script with the actual path to your script.

### 4.Source the Configuration:
To make the alias effective in your current terminal session, run:
```
source ~/.bashrc
```
... Or Simply close and reopen Teriminal.

Using the Alias
Now, you can type whoareyou username in your terminal to execute the script and generate a report for the specified user.

Example:

```
:~$ whoareyou
Which user? type_user_here
```

This will run the script and provide a detailed report for the user "john_doe".

## Screenshot
![Screenshot of the running the command whoareyou and the report.](https://github.com/tim-andes/whoareyou.sh/blob/main/whoareyou.png)
