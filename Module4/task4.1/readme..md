
 # Module 4 Networking Fundamentals
 TASK 4.1
1. Зібрати наступний проект, який містить в собі: 4 ПК типу PC-PT, Концентратор (Hub-PT). Кожен комп'ютер повинен бути з'єднаний з концентратором за допомогою крученої пари (Copper Straight-through).

2. Зберегти проект і його скріншот.
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module4/task4.1/1_Cisco.png)

3. Кожному ПК привласнити унікальну IP адресу. Для її призначення необхідно зайти в меню конфігурації ПК шляхом одноразового клацання по ньому лівою кнопкою миші і вибору вкладки Config / Interface. В полі ip address необхідно ввести відповідну адресу, а в полі Subnet Mask - відповідно цьому адресу маску.

 Значення IP адреси для кожної машини наведені в таблиці:
  - PC0 -> 192.168.0.1
  - PC1 -> 192.168.0.2
  - PC2 -> 192.168.0.3
  - PC3 -> 192.168.0.4
  
 Значення маски для адреси: 255.255.255.0.
 
4. Перевірити працездатність отриманої мережі шляхом здійснення Інтернет запитів (ICMP пакетів) від одного ПК до іншого. Для присвоєння такого пакета ПК використовуйте кнопку ADD SIMPLE PDU в правій частині робочого вікна. Після цього клацніть лівою кнопкою миші на локальну машину-джерело, потім - на машину-одержувача. Перевірити працездатність мережі.

5. Перейти в режим Simulation і за допомогою кнопки Event List викликати вікно відображення подій в мережі Simulation Panel. Використовуючи кнопку Auto Capture / Play запустити симуляцію роботи ICMP пакетів. 
Простежити просування пакетів по мережі і зберегти даний скріншот.

6. Простежити за порядком і шляхом проходження пакетів у вікні Simulation Panel. Зберегти даний скріншот.

7. Переглянути інформацію о пакетах з вікна Simulation Panel і їх відповідність моделі OSI шляхом подвійного клацання по пакету в вікні (рис. 4). Результати зберегти як скриншот.
 ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module4/task4.1/Simulation%20panel.png)
 ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module4/task4.1/ModelOSI.png)

8. Видалити IP адреса з кожною локальною машини PC0 - PC3. Повторити пункти 5 - 10. Проаналізувати відмінності в роботі мережі.
 После удаления IP-adress, не работает передача пакетов. Нужно обязательно настраивать параметры сети (присваивать IP-address и т.д.)
 
 ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module4/task4.1/Model%20OSI%20without%20ip.png)
 
9. Зібрати наступний проект. У нього входять: *PC0-PC5, Server, 2 Hubs*. 
Однойменні пристрої з'єднуються за допомогою кросового кабелю (Copper Cross-over).
 ![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module4/task4.1/9_Cisco.png)

10. Кожному мережному компоненту привласнити IP адрес з наступної таблиці:

 - PC0 -> 192.168.0.1
 - PC1 -> 192.168.0.2
 - PC2 -> 192.168.0.3
 - PC3 -> 192.168.0.4
 - PC4 -> 192.168.0.6
 - PC5 -> 192.168.0.7
 
 + Server -> 192.168.0.5
 
Значення маски для адреси: 255.255.255.0.

11. Перевірити працездатність мережі.
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module4/task4.1/11_Cisco.png)

12. Створити новий проект, який включає в себе: 4 ПК типу PC-PT, Комутатор (Switch). Кожен комп'ютер повинен бути з'єднаний з концентратором за допомогою крученої пари (Copper Straight-through) 

13. Для даної топології повторити пункти 3-9. Проаналізувати відмінності в роботі мережі Топології 1 і Топології 3.
Switch пересылает пакеты куда указал. А концентратор рассылает пакеты всем, таким образом загружает сеть.
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module4/task4.1/12_11_Model%20OSI.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module4/task4.1/12_7_Cisco.png)
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module4/task4.1/12_Model%20OSI.png)

14. Розширити проект. У нього входять: *8 ПК типу PC-PT, 2 комутатори (Switch)*. Кожен комп'ютер повинен бути з'єднаний з комутатором за допомогою крученої пари (Copper Straight-through), комутатори між собою з'єднуються за допомогою кросового кабелю (Copper Cross-over).

15. За необхідністю додати додаткові порти на комутатори. Для цього необхідно у вкладці Physical / MODULES кожного з них перетягнути доступний порт Ethernet в порожнє гніздо, попередньо вимкнувши комутатор за допомогою кнопки вимкнення.


16. Кожному мережному компоненту привласнити IP адрес з наступної таблиці:
 - PC0 -> 192.168.0.1
 - PC1 -> 192.168.0.2
 - PC2 -> 192.168.0.3
 - PC3 -> 192.168.0.4
 - PC4 -> 192.168.0.5
 - PC5 -> 192.168.0.6
 - PC6 -> 192.168.0.7
 - PC7 -> 192.168.0.8
 
Значення маски для адреси: 255.255.255.0.

17. Перевірити працездатність мережі.
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module4/task4.1/14_17_Cisco.png)

18. Існуючу мережу розбити на дві рівні підмережі. І з'єднати їх за допомогою маршрутизатора Router-PT з декількома портами. Маршрутизатор і комутатори з'єднати між собою за допомогою оптоволокна (Fiber).

19. Комп'ютерам РС4 – РС7 привласнити IP адреси з наступної таблиці:
 - PC4 -> 192.168.1.1
 - PC5 -> 192.168.1.2
 - PC6 -> 192.168.1.3
 - PC7 -> 192.168.1.4
 
Значення маски залишається колишнім: 255.255.255.0.

20. Порти маршрутизатора слід включити (On) і призначити їм IP адреси в діапазоні обраної підмережі.

21. На кожному з комп'ютерів (РС0 - РС7) необхідно позначити шлюз. Для його призначення необхідно зайти в меню Desktop / Ip Configuration і в полі Default Gateway ввести адресу порту маршрутизатора, через який до нього підключається підмережа, що включає даний ПК.
22. Перевірити працездатність мережі.
![alt text](https://github.com/aleksandrabublik/DevOps_online_Kharkov_2020Q42021Q1/blob/main/Module4/task4.1/18_22%20%D0%A1%D1%88%D1%96%D1%81%D1%89.png)

23. Проаналізувати відмінності в роботі мережі Топології 4 і Топології 5. Оцінити можливості, які дає використання маршрутизатора.

Маршрутизатор нужен чтобы объединять подсети в большую сеть, это позволяет управлять разными подсетями и удобно настраивать, напрммер доступ к разным компьютерам.
