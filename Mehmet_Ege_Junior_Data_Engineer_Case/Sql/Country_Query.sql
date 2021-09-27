Create Database Countrys

Create Table Countrys_Cnn(
country_code int IDENTITY(1,1) NOT NULL,
country_name nvarchar(50) NOT NULL,
PRIMARY KEY (country_code)
)

Create Table Countrys_Cpp(
country_code int IDENTITY(1,1) NOT NULL,
country_phone_codes int NOT NULL,
PRIMARY KEY (country_code)
)

Insert Into dbo.Countrys_Cnn VALUES ('Germany')
Insert Into dbo.Countrys_Cnn VALUES ('America')
Insert Into dbo.Countrys_Cnn VALUES ('Turkey')
Insert Into dbo.Countrys_Cnn VALUES ('Russia')
Insert Into dbo.Countrys_Cnn VALUES ('Canada')


Insert Into dbo.Countrys_Cpp Values (49)
Insert Into dbo.Countrys_Cpp Values (1)
Insert Into dbo.Countrys_Cpp Values (90)
Insert Into dbo.Countrys_Cpp Values (7)
Insert Into dbo.Countrys_Cpp Values (1)

Select cn.country_code, country_name, country_phone_codes from dbo.Countrys_Cnn as Cn 
inner join dbo.Countrys_Cpp as Cp
on Cn.country_code = Cp.Country_Code











