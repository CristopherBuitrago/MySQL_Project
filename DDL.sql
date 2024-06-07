-- Creation and use of database TallerAutomotriz
CREATE DATABASE TallerAutomotriz;
USE TallerAutomotriz;

-- Tablas independientes

-- tabla independiente client
CREATE TABLE client (
    IdClient INT UNSIGNED NOT NULL AUTO_INCREMENT,
    Name1 VARCHAR(85) NOT NULL,
    Name2 VARCHAR(85),
    LastName1 VARCHAR(36) NOT NULL,
    LastName2 VARCHAR(36),
    Address VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    
    CONSTRAINT Pk_Client PRIMARY KEY (IdClient)
);

-- tabla independiente country
CREATE TABLE country (
    CodCountry VARCHAR(5) NOT NULL,
    CountryName VARCHAR(47) NOT NULL,
    Continent VARCHAR(16) NOT NULL,
    
    CONSTRAINT Pk_Country PRIMARY KEY (CodCountry)
);

-- tabla independiente area
CREATE TABLE area (
    IdArea INT UNSIGNED NOT NULL AUTO_INCREMENT,
    AreaName VARCHAR(45) NOT NULL,
    Longitude DECIMAL(15,2) NOT NULL,
    Description MEDIUMTEXT NOT NULL,
    
    CONSTRAINT Pk_Area PRIMARY KEY (IdArea)
);

-- tabla independiente service
CREATE TABLE service (
    IdService INT UNSIGNED NOT NULL AUTO_INCREMENT,
    ServiceName VARCHAR(45) NOT NULL,
    Description MEDIUMTEXT NOT NULL,
    Cost DECIMAL(15,2),
    DaysEstimated INT UNSIGNED,
    
    CONSTRAINT Pk_Service PRIMARY KEY (IdService)
);

-- tabla independiente suplier_status
CREATE TABLE suplier_status (
    IdSuplierStatus INT UNSIGNED NOT NULL AUTO_INCREMENT,
    StatusName VARCHAR(45) NOT NULL,
    Description MEDIUMTEXT NOT NULL,
    
    CONSTRAINT Pk_SuplierStatus PRIMARY KEY (IdSuplierStatus)
);

-- tabla independiente product status
CREATE TABLE product_status (
    IdProductStatus INT UNSIGNED NOT NULL AUTO_INCREMENT,
    StatusName VARCHAR(50) NOT NULL,
    Description MEDIUMTEXT NOT NULL,

    CONSTRAINT Pk_ProductStatus PRIMARY KEY (IdProductStatus)
);

-- tabla independiente range (Gama)
CREATE TABLE `range` (
    IdRange INT UNSIGNED NOT NULL AUTO_INCREMENT,
    RangeName VARCHAR(50) NOT NULL,
    Description MEDIUMTEXT NOT NULL,

    CONSTRAINT Pk_Range PRIMARY KEY (IdRange)
);

-- tabla independiente type
CREATE TABLE type (
    IdType INT UNSIGNED NOT NULL AUTO_INCREMENT,
    TypeName VARCHAR(50) NOT NULL,
    Description MEDIUMTEXT NOT NULL,

    CONSTRAINT Pk_Type PRIMARY KEY (IdType)
);

-- Tablas dependientes

-- tabla dependiente city
CREATE TABLE city (
    CodCity VARCHAR(5) NOT NULL,
    CityName VARCHAR(85) NOT NULL,
    FkCountry VARCHAR(5) NOT NULL,
    
    CONSTRAINT Pk_City PRIMARY KEY (CodCity),
    CONSTRAINT Fk_Country FOREIGN KEY (FkCountry) REFERENCES country (CodCountry)
);

-- tabla dependiente suplier
CREATE TABLE suplier (
    IdSuplier INT UNSIGNED NOT NULL AUTO_INCREMENT,
    SuplierName VARCHAR(45) NOT NULL,
    ContactName VARCHAR(85) NOT NULL,
    Phone VARCHAR(15) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Address VARCHAR(100) NOT NULL,
    FkCity VARCHAR(5),
    FkCountry VARCHAR(5) NOT NULL,
    PostalCode VARCHAR(20) NOT NULL,
    Rfc VARCHAR(13) NOT NULL,
    Web VARCHAR(100),
    RegisterDate DATE NOT NULL,
    FkStatus INT UNSIGNED NOT NULL,
    Notes MEDIUMTEXT,
    
    CONSTRAINT Pk_Suplier PRIMARY KEY (IdSuplier),
    CONSTRAINT Fk_City_Suplier FOREIGN KEY (FkCity) REFERENCES city (CodCity),
    CONSTRAINT Fk_Country_Suplier FOREIGN KEY (FkCountry) REFERENCES country (CodCountry),
    CONSTRAINT Fk_SuplierStatus_Suplier FOREIGN KEY (FkStatus) REFERENCES suplier_status (IdSuplierStatus)
);

