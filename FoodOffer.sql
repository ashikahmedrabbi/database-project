/*----------------- CREATE DATABASE ----------------- */

create database FoodOffer; 

/*----------------- *** ----------------- */
/*----------------- USE database ----------------- */
use FoodOffer;
/*----------------- *** ----------------- */
CREATE TABLE Food (
    foodId INT NOT NULL,
    foodName VARCHAR(20),
    foodPrice INT NOT NULL,
    foodCategory VARCHAR(20),
    Quantity INT NOT NULL,
    PRIMARY KEY (foodId)
);

/*----------------- *** ----------------- */

CREATE TABLE Customer (
    customerId INT NOT NULL,
    customerName VARCHAR(256),
    address VARCHAR(256),
    paymentMethod VARCHAR(256),
    contact VARCHAR(256),
    PRIMARY KEY (customerId)
);

/*----------------- *** ----------------- */
CREATE TABLE Employees (
    employeesId INT NOT NULL,
    employeesName VARCHAR(256),
    gender ENUM('M', 'F', 'O'),
    hireDate DATE,
    salary INT NOT NULL,
    ePosition VARCHAR(256),
    contact VARCHAR(256),
    PRIMARY KEY (employeesId)
);



/*----------------- *** ----------------- */
CREATE TABLE Orders (
    orderId INT NOT NULL,
    foodId INT NOT NULL,
    foodQuantity INT NOT NULL,
    employeesId INT NOT NULL,
    customerId INT NOT NULL,
    PRIMARY KEY (orderId),
    FOREIGN KEY (foodId)
        REFERENCES food (foodId)
        ON DELETE CASCADE,
    FOREIGN KEY (employeesId)
        REFERENCES Employees (employeesId)
        ON DELETE CASCADE,
    FOREIGN KEY (customerId)
        REFERENCES Customer (customerId)
        ON DELETE CASCADE
);



/*----------------- *** ----------------- */

CREATE TABLE Delivery (
    employeesId INT NOT NULL,
    deliveryDateTime DATETIME,
    orderId INT NOT NULL,
    FOREIGN KEY (orderId)
        REFERENCES Orders (orderId)
        ON DELETE CASCADE,
    FOREIGN KEY (employeesId)
        REFERENCES Employees (employeesId)
        ON DELETE CASCADE
);
/*----------------- *** ----------------- */
CREATE TABLE Restaurant (
    restaurantId INT NOT NULL,
    restaurantName VARCHAR(256),
    address VARCHAR(256),
    orderId INT NOT NULL,
    foodId INT NOT NULL,
    PRIMARY KEY (restaurantId),
    FOREIGN KEY (foodId)
        REFERENCES food (foodId)
        ON DELETE CASCADE,
    FOREIGN KEY (orderId)
        REFERENCES Orders (orderId)
        ON DELETE CASCADE
);





