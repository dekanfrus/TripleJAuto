INSERT INTO [User] (UserUsername, UserPassword, UserEmail, UserFName, UserLName, UserCountry, UserStreet, UserCity, UserZip, UserPhone) 
VALUES ('GHopkins', 'Hopk!ns73', 'ghopkins@hopkins.net', 'Gene', 'Hopkins', 'USA', '112 Street', 'Corpus Christi', '78412', '3611234567');

	INSERT INTO [User] (UserUsername, UserPassword, UserEmail, UserFName, UserLName, UserCountry, UserStreet, UserCity, UserZip, UserPhone) 
	VALUES ('Joker', 'Batman*Sucks1', 'jnicholson@joker.com', 'Jack', 'Nicholson', 'USA', '2933 Joker Drive', 'Atlanta', '78417', '3616465185');
	
	INSERT INTO [User] (UserUsername, UserPassword, UserEmail, UserFName, UserLName, UserCountry, UserStreet, UserCity, UserZip, UserPhone) 
	VALUES ('Shifu', 'KungFu@IsB3st', 'shifu@kungfu.com', 'Dustin', 'Hoffman', 'Mexico', '4460 Shifu Street', 'Tijuana', '78402', '3617283165');
	
	INSERT INTO [User] (UserUsername, UserPassword, UserEmail, UserFName, UserLName, UserCountry, UserStreet, UserCity, UserZip, UserPhone) 
	VALUES ('FGump', 'Bubb4.Gump*', 'chocolates@bgshrimp.com', 'Tom', 'Hanks', 'United Kingdom','3173 Lincoln Court', 'London', '78465', '3611303328');
	
	INSERT INTO [User] (UserUsername, UserPassword, UserEmail, UserFName, UserLName, UserCountry, UserStreet, UserCity, UserZip, UserPhone) 
	VALUES ('Hannibal', 'P3opleRTasty)', 'Chef@hannibal.com', 'Anthony', 'Hopkins', 'New Zealand', '2982 Hannibal Street', 'Wellington', '78410', '3612695776');
	
	INSERT INTO [User] (UserUsername, UserPassword, UserEmail, UserFName, UserLName, UserCountry, UserStreet, UserCity, UserZip, UserPhone) 
	VALUES ('MalcomX', 'Bl4ck.Power!', 'malcom@bpower.com', 'Denzel', 'Washington', 'USA', '6729 Unstoppable Ave', 'Seattle', '78416', '3618093010');
	
	INSERT INTO [User] (UserUsername, UserPassword, UserEmail, UserFName, UserLName, UserCountry, UserStreet, UserCity, UserZip, UserPhone) 
	VALUES ('God', 'Sup4h!S3cur3*', 'god@almighty.com', 'Morgan', 'Freeman', 'USA', '9483 Sundance Drive', 'New York City' , '78414', '3613180737');
	
	INSERT INTO [User] (UserUsername, UserPassword, UserEmail, UserFName, UserLName, UserCountry, UserStreet, UserCity, UserZip, UserPhone) 
	VALUES ('Flubber', 'C4pta!nH00k', 'president@tomdobbs.com', 'Robin', 'Williams', 'USA', '4551 Flubber Drive', 'San Diego', '78418', '3619062552');
	
	INSERT INTO [User] (UserUsername, UserPassword, UserEmail, UserFName, UserLName, UserCountry, UserStreet, UserCity, UserZip, UserPhone) 
	VALUES ('Katniss', 'Arch3ry*is*B3st?', 'mockingjay@disctrict13.com', 'Jennifer', 'Lawrence', 'Panem', '6367 District Twelve Ave', 'D12', '78416', '3618726651');
	
	INSERT INTO [User] (UserUsername, UserPassword, UserEmail, UserFName, UserLName, UserCountry, UserStreet, UserCity, UserZip, UserPhone) 
	VALUES ('PBunny', 'L!kesT0Pl4y&', 'easterbunny@playboy.com', 'Kate', 'Upton', 'USA', '6813 Playboy Court', 'Los Angeles', '76135', '3618162885');
	
INSERT INTO [Category] (CategoryName) VALUES ('A/C Compressor');
	INSERT INTO [Category] (CategoryName) VALUES ('A/C Clutch');
	INSERT INTO [Category] (CategoryName) VALUES ('A/C Expansion Valve');
	INSERT INTO [Category] (CategoryName) VALUES ('A/C Blower Motor');
	INSERT INTO [Category] (CategoryName) VALUES ('Brake Pads');
	INSERT INTO [Category] (CategoryName) VALUES ('Brake Rotors');
	INSERT INTO [Category] (CategoryName) VALUES ('Brake Calipers');
	
	INSERT INTO [Category] (CategoryName) VALUES ('Belts');
	INSERT INTO [Category] (CategoryName) VALUES ('Hoses');
	
	
	INSERT INTO [Category] (CategoryName) VALUES ('Battery');
	INSERT INTO [Category] (CategoryName) VALUES ('Belts and Hoses');
	INSERT INTO [Category] (CategoryName) VALUES ('Body and Trim');
	INSERT INTO [Category] (CategoryName) VALUES ('Engine Parts & Mounts');
	INSERT INTO [Category] (CategoryName) VALUES ('Exhaust');
	INSERT INTO [Category] (CategoryName) VALUES ('Filters');
	INSERT INTO [Category] (CategoryName) VALUES ('Fuel & Emissions');
	INSERT INTO [Category] (CategoryName) VALUES ('Ignition & Tune-Up');
	INSERT INTO [Category] (CategoryName) VALUES ('Suspension & Steering');
	INSERT INTO [Category] (CategoryName) VALUES ('Tire & Wheel');
	INSERT INTO [Category] (CategoryName) VALUES ('Transmission');

