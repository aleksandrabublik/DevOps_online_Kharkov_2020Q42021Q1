  TASK5.3

Part1

1. How many states could has a process in Linux?
  Process could have following states :
  - created
  - ready
  - waiting
  - running
  - terminated
  
  2. Examine the pstree command. Make output (highlight) the chain (ancestors) of the current process.
  
  ![alt text]()
  
  3. What is a proc file system?
  The / proc filesystem stores information about running processes. There are subdirectories in / proc with names corresponding 
  to the process pids. Each of these directories stores different things about the process, such as links to the executable file and the current directory of the process.
  Such utilities as w, ps, top use this info.
  
  4. Print information about the processor (its type, supported technologies, etc.).
  Here is information about CPU, used by current OS:
  ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.3/4.png)
  
  5. Use the ps command to get information about the process. The information should be as follows: the owner of the process, the arguments with which the process was launched for execution, 
  the group owner of this process, etc.
      ps -> displays processes for the current shell
      ps -A -> display every active process on a Linux system
   ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.3/5.1.png)
   ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.3/5.2.png)
   ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.3/5.3.png)
    
  6. How to define kernel processes and user processes?
  
      Kernel processes - such processes, launched on system boot by Linux os kernel. Their priority cannot be increased and they are managed by OS. They have also low pid values, as they were created just after init (pid=1) process start. They are shown in ps output command in square brackets.
      
      User processes - such processes, launched by user manually or automatically and could be controlled by user (change priority, start/kill, halt).
      
  7. Print the list of processes to the terminal. Briefly describe the statuses of the processes. What condition are they in, or can they be arriving in?
  
  command: ps aux
  
    a show processes for all users
    
    u show the user or owner of the process
    
    x also show processes not connected to the terminal
    
 ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.3/7.1.png)
 ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.3/7.2.png)
    
   Processes can be in the following states:
   
D - uninterruptible suspension (usually on I / O)

R - running or in the queue to run

S - interrupted suspend

X - completed process

Z - zombie process

A process can be in a running state (R) and then go to an intermittent sleep state (S) while it is waiting for an event to complete. If he is busy with I / O, he may be in continuous sleep (D). After completing the I / O operations, it will return to work. If sigterm / sigkill is sent, it stops (T), if the process is killed (finished) but not received by its parent, it becomes a zombie (Z).
    
   8. Display only the processes of a specific user.
To show only specific users' processes, issued ps -eu osboxes
 ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.3/8.1.png)
 ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.3/8.2.png)
 
   9. What utilities can be used to analyze existing running tasks (by analyzing the help for the ps command)?
  Utilities like top, htop, pstree can be also used with ps.
   10. What information does top command display?
  The top command displays information about processes in real time, similar to the information displayed by the ps command. Once launched, it does not exit immediately, but changes its output as the state of the processes changes.
  The top util provides info about:
  
    - amount of tasks (total, running, sleeping, stopped, zombie)
  
    - used resources (memory, Cpu) with detailisation
  
    - user, owning process
  
    - pid
  
    - process state
  
    - priority and niceness of process
  
    - time usage
  
    - process command
  
    - average load on pc (long ago, 15 minutes ago and current)
    
  11. Display the processes of the specific user using the top command.
process, owned by specific user (top -U osboxes command), where "misha" - name of user:
 ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.3/11.png)
 
 12.  What interactive commands can be used to control the top command? Give a couple of examples.
 
 m -> command toggles output style of memory usage (numberic/graphic)
  ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.3/12_m.png)
 
 h -> help
   ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.3/12_h.png)
   
 z -> command toggles output style of table (changes color)
    ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.3/12_z.png)
 
n -> setting the number of displayed processes
     ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.3/12_n.png)
     
F -> setting fields with information about processes
  ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.3/12_F.png)

q -> exit
 
  13. Sort the contents of the processes window using various parameters (for example, the amount of processor time taken up, etc.)
  
  To sort by time usage, I used T command.
 ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.3/13.png)
 
 14. Concept of priority, what commands are used to set priority?

The priority of a process determines how intensively this process will use CPU time. The priority is specified by a number from -20 (highest priority) to +19 (lowest priority). The nice and renice commands are used to set the priority. nice - launches a process with a specific priority. renice - changes the priority of a running process.
 
 15. Can I change the priority of a process using the top command? If so, how?
 
 Can be changed using the r command interactively. After issuing it, user will be prompted for a PID and then the value to nice it to. I typed r and number of PID (24818) and nice value (5). A positive nice value will cause a process to lose priority
 
   ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.3/15.png)
   
  16. Examine the kill command. How to send with the kill command process control signal? Give an example of commonly used signals.
  
  ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.3/16.png)
  
  17. Commands jobs, fg, bg, nohup. What are they for? Use the sleep, yes command to demonstrate the process control mechanism with fg, bg.
  
    - jobs - displays a list of jobs started from the current shell
    - bg - puts the specified task in the background
    - fg - Brings the specified task out of the background
  ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.3/17.png)
  
  
  `Part2
 
 1. Check the implementability of the most frequently used OPENSSH commands in the MS Windows operating system. (Description of the expected result of the commands + screenshots: command – result should be presented)
 
 Checked the implementability of the most frequently used OPENSSH commands in the MS Windows operating system. Windows 10 ssh client is installed by default
 
    ssh It should output list of available options, or if provided address, port, identity, connect to remote host and show it's initial greeting for user logged in Util works as in Linux, however sshd_config should be modified by adding this setting.
  ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.3/part2_1_1.png)
  
    Then I accessed our ssh current server on vm (over local network and virtualbox nat)
    ssh-keygen This util works as in Linux: I mentioned type of key algorithm used (RSA) and path to identity file to store new key. I've copied generated key manually to .authorized_keys file on server.
    scp This copy util also works as in Linux: it uses the same options and copies file to remote system over SSH connection.
  ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.3/part2_1_2.png)
 
  ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.3/part2_1_3.png)
  
2. Implement basic SSH settings to increase the security of the client-server connection (at least 
Implemented basic SSH settings to increase the security of the client-server connection (edited /etc/ssh_config.swp and provided following values for next params):

![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.3/part2_2.png)
3. List the options for choosing keys for encryption in SSH. Implement 3 of them.

Here are options for choosing keys for encryption in SSH: ssh-keygen [-q] [-b bits] [-t dsa | ecdsa | ed25519 | rsa | rsa1]
DSA, ECDSA, ED25519, RSA, RSA1 are available for implementation. Implemented DSA, RSA, ED25519 options

 ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.3/part2_3_1.png)
  ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.3/part2_3_2.png)

4. Implement port forwarding for the SSH client from the host machine to the guest Linux virtual machine behind NAT.
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.3/part2_4_rule.png)

![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module5/task5.3/part2_4.png)

5*. Intercept (capture) traffic (tcpdump, wireshark) while authorizing the remote client on the server using ssh, telnet, rlogin. Analyze the result.
  
SSH is more efficient and secure then telnet, rlogin, because of encryption and performance.