/*----------------- *** ----------------- */
insert into food ( foodId, foodName,foodPrice,foodCategory,Quantity)
values(101001,'Pizza',205,'Fast Food',50),
(1010011,'Neapolitan Pizza',555,'Fast Food',20),
(101002,'Chicago Pizza',250,'Fast Food',10),
(1010103,'New York-Style Pizza',305,'Fast Food',12),
(101003,'Sicilian Pizza',405,'Fast Food',18),
(101004,'Greek Pizza',505,'Fast Food',19),
(101005,'California Pizza',605,'Fast Food',22),
(101006,'Detroit Pizza',805,'Fast Food',60),
(101007,'St. Louis Pizza',180,'Fast Food',23),
(101008,'Thin Crust Pizza',210,'Fast Food',25),
(101009,'French Fries',40,'Fast Food',30),
(1010010,'Chicken Sandwich',60,'Fast Food',40),
(1010038,'Napa',30,'Medicine',10),
(1010039,'Napa-Extra',35,'Medicine',20),
(1010040,'Opal',220,'Medicine',30),
(1010041,'Piggo',150,'Medicine',42),
(1010042,'Ace Plus',28,'Medicine',20),
(1010043,'Alset',12,'Medicine',30),
(1010044,'Sergel',70,'Medicine',42),
(1010045,'Cracal D',350,'Medicine',10),
(1010046,'Emodis',20,'Medicine',20),
(1010047,'zeo',85,'Medicine',30),
(1010048,'Zero pain',100,'Medicine',42),
(1010049,'Nosal',15,'Medicine',20),
(1010050,'Locastil',50,'Medicine',30),
(10101011,' Nido 1+',555,'Baby Food',05),
(1010012,' Nido 2+',558,'Baby Food',07),
(1010013,' Nan 4',600,'Baby Food',11),
(1010014,'Lactozen',607,'Baby Food',05),
(1010015,'Biomill',608,'Baby Food',02),
(1010016,'Infant',605,'Baby Food',40),
(1010017,'Eldobaby',548,'Baby Food',45),
(1010018,'Similac',71,'Baby Food',15),
(1010019,'Baby Luck',789,'Baby Food',36),
(1010020,'Deelac',78,'Baby Food',18),
(1010021,'Eldobaby',788,'Baby Food',33),
(1010022,'Mamy Food',200,'Baby Food',100),
(1010023,'Patato',20,'vegetable',42),
(1010024,'Tomato',100,'vegetable',10),
(1010025,'Badhakopi',40,'vegetable',20),
(1010026,'Fullkopi',35,'vegetable',36),
(1010027,'LAW',60,'vegetable',14),
(1010028,'Misty Kumra',70,'vegetable',18),
(1010029,'PAtol',25,'vegetable',45),
(1010030,'Darosh',15,'vegetable',47),
(1010031,'Ada',20,'vegetable',23),
(1010032,'Roshub',55,'Daily Life',50),
(1010033,'Piyaj',60,'Daily Life',08),
(1010034,'Begun',750,'Daily Life',03),
(1010035,'Sosha',205,'Daily Life',07),
(1010036,'Labu',28,'Daily Life',42),
(1010037,'Gajor',32,'Daily Life',50);

/* ----------------------------------------------------------------------------*/

insert into Customer (customerId,customerName,address,paymentMethod,contact )
values (1,'ashik','Jhenaidah','bkash','0127896542'),
(2,'Ahmed','Dhaka','Nagod','0127842'),
(3,'Arnob','Khulda','Upay','01278642'),
(4,'Rashed','Savar','bkash','01278542'),
(5,'Rumman','Mirpur','Card','01276542'),
(6,'Plabon','Mirpur','cash on ','012796542'),
(7,'Rabeya','Mirpur','Nagod','0127896542'),
(8,'CICILY','Bogura','bkash','01896542'),
(9,'ashik','Jhenaidah','Nagod','01896542'),
(10,'Maisha','Frankfurt','cash on','01289642');

/* ----------------------------------------------------------------------------*/
insert into Employees (employeesId ,employeesName ,gender,hireDate,salary ,ePosition,contact)
values (331211,'Rumman','M','2021-11-01',100000,'Manager','01254'),
 (331212,'Babu','M','2021-11-10',100000,'Manager','05879'),
  (331213,'Lex','M','2021-11-01',500000,'CEO','01254'),
 (331214,'Alex','M','2021-11-10',150000,'It Officer','05879'),
  (331215,'Robat','M','2021-11-01',150000,'It Officer','01254'),
 (331216,'Smit','M','2021-11-10',150000,'It Officer','05879'),
  (331217,'Vabail','M','2021-11-01',150000,'It Officer','01254'),
 (331218,'Anu','M','2021-11-10',120000,'Web Devoloper','05879'),
  (331219,'Nayim','M','2021-11-01',120000,'Web Devoloper','01254'),
 (331220,'Emon','M','2021-11-10',110000,'Marketer','05879'),
 (10002,'Bezalel Simmel','F','1985-11-21',20000,'Delivery Man','0123'),
