CREATE TABLE Salesperson (
    SalespersonID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    ContactInfo VARCHAR(100)
);

CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    ContactInfo VARCHAR(100)
);

CREATE TABLE Car (
    CarID INT PRIMARY KEY,
    SerialNumber VARCHAR(20) UNIQUE,
    Make VARCHAR(50),
    Model VARCHAR(50),
    Year INT
);

CREATE TABLE Invoice (
    InvoiceID INT PRIMARY KEY,
    SalespersonID INT,
    CustomerID INT,
    CarID INT,
    InvoiceDate DATE,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (SalespersonID) REFERENCES Salesperson(SalespersonID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (CarID) REFERENCES Car(CarID)
);

CREATE TABLE Mechanic (
    MechanicID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    ContactInfo VARCHAR(100)
);

CREATE TABLE ServiceTicket (
    ServiceTicketID INT PRIMARY KEY,
    CarID INT,
    MechanicID INT,
    ServiceDate DATE,
    Description TEXT,
    PartsUsed TEXT,
    TotalCost DECIMAL(10, 2),
    FOREIGN KEY (CarID) REFERENCES Car(CarID),
    FOREIGN KEY (MechanicID) REFERENCES Mechanic(MechanicID)
);

CREATE TABLE ServiceHistory (
    ServiceHistoryID INT PRIMARY KEY,
    CarID INT,
    ServiceTicketID INT,
    ServiceDescription TEXT,
    ServiceDate DATE,
    FOREIGN KEY (CarID) REFERENCES Car(CarID),
    FOREIGN KEY (ServiceTicketID) REFERENCES ServiceTicket(ServiceTicketID)
);