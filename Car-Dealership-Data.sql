INSERT INTO Salesperson (SalespersonID, FirstName, LastName, ContactInfo)
VALUES (1, 'Emily', 'Johnson', 'emily.johnson@email.com'),
		(2, 'Michael', 'Anderson', 'michael.anderson@email.com');
		
INSERT INTO Customer (CustomerID, FirstName, LastName, ContactInfo)
VALUES (1, 'Sarah', 'Smith', 'sarah.smith@email.com');

INSERT INTO Car (CarID, SerialNumber, Make, Model, Year)
VALUES (1, 'ABC123', 'Toyota', 'Corolla', 2022);

INSERT INTO Mechanic (MechanicID, FirstName, LastName, ContactInfo)
VALUES (1, 'Robert', 'Smith', 'robert.smith@email.com');

INSERT INTO Mechanic (MechanicID, FirstName, LastName, ContactInfo)
VALUES (2, 'Laura', 'Johnson', 'laura.johnson@email.com');

INSERT INTO Invoice (InvoiceID, SalespersonID, CustomerID, CarID, InvoiceDate, TotalAmount)
VALUES (1, 1, 1, 1, '2023-10-18', 25000.00);

INSERT INTO Customer (CustomerID, FirstName, LastName, ContactInfo)
VALUES (2, 'David', 'Johnson', 'david.johnson@email.com');

INSERT INTO Car (CarID, SerialNumber, Make, Model, Year)
VALUES (2, 'XYZ456', 'Honda', 'Civic', 2023);

INSERT INTO Invoice (InvoiceID, SalespersonID, CustomerID, CarID, InvoiceDate, TotalAmount)
VALUES (2, 2, 2, 2, '2023-10-18', 28000.00);


