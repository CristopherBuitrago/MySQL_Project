-- Inserciones

-- suplier_status
INSERT INTO suplier_status (IdSuplierStatus, StatusName, Description) VALUES
(1,'Active', 'The supplier is constantly selling products'),
(2,'Inactive', 'The supplier stopped selling products'),
(3,'Regulary', 'We rarely buy from this supplier');

-- country
INSERT INTO country (CodCountry, CountryName, Continent) VALUES
('GER','Germany','Europe'),
('FRA','France','Europe'),
('CHN','China','Asia'),
('USA','United States','North America'),
('JPN','Japan','Asia'),
('ITL','Italy','Europe'),
('SWN','Sweden','Europe'),
('SK','South Korea','Asia');

-- brand
INSERT INTO brand (CodBrand, BrandName, FkCountry) VALUES
('BMW', 'Bayerische Motoren Werke', 'GER'),
('MER', 'Mercedes-Benz', 'GER'),
('TOY', 'Toyota', 'JPN'),
('FIA', 'Fiat', 'ITL'),
('HYU', 'Hyundai', 'SK'),
('VOL', 'Volvo', 'SWN'),
('PEU', 'Peugeot', 'FRA'),
('CHN', 'Changan', 'CHN');

-- city
INSERT INTO city(CodCity, CityName, FkCountry) VALUES
('BER', 'Berlin', 'GER'),
('PAR', 'Paris', 'FRA'),
('SHN', 'Shanghai', 'CHN'),
('NYC', 'New York City', 'USA'),
('TOK', 'Tokyo', 'JPN'),
('ROM', 'Rome', 'ITL'),
('STK', 'Stockholm', 'SWN'),
('SEO', 'Seoul', 'SK');