-- A/C Compressor - ID 1
INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('AC001', '1', 'Compressor Works', '21', '194.99', 'Each unit is assembled with ICE32 lubricant to reduce internal friction promoting enhanced system performance and longevity.');
INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('AC002', '1', 'EverCo', '18', '209.99', 'Endurance tested the equivalent of 50k miles.');
-- A/C Clutch - ID 2
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('AC003', '2', 'Compressor Works', '7', '98.99', 'Coated to prevent corrosion and every coil is tested for proper ohms');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('AC004', '2', 'EverCo', '5', '78.99', 'Coated to prevent corrosion and every coil is tested for proper ohms');
-- A/C Expansion Valve - ID 3
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('AC005', '3', 'Compressor Works', '23', '19.99', 'Tube to cap; double soldered to ensure integrity');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('AC006', '3', 'EverCo', '18', '24.99', 'Precision machined ports');
-- A/C Blower Motor - ID 4
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('AC007', '4', 'VDO', '31', '40.99', 'Dual Bearing design technology provides quieter, more efficient motor operation');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('AC008', '4', 'EverCo', '17', '80.99', 'Magnetic size and properties compare or exceed OEM');

-- Belts - ID 8
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BH005', '8', 'Serpentine Belt', '10', '15.99', 'The specialized rubber incorporates a high temperature polymer formulated to maximize load carrying requirements and belt life');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BH001', '8', 'Timing Belt', '12', '14.99', 'Provides exceptional resistance to abrasion; resulting in extended pulley and belt life');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BH002', '8', 'V Belt', '15', '9.99', 'Made with bottom cogs to provide the maximum flexibility and grip required on v-belt drives');
-- Hoses - ID 9
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BH003', '9', 'Brake Hose - Rear', '13', '24.99', 'Quality construction ensures strength, chemical and thermal resistance for longer life');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BH004', '9', 'Brake Hose - Front', '17', '22.99', 'Brake hoses with banjo end fittings include new copper washers to ensure proper sealing');
-- Brake Pads - ID 5	
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BP001', '5', 'Brake Pads - Front', '17', '23.99', 'One size fits all');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BP002', '5', 'Brake Pads - Rear', '20', '22.99', 'One size fits all');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BP003', '5', 'Brake Drums', '8', '64.99', 'One size fits all');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BP004', '5', 'Brake Pad Lubricant', '75', '2.99', 'Keep your brake pads from squeeling, apply this when putting on new pads');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BP005', '5', 'Brake Shoes', '23', '19.99', 'Rear Brake Shoes');
-- Brake Rotors - ID 6	
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BR001', '6', 'Duralast - Front', '31', '19.99', 'Manufactured using high quality raw materials which conform to SAE J431');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BR002', '6', 'Duralast - Rear', '28', '39.99', 'High strength alloy for long life and increased resistance to warping');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BR003', '6', 'Raybestos - Front', '18', 'Engineered to reduce brake noise');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BR004', '6', 'Raybestos - Rear', '21', '199.99', 'Manufactured in TS16949 certified facilities');
-- Brake Calipers - ID 7	
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BC001', '7', 'Duralast Reman - Front', '56', '79.99', 'New bleeder screws provide trouble-free bleeding and a positive seal');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BC002', '7', 'Duralast Reman - Rear', '42', '99.99', 'New copper washers are included for a perfect seal');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BC003', '7', 'Duralast Bracketed - Front',);
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BC004', '7', 'Duralast Bracketed - Rear',);
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BC005', '7', );
	
	
	-- Body and Trim	
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BT001', '4', 'Polished Aluminum Hood Scoop', '3', '269.99', 'Universal for single 4 barrel.  Fits carbs with 5-1/8in neck');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BT002', '4', 'Bug Deflector', '7', '129.99', 'Mounts directly to the hood with no hardware or drilling');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BT003', '4', 'Front End Cover', '2', '69.99', 'Glove like fit that contours to your vehicle');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BT004', '4', 'Valance', '1', '172.99', 'Installs easily using 3M tape');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BT005', '4', 'Vent Shade', '10', '49.99', 'Keeps rain out and fresh air in');
	
	-- Battery	
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BT001', '2', '450 CCA Automobile Battery', '23', '199.99', 'For extreme conditions where the battery performs deep cycle & starting jobs!');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BT002', '2', '700 CCA Automobile Battery', '13', '169.99', 'Specially designed paste to improve performance');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BT003', '2', 'Gold Battery Cable', '47', '18.99', 'Black, 2 gauge cable, 56in with boots');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BT004', '2', 'Battery Charger', '8', '699.99', '12 Volt, 70 amp output, 250 amp crank assist, UL rated safe in any weather');
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('BT005', '2', 'Battery Cleaner', '22', '5.99', 'Battery terminal protection spray. 10oz can');
	
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('8', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('8', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('8', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('8', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('8', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('9', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('9', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('9', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('9', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('9', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('10', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('10', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('10', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('10', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('10', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('11', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('11', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('11', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('11', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('11', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('12', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('12', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('12', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('12', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('12', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('13', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('13', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('13', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('13', );
	INSERT INTO [Part] (PartID, CategoryID, PartName, PartCount, PartCost, PartDesc) VALUES ('13', );
	