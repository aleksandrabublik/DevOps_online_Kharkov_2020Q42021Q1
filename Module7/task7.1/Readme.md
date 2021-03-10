  Linux administration with bash
  
    Task 7.1
    
A. Create a script that uses the following keys:
1. When starting without parameters, it will display a list of possible keys and their description.
2. The --all key displays the IP addresses and symbolic names of all hosts in the current subnet
3. The --target key displays a list of open system TCP ports.
The code that performs the functionality of each of the subtasks must be placed in a separate function

Script: 
  ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module7/task7.1/Screenshots/a_1.png)
  
2. The --all key displays:
  ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module7/task7.1/Screenshots/a_all.png)
  
3. The --target key displays:
  ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module7/task7.1/Screenshots/a_target.png)


B. Using Apache log example (name file example_log.log) create a script to answer the following questions:
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module7/task7.1/Screenshots/b_script.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module7/task7.1/Screenshots/b_script2.png)

1. From which ip were the most requests?
Command: grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" $1 | sort | uniq -c | sort -gr | head -n 1
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module7/task7.1/Screenshots/b_1.png)

2. What is the most requested page?
Command: awk '{print$7}' $1 | sort | uniq -c | sort -gr | head -n 1
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module7/task7.1/Screenshots/b_2.png)

3. How many requests were there from each ip?
Command: cut -d ' ' -f 1 $1 | sort | uniq -c| sort -gr 
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module7/task7.1/Screenshots/b_3.png)

4. What non-existent pages were clients referred to?
Command: grep "404" $1
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module7/task7.1/Screenshots/b_4.png)

5. What time did site get the most requests?
Command: grep "" $1 | cut -d[ -f2 | cut -d] -f1 | awk -F: '{print $2":00"}' | sort | uniq -c |sort -gr
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module7/task7.1/Screenshots/b_5.png)

6. What search bots have accessed the site? (UA + IP)
Command: awk '{print $16,$7}' $1 | grep [b,B]ot 1>&2 
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module7/task7.1/Screenshots/b_6.png)