-- clients
INSERT INTO client (Name1, Name2, LastName1, LastName2, Address, Email) VALUES
('John', 'Michael', 'Smith', 'Johnson', '123 Maple St', 'johnsmith@example.com'),
('Jane', NULL, 'Doe', 'Smith', '456 Oak St', 'janedoe@example.com'),
('Robert', 'Lee', 'Brown', NULL, '789 Pine St', 'robertbrown@example.com'),
('Emily', 'Ann', 'Davis', 'Johnson', '101 Cedar St', 'emilydavis@example.com'),
('Michael', 'James', 'Wilson', 'Williams', '202 Birch St', 'michaelwilson@example.com'),
('Sarah', NULL, 'Moore', 'Miller', '303 Spruce St', 'sarahmoore@example.com'),
('David', 'Alexander', 'Taylor', 'Anderson', '404 Elm St', 'davidtaylor@example.com'),
('Laura', 'Elizabeth', 'Thomas', NULL, '505 Willow St', 'laurathomas@example.com'),
('Daniel', NULL, 'White', 'Martinez', '606 Aspen St', 'danielwhite@example.com'),
('Jessica', 'Marie', 'Harris', 'Thompson', '707 Maple St', 'jessicaharris@example.com'),
('James', NULL, 'Martin', 'Garcia', '808 Oak St', 'jamesmartin@example.com'),
('Linda', 'Susan', 'Martinez', 'Robinson', '909 Pine St', 'lindamartinez@example.com'),
('Christopher', 'David', 'Clark', NULL, '101 Birch St', 'christopherclark@example.com'),
('Patricia', NULL, 'Rodriguez', 'Lewis', '202 Cedar St', 'patriciarodriguez@example.com'),
('Matthew', 'John', 'Lewis', 'Lee', '303 Spruce St', 'matthewlewis@example.com'),
('Barbara', 'Ann', 'Walker', NULL, '404 Elm St', 'barbarawalker@example.com'),
('Joseph', NULL, 'Allen', 'Hall', '505 Willow St', 'josephallen@example.com'),
('Elizabeth', 'Mary', 'Young', 'Hernandez', '606 Aspen St', 'elizabethyoung@example.com'),
('Mark', 'Thomas', 'King', NULL, '707 Maple St', 'markking@example.com'),
('Susan', NULL, 'Wright', 'Lopez', '808 Oak St', 'susanwright@example.com'),
('Steven', 'Andrew', 'Scott', 'Gonzalez', '909 Pine St', 'stevenscott@example.com'),
('Jessica', NULL, 'Green', 'Mitchell', '101 Birch St', 'jessicagreen@example.com'),
('Paul', 'Edward', 'Adams', NULL, '202 Cedar St', 'pauladams@example.com'),
('Nancy', NULL, 'Baker', 'Perez', '303 Spruce St', 'nancybaker@example.com'),
('George', 'Michael', 'Nelson', 'Roberts', '404 Elm St', 'georgenelson@example.com'),
('Karen', NULL, 'Carter', 'Turner', '505 Willow St', 'karencarter@example.com'),
('Kenneth', 'James', 'Mitchell', NULL, '606 Aspen St', 'kennethmitchell@example.com'),
('Lisa', NULL, 'Perez', 'Phillips', '707 Maple St', 'lisaperez@example.com'),
('Donald', 'John', 'Roberts', 'Campbell', '808 Oak St', 'donaldroberts@example.com'),
('Betty', NULL, 'Turner', 'Parker', '909 Pine St', 'bettyturner@example.com'),
('Brian', 'Edward', 'Phillips', NULL, '101 Birch St', 'brianphillips@example.com'),
('Sandra', NULL, 'Campbell', 'Evans', '202 Cedar St', 'sandracampbell@example.com'),
('Edward', 'Thomas', 'Parker', NULL, '303 Spruce St', 'edwardparker@example.com'),
('Ashley', NULL, 'Evans', 'Edwards', '404 Elm St', 'ashleyevans@example.com'),
('Ronald', 'James', 'Collins', NULL, '505 Willow St', 'ronaldcollins@example.com'),
('Kimberly', NULL, 'Stewart', 'Torres', '606 Aspen St', 'kimberlystewart@example.com'),
('Anthony', 'David', 'Sanchez', NULL, '707 Maple St', 'anthonysanchez@example.com'),
('Emily', NULL, 'Morris', 'Peterson', '808 Oak St', 'emilymorris@example.com'),
('Jason', 'John', 'Rogers', NULL, '909 Pine St', 'jasonrogers@example.com'),
('Michelle', NULL, 'Reed', 'Gray', '101 Birch St', 'michellereed@example.com'),
('Kevin', 'Michael', 'Cook', NULL, '202 Cedar St', 'kevincook@example.com'),
('Laura', NULL, 'Morgan', 'Ramirez', '303 Spruce St', 'lauramorgan@example.com'),
('George', 'Edward', 'Bell', NULL, '404 Elm St', 'georgebell@example.com'),
('Amanda', NULL, 'Murphy', 'Howard', '505 Willow St', 'amandamurphy@example.com'),
('Eric', 'James', 'Bailey', NULL, '606 Aspen St', 'ericbailey@example.com'),
('Helen', NULL, 'Rivera', 'Cox', '707 Maple St', 'helenrivera@example.com'),
('Ryan', 'John', 'Cooper', NULL, '808 Oak St', 'ryancooper@example.com'),
('Carol', NULL, 'Richardson', 'Ward', '909 Pine St', 'carolrichardson@example.com'),
('Benjamin', 'Michael', 'Cox', NULL, '101 Birch St', 'benjamincox@example.com'),
('Frances', NULL, 'Ramirez', 'Watson', '202 Cedar St', 'francesramirez@example.com'),
('Justin', 'David', 'Howard', NULL, '303 Spruce St', 'justinhoward@example.com'),
('Dorothy', NULL, 'Ward', 'Brooks', '404 Elm St', 'dorothyward@example.com'),
('Samuel', 'John', 'Watson', NULL, '505 Willow St', 'samuelwatson@example.com'),
('Margaret', NULL, 'Brooks', 'Kelly', '606 Aspen St', 'margaretbrooks@example.com'),
('Frank', 'Edward', 'Kelly', NULL, '707 Maple St', 'frankkelly@example.com'),
('Diane', NULL, 'Sanders', 'Price', '808 Oak St', 'dianesanders@example.com'),
('Alexander', 'James', 'Price', NULL, '909 Pine St', 'alexanderprice@example.com'),
('Cynthia', NULL, 'Bennett', 'Bennett', '101 Birch St', 'cynthiabennett@example.com'),
('Larry', 'Michael', 'Wood', NULL, '202 Cedar St', 'larrywood@example.com'),
('Angela', NULL, 'Barnes', 'Ross', '303 Spruce St', 'angelabarnes@example.com'),
('Jeffrey', 'John', 'Ross', NULL, '404 Elm St', 'jeffreyross@example.com'),
('Rebecca', NULL, 'Henderson', 'Henderson', '505 Willow St', 'rebeccahenderson@example.com'),
('Timothy', 'David', 'Coleman', NULL, '606 Aspen St', 'timothycoleman@example.com'),
('Sharon', NULL, 'Jenkins', 'Jenkins', '707 Maple St', 'sharonjenkins@example.com'),
('Aaron', 'Michael', 'Perry', NULL, '808 Oak St', 'aaronperry@example.com'),
('Rachel', NULL, 'Powell', 'Powell', '909 Pine St', 'rachelpowell@example.com'),
('Walter', 'James', 'Long', NULL, '101 Birch St', 'walterlong@example.com'),
('Stephanie', NULL, 'Patterson', 'Patterson', '202 Cedar St', 'stephaniepatterson@example.com'),
('Gregory', 'John', 'Hughes', NULL, '303 Spruce St', 'gregoryhughes@example.com'),
('Janet', NULL, 'Flores', 'Flores', '404 Elm St', 'janetflores@example.com'),
('Dennis', 'David', 'Washington', NULL, '505 Willow St', 'denniswashington@example.com'),
('Carolyn', NULL, 'Butler', 'Butler', '606 Aspen St', 'carolynbutler@example.com'),
('Patrick', 'Michael', 'Simmons', NULL, '707 Maple St', 'patricksimmons@example.com'),
('Maria', NULL, 'Foster', 'Foster', '808 Oak St', 'mariafoster@example.com'),
('Adam', 'John', 'Gonzalez', NULL, '909 Pine St', 'adamgonzalez@example.com'),
('Deborah', NULL, 'Bryant', 'Bryant', '101 Birch St', 'deborahbryant@example.com'),
('Charles', 'David', 'Alexander', NULL, '202 Cedar St', 'charlesalexander@example.com'),
('Melissa', NULL, 'Russell', 'Russell', '303 Spruce St', 'melissarussell@example.com'),
('Anthony', 'James', 'Griffin', NULL, '404 Elm St', 'anthonygriffin@example.com'),
('Sandra', NULL, 'Diaz', 'Diaz', '505 Willow St', 'sandradiaz@example.com'),
('Mark', 'Michael', 'Hayes', NULL, '606 Aspen St', 'markhayes@example.com'),
('Karen', NULL, 'Myers', 'Myers', '707 Maple St', 'karenmyers@example.com'),
('Jason', 'John', 'Ford', NULL, '808 Oak St', 'jasonford@example.com'),
('Dorothy', NULL, 'Hamilton', 'Hamilton', '909 Pine St', 'dorothyhamilton@example.com'),
('Matthew', 'David', 'Graham', NULL, '101 Birch St', 'matthewgraham@example.com'),
('Donna', NULL, 'Sullivan', 'Sullivan', '202 Cedar St', 'donnasullivan@example.com'),
('Scott', 'James', 'Wallace', NULL, '303 Spruce St', 'scottwallace@example.com'),
('Angela', NULL, 'Woods', 'Woods', '404 Elm St', 'angelawoods@example.com'),
('Edward', 'Michael', 'Cole', NULL, '505 Willow St', 'edwardcole@example.com');

