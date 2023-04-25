/* Welcomr to the Address Book Service DataBase */

/* UC13 -(Ensure all retrieve queries done especially in UC 6, UC 7, UC 8 and 
UC 10 are working with new table structure)*/

create table Address(ID int, Adrress varchar(50), City varchar(50),State varchar(50),Zip int)
insert into Address values(1,'Marwad Galli', 'Kausadi', 'Maharashtra', 123456)               
insert into Address values(3,'Chatrapati Shivaji colony', 'Parbhani', 'Maharashtra', 123455)
insert into Address values(4,'Paithan Gate', 'Aurangabad', 'Maharashtra', 100231)
insert into Address values(5,'Ganapati Nagar', 'Lahan', 'Rajsthan', 123444)
select * from Address

create Table Person(ID int, FirstName varchar(50),LastName varchar(50),PhoneNumber varchar(20),Email varchar(255))
insert into Person values(1,'Archana','Puri','9088776655','archanap@gmail.com')
insert into Person values(3,'Neha','Mehta','9088744445','neha@gmail.com')
insert into Person values(4,'Kush','Chakale','7778776655','kush@gmail.com')
insert into Person values(5,'Asha','Bharti','1234567889','ashabharti@gmail.com')
select * from Person

Create table Relation(ID int, Name varchar(255), Type varchar(255))
insert into Relation values(1,'Family Address Book','Family')
insert into Relation values(2,'Professional Address Book','Professional')
insert into Relation values(4,'Friend Address Book','Friend')
insert into Relation values(5,'Family Address Book','Family')
select * from Relation

/*UC6= retrieving persons details by city*/
select Person.*, Address.*,  Relation.*
from ((Address  INNER JOIN Person on Address.ID= Person.ID)  
INNER JOIN Relation on Address.ID=Relation.ID) 
where City='Aurangabad' 

 

/*UC6= retrieving persons details by state*/

select Person.*, Address.*,  Relation.*
from ((Address  INNER JOIN Person on Address.ID= Person.ID)  
INNER JOIN Relation on Address.ID=Relation.ID) 
where State='Maharashtra' 

/*UC7*/
select City, Count(*) from Address group by City /* Count size of Address by City */         
SELECT State, COUNT(*) as count FROM Address GROUP BY State /* Count size of Address by State */

/*UC8*/
select Person.*, Address.*,  Relation.*
from ((Address  INNER JOIN Person on Address.ID= Person.ID)  
INNER JOIN Relation on Address.ID=Relation.ID) 
where City='Aurangabad'  order by FirstName ASC

/*UC10*/
select Type,count(*) from Relation group by Type
