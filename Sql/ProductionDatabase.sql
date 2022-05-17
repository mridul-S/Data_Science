use ProductionData
go

create table unit(
unitId int IDENTITY(1,1),
section varchar (10) not null,
line varchar (10) not null,
primary key (unitId)
);


create table employee (
    employeeId varchar (30) NOT NULL,
    employeeName varchar(255) NOT NULL,
    designation varchar(255),
	unitId int not null foreign key references unit(unitId),
    PRIMARY KEY (employeeId)
); 

insert into employee (employeeId,employeeName,designation)
values
('101', 'Mr. Tom', 'Manager'),
('102','Jemmy Ar', 'Consultant');


create table orderBooking (
buyer varchar(50) not null,
style varchar(50) not null,
reference varchar(30) not null,
item varchar (25),
quantity int,
tod date
primary key (reference)
)

insert into orderBooking (buyer,style,reference,item,quantity,tod)
values
('hm', 'A100','SU18COBRA33','Top', 5000, '20190601')

create table production(
pDate date,
buyer varchar (50) not null,
style varchar (50) not null,
reference varchar (30) not null foreign key references orderBooking(reference),
unitId int not null foreign key references unit(unitId),
employeeid varchar (30) not null foreign key references employee(employeeid)
)



