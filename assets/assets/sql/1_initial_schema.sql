CREATE TABLE IF NOT EXISTS Users (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Email TEXT,
    FirstName TEXT,
    LastName TEXT,
    FullName TEXT,
    UserName TEXT,
    ApiKey TEXT,
    ApiSecret TEXT,
    PhotoUrl TEXT,
    CompanyId TEXT,
    CompanyName TEXT,
    Token TEXT,
    TokenExpiration TEXT
);

CREATE TABLE IF NOT EXISTS Roles (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
);

CREATE TABLE IF NOT EXISTS UserRoles (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    UserId INTEGER,
    RoleId INTEGER,
    FOREIGN KEY(UserId) REFERENCES User(Id),
    FOREIGN KEY(RoleId) REFERENCES Roles(Id)
);


CREATE TABLE IF NOT EXISTS Notices (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    [Name] TEXT,
    Title TEXT,
    [Description] TEXT,
    PostedDate TEXT,
    IsPublished BOOLEAN,
    IsRead BOOLEAN,
    IsPinned BOOLEAN
);

CREATE TABLE IF NOT EXISTS Notifications(
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    ErpId TEXT,
    StudentId INT,
    Title TEXT,
    [Message] TEXT,
    CreationDateTime TEXT,
    IsRead BOOLEAN,
    FOREIGN KEY(StudentId) REFERENCES Students(Id)
);

CREATE TABLE IF NOT EXISTS PrivacyPolicy (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    [Name] TEXT,
    [Message] TEXT
);