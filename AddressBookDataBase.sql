/*--------------------- Welcome to AddressBook System DataBase ---------------------*/
CREATE DATABASE AddressBookDataBase;
USE AddressBookDataBase;

/*----UC2--------*/
CREATE TABLE AddressBook
(
FirstName varchar (50) PRIMARY KEY,
LastName varchar (50),
Address varchar (150),
City varchar (50),
State varchar (50),
Zip varchar (6),
PhoneNumber varchar(12),
EmailID varchar (50)
);
SELECT * FROM AddressBook;

ALTER TABLE Addressbook DROP primary key; 

ALTER TABLE Addressbook add ID int not null auto_increment primary key;
/*----UC3--------*/
INSERT INTO AddressBook(FirstName, LastName, Address, City, State, Zip, PhoneNumber, EmailID)
VALUES 					('Katherine','Pierce','15DCRoad','Bulgeria','Petrova','123456','1234567890','katherine@123');
INSERT INTO AddressBook VALUES('Katrina','Petrova','16DCRoad','Mumbai','Pali','123856','9876543210','katrina@456');
INSERT INTO AddressBook VALUES('Elena','Gilbert','Gilbert House','Mumbai','Maharashtra','410206','8296543976','elena@987');
INSERT INTO AddressBook VALUES('Germie','Gilbert','Gilbert House','Mumbai','Maharashtra','410206','82914897536','gilbert@987');
INSERT INTO AddressBook VALUES('Damon','Salvator','Salvator House','Mystic Falls','Mystic','410606','8275365614','salvator@976');
INSERT INTO AddressBook VALUES('Stefan','Salvator','Salvator House','Mystic Falls','Mystic','410206','8291459713','stefan@987');

/*----UC4--------*/
UPDATE AddressBook 
SET State = 'Maharashtra'
WHERE FirstName = 'Katrina';

/*----UC5--------*/
 DELETE FROM AddressBook
 WHERE FirstName = 'Germie';
 
 /*----UC6--------*/
 SELECT * FROM AddressBook WHERE City='Bulgeria' OR State='Maharashtra';
 SELECT * FROM AddressBook WHERE City='Mumbai' OR State='Petrova';
 
  /*----UC7--------*/
  SELECT City,State, COUNT(*) as AddressCount
  FROM AddressBook
  GROUP BY City,State;

  /*----UC8--------*/
  SELECT FirstName, City
  FROM AddressBook
  WHERE City ='Mumbai' 
  ORDER BY FirstName;
  
   /*----UC9--------*/
  ALTER TABLE AddressBook
  ADD COLUMN Type varchar (50);
  
UPDATE AddressBook 
SET Type = 'Family'
WHERE  FirstName = 'Damon'; 

UPDATE AddressBook 
SET Type = 'Family'
WHERE  FirstName = 'Stefan'; 

UPDATE AddressBook 
SET Type = 'Professional'
WHERE  FirstName = 'Elena'; 

UPDATE AddressBook 
SET Type = 'Friend'
WHERE  FirstName = 'Katherine'; 

UPDATE AddressBook 
SET Type = 'Professional'
WHERE  FirstName = 'Katrina'; 

Alter table addressbook drop column Type;

CREATE TABLE TYPE(
Type_Id int not null PRIMARY KEY auto_increment, 
id int not null,
Foreign key (id) references addressbook(id) 
);
desc Type; 

alter table TYPE add column Type_Name varchar(50) not null;  

insert INTO TYPE VALUES(10,1,'Friend'); 
insert INTO TYPE VALUES(20,2,'Family');
insert INTO TYPE VALUES(30,3,'Profession'); 

select * from TYPE;

/*----UC10--------*/
 SELECT Type_Name, COUNT(*) as TypeCount
  FROM TYPE
  group by Type_Name; 
