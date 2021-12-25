# Nested Query
SELECT 
    software_name, device_name, `Expiry date`
FROM
    licensed_software 
WHERE
    `Expiry date` IN (SELECT 
            `Expiry date`
        FROM
            licensed_software 
        WHERE
            YEAR(`Expiry date`) < 2022)
ORDER BY `Expiry date` ASC;

# This query will answer which licenses are about to expire, for each software and device.