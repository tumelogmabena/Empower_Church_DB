CREATE DATABASE Empower_church;
USE [Empower_church];
CREATE TABLE Cafe
(
ProductNo int, 
ProductName varchar(50) NOT NULL, 
ProductType varchar(50) NOT NULL, 
Price Money
)
ALTER TABLE Cafe
ADD CONSTRAINT "FK_Cafe_Products" FOREIGN KEY ("ProductNo") REFERENCES "dbo"."Products" ("ProductNo");


CREATE TABLE ChurhBranch
(
BranchID int NOT NULL IDENTITY(1,1),
Location varchar(50) NOT NULL,
Minister varchar (50) NOT NULL

CONSTRAINT "PK_BranchID" PRIMARY KEY  CLUSTERED ("BranchID")
)

CREATE TABLE Delivery
(
DeliveryNo int NOT NULL IDENTITY(1,1),
OrderNo int NOT NULL

CONSTRAINT "PK_Delivery" PRIMARY KEY  CLUSTERED ("DeliveryNo")
)
ALTER TABLE Delivery
ADD CONSTRAINT "FK_Delivery_OrderNo" FOREIGN KEY ("OrderNo") REFERENCES "dbo"."Orders" ("OrderNo");

CREATE TABLE Donations
(
DonationID int NOT NULL IDENTITY(1,1),
PersonID int NOT NULL,
FirstName varchar(50) NOT NULL

CONSTRAINT "PK_DonationID" PRIMARY KEY  CLUSTERED ("DonationID")
)

CREATE TABLE Merch
(
ProductNo int NOT NULL,
ProductName varchar(50) NOT NULL,
ProductType varchar(50) NOT NULL
)
ALTER TABLE Merch
ADD CONSTRAINT "FK_Merch_Products" FOREIGN KEY ("ProductNo") REFERENCES "dbo"."Products" ("ProductNo");

CREATE TABLE Orders
(
OrderNo int NOT NULL IDENTITY(1,1),
PersonID int NOT NULL,
ProductNo int NOT NULL,
ProductType varchar(50) NOT NULL,
Price MONEY NOT NULL

CONSTRAINT "PK_Orders" PRIMARY KEY  CLUSTERED ("OrderNo")
)
ALTER TABLE Orders
ADD CONSTRAINT "FK_Orders_PersonID" FOREIGN KEY ("PersonID") REFERENCES "dbo"."Person" ("PersonID"),
CONSTRAINT "FK_Orders_ProductNo" FOREIGN KEY ("ProductNo") REFERENCES "dbo"."Products" ("ProductNo")

CREATE TABLE Person
(
PersonID int NOT NULL IDENTITY(1,1), 
FirstName varchar(50) NOT NULL, 
LastName varchar(50) NULL, 
PhoneNumber varchar(10) NOT NULL,
PersonType varchar(50) NOT NULL

CONSTRAINT "PK_Person" PRIMARY KEY  CLUSTERED ("PersonID"),
)



CREATE TABLE Products
(
ProductNO int NOT NULL Identity(1,1),
ProductType varchar(50) NOT NULL,
ProductName varchar(50) Not Null,
Price Money DEFAULT 0 NOT NULL

CONSTRAINT "PK_ProductNo" PRIMARY KEY  CLUSTERED ("ProductNo")
)


CREATE TABLE Sales
(
OrderNo int NOT NULL
)
ALTER TABLE Sales
ADD CONSTRAINT "FK_Sakes_OrderNo" FOREIGN KEY ("OrderNo") REFERENCES "dbo"."Products" ("OrderNo")