(10003,'Parto Bamford','M','1986-08-28',20000,'Delivery Man','0123'),
(10004,'Chirstian Koblick','M','1986-12-01',20000,'Delivery Man','0123'),
(10005,'Kyoichi Maliniak','M','1989-09-12',20000,'Delivery Man','0123'),
(10006,'Anneke Preusig','F','1989-06-02',20000,'Delivery Man','0123'),
(10007,'Tzvetan Zielinski','F','1989-02-10',20000,'Delivery Man','0123'),
(10008,'Saniya Kalloufi','M','1994-09-15',20000,'Delivery Man','0123'),
(10009,'Sumant Peac','F','1985-02-18',20000,'Delivery Man','0123'),
(10010,'Duangkaew Piveteau','F','1989-08-24',20000,'Delivery Man','0123'),
(10011,'Mary Sluis','F','1990-01-22',20000,'Delivery Man','0123'),
(10012,'Patricio Bridgland','M','1992-12-18',20000,'Delivery Man','0123'),
(10013,'Eberhardt Terkki','M','1985-10-20',20000,'Delivery Man','0123'),
(10014,'Berni Genin','M','1987-03-11',20000,'Delivery Man','0123'),
(10015,'Guoxiang Nooteboom','M','1987-07-02',20000,'Delivery Man','0123'),
(10016,'Kazuhito Cappelletti','M','1995-01-27',20000,'Delivery Man','0123'),
(10017,'Cristinel Bouloucos','F','1993-08-03',20000,'Delivery Man','0123'),
(10018,'Kazuhide Peha','F','1987-04-03',20000,'Delivery Man','0123'),
(10019,'Lillian Haddadi','M','1999-04-30',20000,'Delivery Man','0123'),
(10020,'Mayuko Warwick','M','1991-01-26',20000,'Delivery Man','0123'),
(10021,'Ramzi Erde','M','1988-02-10',20000,'Delivery Man','0123'),
(10022,'Shahaf Famili','M','1995-08-22',20000,'Delivery Man','0123'),
(10023,'Bojan Montemayor','F','1989-12-17',20000,'Delivery Man','0123'),
(10024,'Suzette Pettey','F','1997-05-19',20000,'Delivery Man','0123'),
(10025,'Prasadram Heyers','M','1987-08-17',20000,'Delivery Man','0123'),
(10026,'Yongqiao Berztiss','M','1995-03-20',20000,'Delivery Man','0123'),
(10027,'Divier Reistad','F','1989-07-07',20000,'Delivery Man','0123'),
(10028,'Domenick Tempesti','M','1991-10-22',20000,'Delivery Man','0123'),
(10029,'Otmar Herbst','M','1985-11-20',20000,'Delivery Man','0123'),
(10030,'Elvis Demeyer','M','1994-02-17',20000,'Delivery Man','0123'),
(10031,'Karsten Joslin','M','1991-09-01',20000,'Delivery Man','0123'),
(10032,'Jeong Reistad','F','1990-06-20',20000,'Delivery Man','0123'),
(10033,'Arif Merlo','M','1987-03-18',20000,'Delivery Man','0123'),
(10034,'Bader Swan','M','1988-09-21',20000,'Delivery Man','0123'),
(10035,'Alain Chappelet','M','1988-09-05',20000,'Delivery Man','0123'),
(10036,'Adamantios Portugali','M','1992-01-03',20000,'Delivery Man','0123'),
(10037,'Pradeep Makrucki','M','1990-12-05',20000,'Delivery Man','0123'),
(10038,'Huan Lortz','M','1989-09-20',20000,'Delivery Man','0123'),
(10039,'Alejandro Brender','M','1988-01-19',20000,'Delivery Man','0123'),
(10040,'Weiyi Meriste','F','1993-02-14',20000,'Delivery Man','0123'),
(10041,'Uri Lenart','F','1989-11-12',20000,'Delivery Man','0123'),
(10042,'Magy Stamatiou','F','1993-03-21',20000,'Delivery Man','0123'),
(10043,'Yishay Tzvieli','M','1990-10-20',20000,'Delivery Man','0123'),
(10044,'Mingsen Casley','F','1994-05-21',20000,'Delivery Man','0123'),
(10045,'Moss Shanbhogue','M','1989-09-02',20000,'Delivery Man','0123'),
(10046,'Lucien Rosenbaum','M','1992-06-20',20000,'Delivery Man','0123'),
(10047,'Zvonko Nyanchama','M','1989-03-31',20000,'Delivery Man','0123'),
(10048,'Florian Syrotiuk','M','1985-02-24',20000,'Delivery Man','0123'),
(10049,'Basil Tramer','F','1992-05-04',20000,'Delivery Man','0123'),
(10050,'Yinghua Dredge','M','1990-12-25',20000,'Delivery Man','0123'),
(10051,'HidefumiCaine','M','1992-10-15',20000,'Delivery Man','0123'),
(10052,'Heping Nitsch','M','1988-05-21',20000,'Delivery Man','0123'),
(10053,'Sanjiv Zschoche','F','1986-02-04',20000,'Delivery Man','0123'),
(10054,'Mayumi Schueller','M','1995-03-13',20000,'Delivery Man','0123'),
(10055,'Georgy Dredge','M','1992-04-27',20000,'Delivery Man','0123'),
(10056,'Brendon Bernini','F','1990-02-01',20000,'Delivery Man','0123'),
(10057,'Ebbe Callaway','F','1992-01-15',20000,'Delivery Man','0123'),
(10058,'Berhard McFarlin','M','1987-04-13',20000,'Delivery Man','0123'),
(10059,'Ale jandro McAlpine','F','1991-06-26',20000,'Delivery Man','0123'),
(10060,'Breannda Billingsley','M','1987-11-02',20000,'Delivery Man','0123'),
(10061,'Tse Herber','M','1985-09-17',20000,'Delivery Man','0123'),
(10062,'AnooshPeyn','M','1991-08-30',20000,'Delivery Man','0123'),
(10063,'Gino Leonhardt','F','1989-04-08',20000,'Delivery Man','0123'),
(10064,'Udi Jansch','M','1985-11-20',20000,'Delivery Man','0123'),
 (10065,'Mayumi Schueller','M','1995-03-13',15000,'Delivery Man','0123'),
