create database LMS_Stm;
USE LMS_Stm;
CREATE TABLE STUDENTS (
    stud_ID INT NOT NULL,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    gender CHAR(1),
    age INT,
    contact_add VARCHAR(255),
    stud_email VARCHAR(255),
    PRIMARY KEY (stud_ID)
);
CREATE TABLE BOOK (
    book_ID INT NOT NULL,
    bk_title VARCHAR(255),
    author VARCHAR(255),
    bk_num INT,
    pub_date DATE NOT NULL,
    PRIMARY KEY (book_ID)
);
CREATE TABLE USERS (
    user_ID INT NOT NULL,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    gender CHAR(2),
    age INT,
    contact_add VARCHAR(255),
    user_email VARCHAR(255),
    PRIMARY KEY (user_ID)
);
CREATE TABLE BORROWING (
    borrowing_ID INT NOT NULL AUTO_INCREMENT,
    book_ID INT,
    stud_ID INT,
    data_borrowed DATE NOT NULL,
    data_return DATE NOT NULL,
    PRIMARY KEY (borrowing_ID),
    FOREIGN KEY (book_ID)
        REFERENCES BOOK (book_ID)
        ON DELETE CASCADE,
    FOREIGN KEY (stud_ID)
        REFERENCES STUDENTS (stud_ID)
        ON DELETE CASCADE
);
CREATE TABLE TRANSACTIONS (
    trans_ID INT NOT NULL,
    trans_name VARCHAR(255),
    borrowing_ID INT,
    stud_ID INT,
    trans_date DATE NOT NULL,
    PRIMARY KEY (trans_ID),
    FOREIGN KEY (borrowing_ID)
        REFERENCES BORROWING (borrowing_ID)
        ON DELETE CASCADE,
    FOREIGN KEY (stud_ID)
        REFERENCES STUDENTS (stud_ID)
        ON DELETE CASCADE
);


INSERT INTO book (book_ID,bk_title,author,bk_num ,pub_date )
VALUES(1010,'Pather Panchali ','Bibhutibhushan Bandyopadhyay',5052,'1929-06-17'),
 (1011,'Devdas ','Sarat Chandra Chatterjee',5258,'1917-06-30'),
(1012,'Aranyak ','Bibhutibhushan Bandopadhyay',58792,'1976-05-01'),
(1013,'CShesher Kabita ',' Rabindranath Tagore',57582,'1929-03-18'),
(1014,'Chander Pahar ','Bibhutibhushan Bandyopadhyay',52759,'2002-07-01');


-- ****************************************************************************

insert into USERS (user_ID,first_name,last_name,gender,age,contact_add,user_email)
value (888,'Afia','Emu','F',19,'01456','emu@g.com'),
(999,'Afran','Eou','F',21,'01454566','amu@g.com'),
(777,'Afia','ni','M',23,'0148576','emi@g.com'),
(444,'Plabok','man','M',20,'015456','eiiu@g.com'),
(758,'Anny','Roy','F',22,'0114456','emkku@g.com');

insert into STUDENTS (stud_ID,first_name,last_name,gender,age,contact_add,stud_email)
value (101,'Afia','Emu','F',19,'01456','emu@g.com'),
(102,'Afran','Eou','F',21,'01454566','amu@g.com'),
(103,'Afia','ni','M',23,'0148576','emi@g.com'),
(104,'Plabok','man','M',20,'015456','eiiu@g.com'),
(105,'Anny','Roy','F',22,'0114456','emkku@g.com');


insert into BORROWING (borrowing_ID,book_ID,stud_ID,data_borrowed,data_return)
value (78978,1010,102,'2000-11-12','2000-11-15'),
(78979,1011,103,'2001-10-12','2001-10-15');

insert into TRANSACTIONS (trans_ID ,trans_name,borrowing_ID,stud_ID,trans_date)
value (01,'Book',78978,102,'2000-11-12'),
(02,'Book',78979,103,'2001-10-12');

SELECT * FROM TRANSACTIONS;

SELECT * FROM BORROWING
WHERE book_ID = '1011';



