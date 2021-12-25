# Cost issues
CREATE VIEW device_per_staff AS
    SELECT 
        device.device_type, staff.staff_name
    FROM
        device
            INNER JOIN
        staff ON device.staff_id = staff.staff_id;
        
   SELECT 
    *
FROM
    device_per_staff;
    
    select * from staff;
    select * from device;
    select * from device_per_staff;
    
SELECT 
    device_type, COUNT(device_type) AS Quantity, staff_name
FROM
    device_per_staff
WHERE
    device_type = 'notebook'
GROUP BY staff_name 
UNION SELECT 
    device_type, COUNT(device_type), staff_name
FROM
    device_per_staff
WHERE
    device_type = 'netbook'
GROUP BY staff_name 
UNION SELECT     device_type, COUNT(device_type), staff_name
FROM
    device_per_staff
WHERE
    device_type = 'desktop'
GROUP BY staff_name 
UNION SELECT 
    device_type, COUNT(device_type), staff_name
FROM
    device_per_staff
WHERE
    device_type = 'tablet'
GROUP BY staff_name
ORDER BY Quantity DESC;

/* 

This query allows us to find out which staff has more than one device of the same type. In this example Willian Martins has more than one netbook, what could be a mistake or an issue to be solved,
considered a bad allocation of assets. Not only the company can save money ensuring each staff member has one device from any kind, but also check if they have two licenses
for the same software in these devices.

In this next query, for example, the view that shows devices per employee is used. The view was updated in order to display the type of device as well. So this next query will demonstrate 
how many similar software are installed for specific members of staff . We know already that Willian has two netbooks. He also has a desktop. 
It is acceptable to have a Windows 8 for a desktop and another Windows 8 for a notebook if the employee needs to have two devices, but it would be a duplication issue 
if he has two versions of the same software for the same device, as shown below:

*/ 



SELECT 
    Name,
    `Software Installed`,
    COUNT(`Software Installed`) AS Quantity,
    Device
FROM
    device_per_employee
WHERE
    (name = 'Allan Amorim'
        AND Device = 'Notebook Asus 01')
GROUP BY `Software Installed` 
UNION SELECT 
    Name,
    `Software Installed`,
    COUNT(`Software Installed`) AS Quantity,
    Device
FROM
    device_per_employee
WHERE
    (name = 'Will Camara'
        AND Device = 'MaxBook pro 01')
GROUP BY `Software Installed` 
UNION SELECT 
    Name,
    `Software Installed`,
    COUNT(`Software Installed`) AS Quantity,
    Device
FROM
    device_per_employee
WHERE
    (name = 'Allan Amorim'
        AND Device = 'HP Desktop 01')
GROUP BY `Software Installed` 
UNION SELECT 
   Name,
    `Software Installed`,
    COUNT(`Software Installed`) AS Quantity,
    Device
FROM
    device_per_employee
WHERE
    (name = 'Will Camara'
        AND Device = 'HP All-inOne 01')
GROUP BY `Software Installed`
UNION SELECT 
    Name,
    `Software Installed`,
    COUNT(`Software Installed`) AS Quantity,
    Device
FROM
    device_per_employee
WHERE
    (name = 'Will Camara'
        AND Device = 'iPad 01')
GROUP BY `Software Installed` 
UNION SELECT 
    Name,
    `Software Installed`,
    COUNT(`Software Installed`) AS Quantity,
    Device
FROM
    device_per_employee
WHERE
    (name = 'Lisa Malady'
        AND Device = 'MacBoom Pro 02')
GROUP BY `Software Installed` ;

#select * from device_per_employee;


/* Alternatively, how many devices per employee in general */
SELECT 
    staff_name, COUNT(DISTINCT device_type) AS Quantity
FROM
    device_per_staff
WHERE
    staff_name = "Allan Amorim" 
UNION SELECT 
    staff_name, COUNT(DISTINCT device_type) AS Quantity
FROM
    device_per_staff
WHERE
    staff_name = "Will Camara" 
UNION SELECT 
    staff_name, COUNT(DISTINCT device_type) AS Quantity
FROM
    device_per_staff
WHERE
    staff_name = "Lisa Malady";