(10066,'Georgy Dredge','M','1992-04-27',15000,'Delivery Man','0123'),
(10067,'Brendon Bernini','F','1990-02-01',15000,'Delivery Man','0123'),
(10077,'Ebbe Callaway','F','1992-01-15',15000,'Delivery Man','0123'),
(10078,'Berhard McFarlin','M','1987-04-13',15000,'Delivery Man','0123'),
(10079,'Ale jandro McAlpine','F','1991-06-26',15000,'Delivery Man','0123'),
(10070,'Breannda Billingsley','M','1987-11-02',15000,'Delivery Man','0123'),
(10071,'Tse Herber','M','1985-09-17',15000,'Delivery Man','0123'),
(10072,'AnooshPeyn','M','1991-08-30',15000,'Delivery Man','0123'),
(10073,'Gino Leonhardt','F','1989-04-08',15000,'Delivery Man','0123'),
(10074,'Udi Jansch','M','1985-11-20',15000,'Delivery Man','0123'),
(10085,'Mayumi Schueller','M','1995-03-13',10000,'Delivery Man','0123'),
(10086,'Georgy Dredge','M','1992-04-27',10000,'Delivery Man','0123'),
(100887,'Brendon Bernini','F','1990-02-01',10000,'Delivery Man','0123'),
(10087,'Ebbe Callaway','F','1992-01-15',10000,'Delivery Man','0123'),
(10088,'Berhard McFarlin','M','1987-04-13',10000,'Delivery Man','0123'),
(10089,'Ale jandro McAlpine','F','1991-06-26',10000,'Delivery Man','0123'),
(10080,'Breannda Billingsley','M','1987-11-02',10000,'Delivery Man','0123'),
(10081,'Tse Herber','M','1985-09-17',10000,'Delivery Man','0123'),
(10082,'AnooshPeyn','M','1991-08-30',10000,'Delivery Man','0123'),
(10083,'Gino Leonhardt','F','1989-04-08',10000,'Delivery Man','0123'),
(10084,'Udi Jansch','M','1985-11-20',10000,'Delivery Man','0123');

