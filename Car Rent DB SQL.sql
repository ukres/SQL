CREATE DATABASE CarRent

CREATE TABLE Cars (
	CarID int NOT NULL AUTO_INCREMENT,
	Brand varchar(255) NOT NULL,
	CarYear int NOT NULL,
	Class varchar(1),
	CustomerID int,
	Variant varchar(255) NOT NULL,
	PRIMARY KEY (CarID),
	FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Cars (Brand, CarYear, Class, CustomerID, Variant) VALUES ('VW Passat', 2021, 'D', 2, 'Kombi'), ('Ford Mondeo', 2019, 'D', 7, 'Kombi'), ('Toyota Yaris', 2020, 'B', 1, '5D'), ('VW Golf', 2020, 'C', 6, 'Hatchback'), ('Audi A6', 2021, 'E', 3, 'Sedan'), ('Ford Fiesta', 2020, 'B', NULL, '3D'), ('Toyota Rav4', 2020, 'J', NULL, 'SUV'), ('Lexus NX300H', 2022, 'J', 5, 'SUV'), ('Toyota Corolla', 2020, 'C', 4, 'Hatchback'), ('Lexus ES300H', 2022, 'E', NULL, 'Sedan');

CREATE TABLE Customers (
	CustomerID int NOT NULL AUTO_INCREMENT,
	LastName varchar(255) NOT NULL,
	RentDay int NOT NULL,
	Age int,
	Country varchar(255) NOT NULL,
	DrivingLicense varchar(255) NOT NULL,
	PRIMARY KEY (CustomerID)
);

INSERT INTO Customers (LastName, RentDay, Age, Country, DrivingLicense) VALUES ('Jagna Boryna', 2, 31, 'Poland', 'PL123456'), ('Hans Kloss', 6, 55, 'Germany', 'DEJ23'), ('Nikodem Dyzma', 5, 42, 'Poland', 'PL1000000'), ('Rodion Roskolnikov', 10, 21, 'Russia', 'RU0507'), ('Izabela Lecka', 5, 35, 'Poland', 'PL33333'), ('Wiktor Forst', 7, 40, 'Poland', 'PL007'), ('Jacek Soplica', 2, 63, 'Lithuania', 'LT1791');
