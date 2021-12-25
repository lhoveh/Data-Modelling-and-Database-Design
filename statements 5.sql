# Join Query

# License per expiry date

SELECT 
    device.device_name,
    license.license_id,
    contract.`Expiry date`
FROM
    device
        INNER JOIN
    license ON device.asset_id = license.asset_id
        INNER JOIN
    contract ON license.contract_id = contract.contract_id
ORDER BY `Expiry date` ASC;

## License installed

Create view licenses_installed as 
SELECT 
    device.device_name,
    license.license_id,
    contract.`Expiry date`
FROM
    device
        INNER JOIN
    license ON device.asset_id = license.asset_id
        INNER JOIN
    contract ON license.contract_id = contract.contract_id
   ORDER BY `Expiry date` ASC;
   
 select * from licenses_installed;
   
 select 
 licenses_installed.device_name,
 licenses_installed.license_id,
 licenses_installed.`Expiry date`,
 licensed_software.software_name from licenses_installed inner join licensed_software
   on licensed_software.license_id = licenses_installed.license_id;

/* 
NOW INCLUDING VIEW FOR SOFTWARE NAME - LICENSE
IT WILL BE USED IN THE INEER JOIN TO SHOW SOFTWARE, EXPIRY, LICENSE, DEVICE*/

#drop view licensed_software;

CREATE VIEW licensed_software as select device.device_name, license.license_id, software.software_name, contract.`Expiry date`
from device, license, software, contract where license.sku = software.sku; 

select * from licensed_software;



/*
The creation of views or inner join queries allow the visualization of licenses on each device in order to be informed about the expiration date. If it is recommended to 
update Windows 8 for Windows 10, it is possible to query only Windows 8 devices and order by its expiration date, in order to prepare a schedule for the upgrading. 

This same query can be organized in many ways, like device type, if we want to make the assumption that notebooks will require Windows 8 and desktops will have Windows 10, for a future update. 
*/


