 # Module 5 Linux
 
Task1. Part1

1) Log in to the system as root.
I used the command sudo -c but there is also the command sudo -i. 
  * sudo -i: brings the user to the session as root. This is similar to the su1 command, except that the password is required by the user, not root.
  * sudo -s: brings the user to the session as root, but the current directory does not change / root 2 but remains the same as before the command was invoked.
  
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part1_1.png)

2) Use the passwd command to change the password. Examine the basic parameters of the command. What system file does it change *?

![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/Part1_2.png)

  Files used by passwd:
  - /etc/passwd	User account information.
  - /etc/shadow	Secure user account information.
  - /etc/pam.d/passwd	PAM configuration for passwd.

3) Determine the users registered in the system, as well as what commands they execute. What additional information can be gleaned from the command execution?

![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part1_3.1.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part1_3.2.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part1_3.3.png)

- which users are currently active in the system
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part1_3.4.png)
The first line shows the system start time, the duration of its operation, the number of active users, as well as data on the average system load over the past 5 minutes

4) Change personal information about yourself.
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part1_4.png)

5) Become familiar with the Linux help system and the man and info commands. Get help on the previously discussed commands, define and describe any two keys for these commands. Give examples.
* man
  - previously discussed commands
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part1_5%20man.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part1_5%20man2.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part1_5%20man3.png)

   - the -k switch, which allows you to search for commands by keywords.
For example, I would like to learn to find commands for working with the network. I ran the command man -k network on the command line.
And I saw a list of commands in the help of which the word network is used.
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part1_5%20man%20%D1%81%20%D0%BA%D0%BB%D1%8E%D1%87%D0%BE%D0%BC.png)

  - man -h  displays help for command line options and exits.
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part1_5%20man4png.png)


* info 
  - previously discussed commands (this command displayed the same information as above in the screenshots)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part1_5%20info.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part1_5%20info%201.png)

  - command  info -a ls (It use all matching manuals and display them for a particular command)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part1_5%20info%20-a%20ls.png)

6) Explore the more and less commands using the help system. View the contents of files .bash* using commands.

![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part1_6%20info%20less.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part1_6%20info%20more.png)

![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part1_6%20bash.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part1_6%20less%20bashrc.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part1_6%20more%20bash_history.png)

7) * Describe in plans that you are working on laboratory work 1. Tip: You should read the documentation for the finger command.
  With the help of the vim editor, I added information to the file.
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part1_7.png)

8) * List the contents of the home directory using the ls command, define its files and directories. Hint: Use the help system to familiarize yourself with the ls command.
  commnad^ man ls
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part1_8%20man%20ls.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part1_8%20ls.png)
