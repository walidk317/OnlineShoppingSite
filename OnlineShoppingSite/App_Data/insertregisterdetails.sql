use Project1

create proc insertregisterdetails
@fname varchar(50),@lname varchar(50),@email varchar(50),@gender varchar(50),
@address  varchar(max),@phone bigint ,@password varchar(50) 
as
begin
insert into register values(@fname,@lname,@email,@gender,@address,@phone,@password)
end



drop proc logindata

select * from Product1

delete from Product1 where ProductID = 116