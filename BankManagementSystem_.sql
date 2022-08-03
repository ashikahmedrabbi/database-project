create database  BankManagementSystem;
USE  BankManagementSystem;
CREATE TABLE Bank (
    bankName VARCHAR(20),
    bankCode INT,
    Address VARCHAR(20),
    PRIMARY KEY (bankCode)
);
CREATE TABLE Branch (
    Branch_id INT,
    BName VARCHAR(20),
    Address VARCHAR(20),
    bankCode INT,
    PRIMARY KEY (Branch_id),
    FOREIGN KEY (bankCode)
        REFERENCES Bank (bankCode)
        
);
 CREATE TABLE Customer (
    Customer_id INT,
    CName VARCHAR(20),
    PhoneNumber VARCHAR(20),
    Address VARCHAR(20),
    PRIMARY KEY (Customer_id)
);

create table Accounts (
 Account_number int , 
 Account_Type VARCHAR(20),  
 Balance int ,
 Branch_id int,
 Customer_id int ,
 Primary Key (Account_number),
 FOREIGN KEY (Branch_id)
        REFERENCES Branch (Branch_id),
         FOREIGN KEY (Customer_id)
        REFERENCES Customer (Customer_id)
 );
 

        

CREATE TABLE Loan (
    Loan_id INT,
    Loan_Type VARCHAR(20),
    Amount INT,
     Branch_id int,
     Customer_id INT,
    PRIMARY KEY (Loan_id),
    FOREIGN KEY (Branch_id)
        REFERENCES Branch (Branch_id),
        FOREIGN KEY (Customer_id)
        REFERENCES Customer (Customer_id)
        
);

insert into `Bank` values ('UCB Bank',16767,'Dhaka');

insert into `Branch` values (123,'Mirpur','Dhaka',16767),
(124,'Saver','Dhaka',16767),
(125,'Motijhil','Dhaka',16767),
(126,'Bagerhat','Bagerhat',16767);

insert into `Customer` values (11,'Aysha','01233','Dhaka'),
(12,'Akhi','012345','Saver');

insert into `Accounts` values (112369,'Primary',100000,123,11),
(112370,'Primary',150000,124,12);

insert into `Loan` values (2369,'House Loan',1000000,123,11),
(2370,'Small Business Loans',2000000,124,12);

select * from Loan;