-- service
INSERT INTO service (ServiceName, Description, Cost, DaysEstimated) VALUES
('Sell of products', 'Sell of products to clients who wants to improve their transport',NULL,NULL),
('Daily Maintaining', 'Daily Maintaining to cars and motorcycles, includes washing, repairs, etc', 1000.00, NULL),
('Monthly Maintaining', 'Monthly Maintaining to cars and motorcycles, includes oil change, tire change, etc', 100.00, 1),
('General problems', 'Fix general/Common problems like change a wheel, change oil, wheel damage, etc', 50.25, 1),
('Specialized problems', 'Fix specialized problems like engine problems, transmission problems, etc', 100.99, 1),
('Car wash', 'Car wash service', 20.00, 1),
('Motorcycle wash', 'Motorcycle wash service', 15.00, 1),
('Car detailing', 'Car detailing service', 50.00, 1),
('Motorcycle detailing', 'Motorcycle detailing service', 40.00, 1),
('Car inspection', 'Car inspection service', 30.00, 1),
('Motorcycle inspection', 'Motorcycle inspection service', 25.00, 1),
('Car repair', 'Car repair service', 100.00, 1),
('Motorcycle repair', 'Motorcycle repair service', 80.00, 1),
('Car maintenance', 'Car maintenance service', 50.00, 1),
('Motorcycle maintenance', 'Motorcycle maintenance service', 40.00, 1);

-- area
INSERT INTO area (AreaName, Longitude, Description) VALUES
('Reception', 40.73, 'The area where customers are greeted and their vehicles are logged in for service.'),
('Inspection Bay', 40.74, 'Area dedicated to initial inspection of vehicles to diagnose issues.'),
('Repair Bay', 40.75, 'Area where mechanical repairs are performed on the vehicles.'),
('Body Shop', 40.76, 'Section of the workshop dedicated to body repairs and painting.'),
('Parts Storage', 40.77, 'Storage area for spare parts and tools required for vehicle repairs.'),
('Waiting Area', 40.78, 'Comfortable waiting area for customers while their vehicles are being serviced.'),
('Office', 40.79, 'Office area for administrative tasks and customer service.'),
('Wash Area', 40.80, 'Designated area for washing and detailing vehicles.'),
('Diagnostics', 40.81, 'Area equipped with diagnostic tools and computers for vehicle system analysis.'),
('Alignment Bay', 40.82, 'Area with specialized equipment for wheel alignment and balancing.');

-- range
INSERT INTO `range` (RangeName, Description) VALUES
('Basic', 'Basic range of products for general maintenance'),
('Premium', 'Premium range of products for high-performance vehicles'),
('Specialized', 'Specialized range of products for specific vehicle types'),
('Economy', 'Economy range of products for budget-conscious customers'),
('Deluxe', 'Deluxe range of products for luxury vehicles'),
('Performance', 'Performance range of products for high-performance vehicles'),
('Classic', 'Classic range of products for vintage vehicles'),
('Commercial', 'Commercial range of products for fleet vehicles'),
('Off-road', 'Off-road range of products for vehicles used in off-road conditions'),
('Racing', 'Racing range of products for high-performance racing vehicles');

-- product_type
INSERT INTO type (TypeName, Description) VALUES
('Oil', 'Engine oil and lubricants'),
('Tire', 'Tires and tire accessories'),
('Battery', 'Batteries and battery accessories'),
('Brake', 'Brake pads and brake accessories'),
('Suspension', 'Suspension components and accessories'),
('Electrical', 'Electrical components and accessories'),
('Body', 'Body panels and body accessories'),
('Interior', 'Interior components and accessories'),
('Exterior', 'Exterior components and accessories'),
('Performance', 'Performance-enhancing components and accessories'),
('Safety', 'Safety components and accessories'),
('Tools', 'Tools and equipment for vehicle maintenance and repair');

-- product_status
INSERT INTO product_status (StatusName, Description) VALUES
('In Stock', 'Product is available in stock'),
('Out of Stock', 'Product is currently out of stock'),
('Backordered', 'Product is backordered and will be restocked soon'),
('Discontinued', 'Product is no longer available or has been discontinued'),
('Special Order', 'Product is available by special order only'),
('New Arrival', 'Product is a new arrival and has just been added to inventory'),
('Clearance', 'Product is on clearance and is being sold at a discounted price'),
('Used', 'Product is used or refurbished'),
('Demo', 'Product is a demonstration model or has been used for display purposes');

