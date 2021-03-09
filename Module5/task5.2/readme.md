Task2

1) Analyze the structure of the /etc/passwd and /etc/group file, what fields are present in it, what users exist on the system? Specify several pseudo-users, how to define them?
   
   - The / etc / passwd file contains important information that is required when logging in. In other words, it stores information about the user's account. 
/ Etc / passwd is a simple text file. It contains a list of system accounts, containing some useful information for each account, such as user ID, group ID, home directory, shell,and more. 
The / etc / passwd file must have general read permission as many command utilities use it to map user IDs to usernames. However, write access to / etc / passwd should only be 
limited to the superuser / root account
   - / Etc / group is a text file that defines the groups to which users belong on Linux and UNIX operating systems. In Unix / Linux, multiple users can be divided into groups. 
  Unix file system permissions are divided into three classes: user, group, and others. By using groups, you can delegate additional capabilities in an organized manner, such as access to disks, printers, and other peripherals. This method, among other things, also allows the superuser to delegate some administrative tasks to regular users
  
  ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.2/1%20etc-passwd.png)
  ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.2/etc-group.png)
  
Pseudo-users: bin, daemon, adm sync, shutdown, etc. They are determined by the shell (/sbin/nologin, /bin/sync, /sbin/shutdown).
  
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

6) How do I change the name (account name) of an existing user?
Сommand: sudo usermod -l 
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.2/6.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.2/6.1.png)

7) What is skell_dir? What is its structure?
      Skell_dir is a directory containing files to copy to a newly created custom directory.
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.2/7.png)

8) How to remove a user from the system (including his mailbox)?
  Command: userdel
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.2/8.png)

9) What commands and keys should be used to lock and unlock a user account?
      usermod -L test - block
      usermod -U test - unblock
      there is also a passwd command
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.2/9.png)

10) How to remove a user's password and provide him with a password-free login for subsequent password change?
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.2/10.png)

11) Display the extended format of information about the directory, tell about the information columns displayed on the terminal.
   Command: ls -l /var/
         1st column: object type and access rights for owner, owner group and other users.
         2nd column: number of hard links to the object.
         3rd column: owner.
         4th column: owner group.
         5th column: size in bytes.
         6th column: time of the last change.
         7th column: name.

![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.2/11.png)

12) What access rights exist and for whom (i. e., describe the main roles)? Briefly describe the acronym for access rights.
   There are rights:
   - read (r), allows to receive the contents of the file, but not write
   - write (w), allows you to write new data to a file or modify existing ones, and also allows you to create and modify files and directories
   - execution (x), we cannot execute the program if it has no execution flag.
Rights are set separately for the file owner (u), the owner's group (g) and other users (o).

13) What is the sequence of defining the relationship between the file and the user?
   1. Whether the user owns the file 
   2. Is the user a member of the file owner's group 
   3. Others

14) What commands are used to change the owner of a file (directory), as well as the mode of access to the file? Give examples, demonstrate on the terminal.
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.2/14.png)

   - read and execute for groups
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.2/14_1.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.2/14_3.png)

   - - change and execute for user
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.2/14_4.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.2/14_5.png)

   - To change the owner of a file:
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.2/14_6.png)

15) What is an example of octal representation of access rights? Describe the umask command.

   Umask - through a bitwise NOT, applies a mask \ prohibits setting the bit.
   Umask 0 - everything can be changed
   Umask 777 - prohibited
   
16) Give definitions of sticky bits and mechanism of identifier substitution. Give an example of files and directories with these attributes.

   Sticky bit - installed on a directory, while in this directory only its owner, or the owner of the directory, or root can delete a file. The directory is highlighted in the    ls output, and the file command displays that it is a sticky directory. An example of such a directory is / tmp.
   With the mechanism of identifier substitution, if SetUID or SetGID is set on the file, the file will be launched on behalf of its owner or group, respectively.
 
 17) What file attributes should be present in the command script?
 
 Must have read and execute permissions.