-------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------
INSERT INTO Person 
(FirstName,LastName,PhoneNumber, PersonType)
VALUES
  ('Chava ','Cochran','0162673754','Member'),
  ('Forrest',' Baker','01132387583','Member'),
  ('Gannon ','Chapman','08803801311','Member'),
  ('Nathaniel',' Warren','0500333851','Member'),
  ('Raphael',' Gonzales','01127747193','Member'),
  ('Reese',' Stokes','0117785 1381','Member'),
  ('MacKensie ','Hart','0169778514','Member'),
  ('Quin',' Banks','0169776793','Member'),
  ('Olympia',' Riley','0800857834','Member'),
  ('Carson ','Hurley','08731237075','Member'),
  ('Montoe','Stephanoes','09745776473','Member'),
  ('Lucius',' Rios','09385722283','Member'),
  ('Keiko ','Moon','03671333687','Member'),
  ('Owen',' Cox','01642806901','Member'),
  ('Beck',' Hurley','01528174595','Member'),
  ('Amber',' Pacheco','02381221245','Member'),
  ('Henry',' Dejesus','09831305124','Member'),
  ('Christine ','Rojas','01467739613','Member'),
  ('Ori','Clayton','0500056178','Member'),
  ('Bethany',' Willis','0108873547','Member'),
  ('Melyssa',' Merrill','01305491643','Member'),
  ('Callie',' Roy','01175385064','Member'),
  ('Emma',' Hawkins','02311222280','Member'),
  ('Travis',' Paul','0141719 8802','Member'),
  ('Lesley ','Kramer','05563844488','Member');



INSERT INTO Person(FirstName,LastName,PhoneNumber,PersonType)
VALUES
  ('Christen ','Pope','0500 247557','Leader'),
  ('Hamish ','Randolph','(0117) 786 7571','Leader'),
  ('Veronica ','Hoffman','055 9113 2803','Leader'),
  ('Carissa ','Rasmussen','0800 767381','Leader'),
  ('Hayden',' Pace','(021) 6546 1783','Leader'),
  ('Adam',' Wolf','055 6417 0727','Leader'),
  ('Sharon ','Kerr','013183) 73584','Leader'),
  ('William ','Townsend','0845 46 46','Leader'),
  ('Cherokee',' Duran','(01414) 54195','Leader'),
  ('Leonard ','Benton','0944 607 1374','Leader'),
  ('Beatrice',' Woodard','055 3815 4907','Leader'),
  ('Wynne ','Alvarado','(0113) 034 4473','Leader'),
  ('Isadora ','Boyd','0500 067911','Leader'),
  ('Germane',' Jenkins','(016977) 4735','Leader'),
  ('Vincent ','Potter','(01882) 85092','Leader'),
  ('Ira ','Mcgowan','0966 929 7685','Leader'),
  ('Willow','Allen','0845 46 44','Leader'),
  ('Melvin','Cook','0824 982 7956','Leader'),
  ('Elmo ','Meyers','0339 131 2655','Leader'),
  ('Chanda',' Michael','0845 46 46','Leader'),
  ('Ulla',' Ashley','0998 197 9697','Leader'),
  ('Kirby',' Phelps','(0119) 257 2387','Leader'),
  ('Noelle ','Sloan','(0101) 254 4772','Leader'),
  ('Aristotle ','Mccoy','0500 038114','Leader'),
  ('Zia ',' Ferguson','(01772) 274696','Leader');

 INSERT INTO Person 
(FirstName,LastName,PhoneNumber, PersonType)
VALUES
  ('Ebony','Blevins','(0191) 878 7526','Congregants'),
  ('Bruno','Williams','(0131) 667 1115','Congregants'),
  ('Wynter','Mosley','0845 46 40','Congregants'),
  ('Wilma','Pena','0366 354 5459','Congregants'),
  ('Jasper','Foster','(0118) 538 1483','Congregants'),
  ('Kai','Middleton','056 8727 1227','Congregants'),
  ('Thomas','Roach','0812 886 5269','Congregants'),
  ('Britanney','Holmes','(019529) 76676','Congregants'),
  ('Berk','Roy','0845 46 45','Congregants'),
  ('Samuel','Matthews','0500 125241','Congregants'),
  ('Perry','Valdez','0800 507931','Congregants'),
  ('Alika','Douglas','0800 365575','Congregants'),
  ('Alyssa','Monroe','0800 211 0325','Congregants'),
  ('Christen','Sanchez','0326 189 2165','Congregants'),
  ('Brendan','Martinez','0800 606483','Congregants'),
  ('Hillary','Faulkner','056 6639 3577','Congregants'),
  ('Germaine','Rich','0800 1111','Congregants'),
  ('Hiroko','Nash','(0181) 287 1431','Congregants'),
  ('Abigail','Meyer','(0118) 842 1748','Congregants'),
  ('Ursula','Cardenas','(0111) 064 2426','Congregants'),
  ('Michael','Henson','(0141) 516 7526','Congregants'),
  ('Kuame','Calhoun','55 6868 4889','Congregants'),
  ('Phelan','Dawson','0800 381983','Congregants'),
  ('Katell','Cannon','(01406) 77993','Congregants'),
  ('Julian','Moss','0800 917 8173','Congregants');

