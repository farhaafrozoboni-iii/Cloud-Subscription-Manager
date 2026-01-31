CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    UserName VARCHAR(100),
    Email VARCHAR(100),
    UserCountry VARCHAR(50)
);

CREATE TABLE Services (
    ServiceID INT PRIMARY KEY,
    ServiceName VARCHAR(50), 
    PlanName VARCHAR(50),    
    MonthlyPrice DECIMAL(10, 2)
);

CREATE TABLE Subscriptions (
    SubID INT PRIMARY KEY,
    UserID INT,
    ServiceID INT,
    StartDate DATE,
    Status VARCHAR(20), 
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (ServiceID) REFERENCES Services(ServiceID)
);

CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    UserName VARCHAR(100),
    Email VARCHAR(100),
    UserCountry VARCHAR(50)
);

CREATE TABLE Services (
    ServiceID INT PRIMARY KEY,
    ServiceName VARCHAR(50),
    PlanName VARCHAR(50),
    MonthlyPrice DECIMAL(10, 2)
);

CREATE TABLE Subscriptions (
    SubID INT PRIMARY KEY,
    UserID INT,
    ServiceID INT,
    StartDate DATE,
    Status VARCHAR(20),
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (ServiceID) REFERENCES Services(ServiceID)
);

INSERT INTO Users VALUES 
(1, 'Tanvir Ahmed', 'tanvir@email.com', 'Bangladesh'),
(2, 'Sara Hossain', 'sara@email.com', 'Bangladesh'),
(3, 'John Doe', 'john@email.com', 'USA'),
(4, 'Rahat Ali', 'rahat@email.com', 'Canada'),
(5, 'Mitu Islam', 'mitu@email.com', 'Germany');

INSERT INTO Services VALUES 
(101, 'AWS', 'Free Tier', 0.00),
(102, 'Google Cloud', 'Starter', 10.00),
(103, 'Microsoft Azure', 'Pay-As-You-Go', 50.00),
(104, 'DigitalOcean', 'Droplet Pro', 12.00),
(105, 'Heroku', 'Production', 25.00);

INSERT INTO Subscriptions VALUES 
(501, 1, 101, '2026-01-01', 'Active'),
(502, 2, 103, '2026-01-15', 'Active'),
(503, 3, 102, '2025-12-20', 'Expired'),
(504, 4, 105, '2026-01-10', 'Active'),
(505, 5, 104, '2026-01-25', 'Active');
