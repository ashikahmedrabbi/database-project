/*----------------- CREATE DATABASE ----------------- */

create database e_food; 

/*----------------- *** ----------------- */
/*----------------- USE database ----------------- */
use e_food;
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

CREATE TABLE Customer (
    customerId INT NOT NULL,
    customerName VARCHAR(256),
    address VARCHAR(256),
    paymentMethod VARCHAR(256),
    contact VARCHAR(256),
    PRIMARY KEY (customerId)
);
/*----------------- *** ----------------- */
CREATE TABLE Orders (
    orderId INT NOT NULL,
    restaurantId INT NOT NULL,
    foodId INT NOT NULL,
    foodQuantity INT NOT NULL,
    employeesId INT NOT NULL,
    customerId INT NOT NULL,
    PRIMARY KEY (orderId),
    FOREIGN KEY (restaurantId)
        REFERENCES Restaurant (restaurantId)
        ON DELETE CASCADE,
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
    deliveryId INT NOT NULL,
    deliveryDateTime DATETIME,
    orderId INT NOT NULL,
    employeesId INT NOT NULL,
    PRIMARY KEY (deliveryId),
    FOREIGN KEY (orderId)
        REFERENCES Orders (orderId)
        ON DELETE CASCADE,
    FOREIGN KEY (employeesId)
        REFERENCES Employees (employeesId)
        ON DELETE CASCADE
);

/*----------------- *** ----------------- */
insert into food ( foodId, foodName,foodPrice,foodCategory,Quantity)
value(101001,'Pizza',205,'Fast Food',50),
(101001,'Pizza',205,'Fast Food',50),
(101002,'Pizza',205,'Fast Food',50),
(101003,'Pizza',205,'Fast Food',50),
(101003,'Pizza',205,'Fast Food',50),
(101004,'Pizza',205,'Fast Food',50),
(101005,'Pizza',205,'Fast Food',50),
(101006,'Pizza',205,'Fast Food',50),
(101007,'Pizza',205,'Fast Food',50),
(101008,'Pizza',205,'Fast Food',50),
(101009,'Pizza',205,'Fast Food',50),
(1010010,'Pizza',205,'Fast Food',50),
(1010011,'Pizza',205,'Fast Food',50),
(1010012,'Pizza',205,'Fast Food',50),
(1010013,'Pizza',205,'Fast Food',50),
(1010014,'Pizza',205,'Fast Food',50),
(1010015,'Pizza',205,'Fast Food',50),
(1010016,'Pizza',205,'Fast Food',50),
(1010017,'Pizza',205,'Fast Food',50),
(1010018,'Pizza',205,'Fast Food',50),
(1010019,'Pizza',205,'Fast Food',50),
(1010020,'Pizza',205,'Fast Food',50),
(1010021,'Pizza',205,'Fast Food',50),
(1010022,'Pizza',205,'Fast Food',50),
(1010023,'Pizza',205,'Fast Food',50),
(1010024,'Pizza',205,'Fast Food',50),
(1010025,'Pizza',205,'Fast Food',50),
(1010026,'Pizza',205,'Fast Food',50),
(1010027,'Pizza',205,'Fast Food',50),
(1010028,'Pizza',205,'Fast Food',50),
(1010029,'Pizza',205,'Fast Food',50),
(1010030,'Pizza',205,'Fast Food',50),
(1010031,'Pizza',205,'Fast Food',50),
(1010032,'Pizza',205,'Fast Food',50),
(1010033,'Pizza',205,'Fast Food',50),
(1010034,'Pizza',205,'Fast Food',50),
(1010035,'Pizza',205,'Fast Food',50),
(1010036,'Pizza',205,'Fast Food',50),
(1010037,'Pizza',205,'Fast Food',50),
(1010038,'Pizza',205,'Fast Food',50),
(1010039,'Pizza',205,'Fast Food',50),
(1010040,'Pizza',205,'Fast Food',50),
(1010041,'Pizza',205,'Fast Food',50);




