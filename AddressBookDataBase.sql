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