-- suplier
INSERT INTO suplier (SuplierName, ContactName, Phone, Email, Address, FkCity, FkCountry, PostalCode, Rfc, Web, RegisterDate, FkStatus, Notes) VALUES
('AutoParts Co.', 'John Doe', '555-1234', 'contact@autopartsco.com', '123 Elm St', 'BER', 'GER', '10115', 'DE123456789', 'www.autopartsco.com', '2024-01-10', 1, 'Supplier of various auto parts'),
('Global Engines', 'Jane Smith', '555-5678', 'jane@globalengines.com', '456 Oak St', 'PAR', 'FRA', '75001', 'FR987654321', 'www.globalengines.com', '2023-12-01', 2, 'Supplier of engine components'),
('QuickFix Supplies', 'Robert Brown', '555-8765', 'robert@quickfixsupplies.com', '789 Pine St', 'SHN', 'CHN', '200001', 'CN123456789', NULL, '2024-03-15', 3, 'Provider of quick fix supplies'),
('Luxury Auto', 'Emily Davis', '555-4321', 'emily@luxuryauto.com', '101 Cedar St', 'NYC', 'USA', '10001', 'US987654321', 'www.luxuryauto.com', '2024-02-20', 1, 'Luxury car parts supplier'),
('Performance Parts', 'Michael Johnson', '555-9101', 'michael@performanceparts.com', '202 Birch St', 'TOK', 'JPN', '100-0001', 'JP123456789', 'www.performanceparts.com', '2023-11-30', 2, 'High performance car parts'),
('EcoCar Supplies', 'Sarah Wilson', '555-3456', 'sarah@ecocarsupplies.com', '303 Spruce St', 'ROM', 'ITL', '00100', 'IT987654321', 'www.ecocarsupplies.com', '2024-04-10', 3, 'Eco-friendly car supplies'),
('Electric Auto', 'David Lee', '555-7890', 'david@electricauto.com', '404 Elm St', 'STK', 'SWN', '111 21', 'SE123456789', 'www.electricauto.com', '2023-10-05', 1, 'Electric vehicle parts supplier'),
('SafetyFirst Co.', 'Laura Martinez', '555-0123', 'laura@safetyfirst.com', '505 Willow St', 'SEO', 'SK', '04524', 'KR987654321', 'www.safetyfirst.com', '2024-01-25', 2, 'Supplier of safety equipment'),
('HeavyDuty Parts', 'James Anderson', '555-6789', 'james@heavydutyparts.com', '606 Aspen St', 'BER', 'GER', '10117', 'DE123456788', 'www.heavydutyparts.com', '2024-05-12', 3, 'Parts for heavy-duty vehicles'),
('Speedy Repairs', 'Patricia Thomas', '555-4567', 'patricia@speedyrepairs.com', '707 Maple St', 'PAR', 'FRA', '75002', 'FR987654320', NULL, '2023-12-10', 1, 'Quick repair services'),
('CarCare Inc.', 'Christopher Miller', '555-2345', 'christopher@carcareinc.com', '808 Oak St', 'SHN', 'CHN', '200002', 'CN123456788', 'www.carcareinc.com', '2024-03-18', 2, 'Automotive care products'),
('Ultimate Parts', 'Jessica Garcia', '555-9876', 'jessica@ultimateparts.com', '909 Pine St', 'NYC', 'USA', '10002', 'US987654320', 'www.ultimateparts.com', '2024-02-22', 3, 'Ultimate car parts supplier'),
('MotoTech', 'Anthony Hernandez', '555-3210', 'anthony@mototech.com', '101 Birch St', 'TOK', 'JPN', '100-0002', 'JP123456788', 'www.mototech.com', '2023-11-25', 1, 'Motorcycle parts and accessories'),
('GreenAuto', 'Amanda Clark', '555-6543', 'amanda@greenauto.com', '202 Cedar St', 'ROM', 'ITL', '00101', 'IT987654320', 'www.greenauto.com', '2024-04-12', 2, 'Green automotive solutions'),
('TechAuto', 'Ryan Rodriguez', '555-0987', 'ryan@techauto.com', '303 Spruce St', 'STK', 'SWN', '111 22', 'SE123456788', 'www.techauto.com', '2023-10-15', 3, 'Supplier of tech auto parts'),
('Urban Motors', 'Karen Lewis', '555-8764', 'karen@urbanmotors.com', '404 Elm St', 'SEO', 'SK', '04525', 'KR987654320', 'www.urbanmotors.com', '2024-01-28', 1, 'Urban vehicle solutions'),
('AutoGear', 'Joshua Walker', '555-2109', 'joshua@autogear.com', '505 Willow St', 'BER', 'GER', '10118', 'DE123456787', 'www.autogear.com', '2024-05-15', 2, 'Automotive gears and tools'),
('DriveLine', 'Brandon Hall', '555-6780', 'brandon@driveline.com', '606 Aspen St', 'PAR', 'FRA', '75003', 'FR987654319', NULL, '2023-12-15', 3, 'Driveline components'),
('Precision Parts', 'Rebecca Allen', '555-4320', 'rebecca@precisionparts.com', '707 Maple St', 'SHN', 'CHN', '200003', 'CN123456787', 'www.precisionparts.com', '2024-03-20', 1, 'Precision automotive parts'),
('ProAuto', 'Lisa Young', '555-3450', 'lisa@proauto.com', '808 Oak St', 'NYC', 'USA', '10003', 'US987654319', 'www.proauto.com', '2024-02-24', 2, 'Professional auto parts');

-- piece
INSERT INTO piece (PieceName, Description, Price ,FkSuplier) VALUES
('Air Filter', 'High-quality air filter for improved engine performance', 15.99, 1),
('Oil Filter', 'Premium oil filter for optimal engine protection', 12.99, 1),
('Brake Pads', 'High-performance brake pads for improved stopping power', 29.99, 3),
('Spark Plugs', 'High-quality spark plugs for improved engine efficiency', 19.99, 6),
('Fuel Filter', 'Premium fuel filter for improved fuel efficiency', 14.99, 1),
('Battery', 'High-performance battery for improved starting power', 49.99, 5),
('Alternator', 'High-quality alternator for improved electrical system performance', 69.99, 7),
('Starter Motor', 'Premium starter motor for improved starting power', 79.99, 1),
('Water Pump', 'High-quality water pump for improved cooling system performance', 39.99, 1),
('Timing Belt', 'Premium timing belt for improved engine performance', 29.99, 1),
('Drive Belt', 'High-quality drive belt for improved engine performance', 19.99, 20),
('Radiator', 'High-performance radiator for improved cooling system performance', 99.99, 4),
('Exhaust System', 'Premium exhaust system for improved engine performance', 149.99, 1),
('Suspension Kit', 'High-quality suspension kit for improved handling and ride comfort', 199.99, 19),
('Brake Rotors', 'Premium brake rotors for improved braking performance', 49.99, 3),
('Wheel Bearings', 'High-quality wheel bearings for improved wheel performance', 29.99, 16),
('Tire Pressure Sensor', 'Premium tire pressure sensor for improved safety and fuel efficiency', 19.00, 10),
('Air Conditioning Compressor', 'High-quality air conditioning compressor for improved cooling performance', 99.99, 15),
('Power Steering Pump', 'Premium power steering pump for improved steering performance', 79.99, 1),
('Fuel Injector', 'High-quality fuel injector for improved engine performance', 29.99, 1),
('Ignition Coil', 'Premium ignition coil for improved engine performance', 19.99, 1),
('Crankshaft Position Sensor', 'High-quality crankshaft position sensor for improved engine performance', 299.99, 1),
('Camshaft Position Sensor', 'Premium camshaft position sensor for improved engine performance', 249.45, 1),
('Oxygen Sensor', 'High-quality oxygen sensor for improved engine performance', 199.99, 1),
('Fuel Pump', 'Premium fuel pump for improved fuel delivery', 149.99, 1),
('Engine Mount', 'High-quality engine mount for improved engine performance', 29.99, 6);

