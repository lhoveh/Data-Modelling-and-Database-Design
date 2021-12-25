/*** 
Group by query

COUNTING HOW MANY DEVICES PER EMPLOYEE USING GROUP BY  ***/

SELECT `Software installed`, count(`Software installed`) as Quantity from Device_per_employee
group by `Software installed`;
