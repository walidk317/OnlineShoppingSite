use RecordDB

create proc InsertOrderDetails
@orderid varchar(max),@sno int,@productid int,@productname varchar(50),@price int,
@quantity int,@orderdate varchar(50),@status varchar(50)
as
begin
insert into OrderDetails values(@orderid,@sno,@productid,@productname,@price,
@quantity,@orderdate,@status)
end

create table CardDetails(Fname varchar(50), Lname varchar(50), CardNo bigint, 
                         ExpiryDate varchar(50), CVV int, BillingAddr varchar(MAX))

Create proc InsertCardDetailsData
@Fname varchar(50), @Lname varchar(50), @CardNo bigint, 
@ExpiryDate varchar(50), @CVV int, @BillingAddr varchar(MAX)
as
begin
insert into CardDetails values(@Fname, @Lname, @CardNo, 
                              @ExpiryDate , @CVV , @BillingAddr)
end

create proc InsertCartDetails
@sno int, @productId int, @Pname varchar(50),@Pdesc varchar(MAX),@Pimage varchar(MAX),
@Pprice int, @Pquantity int, @Pcategory varchar(50), @Email varchar(50)
as
begin 
insert into CartDetails values(@sno, @productId , @Pname ,@Pdesc ,@Pimage ,
@Pprice, @Pquantity , @Pcategory , @Email )
end

drop proc InsertCartDetails

drop table CardDetails