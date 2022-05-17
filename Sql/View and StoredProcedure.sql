use AdventureWorks2012
go

Create view PersonalInformation as 
select LastName as "user", PersonType, City, PostalCode, BusinessEntityAddress.ModifiedDate 
from Person.Person inner join Person.BusinessEntityAddress
on Person.BusinessEntityID=BusinessEntityAddress.BusinessEntityID
join Person.Address
on Address.AddressID=BusinessEntityAddress.AddressID
Go

select top 5 * from PersonalInformation order by City asc

drop procedure customerCity

CREATE PROCEDURE customerCity @CityName nvarchar(30)
AS
select LastName as "user", PersonType, City, PostalCode, BusinessEntityAddress.ModifiedDate 
from Person.Person inner join Person.BusinessEntityAddress
on Person.BusinessEntityID=BusinessEntityAddress.BusinessEntityID
join Person.Address
on Address.AddressID=BusinessEntityAddress.AddressID
WHERE City = @CityName


exec customerCity @cityName='Paris'

