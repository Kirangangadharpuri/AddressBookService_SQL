/* Welcomr to the Address Book Service DataBase */

/*create database*/
create database AddressBookService

/*create table*/
create table AddressBook(ID int Primary key identity, FirstName varchar(50),LastName varchar(50),Address varchar(255),City varchar(50), State Varchar(50),Zip int, PhoneNumber varchar(20), Email varchar(50))

/* retrive data from table*/
select * from AddressBook

/*Insert new contacts in table */
insert into AddressBook values('Archana', 'Puri', 'Marwad Galli', 'Kausadi', 'Maharashtra', 123456, '9088776655', 'archanap@gmail.com')
insert into AddressBook values('Asha', 'Bharti', 'Ganapati Nagar', 'Lahan', 'Rajsthan', 123444, '1234567889', 'ashabharti@gmail.com')
insert into AddressBook values('Neha', 'Mehta', 'Chatrapati Shivaji colony', 'Parbhani', 'Maharashtra', 123455, '9088744445', 'neha@gmail.com')
insert into AddressBook values('Kush', 'Chakale', 'Paithan Gate', 'Aurangabad', 'Maharashtra', 100231, '7778776655', 'Nagesh@gmail.com')
insert into AddressBook values('Love', 'Chakale', 'Paithan Gate', 'Aurangabad', 'Maharashtra', 100231, '7777776655', 'Kush@gmail.com')

/* update cantact using person's first name and last name */
update AddressBook set Address='Hutatma Smarak', City='Jintur', Zip=111122, PhoneNumber='9999955555', Email='ashabh@gmail.com'
where FirstName= 'Asha' and LastName='Bharti'

/* delete persons details using persons name */
delete from AddressBook where FirstName='Asha'

/* Retrieve person belonging city and state */
select * from AddressBook where City='Aurangabad' or State='Maharashtra'

select City, Count(*) from AddressBook group by City /* Count size of AddressBook by City */         
SELECT State, COUNT(*) as count FROM AddressBook GROUP BY State /* Count size of AddressBook by State */

/* sorted persons name for given city */
select * from AddressBook where City='Aurangabad' order by FirstName ASC