-- tabla dependiente piece
CREATE TABLE piece (
    IdPiece INT UNSIGNED NOT NULL AUTO_INCREMENT,
    PieceName VARCHAR(45) NOT NULL,
    Description MEDIUMTEXT NOT NULL,
    Price DECIMAL(15,2) NOT NULL,
    FkSuplier INT UNSIGNED,
    
    CONSTRAINT Pk_Piece PRIMARY KEY (IdPiece),
    CONSTRAINT Fk_Suplier FOREIGN KEY (FkSuplier) REFERENCES suplier (IdSuplier)
);

-- tabla dependiente order_detail
CREATE TABLE order_detail (
    IdOrderDetail INT UNSIGNED NOT NULL AUTO_INCREMENT,
    FkPiece INT UNSIGNED NOT NULL,
    Amount INT UNSIGNED NOT NULL,
    UnitPrice DECIMAL(15, 2) UNSIGNED NOT NULL,
    Totalprice DECIMAL(15,2) UNSIGNED NOT NULL,

    CONSTRAINT Pk_OrderDetail PRIMARY KEY (IdOrderDetail),
    CONSTRAINT Fk_Piece_OrderDetail FOREIGN KEY (FkPiece) REFERENCES piece(IdPiece)
);

-- tabla dependiente inventory
CREATE TABLE inventory (
    IdInventory INT UNSIGNED NOT NULL AUTO_INCREMENT,
    FkPiece INT UNSIGNED NOT NULL,
    Amount INT UNSIGNED,
    FkArea INT UNSIGNED NOT NULL,
    
    CONSTRAINT Pk_Inventory PRIMARY KEY (IdInventory),
    CONSTRAINT Fk_Piece_Inventory FOREIGN KEY (FkPiece) REFERENCES piece (IdPiece),
    CONSTRAINT Fk_Area_Inventory FOREIGN KEY (FkArea) REFERENCES area (IdArea)
);

-- tabla dependiente position
CREATE TABLE position (
    IdPosition INT UNSIGNED NOT NULL AUTO_INCREMENT,
    PositionName VARCHAR(45) NOT NULL,
    Description MEDIUMTEXT NOT NULL,
    FkArea INT UNSIGNED,
    
    CONSTRAINT Pk_Position PRIMARY KEY (IdPosition),
    CONSTRAINT Fk_Area_Position FOREIGN KEY (FkArea) REFERENCES area (IdArea)
);

-- tabla dependiente employe
CREATE TABLE employe (
    IdEmploye INT UNSIGNED NOT NULL AUTO_INCREMENT,
    Name1 VARCHAR(45) NOT NULL,
    Name2 VARCHAR(45),
    LastName1 VARCHAR(45) NOT NULL,
    LastName2 VARCHAR(45),
    Phone VARCHAR(15) NOT NULL,
    FKPosition INT UNSIGNED,
    FkBoss INT UNSIGNED,
    
    CONSTRAINT Pk_Employe PRIMARY KEY (IdEmploye),
    CONSTRAINT Fk_Position_Employe FOREIGN KEY (FkPosition) REFERENCES position (IdPosition),
    CONSTRAINT Fk_Employe_Employe FOREIGN KEY (FkBoss) REFERENCES employe (IdEmploye)
);

-- tabla dependiente purchase_order
CREATE TABLE purchase_order (
    IdPurchaseOrder INT UNSIGNED NOT NULL AUTO_INCREMENT,
    OrderDate DATE NOT NULL,
    FkSuplier INT UNSIGNED NOT NULL,
    FkEmploye INT UNSIGNED NOT NULL,

    CONSTRAINT Pk_PurchaseOrder PRIMARY KEY (IdPurchaseOrder),
    CONSTRAINT Fk_Suplier_PurchaseOrder FOREIGN KEY (FkSuplier) REFERENCES suplier (IdSuplier),
    CONSTRAINT Fk_Employe_PurchaseOrder FOREIGN KEY (FkEmploye) REFERENCES employe (IdEmploye)
);

-- tabla dependiente brand
CREATE TABLE brand (
    CodBrand VARCHAR(5) NOT NULL,
    BrandName VARCHAR(100) NOT NULL,
    FkCountry VARCHAR(5) NOT NULL,
    
    CONSTRAINT Pk_Brand PRIMARY KEY (CodBrand),
    CONSTRAINT Fk_Country_Brand FOREIGN KEY (FkCountry) REFERENCES country (CodCountry)
);

-- tabla dependiente vehicle
CREATE TABLE vehicle (
    IdVehicle INT UNSIGNED NOT NULL AUTO_INCREMENT,
    Plate VARCHAR(6) NOT NULL,
    Model YEAR NOT NULL,
    FkClient INT UNSIGNED NOT NULL,
    FkBrand VARCHAR(5),

    CONSTRAINT Pk_Vehicle PRIMARY KEY (IdVehicle),
    CONSTRAINT Fk_Client_Vehicle FOREIGN KEY (FkClient) REFERENCES client(IdClient),
    CONSTRAINT Fk_Brand_Vehicle FOREIGN KEY (FkBrand) REFERENCES brand(CodBrand)
);