INSERT INTO Person 
(FirstName,LastName,PhoneNumber, PersonType)
VALUES
  ('Rigel','Levy','0845 46 47','Worshipers'),
  ('Alice','Oconnor','055 4763 7276','Worshipers'),
  ('Irene','Sykes','0800 794355','Worshipers'),
  ('Kiona','Jennings','055 9622 0955','Worshipers'),
  ('Hyacinth','Griffith','0827 085 2795','Worshipers'),
  ('Rajah','Terrell','0845 46 41','Worshipers'),
  ('Brooke','Warren','055 5179 4523','Worshipers'),
  ('Oprah','Witt','0823 163 7532','Worshipers'),
  ('Gwendolyn','Bentley','0816 864 6645','Worshipers'),
  ('Sierra','Ochoa','056 9497 8875','Worshipers'),
  ('Hamish','Bullock','(0181) 754 2771','Worshipers'),
  ('Cherokee','Stewart','(015206) 68538','Worshipers'),
  ('Philip','Bird','(0191) 518 8404','Worshipers'),
  ('Rashad','Daniel','(017166) 74745','Worshipers'),
  ('Joelle','Henson','0500 534119','Worshipers'),
  ('Quail','Parks','055 3837 8784','Worshipers'),
  ('John','Conrad','(0114) 316 1976','Worshipers'),
  ('Caesar','Snyder','07786 629713','Worshipers'),
  ('Stephen','Bowen','0800 527788','Worshipers'),
  ('Aspen','Leonard','(013674) 34860','Worshipers'),
  ('Judah','Kirkland','0388 950 6716','Worshipers'),
  ('Jaquelyn','Chambers','(0121) 741 6277','Worshipers'),
  ('Todd','Chen','07624 641208','Worshipers'),
  ('Quin','Frye','07856 766642','Worshipers'),
  ('Burke','Chang','0800 835 5243','Worshipers');

INSERT INTO Person 
(FirstName,LastName,PhoneNumber, PersonType)
VALUES
  ('Imogene','West','(0115) 476 1761','Ushers'),
  ('Lev','Waters','(01311) 758837','Ushers'),
  ('Rebecca','Atkins','(016977) 2496','Ushers'),
  ('Kaye','Contreras','0873 305 2829','Ushers'),
  ('Amena','Knapp','0845 46 45','Ushers'),
  ('Judith','Potter','055 6988 3236','Ushers'),
  ('Risa','Hewitt','0343 884 2861','Ushers'),
  ('Frances','Cross','0800 1111','Ushers'),
  ('Unity','Pickett','0800 103 3232','Ushers'),
  ('Dahlia','Cooper','0371 231 2814','Ushers'),
  ('Aristotle','Griffin','07465 585328','Ushers'),
  ('Yardley','Mann','(026) 6130 9118','Ushers'),
  ('Whitney','Thompson','0920 928 6168','Ushers'),
  ('Veronica','Wilkerson','(016977) 5166','Ushers'),
  ('Jane','Olsen','07624 555056','Ushers'),
  ('Declan','Robles','(0151) 380 9722','Ushers'),
  ('Cain','Snow','01676 704167','Ushers'),
  ('Ray','Serrano','070 2363 4479','Ushers'),
  ('Dai','Wilkins','070 6267 0548','Ushers'),
  ('Hadley','Bentley','076 7206 6430','Ushers'),
  ('Christopher','Wall','0954 181 3306','Ushers'),
  ('Adena','Chan','0834 721 0543','Ushers'),
  ('Tad','Benton','070 2231 7349','Ushers'),
  ('Mark','Head','(016977) 7933','Ushers'),
  ('Daria','Walton','0845 46 45','Ushers');

