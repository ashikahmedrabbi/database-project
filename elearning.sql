create database e_learning; 
use e_learning; 

CREATE TABLE course (
    courseId INT NOT NULL,
    Cname varchar(256),
    price INT NOT NULL,
    PRIMARY KEY (courseId)
);

CREATE TABLE teacher (
    teacherId INT ,
    Tname varchar(250),
	courseid int(255),
	Email varchar(255),
    PRIMARY KEY (teacherId),
    FOREIGN KEY (courseId)
        REFERENCES course (courseId)
        ON DELETE CASCADE
);
CREATE TABLE student (
    stdid INT ,
    sname varchar(250),
	courseid int(255),
	Email varchar(255),
    PRIMARY KEY (stdid),
    FOREIGN KEY (courseId)
        REFERENCES course (courseId)
        ON DELETE CASCADE
);

CREATE TABLE Orders (
    orderId INT NOT NULL,
    teacherId INT NOT NULL,
    stdid INT NOT NULL,
    courseId INT NOT NULL,
    PRIMARY KEY (orderId),
    FOREIGN KEY (courseId)
        REFERENCES course (courseId)
        ON DELETE CASCADE ,
	FOREIGN KEY (stdId)
        REFERENCES student (stdId)
        ON DELETE CASCADE,
        
	FOREIGN KEY (teacherId)
        REFERENCES teacher (teacherId)
        ON DELETE CASCADE
);

CREATE TABLE payment (
    payId INT NOT NULL,
    orderId INT NOT NULL,
    ptype varchar(50),
    
    PRIMARY KEY (payId),
    FOREIGN KEY (orderId)
        REFERENCES orders (orderId)
);



insert into course( courseId, Cname,price)
value(101001,'Design',2050),
(101003,'EEE',2350),
(101002,'English',2550);


insert into teacher( teacherId, Tname,courseid,Email)
value(10152,'Ashik',101002,'a@gmail.com'),
(10153,'Doly',101002,'b@gmail.com');

    
insert into student( stdid, Sname,courseid,Email)
value(1012,'Ashik',101002,'a@gmail.com'),
(1013,'Doly',101002,'b@gmail.com');
    

    
insert into orders( orderId, teacherId,stdid,courseId)
value(101200,10152,1012,101001),
(101201,10153,1013,101002);  

 
    
insert into payment( orderId, teacherId,stdid,courseId)
value(101200,10152,1012,101001)





