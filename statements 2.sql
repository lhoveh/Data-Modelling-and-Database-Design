/* couting types of device */

select device_type, count(device_type) as quantity from device group by device_type;