-- ORDER DETAIL
INSERT INTO order_detail (FkPiece, Amount, UnitPrice, TotalPrice) VALUES
(1, 2, 15.99, 31.98),
(2, 3, 12.99, 38.97),
(3, 1, 29.99, 29.99),
(4, 2, 19.99, 39.98),
(5, 1, 14.99, 14.99),
(6, 1, 49.99, 49.99),
(7, 1, 69.99, 69.99),
(8, 1, 79.99, 79.99),
(9, 1, 39.99, 39.99),
(10, 1, 29.99, 29.99),
(11, 1, 19.99, 19.99),
(12, 1, 99.99, 99.99),
(13, 1, 149.99, 149.99),
(14, 1, 199.99, 199.99),
(15, 1, 49.99, 49.99),
(16, 1, 29.99, 29.99),
(17, 1, 19.00, 19.00),
(18, 1, 99.99, 99.99),
(19, 1, 79.99, 79.99);

-- inventory
INSERT INTO inventory (FkPiece, Amount, FkArea, AvaliableSpace) VALUES
(1, 50, 1, 70),    
(2, 30, 2, 70),    
(3, 20, 3, 70),    
(4, 40, 4, 70),    
(5, 60, 5, 70),    
(6, 25, 6, 70),    
(7, 35, 7, 70),    
(8, 45, 8, 70),    
(9, 55, 9, 70),    
(10, 65, 10, 70),  
(11, 15, 1, 70),   
(12, 10, 2, 70),   
(13, 20, 3, 70),   
(14, 30, 4, 70),   
(15, 25, 5, 70),   
(16, 35, 6, 70),   
(17, 40, 7, 70),   
(18, 50, 8, 70),   
(19, 60, 9, 70),   
(20, 70, 10, 70);

-- position
INSERT INTO position (PositionName, Description, FkArea) VALUES
('Receptionist', 'Responsible for greeting customers and managing inquiries at the reception area.', 1),
('Mechanic', 'Skilled technician responsible for diagnosing and repairing vehicle issues.', 3),
('Service Advisor', 'Provides guidance and recommendations to customers regarding their vehicle service needs.', 7),
('Parts Specialist', 'Assists customers in selecting the right parts and accessories for their vehicles.', 5),
('Detailer', 'Responsible for cleaning and detailing vehicles to ensure they look their best.', 8),
('Inspector', 'Conducts thorough inspections of vehicles to identify any existing or potential issues.', 2),
('Body Technician', 'Specializes in repairing and restoring vehicle body panels and structures.', 4),
('Parts Manager', 'Oversees inventory management and procurement of parts and accessories.', 5),
('Service Manager', 'Manages the overall operation of the service department and ensures customer satisfaction.', 7),
('Diagnostic Technician', 'Uses advanced diagnostic tools to identify and troubleshoot vehicle system issues.', 9),
('Alignment Technician', 'Specializes in aligning and balancing vehicle wheels for optimal performance.', 10),
('Sales Associate', 'Assists customers in selecting and purchasing vehicles or automotive products.', 1),
('Accountant', 'Handles financial transactions, payroll, and accounting tasks for the organization.', 6),
('HR Manager', 'Oversees human resources functions, including recruitment and employee relations.', 6),
('Marketing Specialist', 'Develops and implements marketing strategies to promote the business and attract customers.', 6),
('IT Specialist', 'Provides technical support and maintains the organization IT infrastructure.', 6),
('Customer Service Representative', 'Handles customer inquiries, complaints, and feedback in a professional manner.', 7),
('Workshop Foreman', 'Supervises workshop operations and ensures efficient workflow and quality workmanship.', 3),
('Quality Assurance Inspector', 'Conducts quality inspections to ensure compliance with industry standards and regulations.', 2),
('Logistics Coordinator', 'Coordinates the movement of vehicles, parts, and equipment to and from the workshop.', 5);

-- employe
INSERT INTO employe (Name1, Name2, LastName1, LastName2, Phone, FKPosition, FkBoss) VALUES
('John', 'Michael', 'Doe', 'Smith', '123-456-7890', 1, NULL),
('Alice', NULL, 'Johnson', NULL, '234-567-8901', 2, 1),
('Robert', 'James', 'Williams', 'Brown', '345-678-9012', 3, 1),
('Emily', NULL, 'Jones', NULL, '456-789-0123', 4, 1),
('Michael', 'David', 'Taylor', 'Wilson', '567-890-1234', 5, 1),
('Jessica', NULL, 'Martinez', NULL, '678-901-2345', 6, 2),
('William', 'Christopher', 'Garcia', 'Lee', '789-012-3456', 7, 2),
('Emma', NULL, 'Rodriguez', NULL, '890-123-4567', 8, 2),
('Daniel', 'Joseph', 'Hernandez', 'Miller', '901-234-5678', 9, 3),
('Olivia', NULL, 'Lopez', NULL, '012-345-6789', 10, 3),
('Sophia', 'Andrew', 'Gonzalez', 'Davis', '321-654-9870', 11, 4),
('Alexander', NULL, 'Wilson', NULL, '432-765-0981', 12, 4),
('Ava', NULL, 'Anderson', NULL, '543-876-1092', 13, 5),
('Noah', 'Benjamin', 'Thomas', 'Clark', '654-987-2109', 14, 5),
('Mia', NULL, 'White', NULL, '765-109-4321', 15, 6),
('Ethan', NULL, 'Hall', NULL, '876-210-9432', 16, 6),
('Charlotte', 'Elijah', 'King', 'Lewis', '987-321-0987', 17, 7),
('Benjamin', NULL, 'Scott', NULL, '098-432-1098', 18, 7),
('Amelia', NULL, 'Young', NULL, '109-543-2109', 19, 8),
('James', 'Jacob', 'Brown', 'Hill', '210-654-3210', 20, 8);

