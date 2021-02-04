Task2

1) Analyze the structure of the /etc/passwd and /etc/group file, what fields are present in it, what users exist on the system? Specify several pseudo-users, how to define them?
   
   - The / etc / passwd file contains important information that is required when logging in. In other words, it stores information about the user's account. 
/ Etc / passwd is a simple text file. It contains a list of system accounts, containing some useful information for each account, such as user ID, group ID, home directory, shell,and more. 
The / etc / passwd file must have general read permission as many command utilities use it to map user IDs to usernames. However, write access to / etc / passwd should only be 
limited to the superuser / root account
   - / Etc / group is a text file that defines the groups to which users belong on Linux and UNIX operating systems. In Unix / Linux, multiple users can be divided into groups. 
  Unix file system permissions are divided into three classes: user, group, and others. By using groups, you can delegate additional capabilities in an organized manner, such as 
  access to disks, printers, and other peripherals. This method, among other things, also allows the superuser to delegate some administrative tasks to regular users
  
  ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.2/1%20etc-passwd.png)
  ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.2/etc-group.png)
  
2) What are the uid ranges? What is UID? How to define it?
  UID - User ID (number / number assigned to each Linux user).
  It can be determined by / etc / passwd, the id command.
 
 UID ranges:
  - UID 0 (zero) is reserved for the root.
 - UIDs 1–99 are reserved for other predefined accounts.
 - UID 100–999 are reserved by system for administrative and system accounts/groups.
 - UID 1000–10000 are occupied by applications account.
 - UID 10000+ are used for user accounts.
 - 65534 - nobody
3) What is GID? How to define it?

 GID - group identifier. It can be determined by the files / etc / passwd, / etc / groups, the commands id and groups.
Groups in Linux are defined by GIDs (group identifiers).
  - GID 0 (zero) is reserved for the root group.
  - GIDs 1–99 are reserved for system and application use.
  - GID 100+ is allocated to a user group.
  ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.2/2-3.png)

4) How to determine belonging of user to the specific group?

Command: groups username

You can count the number of groups a Linux user belongs to:
    groups | wc -w
    
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.2/4.png)

5) What are the commands for adding a user to the system? What are the basic parameters required to create a user?

useradd, adduser

Basic parameters: username, uid, gid, home directory, shell.

![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.2/5.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.2/5.1.png)

6)