INSERT INTO Person 
(FirstName,LastName,PhoneNumber, PersonType)
VALUES
  ('Castor','Blankenship','0812 614 3175','Minister'),
  ('Ethan','Branch','076 5258 7312','Minister'),
  ('Kyla','Haney','0884 461 8873','Minister'),
  ('Colby','Oneil','076 4723 4435','Minister'),
  ('Tasha','Avery','070 3028 2203','Minister'),
  ('Hasad','West','(0113) 482 2183','Minister'),
  ('Keith','Dodson','055 7592 8644','Minister'),
  ('Jocelyn','Hartman','0387 175 2813','Minister'),
  ('Georgia','Holt','0500 643699','Minister'),
  ('Blossom','Parrish','0954 657 3522','Minister'),
  ('Magee','Faulkner','(0112) 257 3348','Congregants'),
  ('Joel','Melton','0800 674 3074','Congregants'),
  ('Shafira','Gentry','0800 256 4275','Congregants'),
  ('Charity','Bird','0356 624 6251','Congregants'),
  ('Philip','Berg','(016977) 3458','Congregants'),
  ('Emma','Diaz','(0171) 136 4643','Congregants'),
  ('Griffin','Joyce','0800 482286','Congregants'),
  ('Amethyst','Larson','(016977) 8380','Congregants'),
  ('Dorothy','Carlson','(016977) 8697','Congregants'),
  ('Shafira','Cherry','055 1434 3531','Congregants'),
  ('Oliver','Gilliam','0800 140 0566','Congregants'),
  ('Bianca','Wagner','0800 1111','Congregants'),
  ('Donovan','Mendez','07424 974633','Congregants'),
  ('Zachary','Tyler','(01888) 887606','Congregants'),
  ('Gisela','Vaughn','0500 253346','Congregants');
  -----------------------------------------------------------------------------------------------------------------
  -----------------------------------------------------------------------------------------------------------------
  INSERT INTO PRODUCTS
  (ProductNo, ProductName,ProductType, Price)
  Values  ('01','EC Golfer','Merch','250'),
		  ('02','EC Tee','Merch','200'),
		  ('03','EC Sweater','Merch','450'),
		  ('04','EC Hoodie','Merch','500'),
		  ('05','EC Zip Hoodie','Merch','450'),
		  ('06','EC Cap','Merch','120'),
		  ('07','EC Beanie','Merch','120'),
		  ('08','EC Arm Band','Merch','60'),
		  ('09','EC Stickers','Merch','150'),
		  ('10','EC Notepad','Merch','180'),
		  ('11','Coffee','Drinks','20'),
		  ('12','Ice-Cofee','Drinks','25'),
		  ('13','Soda','Drinks','26'),
		  ('14','Water','Drinks','15'),
		  ('15','Smoothie','Drinks','30'),
		  ('16','Croisant','Food','20'),
		  ('17','Sandwitch','Food','22'),
		  ('18','Muffin','Food','11'),
		  ('19','Snacks','Food','10'),
		  ('20','Sweets','Food','6');
  
  use Empower_church;
--CREATE A PROCEDURE THAT WILL CREATE THE INITIALS OF PERSONS WITH 'MINISTER' AS PERSON TYPE
GO
CREATE PROC ch_MinistersInitial
@FirstName VARCHAR(30), @LastName VARCHAR(30), @Intial VARCHAR(30)
AS
BEGIN TRY 
BEGIN TRANSACTION
SELECT *
FROM Person
WHERE  FirstName = @FirstName AND LastName = @LastName AND @Intial = LEFT(FirstName,1) + LEFT(LastName,1)
COMMIT TRANSACTION
PRINT 'INITIALS HAVE BEEN CREATED'
END TRY
BEGIN CATCH
ROLLBACK
PRINT 'INITIALS WERE NOT CREATED'
END CATCH

GO 

--CREATE A TRIGGER THAT WILL DISPLAY A MESSAGE WHEN DONATIONS ARE RECIEVED OR NOT
GO
CREATE TRIGGER donationsmsg
ON Donations
AFTER INSERT
AS
BEGIN TRY 
BEGIN TRANSACTION
BEGIN
INSERT INTO Donations(PersonID,FirstName, LastName, Amount)
VALUES('DONATIONS', 'ARE', 'WELCOME', 'THANKS')
SELECT* FROM Person
PRINT'WE REVIEVED YOUR DONATION'
END
COMMIT TRANSACTION
PRINT 'THANK YOU FOR YOUR DONATION'
END TRY
BEGIN CATCH
ROLLBACK
PRINT 'YOUR DONATION WAS NOT RECIEVED, PLEASE TRY AGAIN'
END CATCH
GO