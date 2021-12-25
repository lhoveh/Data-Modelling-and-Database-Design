/* 
Query with condition

DEVICES PER EMPLOYEE
VIEW:
 */


CREATE VIEW Device_per_Employee AS
    SELECT 
        staff.staff_name AS 'Name',
        device.device_name AS Device,
        software.Software_name AS 'Software Installed'
    FROM
        staff,
        license,
        device,
        software
    WHERE
        staff.staff_id = device.staff_id
            AND device.asset_id = license.asset_id
            AND license.SKU = software.sku;