-- purchase order
INSERT INTO purchase_order (OrderDate, FkSuplier, FkEmploye) VALUES
('2023-01-01', 1, 1),
('2023-02-05', 2, 2),
('2023-03-10', 3, 3),
('2023-04-15', 4, 4),
('2023-05-20', 5, 5),
('2023-06-25', 6, 6),
('2023-07-30', 7, 7),
('2023-08-02', 8, 8),
('2023-09-08', 9, 9),
('2023-10-12', 10, 10),
('2023-11-18', 11, 11),
('2023-12-22', 12, 12),
('2024-01-02', 1, 13),
('2024-02-06', 2, 14),
('2024-03-11', 3, 15),
('2024-04-16', 4, 16),
('2024-05-21', 5, 17),
('2024-06-26', 6, 18),
('2024-07-31', 7, 19),
('2024-08-03', 8, 20),
('2024-09-09', 9, 1),
('2024-10-13', 10, 2),
('2024-11-19', 11, 3),
('2024-12-23', 12, 4),
('2025-01-03', 1, 5),
('2025-02-07', 2, 6),
('2025-03-12', 3, 7),
('2025-04-17', 4, 8),
('2025-05-22', 5, 9),
('2025-06-27', 6, 10),
('2025-07-02', 7, 11),
('2025-08-04', 8, 12),
('2025-09-10', 9, 13),
('2025-10-14', 10, 14),
('2025-11-20', 11, 15),
('2025-12-24', 12, 16),
('2026-01-04', 1, 17),
('2026-02-08', 2, 18),
('2026-03-13', 3, 19),
('2026-04-18', 4, 20),
('2026-05-23', 5, 1),
('2026-06-28', 6, 2),
('2026-07-03', 7, 3),
('2026-08-05', 8, 4),
('2026-09-11', 9, 5),
('2026-10-15', 10, 6),
('2026-11-21', 11, 7),
('2026-12-25', 12, 8),
('2027-01-05', 1, 9),
('2027-02-09', 2, 10),
('2027-03-14', 3, 11),
('2027-04-19', 4, 12),
('2027-05-24', 5, 13),
('2027-06-29', 6, 14),
('2027-07-04', 7, 15),
('2027-08-06', 8, 16),
('2027-09-12', 9, 17),
('2027-10-16', 10, 18),
('2027-11-22', 11, 19),
('2027-12-26', 12, 20);

-- vehicle
INSERT INTO vehicle (Plate, Model, FkClient, FkBrand) VALUES
('ABC123', 2018, 1, 'BMW'),
('XYZ456', 2019, 1, 'MER'),
('DEF789', 2020, 1, 'TOY'),
('GHI012', 2017, 2, 'FIA'),
('JKL345', 2016, 2, 'HYU'),
('MNO678', 2015, 2, 'VOL'),
('PQR901', 2014, 3, 'PEU'),
('STU234', 2013, 3, 'CHN'),
('VWX567', 2012, 3, 'BMW'),
('YZA890', 2011, 4, 'MER'),
('BCD123', 2010, 4, 'TOY'),
('EFG456', 2009, 4, 'FIA'),
('HIJ789', 2008, 5, 'HYU'),
('KLM012', 2007, 5, 'VOL'),
('NOP345', 2006, 5, 'PEU'),
('QRS678', 2005, 6, 'CHN'),
('STU901', 2004, 6, 'BMW'),
('VWX234', 2003, 6, 'MER'),
('YZA567', 2002, 7, 'TOY'),
('BCD890', 2001, 7, 'FIA'),
('EFG123', 2000, 7, 'HYU'),
('HIJ456', 1999, 8, 'VOL'),
('KLM789', 1998, 8, 'PEU'),
('NOP012', 1997, 8, 'CHN'),
('QRS345', 1996, 9, 'BMW'),
('STU678', 1995, 9, 'MER'),
('VWX901', 1994, 9, 'TOY'),
('YZA234', 1993, 10, 'FIA'),
('BCD567', 1992, 10, 'HYU'),
('EFG890', 1991, 10, 'VOL'),
('HIJ123', 1990, 11, 'PEU'),
('KLM456', 1989, 11, 'CHN'),
('NOP789', 1988, 11, 'BMW'),
('QRS012', 1987, 12, 'MER'),
('STU345', 1986, 12, 'TOY'),
('VWX678', 1985, 12, 'FIA'),
('YZA901', 1984, 13, 'HYU'),
('BCD234', 1983, 13, 'VOL'),
('EFG567', 1982, 13, 'PEU'),
('HIJ890', 1981, 14, 'CHN'),
('KLM123', 1980, 14, 'BMW'),
('NOP456', 1979, 14, 'MER'),
('QRS789', 1978, 15, 'TOY'),
('STU012', 1977, 15, 'FIA'),
('VWX345', 1976, 15, 'HYU'),
('YZA678', 1975, 16, 'VOL'),
('BCD901', 1974, 16, 'PEU'),
('EFG234', 1973, 16, 'CHN'),
('HIJ567', 1972, 17, 'BMW'),
('KLM890', 1971, 17, 'MER'),
('NOP123', 1970, 17, 'TOY'),
('QRS456', 1969, 18, 'FIA'),
('STU789', 1968, 18, 'HYU'),
('VWX012', 1967, 18, 'VOL'),
('YZA345', 1966, 19, 'PEU'),
('BCD678', 1965, 19, 'CHN'),
('EFG901', 1964, 19, 'BMW'),
('HIJ234', 1963, 20, 'MER'),
('KLM567', 1962, 20, 'TOY'),
('NOP890', 1961, 20, 'FIA'),
('QRS123', 1960, 21, 'HYU'),
('STU456', 1959, 21, 'VOL'),
('VWX789', 1958, 21, 'PEU'),
('YZA012', 1957, 22, 'CHN');

