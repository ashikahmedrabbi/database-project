create database sportparticipation;
use sportparticipation;

CREATE TABLE tblStudent (
    studentId INT,
    firstname VARCHAR(20),
    lastname VARCHAR(20),
    phone VARCHAR(12),
    cell VARCHAR(12),
    waiver INT,
    Acadamic VARCHAR(20),
    PRIMARY KEY (studentId)
);
CREATE TABLE tblCoach (
    CoachId INT,
    firstname VARCHAR(20),
    lastname VARCHAR(20),
    phone VARCHAR(12),
    cell VARCHAR(20),
    office VARCHAR(20),
    PRIMARY KEY (CoachId)
);
CREATE TABLE tblSport (
    SportName VARCHAR(20),
    CoachId INT,
    Minplayers INT,
    Maxplayers INT,
    Begindate DATE,
    Notes VARCHAR(256),
    PRIMARY KEY (SportName),
    FOREIGN KEY (CoachId)
        REFERENCES tblCoach (CoachId)
);
CREATE TABLE tblequipment (
    equipmentId INT,
    discription VARCHAR(20),
    storagebldg VARCHAR(20),
    PRIMARY KEY (equipmentId)
);


CREATE TABLE tblmaintenancepersonnel (
    maintenanceId INT,
    fullname VARCHAR(20),
    phone VARCHAR(12),
    office VARCHAR(20),
    PRIMARY KEY (maintenanceId)
);
CREATE TABLE tblfield (
    fieldId INT,
    maintenanceId INT,
    fieldtypes VARCHAR(20),
    seasonAvailable VARCHAR(12),
    PRIMARY KEY (fieldId),
    FOREIGN KEY (maintenanceId)
        REFERENCES tblmaintenancepersonnel (maintenanceId)
);
CREATE TABLE tblteam (
    teamId INT,
    captainid INT,
    sportname VARCHAR(20),
    fieldid INT,
    equipmentid INT,
    PRIMARY KEY (teamId),
    FOREIGN KEY (equipmentid)
        REFERENCES tblequipment (equipmentid),
    FOREIGN KEY (sportname)
        REFERENCES tblSport (sportname),
    FOREIGN KEY (fieldid)
        REFERENCES tblfield (fieldid)
);
CREATE TABLE tblparticipation (
    studentId INT,
    SportName VARCHAR(20),
    teamId INT,
    FOREIGN KEY (studentId)
        REFERENCES tblStudent (studentId),
    FOREIGN KEY (sportname)
        REFERENCES tblSport (sportname),
    FOREIGN KEY (teamId)
        REFERENCES tblteam (teamId)
);




