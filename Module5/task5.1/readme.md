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


Task1. Part2

1) Examine the tree command. Master the technique of applying a template, for example, display all files that contain a character c, or files that contain a specific sequence of characters. List subdirectories of the root directory up to and including the second nesting level.
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part2_1%20tree.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part2_1%20c.png)
![alt text (https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part2_1%20%D0%BF%D0%BE%D0%B4%D0%BA%D0%B0%D1%82%D0%B0%D0%BB%D0%BE%D0%B3%D0%B8%20%D0%B2%D1%82%D0%BE%D1%80%D0%BE%D0%B3%D0%BE%20%D1%83%D1%80%D0%BE%D0%B2%D0%BD%D1%8F.png)

2) What command can be used to determine the type of file (for example, text or binary)? Give an example.
You can determine the file type using the command -> file
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part2_2.png)

3) Master the skills of navigating the file system using relative and absolute paths. How can you go back to your home directory from anywhere in the filesystem?
 You can return to the home directory from anywhere in the file system with the command cd without parameters.
 
4) Become familiar with the various options for the ls command. Give examples of listing directories using different keys. Explain the information displayed on the terminal using the -l and -a switches.

 command ls -al -> this command shows file creation date, size, owner, permission
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part2_4%20ls2.png)

 сommand ls / -> look at the contents of the root folder
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part2_4%20ls2.png)

 сommand ls -a -> displays all files, including hidden ones (these are those in front of the name with a dot)
 ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part2_4%20ls%20apng.png)
 
  command ls -l -> displays a detailed list, which will display the owner, group, creation date, size and other parameters
 ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part2_4%20ls%20l.png)
 
 5) Perform the following sequence of operations: - create a subdirectory in the home directory; - in this subdirectory create a file containing information about directories located in the root directory (using I/O redirection operations);
  ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part2_5.png)
  
  - view the created file;
   ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part2_5%20view%20filepng.png) 
   
  - copy the created file to your home directory using relative and absolute addressing.
   ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part2_5%20cp.png)
   
  - delete the previously created subdirectory with the file requesting removal;
  - delete the file copied to the home directory.
  ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part2_5%20rm.png)
  
  6) Perform the following sequence of operations:
  - create a subdirectory test in the home directory;
  - copy the .bash_history file to this directory while changing its name to labwork2;
   ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part2_6.png)
  - create a hard and soft link to the labwork2 file in the test subdirectory;
   ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part2_6%20%D1%81%D0%BE%D0%B7%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5%20%D0%B6%D0%B5%D1%81%D1%82%D0%BA%D0%BE%D0%B9%20%D1%81%D1%81%D1%8B%D0%BB%D0%BA%D0%B8.png)
     ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part2_6%20%D1%81%D0%BE%D0%B7%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5%20%D0%BC%D1%8F%D0%B3%D0%BA%D0%BE%D0%B9%20%D1%81%D1%81%D1%8B%D0%BB%D0%BA%D0%B8%20%D0%B8%20%D0%B8%20%D0%B2%D0%B8%D0%BC.png)
  - how to define soft and hard link, what do these concepts;
   The soft link is highlighted in blue. A soft link or symbolic link creates a pointer to the file name, not to the data area, essentially a shortcut.
   A hard link creates another record in the file system that refers to the same data area on disk as the original file.
  - change the data by opening a symbolic link. What changes will happen and why
    I opened a link, but the file that the link refers to has changed
  - rename the hard link file to hard_lnk_labwork2;
  - rename the soft link file to symb_lnk_labwork2 file;
   ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part2_6%20%D0%BF%D0%B5%D1%80%D0%B5%D0%B8%D0%BC%D0%B5%D0%BD%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5.png)
  - then delete the labwork2. What changes have occurred and why? When deleted, the link remained and it is invalid
  ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part2_6%20delete.png)
  
  7) Using the locate utility, find all files that contain the squid and traceroute sequence.
   Using the locate utility:
  ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part2_7.png)
  
  8) Determine which partitions are mounted in the system, as well as the types of these partitions.
  ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part2_8png.png)
  
  9) Count the number of lines containing a given sequence of characters in a given file.
  
  ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part2_9.png)
  
  10) Using the find command, find all files in the /etc directory containing the host character sequence
  
   ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part2_10.png)
  
  11) List all objects in /etc that contain the ss character sequence. How can I duplicate a similar command using a bunch of grep?
    ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part2_11.png)
    
  12) Organize a screen-by-screen print of the contents of the /etc directory. Hint: You must use stream redirection operations.
  Сommand: ls -al /etc | less
   ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part2_12%20.png)
   ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part2_12%20command.png)
   
   13) What are the types of devices and how to determine the type of device? Give examples.
   Device types are: Symbolic and Block.
   
   14) How to determine the type of file in the system, what types of files are there?
   ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part2_14.png)
  
  15) * List the first 5 directory files that were recently accessed in the /etc directory.
   ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.1/part2_15.png)
