
create database book_storge ;
use book_storge ;
create table book (
book_id INT NOT NULL PRIMARY KEY  ,
book_Type varchar(80) NULL ,
book_name varchar (80) null ,
number_room int NULL ,
number_roof int null ,
name_publisher varchar (80) null
);
select *from book ;
create table company (
company_id int not null primary key ,
company_Name varchar(50) null ,
phone_company int null ,
Address_company varchar(50) null ,
book_id int not null
);
select *from company;
create table employee (
employee_id INT NOT NULL PRIMARY KEY ,
employee_name varchar(80) null , 
employee_Phone int null ,
address varchar (80)null,
book_id int null ,
company_id int not null ,
foreign key  (book_id) References book (book_id) ,
foreign key  (company_id ) References company (company_id ) 
);
select *from company ;
insert into book(book_id, book_type, book_name, number_room, number_roof, name_publisher)
values(9524,'socity','social science',6,12,'kunddre' );
insert into book(book_id, book_type, book_name, number_room, number_roof, name_publisher)
values(9525,'historical','osmann empriee',4,1,'mohamed ali' );
insert into book(book_id, book_type, book_name, number_room, number_roof, name_publisher)
values(9526,'medicine','al dawaa',2,3,'mohamed ali' );
insert into book(book_id, book_type, book_name, number_room, number_roof, name_publisher)
values(9527,'geographic','flight abn battuta',5,7,'abn battuta' );
insert into book(book_id, book_type, book_name, number_room, number_roof, name_publisher)
values(9528,'religious','start and end',1,8,'abn kathir' );

select *from book;

insert into company(company_id, company_Name, phone_company, Address_company, book_id)
values(9554,'alwafa',0101901015,'cairo',9524 );
insert into company(company_id, company_Name, phone_company, Address_company, book_id)
values(9555,'alshrok',01214101510,'elgeza',9525 );
insert into company(company_id, company_Name, phone_company, Address_company, book_id)
values(9556,'al amel',01156781021,'banha',9526 );
insert into company(company_id, company_Name, phone_company, Address_company, book_id)
values(9557,'alwshrok',01574681011,'elfagle',9527 );
insert into company(company_id, company_Name, phone_company, Address_company, book_id)
values(9558,'alwafa',01000414810,'nasr city',9528 );


SELECT *FROM company;

insert into employee(employee_id, employee_name, employee_phone, address, book_id, company_id) 
values(1662,'ahmed abdallah', 0100014661,'mostred',9524,9554);
insert into employee(employee_id, employee_name, employee_phone, address, book_id, company_id) 
values(1663,'kamal ali', 01056743122,'hadiek elqupa',9525,9555);
insert into employee(employee_id, employee_name, employee_phone, address, book_id, company_id) 
values(1664,'ali ahmed', 0155551161,'el nakhiel',9526,9556);
insert into employee(employee_id, employee_name, employee_phone, address, book_id, company_id) 
values(1665,'ahmed ghozlan', 01222111313,'ramss',9527,9557);
 insert into employee(employee_id, employee_name, employee_phone, address, book_id, company_id) 
values(1666,'ali ghozlan', 01114443321,'nasr city',9528,9558);

select *from employee ;

 select * from book where book_id  in ( select distinct company_id from company);
 select * from book where book_id not in (select distinct employee_id from employee) ;
  select * from company where company_id not in ( select distinct employee_id from employee);

 select COUNT(company_id) as Count_company  from company group by company_id ;
select COUNT(book_id) as Count_book  from book group by book_id ;

update company
set company_Name = 'khaled tarek' 
where company_id = 9558 ;
update company
set company_Name = 'mohamed khalied' 
where company_id = 9556 ;
update company
set company_Name = 'mohamed hamad' 
where company_id = 9555 ;
update company
set company_Name = 'abdelrahman gamal' 
where company_id = 9554 ;
update company
set company_Name = 'waleed gamal' 
where company_id = 9553 ;

delete from employee
where employee_id = 1666 ;
delete from employee
where employee_id = 1665 ;
delete from employee
where employee_id = 1664 ;
delete from book
where book_id = 9528 ;
delete from book
where book_id = 9526 ;