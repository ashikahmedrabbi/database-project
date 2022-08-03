create database petlover1;
use petlover1;

CREATE TABLE Pets (
    pet_id VARCHAR(20),
    petcategory VARCHAR(20),
    breed VARCHAR(20),
    weight INT,
    age INT,
    fur VARCHAR(20),
    cost INT,
    PRIMARY KEY (pet_id)
);
CREATE TABLE PetProduct (
    pp_name VARCHAR(20),
    ppID INT,
    pp_type VARCHAR(20),
    cost INT,
    belongs_to VARCHAR(256)
);

CREATE TABLE Customers (
    cs_id INT,
    cs_name VARCHAR(256),
    cs_address VARCHAR(256),
    s_phone VARCHAR(256)
);
CREATE TABLE SallerDetails (
    sd_id INT,
    orderid INT,
    sdate DATE,
    total INT
);

CREATE TABLE PetHospital (
    hospitalname VARCHAR(20),
    hospitalid INT,
    address VARCHAR(20),
    doctor_name VARCHAR(20),
    helpline VARCHAR(20)
);
CREATE TABLE Shelter (
    shalter_id INT,
    petid INT,
    sname VARCHAR(20),
    address VARCHAR(20),
    phone VARCHAR(20)
);
CREATE TABLE Orders (
    petid INT,
    orderid INT,
    productsid INT,
    csid INT,
    sellerid INT,
    quantity INT
);

insert into Pets(pet_id, petcategory, breed, weight, age, fur, cost)
value (123,'cat','D',2,2,'df',2500);


    
insert into PetProduct (pp_name, ppID, pp_type, cost, belongs_to)
value (987,'123','D',2000,'df');



 insert into Customers (cs_id, cs_name, cs_address, cs_phone)
 value (852,'cat','D','0258');
 

insert into SallerDetails (sd_id, orderid, sdate, total)
value (745,587,'2008-11-11',2000);



 insert into PetHospital (hospitalname,hospitalid, address, doctor_name, helpline)
 value ('raj',12589,'Dtre','shahriar',28569);


insert into Shelter (shalter_id, petid, sname, address, phone)
value (8965,57894,'Dil','jdfgu',20254789);


CREATE TABLE Orders (
    petid INT,
    orderid INT,
    productsid INT,
    csid INT,
    sellerid INT,
    quantity INT
);
insert into  Orders(petid, orderid, productsid,csid, sellerid, quantity)
value (123,15896,7548,2,2,25);