-- tabla dependiente date_client
CREATE TABLE date_client (
    IdDateClient INT UNSIGNED NOT NULL AUTO_INCREMENT,
    Date DATE NOT NULL,
    FkClient INT UNSIGNED NOT NULL,
    FkVehicle INT UNSIGNED NOT NULL,
    FkService INT UNSIGNED NOT NULL,

    CONSTRAINT Pk_DateClient PRIMARY KEY (IdDateClient),
    CONSTRAINT Fk_Client_DateClient FOREIGN KEY (FkClient) REFERENCES client (IdClient),
    CONSTRAINT Fk_Vehicle_DateClient FOREIGN KEY (FkVehicle) REFERENCES vehicle (IdVehicle),
    CONSTRAINT Fk_Service_DateClient FOREIGN KEY (FkService) REFERENCES service (IdService)
);

-- tabla dependiente repair
CREATE TABLE repair (
    IdRepair INT UNSIGNED NOT NULL AUTO_INCREMENT,
    Date DATE NOT NULL,
    FkVehicle INT UNSIGNED NOT NULL,
    FkEmploye INT UNSIGNED NOT NULL,
    FkService INT UNSIGNED NOT NULL,
    TotalCost DECIMAL(15,2) UNSIGNED NOT NULL,
    Description MEDIUMTEXT NOT NULL,

    CONSTRAINT Pk_Repair PRIMARY KEY (IdRepair),
    CONSTRAINT Fk_Vehicle_Repair FOREIGN KEY (FkVehicle) REFERENCES vehicle (IdVehicle),
    CONSTRAINT Fk_Employe_Repair FOREIGN KEY (FkEmploye) REFERENCES employe (IdEmploye),
    CONSTRAINT Fk_Service_Repair FOREIGN KEY (FkService) REFERENCES service (IdService)  
);

-- tabla dependiente parts_used
CREATE TABLE parts_used (
    IdPartsUsed INT UNSIGNED NOT NULL AUTO_INCREMENT,
    FkRepair INT UNSIGNED NOT NULL,
    FkPiece INT UNSIGNED NOT NULL,
    Amount INT UNSIGNED,

    CONSTRAINT Pk_PartsUsed PRIMARY KEY (IdPartsUsed),
    CONSTRAINT Fk_Repair_PartsUsed FOREIGN KEY (FkRepair) REFERENCES repair (IdRepair),
    CONSTRAINT Fk_Piece_PartsUsed FOREIGN KEY (FkPiece) REFERENCES piece (IdPiece)
);

-- tabla dependiente billing
CREATE TABLE billing (
    IdBilling INT UNSIGNED NOT NULL AUTO_INCREMENT,
    Date DATE NOT NULL,
    FkClient INT UNSIGNED NOT NULL,
    FkRepair INT UNSIGNED,
    FkService INT UNSIGNED NOT NULL,
    Total DECIMAL(15,2) UNSIGNED NOT NULL,

    CONSTRAINT Pk_Billing PRIMARY KEY (IdBilling),
    CONSTRAINT Fk_Client_Billing FOREIGN KEY (FkClient) REFERENCES client (IdClient),
    CONSTRAINT Fk_Repair_Billing FOREIGN KEY (FkRepair) REFERENCES repair (IdRepair),
    CONSTRAINT Fk_Service_Billing FOREIGN KEY (FkService) REFERENCES service (IdService)
);

-- tabla dependiente producto
CREATE TABLE product (
    CodProduct VARCHAR(5) NOT NULL,
    ProductName VARCHAR(50) NOT NULL,
    FkRange INT UNSIGNED NOT NULL,
    FkType INT UNSIGNED NOT NULL,
    FkSuplier INT UNSIGNED NOT NULL,
    FkStatus INT UNSIGNED NOT NULL,
    SuplierPrice DECIMAL(15,2) UNSIGNED NOT NULL,
    FinalPrice DECIMAL(15,2) UNSIGNED NOT NULL,

    CONSTRAINT Pk_Product PRIMARY KEY (CodProduct),
    CONSTRAINT Fk_range_Product FOREIGN KEY (FkRange) REFERENCES `range` (IdRange),
    CONSTRAINT Fk_Type_Product FOREIGN KEY (FkType) REFERENCES `type` (IdType),
    CONSTRAINT Fk_Suplier_Product FOREIGN KEY (FkSuplier) REFERENCES suplier (IdSuplier),
    CONSTRAINT Fk_ProductStatus_Product FOREIGN KEY (FkStatus) REFERENCES product_status (IdProductStatus)
);

-- tabla dependiente purchase_product
CREATE TABLE purchase_product (
    FkProduct VARCHAR(5) NOT NULL,
    FkBilling INT UNSIGNED NOT NULL,
    Amount INT UNSIGNED NOT NULL,
    SubTotal DECIMAL(15,2) UNSIGNED NOT NULL,

    CONSTRAINT Pk_PurchaseProduct PRIMARY KEY (FkProduct, FkBilling),
    CONSTRAINT Fk_Product_PurchaseProduct FOREIGN KEY (FkProduct) REFERENCES product (CodProduct),
    CONSTRAINT Fk_Billing_PurchaseProduct FOREIGN KEY (FkBilling) REFERENCES billing (IdBilling)
);