-- date_client
-- Inserting 40 rows of data into the date_client table
INSERT INTO date_client (Date, FkClient, FkVehicle, FkService) VALUES
    ('2024-01-01', 1, 1, 1),
    ('2024-01-02', 2, 2, 2),
    ('2024-01-03', 3, 3, 3),
    ('2024-01-04', 4, 4, 4),
    ('2024-01-05', 5, 5, 5),
    ('2024-01-06', 6, 6, 6),
    ('2024-01-07', 7, 7, 7),
    ('2024-01-08', 8, 8, 8),
    ('2024-01-09', 9, 9, 9),
    ('2024-01-10', 10, 10, 10),
    ('2024-01-11', 11, 11, 11),
    ('2024-01-12', 12, 12, 12),
    ('2024-01-13', 13, 13, 13),
    ('2024-01-14', 14, 14, 14),
    ('2024-01-15', 15, 15, 15);

-- repair
INSERT INTO repair (Date, FkVehicle, FkEmploye, FkService, TotalCost, Description, WorkedHours)
VALUES
    ('2024-01-05', 1, 1, 1, 150.00, 'Engine repair', 10),
    ('2024-01-10', 2, 2, 2, 200.00, 'Brake replacement', 10),
    ('2024-01-15', 3, 3, 3, 300.00, 'Transmission overhaul',5),
    ('2024-01-20', 4, 4, 4, 250.00, 'Oil change and filter replacement',4),
    ('2024-01-25', 5, 5, 5, 180.00, 'Tire rotation and balancing',2),
    ('2024-02-01', 6, 6, 1, 220.00, 'Suspension repair',2),
    ('2024-02-05', 7, 7, 2, 190.00, 'Battery replacement',2),
    ('2024-02-10', 8, 8, 3, 280.00, 'Cooling system flush',2),
    ('2024-02-15', 9, 9, 4, 230.00, 'Spark plug replacement',2),
    ('2024-02-20', 10, 10, 5, 170.00, 'Wheel alignment',2),
    ('2024-02-25', 11, 11, 1, 200.00, 'Exhaust system repair',2),
    ('2024-03-01', 12, 12, 2, 210.00, 'Air conditioning recharge',2),
    ('2024-03-05', 13, 13, 3, 320.00, 'Electrical system diagnosis',5),
    ('2024-03-10', 14, 14, 4, 240.00, 'Fuel injector cleaning',5),
    ('2024-03-15', 15, 15, 5, 160.00, 'Headlight replacement',5),
    ('2024-03-20', 1, 1, 1, 170.00, 'Ignition coil replacement',5),
    ('2024-03-25', 2, 2, 2, 190.00, 'Starter motor replacement',5),
    ('2024-04-01', 3, 3, 3, 310.00, 'Brake pad replacement', 10),
    ('2024-04-05', 4, 4, 4, 220.00, 'Radiator replacement', 10),
    ('2024-04-10', 5, 5, 5, 150.00, 'Alternator repair', 10);

-- parts used
INSERT INTO used_parts (FkRepair, FkPiece, Amount)
VALUES
    (1, 1, 2),  -- Repair 1 used 2 pieces of Piece 1
    (2, 2, 3),  -- Repair 2 used 3 pieces of Piece 2
    (3, 3, 1),  -- Repair 3 used 1 piece of Piece 3
    (4, 4, 4),  -- Repair 4 used 4 pieces of Piece 4
    (5, 5, 2),  -- Repair 5 used 2 pieces of Piece 5
    (6, 6, 3),  -- Repair 6 used 3 pieces of Piece 6
    (7, 7, 1),  -- Repair 7 used 1 piece of Piece 7
    (8, 8, 4),  -- Repair 8 used 4 pieces of Piece 8
    (9, 9, 2),  -- Repair 9 used 2 pieces of Piece 9
    (10, 10, 3),  -- Repair 10 used 3 pieces of Piece 10
    (11, 11, 1),  -- Repair 11 used 1 piece of Piece 11
    (12, 12, 4),  -- Repair 12 used 4 pieces of Piece 12
    (13, 13, 2),  -- Repair 13 used 2 pieces of Piece 13
    (14, 14, 3),  -- Repair 14 used 3 pieces of Piece 14
    (15, 15, 1),  -- Repair 15 used 1 piece of Piece 15
    (16, 1, 2),  -- Repair 16 used 2 pieces of Piece 1
    (17, 2, 3),  -- Repair 17 used 3 pieces of Piece 2
    (18, 3, 1),  -- Repair 18 used 1 piece of Piece 3
    (19, 4, 4),  -- Repair 19 used 4 pieces of Piece 4
    (20, 5, 2);  -- Repair 20 used 2 pieces of Piece 5