/* ----------------------------------------------------------------------------*/


    
insert into Orders (orderId ,foodId ,foodQuantity ,employeesId ,customerId )
VALUES (18911,101001,4,10020,1),
(18912,1010020,10,10032,2),
(18913,1010021,5,10039,3),
(18914,1010022,8,10029,6),
(18915,101007,1,10010,5),
(18916,1010032,4,10025,4),
(18917,101006,7,10037,10),
(18918,1010027,9,10016,9),
(18919,101008,6,10015,7),
(18910,1010026,4,10042,8);

/* ----------------------------------------------------------------------------*/


insert into Restaurant (restaurantId ,restaurantName ,address,orderId ,foodId )
values (88911,'Adda','Mirpur',18911,101001),
(88912,'Mizza Bari','Mirpur',18912,1010020),
(88913,'Royal Cafe','Boshundhora',18913,1010021),
(88914,'Lalbag','Khulna',18914,1010022),
(88915,'Way ','Rajshahi',18915,101007),
(88916,'Halum','Madaripur',18916,1010032),
(88917,'JFC','Jhenaidah',18917,101006),
(88918,'Local Home','Jatrabari',18918,1010027),
(88919,'Culfi','Kustia',18919,101008),
(88910,'Arong','Mirpur',18910,101001);

/* ----------------------------------------------------------------------------*/
insert into Delivery (employeesId ,deliveryDateTime ,orderId )
values (10020,'2021-11-19 23:59:59',18912),
(10032,'2021-11-15 21:59:59',18913),
(10039,'2021-11-16 22:59:59',18914),
(10029,'2021-11-16 20:59:59',18915),
(10015,'2021-11-17 22:59:59',18916),
(10042,'2021-11-18 19:59:59',18917),
(10020,'2021-11-15 23:59:59',18911);

/* ----------------------------------------------------------------------------*/

SELECT 
    *
FROM
    Employees
WHERE
    gender = 'F' AND hireDate = '1992-01-15';
/* ----------------------------------------------------------------------------*/
SELECT 
    *
FROM
    employees
LIMIT 3;
/* ----------------------------------------------------------------------------*/
SELECT 
    *
FROM
    Food
ORDER BY foodPrice , foodCategory;
/* ----------------------------------------------------------------------------*/
SELECT 
    *
FROM
    employees
WHERE
    employeesName LIKE '%rad%';
/* ----------------------------------------------------------------------------*/
SELECT 
    *
FROM
    employees
WHERE
    salary BETWEEN 10000 AND 18000;
/* ----------------------------------------------------------------------------*/
SELECT 
    COUNT(salary)
FROM
    employees;
/* ----------------------------------------------------------------------------*/
SELECT 
    AVG(foodPrice)
FROM
    food;
/* ----------------------------------------------------------------------------*/
UPDATE Customer 
SET 
    customerName = 'Nabil',
    address = 'Dubai'
WHERE
    CustomerId = 9;
/* ----------------------------------------------------------------------------*/
SELECT 
    SUM(foodQuantity)
FROM
    Orders;
/* ----------------------------------------------------------------------------*/
SELECT 
    MIN(salary) AS SmallestPrice
FROM
    employees;
/* ----------------------------------------------------------------------------*/
SELECT 
    MAX(foodPrice) AS LargestPrice
FROM
    food;
/* ----------------------------------------------------------------------------*/
SELECT 
    'address', restaurantId, restaurantName
FROM
    Restaurant 
UNION SELECT 
    'address', customerId, customerName
FROM
    Customer
ORDER BY address;

/* ----------------------------------------------------------------------------*/

select * from Delivery where orderId=18912;








