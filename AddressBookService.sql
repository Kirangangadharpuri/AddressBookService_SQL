/* Welcomr to the Address Book Service DataBase */

create database AddressBookService

create table AddressBook(ID int Primary key identity, FirstName varchar(50),LastName varchar(50),Address varchar(255),City varchar(50), State Varchar(50),Zip int, PhoneNumber varchar(20), Email varchar(50))

select * from AddressBook
