

Select students.Lastname,students.Firstname,payment.Payment 
from Students
join payment on students.Stud_ID = payment.stud_ID
---------

select stud.Lastname,
(select AVG(Homeworks_marks) from homeworks  AS AVG_SCORE where Avg_score.Stud_ID = hw.Stud_ID ) as AVG_SCORE
from students  as stud
Join homeworks as hw on Stud.Stud_ID = hw.Stud_ID
----------
select * from
students join score on students.stud_ID = score.stud_ID
----

select students.lastname,homeworks.Homeworks_marks
from  students join homeworks on students.stud_ID = homeworks.Task_Id
where Homeworks_marks >= 80

--------------

select score.Date_course, employee.Lastname, Employee.Firstname
from score join Employee on score.mentor = Employee.emp_ID
--------------

SELECT Firstname, COUNT(Payment.payment) as count_payment
FROM Payment JOIN Students
ON Students.Stud_ID = Payment.Stud_ID
GROUP BY  Students.stud_ID,students.FirstName;
---------











--SELECT ProductName,
--       Manufacturer,
--       Price, 
--        (SELECT AVG(Price) FROM Products AS SubProds 
--         WHERE SubProds.Manufacturer=Prods.Manufacturer)  AS AvgPrice
--FROM Products AS Prods
--WHERE Price > 
--    (SELECT AVG(Price) FROM Products AS SubProds 
--     WHERE SubProds.Manufacturer=Prods.Manufacturer)