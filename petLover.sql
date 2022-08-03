create database petlover;
use petlover;

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

insert into Pets(pet_id, petcategory, breed, weight(cm), age(m), fur, cost)
value 
insert into Pet Product (pp_name, pp ID, pp_type, cost, belongs_to)
value 
 insert into Customers (cs_id, cs_name, cs_address, cs_phone)
 value 
insert into Saller Details (sd_id, orderid, date, total)
value 
 insert into Pet Hospital (hospitalname,hospitalid, address, doctor_name, helpline)
 value 
insert into Shelter (shalter_id, pet id, sname, address, phone)
value 
insert into  Orders(petid, orderid, productsid,csid, sellerid, quantity)
value 