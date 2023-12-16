
use RecordDB

create table Contactus(Id int not null primary key identity(101,1), Name varchar(100) not null, Emailid varchar(100) not null,
                       Phoneno bigint not null, Address varchar(MAX) not null, issue varchar(MAX) not null, fileupload varchar(50))

create proc insertcontactdetails
 @Name varchar(100), @Emailid varchar(100),
 @Phoneno bigint, @Address varchar(MAX), @issue varchar(MAX), @fileupload varchar(50)
 as
 begin
 insert into Contactus values(@Name, @Emailid, @Phoneno, @Address, @issue, @fileupload)
 end

 select * from Contactus