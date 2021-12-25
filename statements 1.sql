use assessment;

# Creating tables and populating data
# CONTRACT

CREATE TABLE Contract (
    Contract_ID INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY
);

insert into contract values (01);
insert into contract values (02);
insert into contract values (03);
insert into contract values (04);

ALTER Table contract add column `Expiry date` date;

insert into contract (contract_id,`expiry date`) values (05,"2022-04-26");
UPDATE contract 
SET 
    `expiry date` = '2021-11-26'
WHERE
    contract_id = 4;
UPDATE contract 
SET 
    `expiry date` = '2022-03-25'
WHERE
    contract_id = 3;
UPDATE contract 
SET 
    `expiry date` = '2022-06-25'
WHERE
    contract_id = 2;
UPDATE contract 
SET 
    `expiry date` = '2021-12-28'
WHERE
    contract_id = 1;
    
    
    # software:

drop table software;
CREATE TABLE Software (
    SKU INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    software_name VARCHAR(30) NOT NULL
);

alter table software add column vendor_id varchar(30);


insert into software (SKU, software_name, vendor_id) values (01,"Snagit", "01");
insert into software values (02,"Photoshop", "02");
insert into software values (03,"Autocad", "03");
insert into software values (04,"Database11g", "04");
insert into software values (05,"Database12c", "04");
insert into software values (06,"Windows8", "05");
insert into software values (07,"Windows10", "05");
insert into software values (08,"Office2016", "05");
insert into software values (09,"Lightroom", "02");
insert into software values (10,"Antivirus", "06");
insert into software values (11,"Financials", "07");
insert into software values (12,"Beyond Compare", "08");
insert into software values (13,"Linux 5.0", "09");
insert into software values (14,"BRIEF", "10");

/***** CREATING AND FILLING VENDOR TABLE ****/

CREATE TABLE vendor (
    vendor_name VARCHAR(30) NOT NULL
);
alter table vendor add column vendor_id varchar (3);

insert into vendor (vendor_name, vendor_id) values ("Techsmith",01);
insert into vendor (vendor_name, vendor_id) values ("Adobe",02);
insert into vendor (vendor_name, vendor_id) values ("Autodesk",03), ("Oracle",04),("Microsoft",05),
("Kasperski",06),("SAP",07),("Scooter Software",08),("Rehat",09),("Underware",10);


/***** CREATING AND FILLING license TABLE ****/

CREATE TABLE license (
    license_id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    SKU VARCHAR(3),
    contract_id VARCHAR(3),
    asset_id VARCHAR(3)
);SELECT 
    *
FROM
    license;

/* contract 1, techsmith, snaig, device 1 and 2 */
insert into license (license_id, SKU,contract_id,asset_id) values (01,01,"01",01);
insert into license (license_id, SKU,contract_id,asset_id) values (02,01,"01",02);

/* contract 2, adobe, photshop, device 1 and 2 */
insert into license (license_id, SKU,contract_id,asset_id) values (03,02,02,02);
UPDATE license 
SET 
    asset_id = 01
WHERE
    license_id = 03;
insert into license (license_id, SKU,contract_id,asset_id) values (04,02,02,02);

/* contract 3, adobe, lightroom, device 1 and 2 */

insert into license (license_id, SKU,contract_id,asset_id) values (05,02,09,01);
insert into license (license_id, SKU,contract_id,asset_id) values (06,02,09,02);

/* contract 3, microsoft, windows 8 device 1,2,3,4 + windows 10 device 5,6 */

insert into license (license_id, SKU,contract_id,asset_id) values (07,03,06,01);
insert into license (license_id, SKU,contract_id,asset_id) values (08,03,06,02);
insert into license (license_id, SKU,contract_id,asset_id) values (09,03,06,03);
insert into license (license_id, SKU,contract_id,asset_id) values (10,03,06,04);
insert into license (license_id, SKU,contract_id,asset_id) values (11,03,07,05);
insert into license (license_id, SKU,contract_id,asset_id) values (12,03,07,06);

select * from license; 

/***** CREATING AND FILLING Manager TABLE ****/

create table manager (manager_id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY, name varchar(30));
insert into manager values (01,"Allan Amorim"), 
(02,"Will Camara");

/***** CREATING AND FILLING Staff TABLE ****/

drop table staff;
CREATE TABLE staff (
    staff_id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    staff_name VARCHAR(30),
    staff_manager_id VARCHAR(3)
);

insert into staff values (01,"Allan Amorim",01), 
(02,"Will Camara",02),
(03,"Lisa Malady",01),(04,"Matt Sauerbrown",01),
(05,"Brian Adams",02),(06,"Gabriel Kalliman",02);

/***** CREATING AND FILLING Devices TABLE ****/



CREATE TABLE device (
    asset_id INT NOT NULL,
    device_type VARCHAR(30) NOT NULL,
    device_name VARCHAR(30) NOT NULL,
    staff_id int(06),
    PRIMARY KEY (asset_id));

/* INCLUDING INITAL DEVICE DATA */ 

insert into device (asset_id, device_type, staff_id, device_name)
values (01,"notebook",01, "Notebook Asus 01"), (02,"desktop",01,"HP Desktop 01"), (03,"notebook",02,"MaxBook pro 01"),
(04,"destktop",02,"HP All-inOne 01"), (05,"tablet",02,"iPad 01"),(06,"notebook",03,"MacBoom Pro 02");

insert into device (asset_id, device_type, staff_id, device_name)
values (07,"netbook",07, "Apple Netbook"), (08,"desktop",07,"Lenovo All-in-One");

select * from device;