-- billing
INSERT INTO billing (Date, FkClient, FkRepair, FkService, Total)
VALUES
    ('2023-01-05', 1, 1, 1, 200.00),  -- Bill for Repair 1, Service 1 for Client 1
    ('2023-02-10', 2, 2, 2, 300.00),  -- Bill for Repair 2, Service 2 for Client 2
    ('2023-03-15', 3, 3, 3, 150.00),  -- Bill for Repair 3, Service 3 for Client 3
    ('2023-04-20', 4, 4, 4, 400.00),  -- Bill for Repair 4, Service 4 for Client 4
    ('2023-05-25', 5, 5, 5, 250.00),  -- Bill for Repair 5, Service 5 for Client 5
    ('2023-06-30', 6, 6, 6, 350.00),  -- Bill for Repair 6, Service 6 for Client 6
    ('2023-07-05', 7, 7, 7, 175.00),  -- Bill for Repair 7, Service 7 for Client 7
    ('2023-08-10', 8, 8, 8, 450.00),  -- Bill for Repair 8, Service 8 for Client 8
    ('2023-09-15', 9, 9, 9, 200.00),  -- Bill for Repair 9, Service 9 for Client 9
    ('2023-10-20', 10, 10, 10, 300.00),  -- Bill for Repair 10, Service 10 for Client 10
    ('2023-11-25', 11, 11, 11, 150.00),  -- Bill for Repair 11, Service 11 for Client 11
    ('2023-12-30', 12, 12, 12, 400.00),  -- Bill for Repair 12, Service 12 for Client 12
    ('2024-01-05', 13, 13, 13, 200.00),  -- Bill for Repair 13, Service 13 for Client 13
    ('2024-02-10', 14, 14, 14, 300.00),  -- Bill for Repair 14, Service 14 for Client 14
    ('2024-03-15', 15, 15, 15, 150.00),  -- Bill for Repair 15, Service 15 for Client 15
    ('2024-04-20', 16, 16, 1, 200.00),  -- Bill for Repair 16, Service 1 for Client 1
    ('2024-05-25', 17, 17, 2, 300.00),  -- Bill for Repair 17, Service 2 for Client 2
    ('2024-06-30', 18, 18, 3, 150.00),  -- Bill for Repair 18, Service 3 for Client 3
    ('2024-07-05', 19, 19, 4, 400.00),  -- Bill for Repair 19, Service 4 for Client 4
    ('2024-08-10', 20, 20, 5, 250.00);  -- Bill for Repair 20, Service 5 for Client 5

-- product
-- Example data for the product table
INSERT INTO product (CodProduct, ProductName, FkRange, FkType, FkSuplier, FkStatus, SuplierPrice, FinalPrice)
VALUES
    ('P001', 'Engine Oil', 1, 1, 1, 1, 10.00, 15.00),    -- Product P001 details
    ('P002', 'Brake Pads', 2, 2, 2, 1, 20.00, 30.00),    -- Product P002 details
    ('P003', 'Spark Plugs', 3, 3, 3, 1, 5.00, 8.00),    -- Product P003 details
    ('P004', 'Air Filter', 4, 4, 4, 1, 8.00, 12.00),    -- Product P004 details
    ('P005', 'Tire', 5, 5, 5, 1, 50.00, 70.00),    -- Product P005 details
    ('P006', 'Battery', 1, 1, 1, 1, 60.00, 80.00),    -- Product P006 details
    ('P007', 'Alternator', 2, 2, 2, 1, 80.00, 100.00),    -- Product P007 details
    ('P008', 'Starter Motor', 3, 3, 3, 1, 70.00, 90.00),    -- Product P008 details
    ('P009', 'Radiator', 4, 4, 4, 1, 90.00, 110.00),    -- Product P009 details
    ('P010', 'Fuel Pump', 5, 5, 5, 1, 30.00, 40.00),    -- Product P010 details
    ('P011', 'Headlight Bulb', 1, 1, 1, 1, 5.00, 7.00),    -- Product P011 details
    ('P012', 'Tail Light Bulb', 2, 2, 2, 1, 3.00, 5.00),    -- Product P012 details
    ('P013', 'Side Mirror', 3, 3, 3, 1, 40.00, 50.00),    -- Product P013 details
    ('P014', 'Brake Caliper', 4, 4, 4, 1, 100.00, 120.00),    -- Product P014 details
    ('P015', 'Car Stereo', 5, 5, 5, 1, 120.00, 150.00);    -- Product P015 details


-- purchase product
-- Example data for purchase_product table
INSERT INTO purchase_product (FkProduct, FkBilling, Amount, SubTotal)
VALUES
    ('P001', 1, 2, 40.00),   -- Product P001 purchased in Billing 1 with amount 2 and subtotal $40.00
    ('P002', 2, 1, 25.00),   -- Product P002 purchased in Billing 2 with amount 1 and subtotal $25.00
    ('P003', 3, 3, 90.00),   -- Product P003 purchased in Billing 3 with amount 3 and subtotal $90.00
    ('P004', 4, 2, 70.00),   -- Product P004 purchased in Billing 4 with amount 2 and subtotal $70.00
    ('P005', 5, 1, 30.00),   -- Product P005 purchased in Billing 5 with amount 1 and subtotal $30.00
    ('P006', 6, 4, 160.00),   -- Product P006 purchased in Billing 6 with amount 4 and subtotal $160.00
    ('P007', 7, 2, 50.00),   -- Product P007 purchased in Billing 7 with amount 2 and subtotal $50.00
    ('P008', 8, 1, 80.00),   -- Product P008 purchased in Billing 8 with amount 1 and subtotal $80.00
    ('P009', 9, 3, 120.00),   -- Product P009 purchased in Billing 9 with amount 3 and subtotal $120.00
    ('P010', 10, 1, 45.00),  -- Product P010 purchased in Billing 10 with amount 1 and subtotal $45.00
    ('P011', 11, 2, 60.00),  -- Product P011 purchased in Billing 11 with amount 2 and subtotal $60.00
    ('P012', 12, 1, 35.00),  -- Product P012 purchased in Billing 12 with amount 1 and subtotal $35.00
    ('P013', 13, 4, 100.00),  -- Product P013 purchased in Billing 13 with amount 4 and subtotal $100.00
    ('P014', 14, 2, 75.00),  -- Product P014 purchased in Billing 14 with amount 2 and subtotal $75.00
    ('P015', 15, 1, 20.00),  -- Product P015 purchased in Billing 15 with amount 1 and subtotal $20.00
    ('P001', 16, 3, 60.00),  -- Product P001 purchased in Billing 16 with amount 3 and subtotal $60.00
    ('P002', 17, 2, 50.00),  -- Product P002 purchased in Billing 17 with amount 2 and subtotal $50.00
    ('P003', 18, 1, 30.00),  -- Product P003 purchased in Billing 18 with amount 1 and subtotal $30.00
    ('P004', 19, 4, 140.00),  -- Product P004 purchased in Billing 19 with amount 4 and subtotal $140.00
    ('P005', 20, 2, 60.00);  -- Product P005 purchased in Billing 20 with amount 2 and subtotal $60.00