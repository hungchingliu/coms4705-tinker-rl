SELECT count(*) FROM club
SELECT Manager , Captain FROM club
SELECT Manager , Captain FROM club
SELECT count(*) FROM club
SELECT name FROM club EXCEPT SELECT name FROM club WHERE manufacturer = Nike
SELECT Name FROM club ORDER BY Name ASC
SELECT name FROM club ORDER BY name
SELECT name FROM club WHERE Manufacturer != Nike
SELECT name FROM player ORDER BY wins_count ASC
SELECT DISTINCT Country FROM player WHERE Earnings > 1200000
SELECT name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Country FROM player WHERE Earnings > 1200000
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT country FROM player WHERE Wins_count > 2 ORDER BY Earnings DESC LIMIT 1
SELECT T2.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Manager = Sam Allardyce
SELECT country FROM player WHERE Wins_count > 2 ORDER BY Earnings DESC LIMIT 1
SELECT T2.Name , T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Wins_count > 2
SELECT T2.Name , T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID
SELECT T2.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.manager = Sam Allardyce
SELECT count(*) , Manufacturer FROM club GROUP BY Manufacturer
SELECT Manufacturer , count(*) FROM club GROUP BY Manufacturer
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T2.Club_ID HAVING T2.Wins_count > 2
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID GROUP BY T1.Club_ID ORDER BY avg(T2.Earnings)
SELECT Manufacturer FROM club GROUP BY Manufacturer HAVING count(*) > 1
SELECT T1.name FROM club AS T1 JOIN player AS T2 ON T1.club_id = T2.club_id GROUP BY T1.club_id ORDER BY avg(T2.Earnings) DESC
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY count(*) DESC LIMIT 1
SELECT Country FROM player GROUP BY Country HAVING count(*) > 1
SELECT Manufacturer FROM club GROUP BY Manufacturer HAVING COUNT(*) > 1
SELECT count(DISTINCT Country) FROM player
SELECT count(DISTINCT Country) FROM player
SELECT Country FROM player WHERE Earnings > 1400000 UNION SELECT Country FROM player WHERE Earnings < 1100000
SELECT Name FROM club EXCEPT SELECT T2.Name FROM player AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID
SELECT name FROM club EXCEPT SELECT T1.name FROM club AS T1 JOIN player AS T2 ON T1.club_id = T2.club_id
SELECT Country FROM player WHERE Earnings > 1400000 INTERSECT SELECT Country FROM player WHERE Earnings < 1100000
SELECT country FROM player GROUP BY country HAVING count(*) > 1
SELECT T1.order_id , T1.order_status_code , count(*) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT Earnings FROM player WHERE Country = Australia OR Country = Zimbabwe
SELECT Earnings FROM player WHERE Country = Australia OR Country = Zimbabwe
SELECT T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING count(*) > 1 UNION SELECT min(T2.date_order_placed) FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id
SELECT count(*) , T1.order_status_code , T1.order_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id
SELECT customer_first_name , customer_last_name , customer_middle_initial FROM Customers EXCEPT SELECT T2.customer_first_name , T2.customer_last_name , T2.customer_middle_initial FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.customer_id , customer_first_name , customer_last_name FROM customers AS T1 JOIN orders AS T2 JOIN order_items AS T3 ON T1.customer_id = T2.customer_id AND T2.order_id = T3.order_id GROUP BY T1.customer_id HAVING count(*) >= 2 INTERSECT SELECT T1.customer_id , customer_first_name , customer_last_name FROM customers AS T1 JOIN orders AS T2 JOIN order_items AS T3 ON T1.customer_id = T2.customer_id AND T2.order_id = T3.order_id GROUP BY T1.customer_id HAVING count(*) >= 3
SELECT T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 1 UNION SELECT T1.date_order_placed FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING T1.date_order_placed >= (SELECT min(T1.date_order_placed) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id ORDER BY count(*) > 1 LIMIT 1)
SELECT product_id , product_name , product_price , product_color FROM Products EXCEPT SELECT T1.product_id , T2.product_name , T2.product_price , T2.product_color FROM Order_items AS T1 JOIN Products AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) >= 2
SELECT T1.product_id , T1.product_name , T1.product_price , T1.product_color FROM Products AS T1 JOIN Order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_name HAVING count(T1.product_id) < 2
SELECT T2.order_id , T2.date_order_placed FROM Order_items AS T1 JOIN Orders AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING count(*) >= 2
SELECT customer_first_name , customer_middle_initial , customer_last_name FROM Customers EXCEPT SELECT T1.customer_first_name , T1.customer_middle_initial , T1.customer_last_name FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id = T2.customer_id
SELECT order_id , date_order_placed FROM orders GROUP BY order_id HAVING count(*) >= 2
SELECT T1.order_id , sum(product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id GROUP BY T1.order_id ORDER BY sum(product_price) LIMIT 1
SELECT T2.product_id , T2.product_name , T2.product_price FROM orders AS T1 JOIN products AS T2 ON T1.order_id = order_id GROUP BY T2.product_id , T2.product_name , T2.product_price ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM customer_payment_methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM Customer_Payment_Methods GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.gender_code , count(*) FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code
SELECT T1.order_id , sum(T3.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id GROUP BY T1.order_id ORDER BY sum(T3.product_price) LIMIT 1
SELECT T1.gender_code , count(*) FROM CUSTOMERS AS T1 JOIN ORDERS AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code
SELECT T1.customer_first_name , T1.customer_middle_initial , T1.customer_last_name , T2.payment_method_code FROM customers AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id
SELECT count(*) , T2.gender_code FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.gender_code
SELECT T2.invoice_status_code , T2.invoice_date , T3.shipment_date FROM invoices AS T2 JOIN shipments AS T3 ON T2.invoice_number = T3.invoice_number
SELECT T2.customer_id , T1.customer_first_name , T1.customer_last_name FROM Customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id HAVING count(*) > 2 INTERSECT SELECT T3.customer_id , T3.customer_first_name , T3.customer_last_name FROM Customers AS T3 JOIN Order_items AS T4 ON T3.customer_id = T4.customer_id GROUP BY T3.customer_id HAVING count(*) >= 3
SELECT T2.customer_first_name , T2.customer_middle_initial , T2.customer_last_name , T3.payment_method_code FROM Customer_Payment_Methods AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id JOIN Customer_Payment_Methods AS T3 ON T1.customer_id = T3.customer_id
SELECT T1.invoice_status_code , T1.invoice_date , T2.shipment_date FROM Invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number
SELECT T1.gender_code , count(*) FROM customers AS t1 JOIN orders AS t2 ON t1.customer_id = t2.customer_id GROUP BY T1.gender_code
SELECT T2.product_name , T4.shipment_date FROM orders AS T1 JOIN order_items AS T3 ON T1.order_id = T3.order_id JOIN products AS T2 ON T3.product_id = T2.product_id JOIN shipments AS T4 ON T1.order_id = T4.order_id
SELECT T1.order_item_status_code , T3.shipment_tracking_number FROM ORDER_ITEMS AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id JOIN shipments AS T3 ON T2.order_id = T3.order_id
SELECT T1.order_item_status_code , T3.shipment_tracking_number FROM order_items AS T1 JOIN orders AS T2 ON T1.order_id = T2.order_id JOIN shipments AS T3 ON T2.order_id = T3.order_id GROUP BY T3.shipment_tracking_number
SELECT T1.product_name , T1.product_color FROM products AS T1 JOIN order_items AS T2 JOIN shipments AS T3 ON T1.product_id = T2.product_id AND T3.order_id = T2.order_id
SELECT DISTINCT T1.product_name , T1.product_color FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id JOIN shipments AS T3 ON T2.order_id = T3.order_id
SELECT T2.product_id , T3.product_name , T3.product_price FROM order_items AS T1 JOIN products AS T3 ON T1.product_id = T3.product_id JOIN orders AS T2 ON T2.order_id = T1.order_id GROUP BY T2.product_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T3.product_name , T3.product_price , T3.product_description FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T4 ON T1.order_id = T4.order_id JOIN products AS T3 ON T4.product_id = T3.product_id WHERE T2.gender_code = 'F'
SELECT T2.invoice_status_code FROM orders AS T1 JOIN invoices AS T2 ON T1.order_id = T2.invoice_number EXCEPT SELECT T2.invoice_status_code FROM orders AS T1 JOIN invoices AS T2 ON T1.order_id = T2.invoice_number JOIN shipments AS T3 ON T3.order_id = T1.order_id
SELECT count(DISTINCT customer_id) FROM orders
SELECT count(*) FROM order_items
SELECT count(DISTINCT T1.customer_id) FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id
SELECT count(DISTINCT payment_method_code) FROM Customer_Payment_Methods
SELECT T1.order_id , T1.date_order_placed , sum(T2.product_price) FROM orders AS T1 JOIN order_items AS T3 ON T1.order_id = T3.order_id JOIN products AS T2 ON T3.product_id = T2.product_id GROUP BY T1.order_id
SELECT count(DISTINCT payment_method_code) FROM Customer_Payment_Methods
SELECT login_name , login_password FROM customers WHERE phone_number LIKE '%+12%'
SELECT login_name , login_password FROM customers WHERE phone_number LIKE '+12%'
SELECT count(DISTINCT order_item_status_code) FROM order_items
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT product_size FROM products WHERE product_name LIKE '%Dell%'
SELECT T3.product_name , T1.shipment_date FROM shipments AS T1 JOIN order_items AS T5 ON T1.order_id = T4.order_id JOIN orders AS T4 ON T1.order_id = T4.order_id JOIN products AS T3 ON T3.product_id = T5.product_id
SELECT T1.invoice_status_code FROM INVOICES AS T1 JOIN ORDERS AS T2 ON T1.invoice_number = T3.invoice_number WHERE T1.invoice_status_code != 'Shipped'
SELECT T3.order_id , T1.date_order_placed , sum(T2.order_item_status_code) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN shipments AS T3 ON T2.order_id = T3.order_id GROUP BY T3.order_id
SELECT product_price , product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT DISTINCT product_price , product_size FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT count(DISTINCT product_name) FROM products WHERE product_id NOT IN (SELECT product_id FROM order_items)
SELECT count(*) FROM products WHERE product_id NOT IN ( SELECT product_id FROM order_items )
SELECT DISTINCT T1.product_name , T1.product_price , T1.product_description FROM products AS T1 JOIN order_items AS T2 ON T2.product_id = T1.product_id JOIN orders AS T3 ON T3.order_id = T2.order_id JOIN customers AS T4 ON T4.customer_id = T3.customer_id WHERE T4.gender_code = 'F'
SELECT order_status_code , date_order_placed FROM orders
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_payment_methods)
SELECT order_status_code , date_order_placed FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id
SELECT address_line_1 , town_city , county FROM Customers WHERE country = 'USA'
SELECT count(*) FROM Customers WHERE customer_id NOT IN (SELECT customer_id FROM Customer_Payment_Methods)
SELECT count(*) FROM shipments
SELECT address_line_1 , town_city , county FROM customers WHERE country = USA
SELECT avg(product_price) FROM products
SELECT count(DISTINCT T2.product_id) FROM shipments AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id
SELECT T2.customer_first_name , T1.product_name FROM products AS T1 JOIN customers AS T2 ON T1.product_id = T2.customer_id
SELECT avg(product_price) FROM products
SELECT AVG(T1.product_price) FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id
SELECT email_address , town_city , county FROM Customers GROUP BY gender_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.date_order_placed FROM orders AS T1 JOIN customer_payment_methods AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id HAVING count(*) >= 2
SELECT T1.date_order_placed FROM orders AS T1 JOIN customers AS T2 JOIN Customer_Payment_Methods AS T3 ON T1.customer_id = T2.customer_id AND T2.customer_id = T3.customer_id GROUP BY T1.customer_id HAVING COUNT(*) >= 2
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) LIMIT 1
SELECT order_status_code FROM orders GROUP BY order_status_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.email_address , T1.town_city , T1.county FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id = T2.customer_id WHERE T1.gender_code = (SELECT T1.gender_code FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.gender_code ORDER BY count(*) ASC LIMIT 1)
SELECT T2.product_id , T2.product_description FROM orders AS T1 JOIN order_items AS T3 JOIN products AS T2 ON T1.order_id = T3.order_id AND T3.product_id = T2.product_id GROUP BY T2.product_id HAVING count(*) > 3
SELECT T1.product_id , T1.product_description FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id HAVING count(*) > 3
SELECT T3.product_name , T1.customer_first_name FROM customers AS T1 JOIN orders AS T2 JOIN order_items AS T4 JOIN products AS T3 ON T1.customer_id = T2.customer_id AND T2.order_id = T4.order_id AND T4.product_id = T3.product_id
SELECT T1.invoice_date , T1.invoice_number FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT shipment_tracking_number , shipment_date FROM shipments
SELECT name FROM director ORDER BY age DESC LIMIT 1
SELECT count(*) FROM channel WHERE internet LIKE '%bbc%'
SELECT product_color , product_description , product_size FROM products WHERE product_price < (SELECT max(product_price) FROM products)
SELECT product_color , product_description , product_size FROM products WHERE product_price != (SELECT max(product_price) FROM products)
SELECT count(DISTINCT Digital_terrestrial_channel) FROM channel
SELECT name FROM director WHERE age > (SELECT avg(age) FROM director)
SELECT title FROM program ORDER BY start_year DESC
SELECT avg(T3.product_price) FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id
SELECT Title FROM program ORDER BY Start_Year DESC LIMIT 1
SELECT T3.name , T3.Internet FROM program AS T1 JOIN channel AS T3 ON T1.channel_id = T3.channel_id GROUP BY T1.channel_id HAVING count(*) > 1
SELECT t2.name FROM program AS t1 JOIN director AS t2 ON t1.director_id = t2.director_id GROUP BY t2.name ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , t1.name FROM channel AS t1 JOIN program AS t2 ON t1.channel_id = t2.channel_id GROUP BY t1.channel_id
SELECT count(*) FROM channel WHERE channel_id NOT IN (SELECT channel_id FROM program)
SELECT t1.name , t1.age FROM director AS t1 JOIN program AS t2 ON t1.director_id = t2.director_id GROUP BY t1.director_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM director AS t1 JOIN program AS t2 ON t1.director_id = t2.director_id WHERE t2.title = Dracula
SELECT t1.name , t1.internet , count(*) FROM channel AS t1 JOIN director_admin AS t2 ON t1.channel_id = t2.channel_id GROUP BY t2.channel_id ORDER BY count(*) DESC LIMIT 1
SELECT station_name FROM city_channel WHERE affiliation != ABC
SELECT name FROM director WHERE age BETWEEN 30 AND 60
SELECT tv_show_name , ORIGINAL_AIRDATE FROM tv_show
SELECT count(*) FROM radio
SELECT Transmitter FROM radio ORDER BY ERP_kW ASC
SELECT avg(ERP_kW) FROM radio
SELECT Transmitter FROM radio ORDER BY ERP_kW DESC LIMIT 1
SELECT channel_id , name FROM channel WHERE channel_id NOT IN (SELECT t1.channel_id FROM director AS t2 JOIN director_admin AS t1 ON t2.director_id = t1.director_id WHERE t2.name = Hank Baskett )
SELECT affiliation , count(*) FROM city_channel GROUP BY affiliation
SELECT affiliation FROM city_channel GROUP BY affiliation ORDER BY count(*) DESC LIMIT 1
SELECT T1.invoice_date , T1.invoice_number FROM invoices AS T1 JOIN shipments AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number HAVING count(*) >= 2
SELECT Transmitter FROM radio WHERE ERP_kW > 150 OR ERP_kW < 30
SELECT T2.transmitter , count(*) FROM city_channel_radio AS T1 JOIN radio AS T2 ON T1.radio_id = T2.radio_id GROUP BY T1.radio_id
SELECT t3.name FROM director AS t2 JOIN program AS t1 ON t2.director_id = t1.director_id JOIN channel AS t3 ON t3.channel_id = t1.channel_id WHERE t2.age < 40 INTERSECT SELECT t3.name FROM director AS t2 JOIN program AS t1 ON t2.director_id = t1.director_id JOIN channel AS t3 ON t3.channel_id = t1.channel_id WHERE t2.age > 60
SELECT T3.transmitter , T2.city FROM city_channel_tv_show AS T1 JOIN city_channel AS T2 ON T1.city_channel_id = T2.id JOIN radio AS T3 ON T1.tv_show_ID = T3.radio_id
SELECT DISTINCT Transmitter FROM radio WHERE Radio_ID NOT IN (SELECT Radio_ID FROM city_channel_radio)
SELECT affiliation FROM city_channel GROUP BY affiliation HAVING count(*) > 3
SELECT T2.Driver_ID , count(*) FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID ORDER BY count(*) DESC LIMIT 1
SELECT city , station_name FROM city_channel ORDER BY station_name ASC
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Total_Production DESC LIMIT 1
SELECT name FROM driver WHERE citizenship = United States
SELECT max(power) , avg(power) FROM vehicle WHERE Builder = Zhuzhou
SELECT Name FROM driver WHERE Citizenship = 'United States'
SELECT max(power) , avg(power) FROM vehicle WHERE Builder = Zhuzhou
SELECT T1.Vehicle_ID FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T2.Vehicle_ID ORDER BY COUNT(*) ASC LIMIT 1
SELECT model FROM vehicle WHERE power > 6000 ORDER BY top_speed DESC LIMIT 1
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = 1996
SELECT T1.Driver_ID , count(*) FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID ORDER BY count(*) DESC LIMIT 1
SELECT T3.Vehicle_ID FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID GROUP BY T3.Vehicle_ID ORDER BY COUNT(*) ASC LIMIT 1
SELECT Build_Year , Model , Builder FROM vehicle
SELECT Build_Year , Model , Builder FROM vehicle
SELECT count(*) FROM driver WHERE Racing_Series = NASCAR
SELECT count(*) FROM driver WHERE Racing_Series = NASCAR
SELECT avg(Top_Speed) FROM vehicle
SELECT count(*) FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID WHERE T1.Build_Year = 2012
SELECT count(DISTINCT T1.name) FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.driver_id = T2.driver_id JOIN vehicle AS T3 ON T2.vehicle_id = T3.vehicle_id WHERE T3.build_year = 2012
SELECT T3.transmitter , T1.station_name FROM city_channel AS T1 JOIN city_channel_radio AS T2 ON T1.id = T2.city_channel_id JOIN radio AS T3 ON T2.radio_id = T3.radio_id ORDER BY T3.ERP_kW DESC
SELECT avg(top_speed) FROM vehicle
SELECT DISTINCT T1.Name FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T2.Vehicle_ID = T3.Vehicle_ID WHERE T3.Power > 5000
SELECT Model FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT T2.Name FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T3.Power > 5000 GROUP BY T2.Name
SELECT Model FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT model FROM vehicle EXCEPT SELECT T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id
SELECT model FROM vehicle EXCEPT SELECT T2.model FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.vehicle_id = T2.vehicle_id
SELECT Model , Build_Year FROM vehicle WHERE Model LIKE %DJ%
SELECT Model , Build_Year FROM vehicle WHERE Model LIKE %DJ%
SELECT count(*) FROM vehicle WHERE Top_Speed = (SELECT max(Top_Speed) FROM vehicle)
SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID GROUP BY T1.Vehicle_ID HAVING COUNT(*) >= 2 UNION SELECT T1.Vehicle_ID , T1.Model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS t3 ON t2.Driver_ID = t3.Driver_ID WHERE t3.Citizenship = 'Ziyang'
SELECT T1.vehicle_id , T3.Model FROM vehicle_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN vehicle AS T3 ON T1.Vehicle_ID = T3.Vehicle_ID WHERE T2.Name = Jeff Gordon GROUP BY T1.vehicle_id HAVING count(*) > 2
SELECT Name FROM driver ORDER BY Name ASC
SELECT count(*) FROM vehicle WHERE top_speed = (SELECT max(top_speed) FROM vehicle)
SELECT Name FROM DRIVER ORDER BY Name
SELECT T1.model , T1.vehicle_id FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id GROUP BY T1.vehicle_id HAVING count(*) = 2 UNION SELECT T1.model , T1.vehicle_id FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id = T2.vehicle_id WHERE T1.Builder = Ziyang
SELECT COUNT(*) , Racing_Series FROM driver GROUP BY Racing_Series
SELECT COUNT(*) , Racing_Series FROM driver GROUP BY Racing_Series
SELECT count(*) FROM driver EXCEPT SELECT count(*) FROM driver JOIN vehicle_driver ON driver.driver_id = vehicle_driver.driver_id
SELECT count(*) FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM vehicle_driver)
SELECT count(*) FROM EXAMS
SELECT T1.name , T1.citizenship FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.driver_id = T2.driver_id JOIN vehicle AS T3 ON T2.vehicle_id = T3.vehicle_id WHERE T3.Model = DJ1
SELECT count(*) FROM EXAMS
SELECT t3.name , t3.Citizenship FROM vehicle AS t1 JOIN vehicle_driver AS t2 ON t1.vehicle_id = t2.vehicle_id JOIN driver AS t3 ON t2.driver_id = t3.driver_id WHERE t1.Model = DJ1
SELECT exam_date FROM EXAMS WHERE subject_code LIKE %data% ORDER BY exam_date DESC
SELECT DISTINCT Subject_Code FROM EXAMS ORDER BY SUBJECT_CODE ASC
SELECT Exam_Date , Exam_Name FROM EXAMS WHERE Subject_Code != Database
SELECT DISTINCT subject_code FROM EXAMS ORDER BY subject_code
SELECT count(DISTINCT Comments) FROM Student_Answers
SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments = Normal
SELECT Type_of_Question_Code , COUNT(*) FROM Questions GROUP BY Type_of_Question_Code
SELECT TYPE_OF_QUESTION_CODE , count(*) FROM Questions GROUP BY TYPE_OF_QUESTION_CODE
SELECT count(DISTINCT Comments) FROM Student_Answers
SELECT exam_date FROM EXAMS WHERE SUBJECT_CODE LIKE %date% ORDER BY exam_date DESC
SELECT Student_Answer_Text FROM Student_Answers GROUP BY Student_Answer_Text ORDER BY COUNT(*) DESC
SELECT Exam_Name , Exam_Date FROM EXAMS WHERE Subject_Code != Database
SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE COMMENTS = Normal
SELECT Student_Answer_Text FROM Student_Answers GROUP BY Student_Answer_Text ORDER BY COUNT(*) DESC
SELECT T1.Email_Adress , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T2.Date_of_Answer DESC
SELECT assessment FROM student_assessments GROUP BY assessment ORDER BY count(*) LIMIT 1
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY count(*) LIMIT 1
SELECT T1.first_name , T2.date_of_answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_id = T2.Student_id
SELECT T2.First_Name , T1.Date_of_Answer FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID = T2.Student_ID
SELECT valid_answer_text FROM Valid_Answers GROUP BY valid_answer_text ORDER BY count(*) DESC LIMIT 1
SELECT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID GROUP BY T2.Student_ID HAVING COUNT(*) >= 2
SELECT Last_Name FROM Students WHERE Gender_MFU != M
SELECT Last_name FROM Students WHERE Gender_MFU != M
SELECT T1.first_name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT Gender_MFU , count(*) FROM Students GROUP BY Gender_MFU
SELECT gender_mfu , count(*) FROM Students GROUP BY gender_mfu
SELECT Last_Name FROM Students WHERE Gender_MFU = F OR Gender_MFU = M
SELECT first_name FROM Students EXCEPT SELECT T2.first_name FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT Last_Name FROM students WHERE Gender_MFU = F OR Gender_MFU = M
SELECT T1.Model , T2.Vehicle_ID FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.Vehicle_ID = T2.Vehicle_ID JOIN driver AS T3 ON T2.Driver_ID = T3.Driver_ID WHERE T3.Name = Jeff Gordon OR T2.vehicle_id IN (SELECT T2.Vehicle_ID FROM vehicle_driver AS T2 JOIN driver AS T3 ON T2.Driver_ID = T3.Driver_ID GROUP BY T2.Vehicle_ID HAVING count(*) > 2) GROUP BY T2.Vehicle_ID
SELECT DISTINCT T1.First_Name FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID WHERE T1.First_Name NOT IN (SELECT DISTINCT T3.First_Name FROM Students AS T3 JOIN Student_Answers AS T4 ON T3.Student_ID = T4.Student_ID)
SELECT T1.valid_answer_text FROM Valid_Answers AS T1 JOIN Student_Answers AS T2 JOIN EXAMS AS T3 ON T1.Question_ID = T2.Question_ID AND T2.Exam_ID = T3.Exam_ID GROUP BY T1.valid_answer_text ORDER BY COUNT(*) DESC LIMIT 1
SELECT TYPE_OF_QUESTION_CODE FROM Questions GROUP BY TYPE_OF_QUESTION_CODE HAVING COUNT(*) >= 3
SELECT student_answer_text FROM student_answers WHERE comments = Absent INTERSECT SELECT student_answer_text FROM student_answers WHERE comments = Normal
SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = Normal INTERSECT SELECT Student_Answer_Text FROM Student_Answers WHERE Comments = Absent
SELECT TYPE_OF_QUESTION_CODE FROM Questions GROUP BY TYPE_OF_QUESTION_CODE HAVING count(*) >= 3
SELECT count(address_id) FROM addresses
SELECT * FROM Students
SELECT * FROM Students
SELECT T1.Email_Adress , T2.Date_of_Answer FROM Students AS T1 JOIN Student_Answers AS T2 ON T1.Student_ID = T2.Student_ID ORDER BY T2.Date_of_Answer DESC
SELECT address_id , address_details FROM addresses
SELECT count(*) FROM addresses
SELECT count(*) FROM products
SELECT product_price FROM products WHERE product_name = Monitor
SELECT product_id , product_type_code , product_name FROM products
SELECT count(*) FROM Products
SELECT product_id , product_type_code , product_name FROM products
SELECT address_id , address_details FROM addresses
SELECT avg(product_price) FROM products WHERE product_type_code = Clothes
SELECT count(*) FROM products WHERE product_type_code = Hardware
SELECT product_price FROM products WHERE product_name = Monitor
SELECT avg(product_price) FROM products WHERE product_type_code = Clothes
SELECT min(product_price) , avg(product_price) , max(product_price) FROM products
SELECT min(product_price) , avg(product_price) , max(product_price) FROM products
SELECT count(*) FROM products WHERE product_type_code = Hardware
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_name FROM products WHERE product_type_code = Hardware AND product_price > (SELECT avg(product_price) FROM products WHERE product_type_code = Hardware )
SELECT T2.product_id , T1.product_name FROM products AS T1 JOIN products AS T2 ON T1.product_type_code = 'Hardware' WHERE T1.product_price = ( SELECT min(product_price) FROM products WHERE product_type_code = 'Hardware' )
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products WHERE product_type_code = Hardware ) AND product_type_code = Hardware
SELECT product_name FROM products WHERE product_type_code = Clothes ORDER BY product_price DESC LIMIT 1
SELECT product_name FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT product_id , product_name FROM products WHERE product_type_code = 'Hardware' ORDER BY product_price LIMIT 1
SELECT product_name FROM products WHERE product_type_code = Clothes ORDER BY product_price DESC LIMIT 1
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_name FROM products WHERE product_type_code = Hardware ORDER BY product_price ASC
SELECT product_name FROM products ORDER BY product_price DESC
SELECT product_type_code , avg(product_price) FROM products GROUP BY product_type_code
SELECT product_type_code , count(*) FROM products GROUP BY product_type_code
SELECT * FROM products WHERE product_type_code = Hardware ORDER BY product_price ASC
SELECT product_type_code , count(*) FROM products GROUP BY product_type_code
SELECT count(*) FROM customers
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(*) >= 2
SELECT avg(product_price) , product_type_code FROM products GROUP BY product_type_code
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(*) >= 2
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM customers
SELECT customer_id , customer_name FROM Customers
SELECT payment_method_code , count(*) FROM customers GROUP BY payment_method_code
SELECT payment_method_code , count(*) FROM customers GROUP BY payment_method_code
SELECT customer_name , payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) LIMIT 1
SELECT customer_id , customer_name FROM Customers
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code , customer_number FROM customers WHERE customer_name = Jeromy
SELECT customer_address , customer_phone , customer_email FROM customers WHERE customer_name = Jeromy
SELECT customer_address , customer_phone , customer_email FROM customers WHERE customer_name = Jeromy
SELECT payment_method_code FROM customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code , customer_number FROM customers WHERE customer_name = Jeromy
SELECT DISTINCT payment_method_code FROM customers
SELECT DISTINCT payment_method_code FROM customers
SELECT product_id , product_type_code FROM products ORDER BY product_name
SELECT product_id , product_type_code FROM products ORDER BY product_name
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1
SELECT T2.customer_name , T1.customer_id , count(*) FROM customer_orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT count(*) FROM customer_orders
SELECT count(*) FROM customer_orders
SELECT product_type_code FROM products GROUP BY product_type_code ORDER BY count(*) LIMIT 1
SELECT T1.order_id , T1.order_date , T1.order_status_code FROM Customer_Orders AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_name = Jeromy
SELECT order_status_code , count(*) FROM Customer_orders GROUP BY order_status_code
SELECT t1.customer_name FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.payment_method_code ORDER BY count(*) , t1.customer_name DESC LIMIT 1
SELECT T1.order_id , T1.order_date , T1.order_status_code FROM customer_orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_name = Jeromy
SELECT order_status_code , count(*) FROM customer_orders GROUP BY order_status_code
SELECT T2.customer_name , T1.customer_id , count(*) FROM customer_orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T2.customer_id , T2.customer_name , T2.customer_phone , T2.customer_email FROM customer_orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code FROM customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.customer_id , T1.customer_name , T1.customer_phone , T1.customer_email FROM Customers AS T1 JOIN Customer_Orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code FROM Customer_orders WHERE order_status_code = (SELECT order_status_code FROM Customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1)
SELECT DISTINCT product_name FROM products WHERE product_name NOT IN ( SELECT T2.product_name FROM order_items AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id )
SELECT product_name FROM products WHERE product_id NOT IN ( SELECT product_id FROM order_items )
SELECT count(DISTINCT customer_id) FROM customers WHERE customer_id NOT IN ( SELECT customer_id FROM customer_orders )
SELECT count(*) FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_orders)
SELECT count(*) FROM order_items AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id WHERE T2.product_name = 'Monitor'
SELECT customer_id FROM customers EXCEPT SELECT customer_id FROM customer_orders
SELECT count(DISTINCT customer_id) FROM customer_orders
SELECT count(DISTINCT T2.customer_id) FROM customer_orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id
SELECT customer_id FROM Customers EXCEPT SELECT customer_id FROM Customer_Orders
SELECT sum(t2.order_quantity) FROM products AS t1 JOIN order_items AS t2 ON t1.product_id = t2.product_id WHERE t1.product_name = Monitor
SELECT T1.order_date , T1.order_id FROM Customer_Orders AS T1 JOIN Order_items AS T2 ON T1.order_id = T2.order_id WHERE T2.order_quantity > 6 OR T2.order_quantity > 3
SELECT count(*) FROM building
SELECT count(*) FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id = t2.customer_id JOIN order_items AS t3 ON t2.order_id = t3.order_id JOIN products AS t4 ON t3.product_id = t4.product_id WHERE t4.product_name = Monitor
SELECT count(*) FROM building
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT DISTINCT address FROM building ORDER BY completed_year DESC
SELECT count(DISTINCT T1.customer_name) FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id JOIN products AS T4 ON T3.product_id = T4.product_id WHERE T4.product_name = Monitor
SELECT T1.order_id , T1.order_date FROM Customer_Orders AS T1 JOIN Order_Items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id HAVING count(*) > 3 OR sum(T2.order_quantity) > 6
SELECT ADDRESS FROM building ORDER BY Completed_Year DESC
SELECT avg(Population) FROM region
SELECT max(Number_of_Stories) FROM building WHERE Completed_Year != 1980
SELECT max(Number_of_Stories) FROM building WHERE Completed_Year != 1980
SELECT Name FROM region ORDER BY Name ASC
SELECT avg(Population) FROM region
SELECT Name FROM region ORDER BY Name
SELECT Capital FROM region WHERE Area > 10000
SELECT Capital FROM region WHERE Area > 10000
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1
SELECT Name FROM region ORDER BY Area DESC LIMIT 5
SELECT Name FROM region ORDER BY Area DESC LIMIT 5
SELECT T1.Name , T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T2.Name , T1.Name FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.Region_ID
SELECT T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T2.Name HAVING count(*) > 1
SELECT T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.Region_ID HAVING count(*) > 1
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1
SELECT T2.Capital FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID GROUP BY T1.Region_ID ORDER BY count(*) DESC LIMIT 1
SELECT T2.Address , T1.Capital FROM region AS T1 JOIN building AS T2 ON T1.Region_ID = T2.Region_ID
SELECT t2.capital FROM building AS t1 JOIN region AS t2 ON t1.region_id = t2.region_id GROUP BY t1.region_id ORDER BY count(*) LIMIT 1
SELECT T2.address , T1.name FROM region AS T1 JOIN building AS T2 ON T1.region_id = T2.region_id
SELECT T1.Number_of_Stories FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID WHERE T2.Name = Abruzzo
SELECT T1.Number_of_Stories FROM building AS T1 JOIN region AS T2 ON T1.Region_ID = T2.Region_ID WHERE T2.Name = Abruzzo
SELECT Completed_Year , COUNT(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY count(*) DESC LIMIT 1
SELECT completed_year , count(*) FROM building GROUP BY completed_year
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM region WHERE Region_ID NOT IN ( SELECT Region_ID FROM building )
SELECT name FROM region WHERE region_id NOT IN (SELECT region_id FROM building)
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT DISTINCT address FROM building
SELECT DISTINCT address FROM building
SELECT count(*) FROM Services
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT channel_details FROM channels ORDER BY channel_details ASC
SELECT count(*) FROM Services
SELECT channel_details FROM channels ORDER BY channel_details
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY count(*) DESC LIMIT 1
SELECT T1.Service_Details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID GROUP BY T2.Service_ID HAVING count(*) > 3
SELECT t10.Service_Details FROM customers AS t2 JOIN customers_and_services AS t4 ON t2.Customer_ID = t4.Customer_ID JOIN services AS t10 ON t4.Service_ID = t10.Service_ID WHERE t2.Customer_Details = Hardy Kutch
SELECT T1.Service_Details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID GROUP BY T1.Service_ID HAVING count(*) > 3
SELECT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT customer_details FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customers_and_services)
SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT customers_and_services_details) FROM Customers_and_Services
SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id JOIN services AS t3 ON t2.service_id = t3.service_id GROUP BY t3.service_id ORDER BY count(*) ASC LIMIT 1
SELECT DISTINCT customer_details FROM customers EXCEPT SELECT DISTINCT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id = t2.customer_id
SELECT T1.Service_details FROM Services AS T1 JOIN Customers_and_Services AS T2 ON T1.Service_ID = T2.Service_ID JOIN Customers AS T3 ON T2.Customer_ID = T3.Customer_ID WHERE T3.Customer_Details = Hardy Kutch
SELECT DISTINCT T1.customer_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id ORDER BY count(*) ASC LIMIT 1
SELECT customer_details FROM Customers WHERE customer_details LIKE '%Kutch%'
SELECT count(DISTINCT customer_details) FROM customers UNION SELECT count(DISTINCT customers_and_services_details) FROM customers_and_services
SELECT customer_details FROM Customers WHERE customer_details LIKE %Kutch%
SELECT T3.Service_Details FROM Customers AS T1 JOIN Customers_and_Services AS T2 ON T1.Customer_ID = T2.Customer_ID JOIN Services AS T3 ON T3.Service_ID = T2.Service_ID UNION SELECT T1.Service_Details FROM Services AS T1 JOIN Customer_Interactions AS T2 ON T1.Service_ID = T2.Service_ID WHERE T2.Status_Code = good
SELECT T4.service_details FROM customers AS T1 JOIN customers_and_services AS T2 ON T1.customer_id = T2.customer_id JOIN services AS T4 ON T4.service_id = T2.service_id JOIN customer_interactions AS T3 ON T4.service_id = T3.service_id WHERE T1.customer_details = Hardy Kutch AND T3.status_code != bad
SELECT T2.Service_Details FROM Customer_Interactions AS T1 JOIN Services AS T2 ON T1.Service_ID = T2.Service_ID WHERE T1.Status_Code = bad INTERSECT SELECT T1.Service_Details FROM Customers AS T3 JOIN Customers_and_Services AS T4 ON T3.Customer_ID = T4.Customer_ID JOIN Services AS T1 ON T4.Service_ID = T1.Service_ID WHERE T3.Customer_Details = Hardy Kutch
SELECT T2.customer_details FROM customer_interactions AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id WHERE T1.status_code = Stuck AND T1.services_and_channels_details = bad
SELECT count(*) FROM Integration_Platform WHERE integration_platform_Details = 'Success'
SELECT T1.service_details FROM services AS t1 JOIN customer_interactions AS t2 ON t1.service_id = t2.service_id JOIN channels AS t3 ON t3.channel_id = t2.channel_id WHERE t3.channel_details = 15 ij
SELECT count(*) FROM customer_interactions AS T1 JOIN integration_platform AS T2 ON T1.Customer_Interaction_ID = T2.Customer_Interaction_ID WHERE T1.Status_Code = Success
SELECT T2.customer_details FROM Integration_platform AS T1 JOIN Customers AS T2 ON T1.Customer_Interaction_ID = (SELECT Customer_Interaction_ID FROM Customers AS T3 JOIN Customer_interactions AS T4 ON T3.Customer_ID = T4.Customer_ID WHERE T4.Status_Code = failed )
SELECT service_details FROM services EXCEPT SELECT T2.service_details FROM customers_and_services AS T1 JOIN services AS T2 ON T1.service_id = T2.service_id
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id JOIN integration_platform AS T3 ON T2.customer_interaction_id = T3.customer_interaction_id WHERE T3.integration_platform_details = Fail
SELECT service_details FROM services EXCEPT SELECT T2.service_details FROM customers_and_services AS T1 JOIN services AS T2 ON T1.service_id = T2.service_id
SELECT Analytical_Layer_Type_Code , COUNT(*) FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code
SELECT T1.customer_details FROM customers AS T1 JOIN customer_interactions AS T2 ON T1.customer_id = T2.customer_id WHERE T2.Status_Code = Stuck AND Services_and_Channels_Details = bad
SELECT Service_ID , Customers_and_Services_Details FROM Customers_and_Services WHERE Customers_and_Services_Details = unsatisfied
SELECT analytical_layer_type_code , count(*) FROM Analytical_Layer GROUP BY analytical_layer_type_code
SELECT DISTINCT TYPE_of_powertrain FROM Vehicles
SELECT name FROM vehicles ORDER BY model_year DESC
SELECT count(*) FROM VEHICLES
SELECT T1.service_details FROM services AS T1 JOIN customers_and_services AS T2 ON T1.Service_ID = T2.Service_ID WHERE T2.Customers_and_Services_Details = unsatisfied
SELECT name FROM Vehicles ORDER BY Model_year DESC
SELECT DISTINCT TYPE_OF_POWERTRAIN FROM Vehicles
SELECT count(*) FROM Vehicles
SELECT name , TYPE_of_powertrain , annual_fuel_cost FROM Vehicles WHERE model_year = 2013 OR model_year = 2014
SELECT name , TYPE_of_powertrain , Annual_fuel_cost FROM VEHICLES WHERE Model_year = 2013 OR Model_year = 2014
SELECT DISTINCT T3.Service_Details FROM Customer_Interactions AS T1 JOIN Channels AS T2 ON T1.Channel_ID = T2.Channel_ID JOIN Services AS T3 ON T1.Service_ID = T3.Service_ID WHERE T2.Channel_Details = 15 ij
SELECT TYPE_of_powertrain FROM vehicles WHERE model_year = 2014 INTERSECT SELECT TYPE_of_powertrain FROM vehicles WHERE model_year = 2013
SELECT TYPE_of_powertrain , count(*) FROM Vehicles GROUP BY TYPE_of_powertrain
SELECT TYPE_of_powertrain FROM vehicles WHERE Model_year = 2013 INTERSECT SELECT TYPE_of_powertrain FROM vehicles WHERE Model_year = 2014
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1
SELECT TYPE_OF_POWERTRAIN , count(*) FROM Vehicles GROUP BY TYPE_OF_POWERTRAIN
SELECT name , model_year FROM Vehicles WHERE city_fuel_economy_rate <= highway_fuel_economy_rate
SELECT TYPE_of_powertrain FROM Vehicles GROUP BY TYPE_of_powertrain ORDER BY count(*) DESC LIMIT 1
SELECT TYPE_of_powertrain , avg(annual_fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT min(Annual_fuel_cost) , max(Annual_fuel_cost) , avg(Annual_fuel_cost) FROM VEHICLES
SELECT name , model_year FROM vehicles WHERE city_fuel_economy_rate <= highway_fuel_economy_rate
SELECT TYPE_of_powertrain , avg(Annual_fuel_cost) FROM Vehicles GROUP BY TYPE_of_powertrain HAVING count(*) >= 2
SELECT name , age , membership_credit FROM CUSTOMERS
SELECT name , age , membership_credit FROM Customers
SELECT T1.Service_id FROM Services AS T1 JOIN Customers AS T2 ON T1.Service_id = T2.Service_id WHERE T2.Customer_details = Hardy Kutch OR T1.Service_id IN (SELECT T3.Service_id FROM Customer_Interactions AS T3 JOIN Customers AS T4 ON T3.Customer_ID = T4.Customer_ID WHERE T3.status_code = good AND T4.Customer_details = Hardy Kutch )
SELECT min(annual_fuel_cost) , max(annual_fuel_cost) , avg(annual_fuel_cost) FROM vehicles
SELECT name , age FROM Customers ORDER BY membership_credit DESC LIMIT 1
SELECT name , age FROM customers ORDER BY membership_credit DESC LIMIT 1
SELECT * FROM discount
SELECT avg(age) FROM customers WHERE membership_credit > (SELECT avg(membership_credit) FROM customers)
SELECT T3.name , T2.total_hours FROM vehicles AS T1 JOIN renting_history AS T2 ON T1.id = T2.vehicles_id JOIN customers AS T3 ON T3.id = T2.customer_id
SELECT T2.name , sum(T1.total_hours) FROM renting_history AS T1 JOIN vehicles AS T2 ON T1.vehicles_id = T2.id GROUP BY T1.vehicles_id
SELECT name FROM vehicles EXCEPT SELECT T2.name FROM renting_history AS T1 JOIN vehicles AS T2 ON T1.vehicles_id = T2.id
SELECT name FROM Vehicles WHERE id NOT IN (SELECT vehicles_id FROM Renting_history)
SELECT T1.name , T1.model_year FROM Vehicles AS T1 JOIN Renting_history AS T2 ON T1.id = T2.vehicles_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM Renting_history AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.id GROUP BY T2.id HAVING count(*) >= 2
SELECT T1.name FROM customers AS T1 JOIN renting_history AS T2 ON T1.id = T2.customer_id GROUP BY T1.id HAVING count(*) >= 2
SELECT t1.name FROM discount AS t1 JOIN renting_history AS t2 ON t1.id = t2.discount_id GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT T3.name FROM Renting_history AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.id JOIN Vehicles AS T3 ON T1.vehicles_id = T3.id ORDER BY T1.total_hours DESC
SELECT T3.name , T3.Model_year FROM Renting_history AS T1 JOIN Vehicles AS T3 ON T1.vehicles_id = T3.id GROUP BY T1.vehicles_id ORDER BY count(*) DESC LIMIT 1
SELECT * FROM Discount
SELECT T3.name FROM Renting_history AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.id JOIN Vehicles AS T3 ON T1.vehicles_id = T3.id ORDER BY total_hours DESC
SELECT DISTINCT Type_of_powertrain , avg(City_fuel_economy_rate) , avg(Highway_fuel_economy_rate) FROM VEHICLES GROUP BY Type_of_powertrain
SELECT avg(City_fuel_economy_rate) , avg(Highway_fuel_economy_rate) , TYPE_OF_POWERTRAIN FROM Vehicles GROUP BY TYPE_OF_POWERTRAIN
SELECT avg(amount_of_loan) FROM Student_Loans
SELECT avg(amount_of_loan) FROM Student_Loans
SELECT T2.name , T2.Type_of_powertrain FROM Renting_history AS T1 JOIN Vehicles AS T2 ON T1.vehicles_id = T2.id GROUP BY T1.vehicles_id HAVING sum(T1.total_hours) > 30
SELECT T2.name , T2.Type_of_powertrain FROM renting_history AS T1 JOIN vehicles AS T2 ON T1.vehicles_id = T2.id WHERE T1.total_hours > 30
SELECT T2.name FROM Renting_history AS T1 JOIN Discount AS T2 ON T1.discount_id = T2.id GROUP BY T1.discount_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(T1.age) FROM customers AS T1 JOIN renting_history AS T2 ON T1.id = T2.customer_id WHERE T1.membership_credit > (SELECT avg(memberhip_credit) FROM customers)
SELECT T2.teacher_details FROM CLASSES AS T1 JOIN TEACHERS AS T2 ON T1.teacher_id = T2.teacher_id WHERE T1.class_details LIKE '%data%' EXCEPT SELECT T2.teacher_details FROM CLASSES AS T1 JOIN TEACHERS AS T2 ON T1.teacher_id = T2.teacher_id WHERE T1.class_details LIKE 'net%' OR T1.class_details LIKE 'nets%'
SELECT T1.amount_of_loan , T1.date_of_loan FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id JOIN Achievements AS T3 ON T2.student_id = T3.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.student_details , T1.student_id FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(DISTINCT T2.class_details) >= 2 INTERSECT SELECT T1.student_details , T1.student_id FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) < 2
SELECT DISTINCT T1.transcript_details FROM TRANSCRIPTS AS T1 JOIN STUDENTS AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT DISTINCT T1.transcript_details FROM TRANSCRIPTS AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT DISTINCT T1.transcript_details FROM TRANSCRIPTS AS T1 JOIN STUDENTS AS T2 ON T1.student_id = T2.student_id JOIN Student_loans AS T3 ON T2.student_id = T3.student_id
SELECT T1.student_details , T1.student_id FROM Students AS T1 JOIN CLASSES AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2 UNION SELECT T2.student_details , T2.student_id FROM Students AS T2 JOIN Detention AS T3 ON T2.student_id = T3.student_id GROUP BY T2.student_id HAVING count(*) < 2
SELECT date_of_loan , amount_of_loan FROM Student_loans WHERE student_id IN (SELECT T1.student_id FROM Students AS T1 JOIN Achievements AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING COUNT(*) >= 2)
SELECT bio_data FROM Students EXCEPT SELECT T1.student_details AS bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT T3.student_details AS bio_data FROM Students AS T3 JOIN Detention AS T4 ON T3.student_id = T4.student_id
SELECT T2.teacher_details FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id WHERE T1.class_details LIKE '%data%' EXCEPT SELECT T2.teacher_details FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id WHERE T1.class_details LIKE 'net%'
SELECT DISTINCT T1.detention_type_description FROM Ref_Detention_Type AS T1 JOIN Detention AS T2 ON T1.detention_type_code = T2.detention_type_code
SELECT DISTINCT T1.detention_type_description FROM Ref_Detention_Type AS T1 JOIN Detention AS T2 ON T1.detention_type_code = T2.detention_type_code
SELECT T2.teacher_details , T1.class_id FROM CLASSES AS T1 JOIN TEACHERS AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_details , T2.bio_data FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T3.address_id JOIN Students_Addresses AS T3 ON T2.student_id = T3.student_id
SELECT T1.address_details , T2.bio_data FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.student_id
SELECT T1.bio_data , T2.date_of_transcript FROM Students AS T1 JOIN TRANSCRIPTS AS T2 ON T1.student_id = T2.student_id
SELECT T2.bio_data , T1.date_of_transcript FROM TRANSCRIPTS AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT behaviour_monitoring_details , count(*) FROM Behaviour_Monitoring GROUP BY behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , behaviour_monitoring_details FROM Behaviour_Monitoring GROUP BY behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_details , Ref_Address_Types.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id JOIN Ref_Address_Types ON T2.address_type_code = Ref_Address_Types.address_type_code
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.behaviour_monitoring_details ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN behaviour_monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) = 3 INTERSECT SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN behaviour_monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING COUNT(*) = 3
SELECT T1.student_details , T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T2.behaviour_monitoring_details HAVING COUNT(*) = 3 OR T2.behaviour_monitoring_details = (SELECT behaviour_monitoring_details FROM behaviour_monitoring GROUP BY behaviour_monitoring_details ORDER BY COUNT(*) DESC LIMIT 1)
SELECT T3.teacher_details , T1.class_id FROM CLASSES AS T1 JOIN STUDENTS AS T2 ON T1.teacher_id = T2.student_id JOIN TEACHERS AS T3 ON T1.teacher_id = T3.teacher_id GROUP BY T3.teacher_details ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.bio_data , T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id
SELECT T2.achievement_details , T1.achievement_type_description FROM Ref_Achievement_Type AS T1 JOIN ACHIEVEMENTS AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT count(*) , T1.event_type_code , T2.event_type_description FROM Student_Events AS T1 JOIN Ref_Event_Types AS T2 ON T1.event_type_code = T2.event_type_code GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T1.event_type_code , T2.event_type_description FROM Student_Events AS T1 JOIN Ref_event_Types AS T2 ON T1.event_type_code = T2.event_type_CODE GROUP BY T1.event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_monitoring AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = (SELECT count(*) FROM behaviour_monitoring GROUP BY student_id ORDER BY count(*) DESC LIMIT 1) ORDER BY T1.student_id
SELECT date_of_transcript , transcript_details FROM TRANSCRIPTS
SELECT T3.student_details , T4.address_type_description FROM Students_Addresses AS T1 JOIN Addresses AS T2 ON T1.address_id = T2.address_id JOIN Students AS T3 ON T1.student_id = T3.student_id JOIN Ref_Address_Types AS T4 ON T1.address_type_code = T4.address_type_code
SELECT date_of_transcript , transcript_details FROM TRANSCRIPTS
SELECT T1.achievement_details , T2.achievement_type_description FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT count(*) FROM teachers AS T1 JOIN classes AS T2 ON T1.teacher_id = T2.teacher_id JOIN students AS T3 ON T2.student_id = T3.student_id EXCEPT SELECT count(*) FROM teachers AS T1 JOIN classes AS T2 ON T1.teacher_id = T2.teacher_id JOIN students AS T3 ON T2.student_id = T3.student_id JOIN achievements AS T4 ON T3.student_id = T4.student_id
SELECT datetime_detention_start , datetime_detention_end FROM Detention
SELECT datetime_detention_start , datetime_detention_end FROM DETENTION
SELECT count(*) FROM Teachers WHERE teacher_id IN ( SELECT T1.teacher_id FROM Classes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT T1.teacher_id FROM Teachers AS T3 JOIN Classes AS T1 ON T3.teacher_id = T1.teacher_id JOIN Students AS T2 ON T1.student_id = T2.student_id JOIN Achievements AS T4 ON T2.student_id = T4.student_id )
SELECT bio_data FROM Students WHERE student_details LIKE %Suite%
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT T2.teacher_id , count(*) FROM Classes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.date_achievement , T1.achievement_details , T1.achievement_type_code FROM Achievements AS T1
SELECT student_id , count(*) FROM Classes GROUP BY student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.achievement_type_code , T2.achievement_details , T2.date_achievement FROM Ref_Achievement_Type AS T1 JOIN ACHIEVEMENTS AS T2 ON T1.achievement_type_code = T2.achievement_type_code
SELECT DISTINCT T3.teacher_details , T1.bio_data FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id JOIN Teachers AS T3 ON T3.teacher_id = T2.teacher_id
SELECT T1.student_id , T1.student_details FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T2.class_details , T3.student_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id = T2.teacher_id JOIN Students AS T3 ON T2.student_id = T3.student_id
SELECT T1.detention_type_code , T1.detention_type_description FROM Ref_Detention_Type AS T1 JOIN Detention AS T2 ON T1.detention_type_code = T2.detention_type_code GROUP BY T1.detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.detention_type_code , T2.detention_type_description FROM Detention AS T1 JOIN Ref_Detention_Type AS T2 ON T1.detention_type_code = T2.detention_type_code GROUP BY T1.detention_type_code ORDER BY count(*) LIMIT 1
SELECT T2.bio_data , T2.student_details FROM Student_loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T1.amount_of_loan > ( SELECT avg(amount_of_loan) FROM Student_loans )
SELECT T1.student_id , T1.student_details FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT date_of_loan FROM Student_Loans ORDER BY date_of_loan ASC LIMIT 1
SELECT T1.bio_data , T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id WHERE T2.amount_of_loan > (SELECT avg(amount_of_loan) FROM Student_loans)
SELECT count(*) , T2.student_id FROM Students AS T1 JOIN TRANSCRIPTS AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT date_of_loan FROM Student_loans ORDER BY date_of_loan ASC LIMIT 1
SELECT T1.date_of_transcript FROM TRANSCRIPTS AS T1 JOIN STUDENT_LOANS AS T2 ON T1.student_id = T2.student_id ORDER BY T2.amount_of_loan DESC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_loan_id ORDER BY sum(T2.amount_of_loan) LIMIT 1
SELECT T2.bio_data FROM Student_Loans AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id ORDER BY T1.date_of_loan LIMIT 1
SELECT sum(amount_of_loan) , T1.student_id FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT date_of_transcript FROM TRANSCRIPTS AS T1 JOIN Student_loans AS T2 ON T1.student_id = T2.student_id ORDER BY amount_of_loan DESC LIMIT 1
SELECT student_id , sum(amount_of_loan) FROM Student_loans GROUP BY student_id
SELECT T1.teacher_id , count(*) FROM Teachers AS T1 JOIN JOIN Schedules AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT student_id) FROM Detention
SELECT T1.student_id , T1.bio_data , count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT T2.teacher_details FROM CLASSES AS T1 JOIN TEACHERS AS T2 ON T1.teacher_id = T2.teacher_id JOIN TRANSCRIPTS AS T3 ON T1.student_id = T3.student_id ORDER BY T3.date_of_transcript LIMIT 1
SELECT count(*) FROM Detention
SELECT address_type_code , address_type_description FROM Ref_Address_Types
SELECT DISTINCT T1.bio_data FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT DISTINCT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id
SELECT T1.student_id , T1.bio_data , count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT T1.address_type_code , T1.address_type_description FROM Ref_Address_Types AS T1 JOIN Students_Addresses AS T3 ON T1.address_type_code = T3.address_type_code GROUP BY T3.address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT datetime_detention_start FROM Detention
SELECT name FROM author
SELECT datetime_detention_start FROM Detention
SELECT DISTINCT T3.teacher_id FROM TRANSCRIPTS AS T1 JOIN STUDENTS AS T2 JOIN CLASSES AS T3 ON T1.student_id = T2.student_id AND T2.student_id = T3.student_id WHERE T1.date_of_transcript = ( SELECT min(date_of_transcript) FROM TRANSCRIPTS )
SELECT name FROM author
SELECT name , address FROM Client
SELECT name , address FROM Client
SELECT DISTINCT title , ISBN , SalePrice FROM BOOK
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id = T2.student_id
SELECT count(*) FROM Book
SELECT count(*) FROM BOOK
SELECT Title , ISBN , SalePrice FROM BOOK
SELECT count(*) FROM Client
SELECT T1.date_from , T2.date_to FROM Students_Addresses AS T1 JOIN Students_Addresses AS T2 ON T1.student_id = T2.student_id JOIN Transcripts AS T3 ON T1.student_id = T3.student_id GROUP BY T1.student_id HAVING count(T1.date_from) >= 2
SELECT count(*) FROM author
SELECT count(*) FROM author
SELECT count(*) FROM Client
SELECT T1.datetime_detention_start , T1.datetime_detention_end FROM Detention AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id JOIN Student_Events AS T3 ON T1.student_id = T3.student_id GROUP BY T3.student_id HAVING count(*) = 2
SELECT name , address FROM CLIENT ORDER BY name
SELECT name , address FROM CLIENT ORDER BY name
SELECT T1.idorder , T2.name FROM orders AS T1 JOIN CLIENT AS T2 ON T1.idclient = T2.idclient
SELECT T1.IdClient , T2.Name FROM orders AS T1 JOIN client AS T2 ON T1.IdClient = T2.IdClient
SELECT T2.name , count(*) FROM author_book AS T1 JOIN author AS T2 ON T1.author = T2.idAuthor GROUP BY T2.idauthor
SELECT ISBN , sum(amount) FROM Books_order GROUP BY ISBN
SELECT T2.name , count(*) FROM Author_Book AS T1 JOIN Author AS T2 ON T1.author = T2.idAuthor GROUP BY T1.author
SELECT t1.title FROM book AS t1 JOIN books_order AS t2 ON t1.isbn = t2.isbn GROUP BY t2.isbn ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T3.title FROM author AS T1 JOIN author_book AS T2 ON T1.idauthor = T2.author JOIN book AS T3 ON T2.isbn = T3.isbn
SELECT DISTINCT T1.isbn , sum(T2.amount) FROM book AS T1 JOIN Books_Order AS T2 ON T1.isbn = T2.isbn GROUP BY T1.isbn
SELECT T3.title , T1.name FROM author AS T1 JOIN author_book AS T2 ON T1.idauthor = T2.author JOIN book AS T3 ON T2.isbn = T3.isbn
SELECT T2.idorder , count(*) FROM orders AS T1 JOIN Books_order AS T2 ON T1.idorder = T2.idorder GROUP BY T1.idorder
SELECT T1.ISBN , count(*) FROM Books_order AS T1 JOIN book AS T2 ON T1.ISBN = T2.ISBN GROUP BY T1.ISBN
SELECT T1.title , T1.purchasePrice FROM book AS T1 JOIN books_order AS T2 ON T1.isbn = T2.isbn GROUP BY T2.isbn ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT DISTINCT T1.name FROM CLIENT AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient
SELECT T2.title FROM Books_order AS T1 JOIN BOOK AS T2 ON T1.ISBN = T2.ISBN
SELECT t2.title , t2.purchaseprice FROM books_order AS t1 JOIN book AS t2 ON t1.isbn = t2.isbn GROUP BY t1.isbn ORDER BY sum(t1.amount) DESC LIMIT 1
SELECT DISTINCT T1.Name FROM Client AS T1 JOIN Orders AS T2 ON T1.IdClient = T2.IdClient
SELECT T1.name , count(*) FROM Client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient GROUP BY T2.idclient
SELECT DISTINCT T2.title FROM Books_Order AS T1 JOIN Book AS T2 ON T1.ISBN = T2.ISBN JOIN Orders AS T3 ON T3.idorder = T1.idorder WHERE T3.DateOrder < 2018
SELECT T1.name , count(*) FROM Client AS T1 JOIN Orders AS T2 ON T1.idclient = T2.idclient GROUP BY T1.idclient
SELECT t2.name FROM orders AS t1 JOIN client AS t2 ON t1.idclient = t2.idclient GROUP BY t1.idclient ORDER BY count(*) DESC LIMIT 1
SELECT title FROM book WHERE isbN NOT IN ( SELECT isbN FROM Books_order)
SELECT sum(T2.amount) , T1.name FROM CLIENT AS T1 JOIN Books_order AS T2 ON T1.idclient = T2.idorder GROUP BY T1.name
SELECT t3.name FROM orders AS t1 JOIN books_order AS t2 ON t1.idorder = t2.idorder JOIN Client AS t3 ON t3.idclient = t1.idclient GROUP BY t1.idorder ORDER BY count(*) DESC LIMIT 1
SELECT t3.name FROM books_order AS t1 JOIN orders AS t2 ON t1.idorder = t2.idorder JOIN client AS t3 ON t2.idclient = t3.idclient GROUP BY t3.name ORDER BY count(*) DESC LIMIT 1
SELECT title FROM book WHERE isbn NOT IN (SELECT isbn FROM Books_order)
SELECT max(SalePrice) , min(SalePrice) FROM BOOK
SELECT name FROM Client EXCEPT SELECT T2.name FROM orders AS T1 JOIN client AS T2 ON T1.idclient = T2.idclient
SELECT avg(PurchasePrice) , avg(SalePrice) FROM BOOK
SELECT t2.name FROM books_order AS t1 JOIN client AS t2 ON t1.idorder = t2.idclient GROUP BY t1.idorder ORDER BY sum(t1.amount) DESC LIMIT 1
SELECT max(saleprice - purchaseprice) FROM book
SELECT max(SalePrice) , min(SalePrice) FROM Book
SELECT avg(purchaseprice) , avg(saleprice) FROM book
SELECT title FROM book AS T1 JOIN book_order AS T2 ON T1.isbn = T2.isbn GROUP BY title ORDER BY sum(amount) DESC LIMIT 1
SELECT T1.name , sum(T3.amount) FROM client AS T1 JOIN orders AS T2 ON T1.idClient = T2.idClient JOIN Books_Order AS T3 ON T3.idOrder = T2.idClient GROUP BY T1.idClient
SELECT title FROM book ORDER BY purchaseprice LIMIT 1
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT DISTINCT title FROM book ORDER BY saleprice ASC LIMIT 1
SELECT saleprice - purchaseprice FROM book ORDER BY saleprice - purchaseprice DESC LIMIT 1
SELECT title FROM book ORDER BY purchaseprice DESC LIMIT 1
SELECT title FROM book WHERE saleprice = (SELECT min(saleprice) FROM book)
SELECT title FROM book WHERE saleprice > (SELECT avg(saleprice) FROM book)
SELECT name FROM CLIENT EXCEPT SELECT T1.name FROM CLIENT AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient
SELECT avg(t2.SalePrice) FROM author_book AS t1 JOIN book AS t2 ON t1.isbn = t2.isbn JOIN author AS t3 ON t1.author = t3.idAuthor WHERE t3.name = George Orwell
SELECT avg(t3.saleprice) FROM author AS t1 JOIN author_book AS t2 ON t1.idauthor = t2.author JOIN book AS t3 ON t2.isbn = t3.isbn WHERE t1.name = George Orwell
SELECT title FROM author_book AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T1.author = T3.idauthor WHERE T3.name = George Orwell ORDER BY saleprice LIMIT 1
SELECT T2.title FROM Author AS T1 JOIN author_book AS T3 ON T1.idauthor = T3.author JOIN book AS T2 ON T2.isbn = T3.isbn WHERE T1.name = Plato AND T2.saleprice < (SELECT avg(saleprice) FROM book)
SELECT T2.title FROM author_book AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T1.author = T3.idauthor WHERE T3.name = George Orwell ORDER BY T2.saleprice LIMIT 1
SELECT T3.SalePrice FROM Author AS T1 JOIN Author_Book AS T2 ON T1.idAuthor = T2.Author JOIN Book AS T3 ON T2.Isbn = T3.ISBN WHERE T1.Name = Plato
SELECT t2.name FROM BOOK AS t1 JOIN author AS t2 ON t1.author = t2.idauthor WHERE t1.title = Pride and Prejudice
SELECT T1.SalePrice FROM book AS T1 JOIN author_book AS T2 ON T1.isbn = T2.isbn JOIN author AS T3 ON T2.author = T3.idauthor WHERE T3.name = Plato
SELECT count(*) FROM book AS T1 JOIN Books_order AS T2 ON T1.isbn = T2.isbn WHERE T1.title = Pride and Prejudice
SELECT DISTINCT t3.title FROM author_book AS t2 JOIN author AS t1 ON t2.author = t1.idAuthor JOIN book AS t3 ON t2.isbn = t3.isbn WHERE t1.name LIKE %Plato%
SELECT count(*) FROM orders AS t1 JOIN Books_Order AS t2 ON t1.idorder = t2.idorder JOIN BOOK AS t3 ON t2.isbn = t3.isbn WHERE t3.title = Pride and Prejudice
SELECT t3.name FROM book AS t1 JOIN Author_Book AS t2 ON t1.isbn = t2.isbn JOIN author AS t3 ON t2.author = t3.idauthor WHERE t1.title = Pride and Prejudice
SELECT T2.Title FROM Author_Book AS T1 JOIN BOOK AS T2 ON T1.ISBN = T2.ISBN JOIN AUTHOR AS T3 ON T1.Author = T3.idAuthor WHERE T3.Name LIKE %Plato%
SELECT idorder FROM books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn WHERE title = Pride and Prejudice INTERSECT SELECT idorder FROM books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn WHERE title = The Little Prince
SELECT idorder FROM Books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn WHERE T2.title = Pride and Prejudice INTERSECT SELECT idorder FROM Books_order AS T1 JOIN book AS T2 ON T1.isbn = T2.isbn WHERE T2.title = The Little Prince
SELECT title FROM book WHERE title IN (SELECT t3.title FROM author AS t1 JOIN author_book AS t2 ON t1.idauthor = t2.author JOIN book AS t3 ON t3.isbn = t2.isbn WHERE t1.name = Plato GROUP BY t2.isbn HAVING avg(SalePrice) < (SELECT avg(SalePrice) FROM book))
SELECT title FROM book ORDER BY title ASC
SELECT t1.name FROM client AS t1 JOIN orders AS t2 ON t1.idclient = t2.idclient JOIN Books_order AS t3 ON t2.idorder = t3.idorder JOIN book AS t4 ON t3.ISBN = t4.ISBN WHERE t4.title = Pride and Prejudice
SELECT count(*) FROM book
SELECT t4.isbn FROM orders AS t1 JOIN books_order AS t2 ON t1.idorder = t2.idorder JOIN client AS t3 ON t1.idclient = t3.idclient JOIN book AS t4 ON t2.isbn = t4.isbn WHERE t3.name = Peter Doe INTERSECT SELECT t4.isbn FROM orders AS t1 JOIN books_order AS t2 ON t1.idorder = t2.idorder JOIN client AS t3 ON t1.idclient = t3.idclient JOIN book AS t4 ON t2.isbn = t4.isbn WHERE t3.name = James Smith
SELECT TYPE , Release FROM book
SELECT max(Chapters) , min(Chapters) FROM book
SELECT Title FROM book ORDER BY pages DESC
SELECT T4.title FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN book AS T4 ON T4.isbn = T2.isbn JOIN client AS T3 ON T3.idclient = T1.idclient WHERE T3.name = Peter Doe EXCEPT SELECT T4.title FROM orders AS T1 JOIN books_order AS T2 ON T1.idorder = T2.idorder JOIN book AS T4 ON T4.isbn = T2.isbn JOIN client AS T3 ON T3.idclient = T1.idclient WHERE T3.name = James Smith
SELECT title FROM book WHERE TYPE != Poet
SELECT avg(Rating) FROM review
SELECT T1.Title , T2.Rating FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID
SELECT T2.Title FROM review AS T1 JOIN book AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T1.Rank ASC LIMIT 1
SELECT t2.rating FROM book AS t1 JOIN review AS t2 ON t1.book_id = t2.book_id ORDER BY t1.Chapters DESC LIMIT 1
SELECT T5.isbn FROM orders AS T1 JOIN book AS T2 JOIN books_order AS T5 ON T1.idorder = T5.idorder JOIN client AS T3 ON T1.idclient = T3.idclient JOIN orders AS T4 ON T4.idorder = T5.idorder JOIN client AS T6 ON T4.idclient = T6.idclient WHERE T3.name = Peter Doe INTERSECT SELECT T5.isbn FROM orders AS T1 JOIN book AS T2 JOIN books_order AS T5 ON T1.idorder = T5.idorder JOIN client AS T3 ON T1.idclient = T3.idclient JOIN orders AS T4 ON T4.idorder = T5.idorder JOIN client AS T6 ON T4.idclient = T6.idclient WHERE T6.name = James Smith
SELECT DISTINCT T1.Name FROM Client AS T1 JOIN orders AS T2 ON T1.idclient = T2.idclient JOIN Books_Order AS T3 ON T2.idorder = T3.idorder WHERE T3.ISBN = (SELECT ISBN FROM book WHERE title = Pride and Prejudice )
SELECT TYPE , COUNT(*) FROM book GROUP BY TYPE
SELECT avg(T2.Readers_in_Million) FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID WHERE T1.Type = Novel
SELECT TYPE FROM book GROUP BY TYPE ORDER BY COUNT(*) DESC LIMIT 1
SELECT TYPE FROM book GROUP BY TYPE HAVING count(*) >= 3
SELECT T1.Title , T1.Audio FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.Readers_in_Million DESC
SELECT T1.Title FROM book AS T1 JOIN review AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY Rating
SELECT t2.rank FROM book AS t1 JOIN review AS t2 ON t1.book_id = t2.book_id ORDER BY t1.Pages LIMIT 1
SELECT count(DISTINCT TYPE) FROM book
SELECT T1.Title FROM BOOK AS T1 JOIN Books_Order AS T2 JOIN Orders AS T3 ON T1.ISBN = T2.ISBN AND T3.idorder = T2.idorder JOIN Client AS T4 ON T3.idclient = T4.idclient WHERE T4.Name = Peter Doe EXCEPT SELECT T1.Title FROM BOOK AS T1 JOIN Books_ORDER AS T2 JOIN Orders AS T3 ON T1.ISBN = T2.ISBN AND T3.idorder = T2.idorder JOIN CLIENT AS T4 ON T3.idclient = T4.idclient WHERE T4.Name = James Smith
SELECT count(*) FROM book WHERE book_id NOT IN ( SELECT book_id FROM review )
SELECT TYPE FROM book WHERE chapters > 75 INTERSECT SELECT TYPE FROM book WHERE chapters < 50
SELECT TYPE , title FROM book WHERE book_id NOT IN (SELECT book_id FROM review)
SELECT count(*) FROM customer
SELECT Name FROM customer ORDER BY Level_of_Membership ASC
SELECT Nationality , Card_Credit FROM customer
SELECT count(*) FROM customer
SELECT Nationality , Card_Credit FROM customer
SELECT Name FROM customer ORDER BY Level_of_Membership
SELECT Card_Credit FROM customer ORDER BY Level_of_Membership DESC LIMIT 1
SELECT avg(Card_Credit) FROM customer WHERE LEVEL_OF_MEMBERSHIP > 1
SELECT Card_Credit FROM customer ORDER BY Level_of_Membership DESC LIMIT 1
SELECT avg(Card_Credit) FROM customer WHERE Level_of_Membership > 1
SELECT Name FROM customer WHERE Nationality = England OR Nationality = Australia
SELECT Name FROM customer WHERE Nationality = England OR Nationality = Australia
SELECT Nationality , COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality , count(*) FROM customer GROUP BY Nationality
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM customer WHERE Card_Credit < 50 INTERSECT SELECT Nationality FROM customer WHERE Card_Credit > 75
SELECT Nationality FROM customer WHERE Card_Credit > 50 INTERSECT SELECT Nationality FROM customer WHERE Card_Credit < 75
SELECT T1.Name , T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID
SELECT T2.Name , sum(T1.Quantity) FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Customer_ID
SELECT T2.Name , T1.Dish_name FROM customer_order AS T1 JOIN customer AS T2 ON T1.Customer_ID = T2.Customer_ID ORDER BY T1.quantity DESC
SELECT DISTINCT manager FROM branch
SELECT T2.name FROM customer_order AS T1 JOIN customer AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING sum(T1.quantity) > 1
SELECT t1.name , sum(t2.quantity) FROM customer AS t1 JOIN customer_order AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_id
SELECT T1.Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Name HAVING T2.quantity > 1
SELECT T3.Name , T1.Dish_Name FROM customer_order AS T1 JOIN customer AS T3 ON T1.Customer_ID = T3.Customer_ID ORDER BY T1.Quantity DESC
SELECT Name FROM customer WHERE Customer_ID NOT IN (SELECT Customer_ID FROM customer_order)
SELECT name FROM customer WHERE customer_id NOT IN (SELECT customer_id FROM customer_order)
SELECT DISTINCT Manager FROM branch
SELECT name FROM member WHERE age = 19 OR age = 20
SELECT name FROM member ORDER BY Age DESC LIMIT 1
SELECT Name , Nationality FROM member
SELECT count(*) FROM member
SELECT name FROM member WHERE nationality != England
SELECT Name FROM member ORDER BY Age ASC
SELECT Nationality , COUNT(*) FROM member GROUP BY Nationality
SELECT Nationality FROM member GROUP BY Nationality ORDER BY COUNT (*) DESC LIMIT 1
SELECT Nationality FROM member GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT t2.club_name FROM club_leader AS t1 JOIN club AS t2 ON t1.club_id = t2.club_id WHERE t1.year_join < 2018
SELECT Nationality FROM member WHERE Age > 22 INTERSECT SELECT Nationality FROM member WHERE Age < 19
SELECT avg(T1.Age) FROM member AS T1 JOIN club_leader AS T2 ON T1.member_id = T2.member_id
SELECT name FROM member EXCEPT SELECT T2.name FROM club_leader AS T1 JOIN member AS T2 ON T1.member_id = T2.member_id
SELECT club_name FROM club WHERE club_name LIKE '%state%'
SELECT t1.team_leader FROM club AS t1 JOIN club_leader AS t2 ON t1.club_id = t2.club_id WHERE t1.overall_ranking > 100
SELECT T3.Name , T2.Dish_Name FROM customer_order AS T1 JOIN customer AS T3 ON T1.Customer_ID = T3.Customer_ID JOIN branch AS T2 ON T1.Branch_ID = T2.Branch_ID
SELECT document_subset_name FROM document_subsets
SELECT collection_subsets.collection_subset_name FROM collection_subsets
SELECT Collecrtion_Subset_Details FROM Collection_Subsets WHERE Collection_Subset_Name = 'Top collection'
SELECT T3.Name , T2.Club_Name FROM club_leader AS T1 JOIN club AS T2 ON T1.Club_ID = T2.Club_ID JOIN member AS T3 ON T1.Member_ID = T3.Member_ID
SELECT document_subset_name FROM Document_subsets
SELECT document_subset_details FROM Document_Subsets WHERE document_subset_name = 'Best for 2000'
SELECT document_subset_details FROM document_subsets WHERE document_subset_name = 'Best for 2000'
SELECT DISTINCT document_object_id FROM Documents_in_Collections
SELECT T1.Team_Leader FROM club AS T1 JOIN club_leader AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.Club_Name = Houston
SELECT document_object_id FROM Document_Objects
SELECT document_object_id FROM document_objects WHERE owner = Marlin
SELECT Parent_Document_Object_ID FROM Document_Objects WHERE OWNER = Marlin
SELECT DISTINCT parent_document_object_id FROM Document_Objects
SELECT T1.owner FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collections AS T3 ON T3.Collection_ID = T2.Collection_ID WHERE T3.Collection_Name = Braeden Collection
SELECT T1.owner FROM document_objects AS T1 JOIN documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN collections AS T3 ON T2.collection_id = T3.collection_id WHERE T3.collection_name = 'Braeden Collection'
SELECT T1.Collection_Subset_Name FROM Collection_Subsets AS T1 JOIN Collections AS T2 ON T1.Collection_Subset_ID = T2.Collection_ID
SELECT t1.owner FROM document_objects AS t1 JOIN document_objects AS t2 ON t1.document_object_id = t2.parent_document_object_id WHERE t2.owner = 'Marlin'
SELECT DISTINCT description FROM document_objects
SELECT count(*) FROM Document_Objects WHERE Owner = Marlin
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID JOIN Collections AS T3 ON T2.Collection_ID = T3.Collection_ID WHERE T1.Owner = 'Marlin'
SELECT count(*) FROM Document_Objects WHERE OWNER = Marlin
SELECT document_object_id FROM Document_Objects EXCEPT SELECT parent_document_object_id FROM Document_Objects
SELECT document_object_id FROM Document_objects EXCEPT SELECT document_object_id FROM Document_objects WHERE parent_document_object_id != 0
SELECT collection_name FROM collections
SELECT t1.collection_description FROM collection_subsets AS t3 JOIN collections AS t1 JOIN collection_subset_members AS t2 ON t3.collection_subset_id = t2.collection_subset_id AND t1.collection_id = t2.collection_id AND t2.collection_id = t1.collection_id WHERE t3.collection_subset_name = Top collection
SELECT count(*) , parent_document_object_id FROM Document_Objects GROUP BY parent_document_object_id
SELECT Collection_Name FROM Collections
SELECT collection_description FROM collections WHERE collection_name = Best
SELECT collection_description FROM collections WHERE collection_name = Best
SELECT document_object_id , count(*) FROM Document_Objects GROUP BY document_object_id
SELECT DISTINCT collection_name FROM collections EXCEPT SELECT DISTINCT t1.collection_name FROM collections AS t1 JOIN collections AS t2 ON t1.collection_id = t2.parent_collection_id
SELECT document_object_id FROM Document_Objects GROUP BY document_object_id HAVING count(*) > 1
SELECT t1.collection_name FROM collections AS t1 JOIN collection_subset_members AS t2 ON t1.collection_id = t2.collection_id WHERE t2.collection_subset_id = (SELECT collection_subset_id FROM collection_subsets WHERE collection_subset_name = Nice )
SELECT T1.document_object_id FROM document_Objects AS T1 JOIN Documents_in_collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN Documents_In_Collections AS T3 ON T1.document_object_id = T3.document_object_id GROUP BY T1.document_object_id HAVING count(DISTINCT T2.collection_id) > 1
SELECT count(*) FROM collections AS t1 JOIN Documents_in_Collections AS t2 ON t1.collection_id = t2.collection_id WHERE t1.collection_name = Best
SELECT DISTINCT T1.collection_name FROM collections AS T1 JOIN collection_subset_members AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name NOT IN (SELECT T3.collection_name FROM collections AS T3 JOIN collection_subset_members AS T4 ON T3.collection_id = T4.collection_id)
SELECT T2.document_object_id FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.document_object_id WHERE T1.owner = Ransom
SELECT count(*) , parent_document_object_id FROM document_objects GROUP BY parent_document_object_id
SELECT document_object_id , count(*) FROM Document_Objects GROUP BY document_object_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collections AS T3 ON T3.collection_id = T2.Collection_id WHERE T3.collection_name = Best GROUP BY T1.owner
SELECT document_object_id FROM Documents_in_collections GROUP BY document_object_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.document_object_id , count(*) FROM Document_objects AS T1 JOIN Document_Objects AS T2 ON T1.document_object_id = T2.parent_document_object_id GROUP BY T1.document_object_id ORDER BY count(*) ASC LIMIT 1
SELECT document_object_id , count(*) FROM Documents_in_Collections GROUP BY document_object_id HAVING count(*) BETWEEN 2 AND 4
SELECT T2.document_object_id FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.document_object_id = T2.parent_document_object_id WHERE T1.owner = Ransom
SELECT T1.collection_name FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.document_object_id IN (SELECT T3.document_object_id FROM document_subset_members AS T3 JOIN document_subsets AS T4 ON T3.document_subset_id = T4.document_subset_id JOIN documents_in_collections AS T5 ON T5.document_object_id = T3.related_document_object_id GROUP BY T5.document_object_id HAVING count(*) > 1) AND T1.collection_name = Nice
SELECT document_object_id , count(*) FROM documents_in_collections GROUP BY document_object_id HAVING count(*) BETWEEN 2 AND 4
SELECT T1.Owner FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID JOIN Document_Objects AS T3 ON T2.Related_Document_Object_ID = T3.Document_Object_ID WHERE T3.Owner = Braeden
SELECT DISTINCT T1.owner FROM document_objects AS T1 JOIN document_subset_members AS T2 ON T1.document_object_id = T2.document_object_id JOIN document_objects AS T3 ON T2.related_document_object_id = T3.document_object_id WHERE T3.owner = Braeden
SELECT DISTINCT T1.document_subset_name FROM document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN document_objects AS t3 ON t3.document_object_id = T2.document_object_id WHERE t3.owner = Braeden
SELECT T3.Collection_Subset_ID , T3.Collection_Subset_Name , count(*) FROM Collections AS T1 JOIN Collection_Subset_Members AS T2 ON T1.Collection_ID = T2.Collection_ID JOIN Collection_Subsets AS T3 ON T2.Collection_Subset_ID = T3.Collection_Subset_ID GROUP BY T3.Collection_Subset_ID
SELECT T1.collection_name , count(*) FROM collection_subsets AS T1 JOIN collection_subset_members AS T2 ON T1.collection_name = T2.collection_subsets_id GROUP BY T1.collection_name
SELECT T2.document_subset_id , T2.document_subset_name , count(DISTINCT T1.document_object_id) FROM document_subset_members AS T1 JOIN document_subsets AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T2.document_subset_id
SELECT t1.document_subset_id , t1.document_subset_name , count(DISTINCT t2.related_document_object_id) FROM document_subsets AS t1 JOIN document_subset_members AS t2 ON t1.document_subset_id = t2.document_subset_id GROUP BY t1.document_subset_id ORDER BY count(DISTINCT t2.related_document_object_id) DESC LIMIT 1
SELECT t3.document_subset_name FROM document_objects AS t1 JOIN document_subset_members AS t2 ON t1.document_object_id = t2.document_object_id JOIN document_subsets AS t3 ON t2.document_subset_id = t3.document_subset_id WHERE t1.owner = Braeden GROUP BY t3.document_subset_name
SELECT document_subset_name , document_object_id FROM Document_Subset_Members AS T1 JOIN Document_Subsets AS T2 ON T1.document_subset_id = T2.document_subset_id
SELECT T1.document_subset_id , T1.document_subset_name , count(*) FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_subset_id = T2.document_subset_id GROUP BY T1.document_subset_id
SELECT t2.collection_name FROM document_objects AS t1 JOIN Documents_in_Collections AS t3 ON t1.document_object_id = t3.document_object_id JOIN collections AS t2 ON t3.collection_id = t2.collection_id WHERE t1.owner = 'Ransom'
SELECT t3.collection_name FROM document_objects AS t1 JOIN documents_in_collections AS t2 ON t1.document_object_id = t2.document_object_id JOIN collections AS t3 ON t2.collection_id = t3.collection_id WHERE t1.owner = Ransom
SELECT document_object_id , count(*) FROM Documents_in_collections GROUP BY document_object_id
SELECT count(*) , T1.document_object_id FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.document_object_id = T2.document_object_id GROUP BY T1.document_object_id
SELECT count(*) FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.Document_Object_ID = T2.Document_Object_ID JOIN Collections AS T3 ON T3.Collection_ID = T2.Collection_ID WHERE T3.Collection_Name = Best
SELECT count(*) FROM Document_Objects AS T1 JOIN Documents_in_collections AS T2 ON T1.document_Object_id = T2.document_object_id JOIN Collections AS T3 ON T3.collection_id = T2.collection_id WHERE T3.collection_name = 'Best'
SELECT T1.document_object_id FROM document_objects AS T1 JOIN document_subset_members AS T2 ON T1.document_object_id = T2.document_object_id JOIN document_subsets AS T3 ON T2.document_subset_id = T3.document_subset_id WHERE T3.document_subset_name = Best for 2000
SELECT count(DISTINCT document_object_id) FROM Documents_in_Collections AS T1 JOIN Collections AS T2 ON T1.collection_id = T2.collection_id WHERE T2.Collection_Name = Best
SELECT T2.document_object_id FROM Document_subset_members AS T1 JOIN document_objects AS T2 ON T1.document_object_id = T2.document_object_id JOIN document_subsets AS T3 ON T1.document_subset_id = T3.document_subset_id WHERE T3.document_subset_name = Best for 2000
SELECT T1.Collection_Name , T1.Collection_ID , count(*) FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.Collection_ID = T2.Collection_ID GROUP BY T1.Collection_ID ORDER BY count(*) DESC LIMIT 1
SELECT document_object_id FROM Documents_in_Collections AS T1 JOIN Collections AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T2.Collection_Name = Best
SELECT DISTINCT T1.document_object_id FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Object_ID = T2.document_object_id JOIN Document_Subsets AS T4 ON T2.document_subset_id = T4.document_subset_id JOIN Documents_in_Collections AS T3 ON T1.document_object_id = T3.document_object_id JOIN Collections AS T5 ON T3.collection_id = T5.collection_id WHERE T4.document_subset_name = Best for 2000 AND T5.collection_name = Best
SELECT T2.document_object_id FROM documents_in_collections AS T1 JOIN document_objects AS T2 ON T1.document_object_id = T2.document_object_id JOIN collections AS T3 ON T3.collection_id = T1.collection_id WHERE T3.collection_name = Best EXCEPT SELECT document_object_id FROM document_subset_members AS T1 JOIN document_subsets AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T2.document_subset_name = Best for 2000
SELECT T1.collection_name , T1.collection_id , count(*) FROM collections AS T1 JOIN documents_in_collections AS T2 ON T1.collection_id = T2.collection_id WHERE T1.collection_name = 'Best' GROUP BY T1.collection_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_subsetName , T3.document_object_id FROM document_subsets AS T1 JOIN document_subset_members AS T2 ON T1.document_subset_id = T2.document_subset_id JOIN document_objects AS T3 ON T3.document_object_id = T2.document_object_id
SELECT DISTINCT T1.document_object_id FROM documents_in_collections AS T1 JOIN collections AS T2 ON T1.collection_id = T2.collection_id EXCEPT SELECT document_object_id FROM document_subset_members AS T1 JOIN document_subsets AS T2 ON T1.document_subset_id = T2.document_subset_id WHERE T2.document_subset_name = 'Best for 2000'
SELECT t1.document_subset_id , t2.document_subset_name , count(DISTINCT document_objects.document_object_id) FROM document_subset_members AS t1 JOIN document_subsets AS t2 ON document_subset_id = t2.document_subset_id JOIN document_objects ON document_object_id = document_subset_members.document_object_id GROUP BY t1.document_subset_id ORDER BY count(DISTINCT document_objects.document_object_id) DESC LIMIT 1
SELECT t2.collection_name FROM collection_subset_members AS t1 JOIN collections AS t2 ON t1.related_collection_id = t2.collection_id WHERE t1.collection_id = ( SELECT collection_id FROM collections WHERE collection_name = Best )
SELECT count(*) FROM collections AS t1 JOIN Collection_Subset_Members AS t2 ON t1.collection_id = t2.collection_id JOIN Collection_Subsets AS t3 ON t3.collection_subset_id = t2.collection_subset_id JOIN Collections AS t4 ON t4.collection_id = t2.related_collection_id WHERE t1.Collection_name = Best
SELECT DISTINCT T1.document_object_id FROM Documents_in_Collections AS T1 JOIN Collections AS T2 ON T1.Collection_ID = T2.Collection_ID JOIN Document_Subset_Members AS T3 ON T1.document_object_id = T3.document_object_id JOIN Document_Subsets AS T4 ON T4.document_subset_id = T3.document_subset_id WHERE T4.document_subset_name = 'Best for 2000' OR T2.collection_name = 'Best'
SELECT name FROM songs ORDER BY name ASC
SELECT DISTINCT T1.document_object_id FROM Document_Objects AS T1 JOIN Document_Subset_Members AS T2 ON T1.document_object_id = T2.document_object_id JOIN Document_Subsets AS T3 ON T2.Document_Subset_ID = T3.Document_Subset_ID WHERE T3.Document_Subset_Name = 'Best for 2000' INTERSECT SELECT DISTINCT T1.document_object_id FROM Document_Objects AS T1 JOIN Documents_in_Collections AS T2 ON T1.document_object_id = T2.document_object_id JOIN Collections AS T3 ON T2.Collection_ID = T3.Collection_ID WHERE T3.Collection_Name = 'Best'
SELECT count(*) FROM songs WHERE name LIKE %Love%
SELECT name , language FROM songs
SELECT count(*) FROM collections AS T1 JOIN collection_subset_members AS T2 ON T1.collection_id = T2.collection_id JOIN collection_subsets AS T3 ON T2.collection_subset_id = T3.collection_subset_id WHERE T1.collection_name = Best
SELECT t2.collection_name FROM collection_subset_members AS t1 JOIN collections AS t2 ON t1.collection_id = t2.collection_id JOIN collection_subsets AS t3 ON t1.collection_subset_id = t3.collection_subset_id WHERE t3.collection_subset_name = Best
SELECT max(voice_sound_quality) , min(voice_sound_quality) FROM performance_score
SELECT DISTINCT t1.collection_subset_name FROM collection_subsets AS t1 JOIN collection_subset_members AS t2 ON t1.collection_subset_id = t2.collection_subset_id JOIN collections AS t3 ON t3.collection_id = t2.related_collection_id WHERE t3.collection_name = Best
SELECT name , original_artist FROM songs WHERE english_translation = All the streets of love
SELECT id , language , ORIGINAL_ARTIST FROM songs WHERE name != 'Love'
SELECT T2.id , T2.name , count(*) FROM performance_score AS T1 JOIN participants AS T2 ON T1.participant_id = T2.id GROUP BY T2.id HAVING count(*) >= 2
SELECT T1.id , T1.name , T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id GROUP BY T1.id ORDER BY count(*) DESC
SELECT T1.name , T1.id FROM participants AS T1 JOIN performance_score AS T2 ON T1.id = T2.participant_id WHERE T2.voice_sound_quality = 5 OR T2.rhythm_tempo = 5
SELECT count(*) FROM performance_score WHERE stage_presence < 7 OR stage_presence > 9
SELECT T1.voice_sound_quality , T1.rhythm_tempo , T1.stage_presence FROM performance_score AS T1 JOIN participants AS T2 ON T1.participant_id = T2.id WHERE T2.name = 'Freeway'
SELECT DISTINCT T2.stage_presence FROM performance_score AS T2 JOIN songs AS T1 ON T2.songs_id = T1.id WHERE T1.language = English
SELECT T3.collection_name FROM collections AS T1 JOIN collection_subset_members AS T2 ON T1.collection_id = T2.collection_id JOIN collection_subsets AS T3 ON T2.collection_subset_id = T3.collection_subset_id WHERE T1.collection_name = Best
SELECT count(*) FROM songs WHERE id NOT IN (SELECT songs_id FROM performance_score)
SELECT T3.id , T3.name FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id JOIN participants AS T3 ON T1.participant_id = T3.id GROUP BY T3.name ORDER BY count(*) DESC LIMIT 1
SELECT document_object_id FROM Documents_In_Collections WHERE collection_id IN ( SELECT T3.Collection_id FROM Collections AS T1 JOIN Collection_Subset_Members AS T2 ON T1.Collection_id = T2.Collection_id JOIN Collection_Subsets AS T3 ON T2.Collection_Subset_id = T3.Collection_Subset_id WHERE T3.Collection_Subset_Name = Best for 2000 ) UNION SELECT document_object_id FROM Documents_In_Collections WHERE collection_id IN ( SELECT T1.Collection_id FROM Collections AS T1 WHERE T1.Collection_Name = Best )
SELECT DISTINCT T2.name FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T2.language = english
SELECT name FROM songs WHERE name LIKE %Is%
SELECT avg(rhythm_tempo) , language FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id GROUP BY T2.language
SELECT count(*) FROM city
SELECT DISTINCT state FROM city
SELECT count(*) FROM city
SELECT t1.name , t1.popularity FROM performance_score AS t3 JOIN songs AS t2 ON t3.songs_id = t2.id JOIN participants AS t1 ON t3.participant_id = t1.id WHERE t2.language = Croatian INTERSECT SELECT t1.name , t1.popularity FROM performance_score AS t3 JOIN songs AS t2 ON t3.songs_id = t2.id JOIN participants AS t1 ON t3.participant_id = t1.id WHERE t2.language = English
SELECT count(DISTINCT country) FROM CITY
SELECT DISTINCT state FROM city
SELECT count(DISTINCT country) FROM city
SELECT city_name , city_code , state , country FROM city
SELECT latitude , longitude FROM city WHERE city_name = Baltimore
SELECT city_name , city_code , state , country FROM city
SELECT count(*) FROM city WHERE country = Canada
SELECT latitude , longitude FROM city WHERE city_name = Baltimore
SELECT T2.original_artist FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id = T2.id WHERE T1.rhythm_tempo > 5 ORDER BY T1.voice_sound_quality
SELECT city_name FROM city WHERE state = PA
SELECT city_name FROM city WHERE state = 'PA'
SELECT city_name FROM city WHERE country = USA ORDER BY latitude
SELECT count(*) FROM city WHERE country = Canada
SELECT T3.voice_sound_quality FROM performance_score AS T3 JOIN songs AS T2 ON T2.id = T3.songs_id WHERE T2.name = 'The Balkan Girls' AND T2.language = 'english'
SELECT city_name FROM city WHERE country = USA ORDER BY latitude
SELECT count(*) , state FROM city GROUP BY state
SELECT state , count(*) FROM city GROUP BY state
SELECT country , count(*) FROM city GROUP BY country
SELECT count(*) , country FROM city GROUP BY country
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT state FROM city GROUP BY state HAVING count(*) >= 2
SELECT T1.fname , T1.lname FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.state = MD
SELECT state FROM city GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) LIMIT 1
SELECT country FROM city GROUP BY country ORDER BY count(*) LIMIT 1
SELECT count(*) FROM Student WHERE city_code IN ( SELECT city_code FROM city WHERE country = China )
SELECT count(*) FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.country = China
SELECT fname , lname FROM student WHERE city_code IN ( SELECT city_code FROM city WHERE state = MD )
SELECT T1.fname , T1.major FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.city_name = Baltimore
SELECT t1.fname , t1.major FROM student AS t1 JOIN city AS t2 ON t1.city_code = t2.city_code WHERE t2.city_name = Baltimore
SELECT count(*) , T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country
SELECT count(*) , city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY country
SELECT count(*) , city_name FROM city AS t1 JOIN student AS t2 ON t1.city_code = t2.city_code GROUP BY city_name
SELECT count(DISTINCT StuID) , city_name FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY city_name
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state ORDER BY count(*) DESC LIMIT 1
SELECT T2.state FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code GROUP BY T2.state ORDER BY count(*) DESC LIMIT 1
SELECT city_code , COUNT(*) FROM Student GROUP BY city_code HAVING COUNT(*) > 5
SELECT T1.country FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.country ORDER BY count(*) LIMIT 1
SELECT T1.state FROM city AS T1 JOIN student AS T2 ON T1.city_code = T2.city_code GROUP BY T1.state HAVING count(*) > 5
SELECT T3.city_name FROM student AS T1 JOIN city AS T3 ON T1.city_code = T3.city_code GROUP BY T1.city_code HAVING count(*) >= 3
SELECT T2.country FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code GROUP BY T2.country ORDER BY count(*) ASC LIMIT 1
SELECT T3.city_name FROM student AS T1 JOIN city AS T3 ON T1.city_code = T3.city_code GROUP BY T3.city_name HAVING count(*) >= 3
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Student WHERE city_code IN (SELECT city_code FROM city WHERE country = 'USA')
SELECT StuID FROM Student WHERE city_code NOT IN (SELECT city_code FROM city WHERE country = 'USA')
SELECT distance FROM direct_distance WHERE city1_code = BAL AND city2_code = CHI
SELECT StuID FROM STUDENT WHERE sex = 'M' AND city_code NOT IN (SELECT city_code FROM city WHERE country = USA )
SELECT StuID FROM STUDENT WHERE Sex = 'M' EXCEPT SELECT StuID FROM STUDENT WHERE city_code IN (SELECT city_code FROM city WHERE country = 'USA')
SELECT DISTINCT T1.stuid FROM Student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.state = PA AND T1.sex = F
SELECT T1.StuID FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code WHERE T2.state = PA AND T1.sex = F
SELECT distance FROM Direct_distance WHERE city1_code = BAL AND city2_code = CHI
SELECT avg(distance) , min(distance) , max(distance) FROM DIRECT_DISTANCE
SELECT avg(distance) , min(distance) , max(distance) FROM DIRECT_DISTANCE
SELECT distance FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code JOIN city AS T3 ON T1.city2_code = T3.city_code WHERE T2.city_name = Boston AND T3.city_name = Newark
SELECT city1_code , city2_code FROM direct_distance ORDER BY distance DESC LIMIT 1
SELECT city1_code , city2_code FROM direct_distance WHERE distance > (SELECT avg(distance) FROM direct_distance)
SELECT city1_code , city2_code FROM direct_distance ORDER BY distance DESC LIMIT 2
SELECT distance FROM direct_distance WHERE city1_code = (SELECT city_code FROM city WHERE city_name = Boston ) AND city2_code = (SELECT city_code FROM city WHERE city_name = Newark )
SELECT city1_code FROM direct_distance WHERE distance > (SELECT avg(distance) FROM direct_distance)
SELECT city1_code FROM direct_distance WHERE distance < 1000
SELECT city1_code FROM direct_distance WHERE distance < 1000 UNION SELECT city2_code FROM direct_distance WHERE distance < 1000
SELECT sum(t2.distance) FROM city AS t1 JOIN direct_distance AS t2 ON t1.city_code = t2.city1_code WHERE t1.city_name = BAL
SELECT avg(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code WHERE T1.city_name = Boston
SELECT sum(T1.distance) FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code WHERE T2.city_name = BAL
SELECT t3.city_name FROM direct_distance AS t1 JOIN city AS t3 ON t1.city1_code = t3.city_code JOIN city AS t2 ON t1.city2_code = t2.city_code WHERE t2.city_name = Boston ORDER BY t1.distance DESC LIMIT 1
SELECT T3.city_name FROM direct_distance AS T1 JOIN city AS T2 ON T1.city1_code = T2.city_code JOIN city AS T3 ON T1.city2_code = T3.city_code WHERE T2.city_name = Boston ORDER BY T1.distance DESC LIMIT 1
SELECT avg(t2.distance) FROM city AS t1 JOIN direct_distance AS t2 ON t1.city_code = t2.city1_code WHERE t1.city_name = Boston
SELECT T1.city_code , sum(T2.distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code
SELECT t2.city_name FROM direct_distance AS t1 JOIN city AS t2 ON t2.city_code = t1.city1_code JOIN city AS t3 ON t3.city_code = t1.city2_code WHERE t3.city_name = Chicago ORDER BY t1.distance ASC LIMIT 1
SELECT city1_code , sum(distance) FROM direct_distance GROUP BY city1_code
SELECT T2.city_name FROM city AS t1 JOIN city AS t2 ON t1.city_name = Chicago JOIN direct_distance ON t1.city_code = direct_distance.city1_code AND t2.city_code = direct_distance.city2_code ORDER BY direct_distance.distance LIMIT 1
SELECT T3.city_name , avg(T1.distance) FROM direct_distance AS T1 JOIN city AS T3 ON T1.city1_code = T3.city_code GROUP BY T1.city1_code
SELECT T3.state FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code JOIN city AS T3 ON T1.city_code = T3.city_code WHERE T1.fname = Linda
SELECT T3.state FROM student AS T1 JOIN city AS T2 ON T1.city_code = T2.city_code JOIN city AS T3 ON T1.city_code = T3.city_code WHERE T1.fname = Linda
SELECT T1.distance FROM city AS t3 JOIN direct_distance AS t1 ON t3.city_code = t1.city1_code JOIN student AS t2 ON t2.city_code = t3.city_code JOIN city AS t4 ON t4.city_code = t1.city2_code JOIN student AS t5 ON t5.city_code = t4.city_code WHERE t2.fname = Linda AND t2.lname = Smith AND t5.fname = Tracy AND t5.lname = Kim
SELECT city_name , avg(distance) FROM city AS T1 JOIN direct_distance AS T2 ON T1.city_code = T2.city1_code GROUP BY T1.city_code
SELECT * FROM Sailors WHERE age > 30
SELECT t1.fname , t1.lname FROM student AS t1 JOIN city AS t2 ON t1.city_code = t2.city_code JOIN direct_distance AS t3 ON t2.city_code = t3.city1_code JOIN city AS t4 ON t3.city2_code = t4.city_code WHERE t2.city_name = Linda Smith ORDER BY t3.distance DESC LIMIT 1
SELECT t1.fname , t1.lname FROM student AS t1 JOIN city AS t4 ON t1.city_code = t4.city_code JOIN direct_distance AS t2 ON t4.city_code = t2.city1_code JOIN city AS t3 ON t3.city_code = t2.city2_code JOIN student AS t5 ON t5.city_code = t3.city_code WHERE t5.fname = Linda AND t5.lname = Smith ORDER BY t2.distance DESC LIMIT 1
SELECT name , age FROM Sailors WHERE age < 30
SELECT DISTINCT name FROM Sailors WHERE age > 30
SELECT name , age FROM Sailors WHERE age < 30
SELECT T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T1.sid = 1
SELECT T3.name FROM RESERVES AS T1 JOIN boats AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T1.sid = T3.sid WHERE T2.bid = 102
SELECT DISTINCT bid FROM Reserves
SELECT DISTINCT bid FROM reserves WHERE sid = 1
SELECT DISTINCT bid FROM Reserves
SELECT T2.name FROM reserves AS T1 JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T1.bid = 102
SELECT name FROM Sailors WHERE name LIKE '%e%'
SELECT name FROM Sailors WHERE name LIKE %e%
SELECT DISTINCT name FROM Sailors WHERE age < (SELECT min(age) FROM Sailors WHERE rating > 7)
SELECT T2.name , T1.sid FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid
SELECT T1.name , T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid GROUP BY T1.sid
SELECT DISTINCT name FROM Sailors WHERE age > (SELECT min(age) FROM Sailors WHERE rating > 7)
SELECT T2.name FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid GROUP BY T1.sid HAVING count(*) >= 2
SELECT T2.name , T3.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid GROUP BY T1.sid HAVING count(DISTINCT T2.name) > 1
SELECT DISTINCT sid FROM Reserves
SELECT T1.city2_code FROM direct_distance AS T1 JOIN city AS T2 ON T1.city2_code = T2.city_code WHERE T2.city_name = Linda AND T1.city1_code IN (SELECT city1_code FROM direct_distance WHERE city2_code IN (SELECT city_code FROM city WHERE city_name = tracy AND city_code IN (SELECT city1_code FROM direct_distance WHERE city2_code IN (SELECT city_code FROM city WHERE city_name = smith ))))
SELECT T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = 'red' OR T2.color = 'blue'
SELECT T3.name , T3.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T2.color = 'red' OR T2.color = 'blue'
SELECT T1.sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid WHERE T2.color = red OR T2.color = blue
SELECT DISTINCT T1.sid FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid EXCEPT SELECT DISTINCT T1.sid FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid WHERE T2.age = (SELECT min(T2.age) FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid)
SELECT sid FROM sailors EXCEPT SELECT sid FROM reserves
SELECT T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = red INTERSECT SELECT T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = blue
SELECT T3.name , T1.sid FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T1.sid = T3.sid WHERE T2.color = red OR T2.color = blue
SELECT name , sid FROM Sailors WHERE sid NOT IN (SELECT sid FROM Reserves)
SELECT DISTINCT sid FROM Reserves EXCEPT SELECT DISTINCT sid FROM Reserves EXCEPT SELECT DISTINCT sid FROM Reserves
SELECT sid FROM Reserves EXCEPT SELECT sid FROM Reserves
SELECT name , sid FROM Sailors EXCEPT SELECT T2.name , T1.sid FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid
SELECT T3.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T2.color = red INTERSECT SELECT T3.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T2.color = blue
SELECT name FROM Sailors WHERE rating > (SELECT max(rating) FROM sailors WHERE name = Luis )
SELECT sid FROM Sailors EXCEPT SELECT T1.sid FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid
SELECT T2.name , T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = red OR T2.color = blue
SELECT T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid = 103
SELECT T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T2.bid = 103
SELECT name FROM Sailors WHERE rating > (SELECT max(rating) FROM Sailors WHERE name = luis )
SELECT name FROM Sailors WHERE rating > (SELECT max(rating) FROM Sailors WHERE name = 'Luis')
SELECT count(*) FROM Sailors
SELECT name , age FROM Sailors ORDER BY age DESC LIMIT 1
SELECT name , age FROM SAILORS ORDER BY age DESC LIMIT 1
SELECT name FROM Sailors WHERE rating > (SELECT max(rating) FROM Sailors WHERE name = Luis )
SELECT count(*) FROM SAILORS
SELECT T1.name , T1.rating , T2.bid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid = T2.sid WHERE T1.rating > 2
SELECT avg(age) FROM Sailors WHERE rating = 7
SELECT count(*) FROM Sailors WHERE name LIKE D%
SELECT avg(age) FROM Sailors WHERE rating = 7
SELECT count(*) FROM Sailors WHERE name LIKE D%
SELECT avg(rating) , max(age) FROM Sailors
SELECT avg(rating) , max(age) FROM Sailors
SELECT T3.name , T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T2.color = red INTERSECT SELECT T3.name , T1.sid FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T2.color = blue
SELECT count(*) , T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T2.bid
SELECT T2.name , T2.sid FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid WHERE T2.rating >= 3
SELECT count(*) , bid FROM Reserves WHERE bid > 50 GROUP BY bid
SELECT count(*) , T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T1.name
SELECT count(*) , bid FROM Reserves WHERE bid > 50 GROUP BY bid
SELECT count(*) , T1.name FROM boats AS T1 JOIN reserves AS T2 ON T1.bid = T2.bid GROUP BY T2.bid HAVING count(*) > 1
SELECT count(*) , name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid GROUP BY T1.bid HAVING count(*) > 1
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T1.sid > 1 GROUP BY T2.name
SELECT count(*) FROM boats
SELECT count(*) FROM boats
SELECT name , rating , age FROM Sailors ORDER BY rating , age
SELECT name , rating , age FROM Sailors ORDER BY rating , age
SELECT count(*) FROM boats WHERE color = red
SELECT count(*) FROM boats WHERE color = 'red'
SELECT T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T3.age BETWEEN 20 AND 30
SELECT T3.name FROM reserves AS T1 JOIN boats AS T3 ON T1.bid = T3.bid JOIN sailors AS T2 ON T1.sid = T2.sid WHERE T2.age BETWEEN 20 AND 30
SELECT count(*) , T2.name FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid GROUP BY T1.bid HAVING count(*) > 1
SELECT max(rating) FROM Sailors
SELECT max(rating) FROM Sailors
SELECT name , age FROM Sailors ORDER BY rating DESC
SELECT DISTINCT T3.name FROM reserves AS T1 JOIN boats AS T2 ON T1.bid = T2.bid JOIN sailors AS T3 ON T1.sid = T3.sid WHERE T2.name = Melon
SELECT T3.name FROM Reserves AS T1 JOIN Boats AS T2 JOIN Sailors AS T3 ON T1.bid = T2.bid AND T1.sid = T3.sid WHERE T2.name = Melon
SELECT T2.rating , avg(T2.age) FROM Reserves AS T1 JOIN Sailors AS T2 ON T1.sid = T2.sid JOIN Boats AS T3 ON T3.bid = T1.bid WHERE T3.color = red GROUP BY T2.rating
SELECT name , age FROM Sailors ORDER BY rating DESC
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1
SELECT DISTINCT Model FROM headphone ORDER BY Model
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) <= 2
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*) > 2
SELECT Class FROM Headphone GROUP BY Class ORDER BY COUNT(*) DESC LIMIT 1
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1
SELECT avg(T3.age) , T3.rating FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid JOIN Sailors AS T3 ON T1.sid = T3.sid WHERE T2.color = 'red' GROUP BY T3.rating
SELECT count(DISTINCT Earpads) FROM headphone
SELECT DISTINCT Model FROM headphone
SELECT count(*) , class FROM headphone WHERE price > 200 GROUP BY class
SELECT count(*) , CLASS FROM headphone WHERE price > 200 GROUP BY CLASS
SELECT count(DISTINCT Earpads) FROM headphone
SELECT Model , CLASS , Construction FROM headphone ORDER BY Price ASC LIMIT 1
SELECT name FROM sailors WHERE rating > (SELECT max(rating) FROM Reserves AS T1 JOIN Boats AS T2 ON T1.bid = T2.bid WHERE T2.color = 'red')
SELECT Earpads FROM headphone GROUP BY Earpads ORDER BY COUNT(*) DESC LIMIT 2
SELECT model , CLASS , construction FROM headphone ORDER BY price ASC LIMIT 1
SELECT DISTINCT t1.name FROM Reserves AS t2 JOIN Boats AS t4 ON t2.bid = t4.bid JOIN Sailors AS t1 ON T1.sid = t2.sid WHERE t4.color = red GROUP BY t2.sid HAVING max(t1.rating) > (SELECT max(rating) FROM Reserves AS t3 JOIN Boats AS t5 ON t3.bid = t5.bid WHERE t5.color = red )
SELECT avg(Price) , Construction FROM headphone GROUP BY Construction
SELECT DISTINCT Earpads FROM Headphone WHERE Construction != Plastic
SELECT avg(Price) , construction FROM headphone GROUP BY construction
SELECT CLASS FROM headphone WHERE Earpads = Bowls INTERSECT SELECT CLASS FROM headphone WHERE Earpads = Comfort Pads
SELECT T2.Earpads FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T2.Earpads ORDER BY count(*) DESC LIMIT 2
SELECT Name , Parking FROM store WHERE Neighborhood = Tarzana
SELECT Class FROM headphone WHERE Earpads = Bowls INTERSECT SELECT Class FROM headphone WHERE Earpads = Comfort Pads
SELECT Name FROM store ORDER BY Date_Opened
SELECT name FROM store ORDER BY date_opened
SELECT Model FROM headphone WHERE Price < (SELECT avg(Price) FROM headphone)
SELECT Model FROM headphone WHERE price < (SELECT avg(price) FROM headphone)
SELECT count(DISTINCT Neighborhood) FROM store
SELECT Name , Parking FROM store WHERE Neighborhood = Tarzana
SELECT Earpads FROM headphone EXCEPT SELECT Earpads FROM headphone WHERE Construction = Plastic
SELECT count(*) , neighborhood FROM store GROUP BY neighborhood
SELECT count(*) , neighborhood FROM store GROUP BY neighborhood
SELECT count(DISTINCT neighborhood) FROM store
SELECT model FROM headphone WHERE headphone_id NOT IN (SELECT headphone_id FROM stock)
SELECT model FROM headphone EXCEPT SELECT T1.model FROM headphone AS T1 JOIN stock AS T2 ON T1.headphone_id = T2.headphone_id
SELECT T2.Name , sum(T1.Quantity) FROM stock AS T1 JOIN store AS T2 ON T1.Store_ID = T2.Store_ID WHERE T1.Quantity > 0 GROUP BY T1.Store_ID
SELECT T2.model FROM stock AS T1 JOIN headphone AS T2 ON T1.Headphone_ID = T2.Headphone_ID GROUP BY T1.Headphone_ID ORDER BY sum(T1.quantity) DESC LIMIT 1
SELECT T2.Name , T1.Headphone_ID , sum(T3.Quantity) FROM stock AS T1 JOIN store AS T2 ON T1.Store_ID = T2.Store_ID JOIN stock AS T3 ON T2.Store_ID = T3.Store_ID GROUP BY T1.Headphone_ID ORDER BY sum(T3.Quantity) DESC LIMIT 1
SELECT name FROM store EXCEPT SELECT T2.name FROM stock AS T1 JOIN store AS T2 ON T1.store_id = T2.store_id
SELECT name FROM store WHERE store_id NOT IN ( SELECT store_id FROM stock )
SELECT T3.model FROM stock AS T1 JOIN store AS T2 ON T1.store_id = T2.store_id JOIN headphone AS T3 ON T1.headphone_id = T3.headphone_id GROUP BY T3.model ORDER BY sum(T1.Quantity) DESC LIMIT 1
SELECT count(*) FROM stock AS T1 JOIN store AS T2 ON T1.store_id = T2.store_id WHERE T2.Name = Woodman
SELECT count(*) FROM author
SELECT sum(t2.quantity) FROM store AS t1 JOIN stock AS t2 ON t1.store_id = t2.store_id WHERE t1.name = Woodman
SELECT count(DISTINCT affiliation_id) FROM author_list
SELECT DISTINCT neighborhood FROM store EXCEPT SELECT T2.neighborhood FROM stock AS T1 JOIN store AS T2 ON T1.store_id = T2.store_id
SELECT count(DISTINCT author_id) FROM Author
SELECT count(DISTINCT affiliation_id) FROM affiliation
SELECT count(*) FROM paper WHERE venue = NAACL AND YEAR = 2000
SELECT count(*) FROM paper WHERE venue = NAACL AND YEAR = 2000
SELECT count(*) FROM paper
SELECT name , address FROM affiliation
SELECT DISTINCT venue FROM paper GROUP BY YEAR ORDER BY YEAR
SELECT DISTINCT COUNT ( t3.paper_id ) FROM affiliation AS t1 JOIN author_list AS t2 ON t1.affiliation_id = t2.affiliation_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = Columbia University AND t3.year = 2009
SELECT DISTINCT t3.title , t3.paper_id FROM affiliation AS t1 JOIN author_list AS t2 ON t1.affiliation_id = t2.affiliation_id JOIN paper AS t3 ON t3.paper_id = t2.paper_id WHERE t1.name = Harvard University
SELECT count(*) FROM paper
SELECT venue , YEAR FROM paper ORDER BY YEAR
SELECT name , address FROM affiliation
SELECT DISTINCT T1.Neighborhood FROM store AS T1 JOIN stock AS T2 ON T1.Store_ID = T2.Store_ID
SELECT DISTINCT t3.paper_id , t3.title FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = Mckeown
SELECT t3.title , t3.paper_id FROM affiliation AS t1 JOIN author_list AS t2 ON t1.affiliation_id = t2.affiliation_id JOIN paper AS t3 ON t3.paper_id = t2.paper_id WHERE t1.name = Stanford INTERSECT SELECT t3.title , t3.paper_id FROM affiliation AS t1 JOIN author_list AS t2 ON t1.affiliation_id = t2.affiliation_id JOIN paper AS t3 ON t3.paper_id = t2.paper_id WHERE t1.name = Columbia University
SELECT t3.title , t3.paper_id FROM affiliation AS t1 JOIN author_list AS t2 ON t1.affiliation_id = t2.affiliation_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = Harvard University
SELECT DISTINCT t3.title , t3.paper_id FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t3.paper_id = t2.paper_id WHERE t1.name = Mckeown , Kathleen INTERSECT SELECT DISTINCT t3.title , t3.paper_id FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t3.paper_id = t2.paper_id WHERE t1.name = Rambow , Owen
SELECT DISTINCT t3.title , t3.paper_id FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = Mckeown
SELECT t3.title , t3.paper_id FROM paper AS t3 JOIN author_list AS t2 ON t3.paper_id = t2.paper_id JOIN author AS t1 ON t2.author_id = t1.author_id WHERE t1.name = Mckeown EXCEPT SELECT t3.title , t3.paper_id FROM paper AS t3 JOIN author_list AS t2 ON t3.paper_id = t2.paper_id JOIN author AS t1 ON t2.author_id = t1.author_id WHERE t1.name = Rambow
SELECT DISTINCT t3.title , t3.paper_id FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t3.paper_id = t2.paper_id WHERE t1.name = Mckeown AND t1.name = Kathleen OR t1.name = Rambow AND t1.name = Owen
SELECT t3.title , t3.paper_id FROM paper AS t3 JOIN author_list AS t2 ON t3.paper_id = t2.paper_id JOIN author AS t1 ON t2.author_id = t1.author_id WHERE t1.name = Mckeown EXCEPT SELECT t3.title , t3.paper_id FROM paper AS t3 JOIN author_list AS t2 ON t3.paper_id = t2.paper_id JOIN author AS t1 ON t2.author_id = t1.author_id WHERE t1.name = Rambow
SELECT DISTINCT t3.title , t3.paper_id FROM paper AS t3 JOIN author_list AS t1 JOIN affiliation AS t2 ON t3.paper_id = t1.paper_id AND t1.affiliation_id = t2.affiliation_id WHERE t2.name = Stanford University INTERSECT SELECT DISTINCT t3.title , t3.paper_id FROM paper AS t3 JOIN author_list AS t1 JOIN affiliation AS t2 ON t3.paper_id = t1.paper_id AND t1.affiliation_id = t2.affiliation_id WHERE t2.name = Columbia University
SELECT t2.title , t1.paper_id FROM author_list AS t1 JOIN paper AS t2 ON t1.paper_id = t2.paper_id JOIN author AS t3 ON t1.author_id = t3.author_id WHERE t3.name = Mckeown , Kathleen OR t3.name = Rambow , Owen
SELECT DISTINCT t3.title , t3.paper_id FROM author AS t2 JOIN author_list AS t1 ON t2.author_id = t1.author_id JOIN paper AS t3 ON t3.paper_id = t1.paper_id JOIN author AS t4 ON t4.author_id = t1.author_id WHERE t2.name = Mckeown, Kathleen AND t4.name = Rambow, Owen
SELECT DISTINCT COUNT(t2.paper_id) , t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id GROUP BY t1.name ORDER BY COUNT(t2.paper_id)
SELECT t1.name FROM affiliation AS t1 JOIN author_list AS t2 ON t1.affiliation_id = t2.affiliation_id GROUP BY t1.affiliation_id ORDER BY count(*) ASC
SELECT t1.name , count(DISTINCT t3.paper_id) FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id GROUP BY t1.name ORDER BY count(DISTINCT t3.paper_id) DESC
SELECT DISTINCT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id GROUP BY t1.name HAVING count ( DISTINCT t3.title ) = 1
SELECT t3.name FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN author AS t3 ON t2.author_id = t3.author_id GROUP BY t3.name HAVING COUNT ( DISTINCT t1.paper_id ) > 50
SELECT venue , YEAR FROM paper GROUP BY venue , YEAR ORDER BY count(*) DESC LIMIT 1
SELECT venue , YEAR FROM paper GROUP BY venue , YEAR ORDER BY count(paper_id) DESC LIMIT 1
SELECT venue FROM paper GROUP BY venue ORDER BY count ( DISTINCT paper_id ) LIMIT 1
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.cited_paper_id WHERE t2.paper_id = A00-1002
SELECT count(*) FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.paper_id WHERE t2.cited_paper_id = A00-1002
SELECT T2.name FROM paper AS T1 JOIN author_list AS T3 ON T1.paper_id = T3.paper_id JOIN affiliation AS T2 ON T2.affiliation_id = T3.affiliation_id GROUP BY T2.name ORDER BY count(*) ASC
SELECT DISTINCT COUNT ( t3.paper_id ) , t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id GROUP BY t1.name HAVING COUNT ( DISTINCT t3.paper_id ) > 50
SELECT paper_id FROM paper WHERE paper_id = D12-1027 INTERSECT SELECT DISTINCT t1.cited_paper_id FROM citation AS t1 JOIN paper AS t2 ON t1.cited_paper_id = t2.paper_id WHERE t2.paper_id = D12-1027
SELECT t1.cited_paper_id , COUNT ( t1.cited_paper_id ) FROM citation AS t1 JOIN paper AS t2 ON t1.cited_paper_id = t2.paper_id GROUP BY t1.cited_paper_id ORDER BY COUNT ( t1.cited_paper_id ) DESC LIMIT 1
SELECT DISTINCT COUNT ( DISTINCT t3.paper_id ) , t2.paper_id FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id GROUP BY t2.paper_id HAVING COUNT ( DISTINCT t3.paper_id ) = 1
SELECT t3.title FROM paper AS t3 JOIN citation AS t1 ON t3.paper_id = t1.cited_paper_id JOIN paper AS t2 ON t1.paper_id = t2.paper_id GROUP BY t3.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT t1.cited_paper_id , count(*) FROM paper AS t2 JOIN citation AS t1 ON t2.paper_id = t1.cited_paper_id GROUP BY t1.cited_paper_id ORDER BY count(*) DESC LIMIT 10
SELECT count(*) FROM citation WHERE paper_id = D12-1027
SELECT t3.title FROM paper AS t3 JOIN citation AS t2 ON t3.paper_id = t2.cited_paper_id JOIN paper AS t4 ON t4.paper_id = t2.paper_id GROUP BY t4.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT COUNT ( t4.cited_paper_id ) FROM paper AS t3 JOIN citation AS t4 ON t3.paper_id = t4.cited_paper_id JOIN author AS t2 ON t2.author_id = t4.paper_id JOIN author_list AS t1 ON t1.paper_id = t3.paper_id WHERE t2.name = Mckeown , Kathleen
SELECT DISTINCT COUNT ( t5.cited_paper_id ) FROM author AS t2 JOIN author_list AS t3 ON t2.author_id = t3.author_id JOIN paper AS t6 ON t6.paper_id = t3.paper_id JOIN citation AS t5 ON t6.paper_id = t5.paper_id JOIN affiliation AS t4 ON t4.affiliation_id = t3.affiliation_id JOIN paper AS t1 ON t1.paper_id = t5.cited_paper_id WHERE t2.name = Mckeown , Kathleen
SELECT DISTINCT t1.paper_id , COUNT ( t2.cited_paper_id ) FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.cited_paper_id GROUP BY t1.paper_id ORDER BY COUNT ( t2.cited_paper_id ) DESC LIMIT 1
SELECT DISTINCT COUNT ( t4.cited_paper_id ) FROM paper AS t3 JOIN author AS t2 ON t2.author_id = t1.author_id JOIN author_list AS t1 ON t1.paper_id = t3.paper_id JOIN citation AS t4 ON t3.paper_id = t4.paper_id WHERE t2.name = Mckeown , Kathleen
SELECT t2.cited_paper_id , COUNT ( t2.cited_paper_id ) FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.cited_paper_id GROUP BY t2.cited_paper_id ORDER BY COUNT ( t2.cited_paper_id ) DESC LIMIT 10
SELECT t3.name , COUNT ( DISTINCT t1.cited_paper_id ) FROM author AS t3 JOIN author_list AS t2 ON t3.author_id = t2.author_id JOIN citation AS t1 ON t2.paper_id = t1.paper_id GROUP BY t3.author_id ORDER BY COUNT ( DISTINCT t1.cited_paper_id ) DESC LIMIT 1
SELECT DISTINCT t2.venue , t2.year FROM author AS t1 JOIN author_list AS t3 ON t1.author_id = t3.author_id JOIN paper AS t2 ON t3.paper_id = t2.paper_id WHERE t1.name = Mckeown , Kathleen
SELECT t1.name , count(*) FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id JOIN citation AS t5 ON t3.paper_id = t5.cited_paper_id JOIN paper AS t6 ON t5.paper_id = t6.paper_id WHERE t1.author_id = t2.author_id GROUP BY t1.author_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT t3.venue , t3.year FROM affiliation AS t2 JOIN author_list AS t1 ON t2.affiliation_id = t1.affiliation_id JOIN paper AS t3 ON t3.paper_id = t1.paper_id WHERE t2.name = Columbia University
SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t3.year = 2009 GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT t3.venue , t3.year FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t1.name = Mckeown , Kathleen
SELECT DISTINCT t3.venue , t3.year FROM affiliation AS t1 JOIN author_list AS t2 ON t1.affiliation_id = t2.affiliation_id JOIN paper AS t3 ON t3.paper_id = t2.paper_id WHERE t1.name = Columbia University
SELECT t3.name FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN author AS t3 ON t2.author_id = t3.author_id WHERE t1.year = 2009 GROUP BY t3.name ORDER BY count(*) DESC LIMIT 1
SELECT t3.name FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t1.year = 2009 GROUP BY t3.name ORDER BY count(*) DESC LIMIT 3
SELECT t4.name FROM paper AS t1 JOIN author AS t2 ON t1.paper_id = t3.paper_id JOIN author_list AS t3 ON t2.author_id = t3.author_id JOIN affiliation AS t4 ON t4.affiliation_id = t3.affiliation_id WHERE t1.year = 2009 GROUP BY t4.name ORDER BY COUNT ( DISTINCT t1.paper_id ) DESC LIMIT 3
SELECT count(*) FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.cited_paper_id JOIN author AS t3 ON t4.author_id = t3.author_id JOIN author_list AS t4 ON t4.paper_id = t1.paper_id WHERE t3.name = Mckeown , Kathleen
SELECT count(*) FROM affiliation AS t1 JOIN paper AS t2 ON t1.name = Columbia University JOIN author AS t3 ON t3.name = Columbia University JOIN author_list AS t4 ON t3.author_id = t4.author_id WHERE t2.year <= 2009
SELECT count(*) FROM affiliation AS t1 JOIN author_list AS t2 ON t1.affiliation_id = t2.affiliation_id JOIN paper AS t3 ON t3.paper_id = t2.paper_id WHERE t1.name = Stanford University AND t3.year BETWEEN 2000 AND 2009
SELECT COUNT ( DISTINCT t3.title ) FROM affiliation AS t1 JOIN author_list AS t2 ON t1.affiliation_id = t2.affiliation_id JOIN paper AS t3 ON t3.paper_id = t2.paper_id WHERE t1.name = Stanford University AND t3.year BETWEEN 2000 AND 2009
SELECT DISTINCT COUNT ( t4.paper_id ) FROM affiliation AS t1 JOIN author_list AS t2 ON t1.affiliation_id = t2.affiliation_id JOIN author AS t3 ON t2.author_id = t3.author_id JOIN paper AS t4 ON t4.paper_id = t2.paper_id WHERE t1.name = Columbia University AND t4.year <= 2009
SELECT paper_id FROM paper WHERE title LIKE %translation%
SELECT DISTINCT COUNT ( DISTINCT t1.name ) FROM author AS t2 JOIN author_list AS t3 ON t2.author_id = t3.author_id JOIN paper AS t4 ON t3.paper_id = t4.paper_id JOIN author AS t1 ON t1.author_id = t3.paper_id WHERE t2.name = Mckeown , Kathleen
SELECT t4.title FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t4 ON t4.paper_id = t2.paper_id GROUP BY t4.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT t3.title FROM author_list AS t2 JOIN paper AS t3 ON t2.paper_id = t3.paper_id JOIN author AS t1 ON t2.author_id = t1.author_id GROUP BY t3.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT paper_id FROM paper WHERE title LIKE %translation%
SELECT DISTINCT COUNT ( t1.author_id ) , t1.name FROM paper AS t3 JOIN author_list AS t2 ON t3.paper_id = t2.paper_id JOIN author AS t1 ON t2.author_id = t1.author_id JOIN author_list AS t4 ON t3.paper_id = t4.paper_id JOIN author AS t5 ON t4.author_id = t5.author_id WHERE t1.name = Mckeown , Kathleen GROUP BY t1.name ORDER BY COUNT ( t1.author_id ) DESC
SELECT paper_id , title FROM paper WHERE paper_id NOT IN (SELECT paper_id FROM citation)
SELECT DISTINCT COUNT ( t2.paper_id ) , t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t3.paper_id = t2.paper_id JOIN author AS t4 ON t4.author_id = t2.author_id JOIN paper AS t5 ON t5.paper_id = t2.paper_id WHERE t1.name = Mckeown , Kathleen GROUP BY t1.name ORDER BY COUNT ( t2.paper_id ) DESC
SELECT paper_id , title FROM paper WHERE paper_id NOT IN (SELECT paper_id FROM citation)
SELECT t3.name FROM paper AS t1 JOIN author_list AS t2 ON t1.paper_id = t2.paper_id JOIN affiliation AS t3 ON t2.affiliation_id = t3.affiliation_id WHERE t3.address LIKE '%China%' GROUP BY t3.name ORDER BY count ( DISTINCT t1.paper_id ) DESC LIMIT 1
SELECT venue , COUNT ( DISTINCT paper_id ) , YEAR FROM paper GROUP BY venue , YEAR
SELECT count(*) , t1.name FROM affiliation AS t1 JOIN author_list AS t2 ON t1.affiliation_id = t2.affiliation_id GROUP BY t1.name
SELECT DISTINCT t3.title FROM paper AS t3 JOIN citation AS t2 ON t3.paper_id = t2.paper_id JOIN paper AS t1 ON t2.cited_paper_id = t1.paper_id GROUP BY t2.paper_id HAVING count ( DISTINCT t1.title ) > 50
SELECT DISTINCT COUNT ( DISTINCT t1.author_id ) FROM author AS t2 JOIN author AS t3 ON t3.author_id = t1.author_id JOIN author_list AS t4 ON t4.paper_id = t3.paper_id WHERE t2.name = Mckeown , Kathleen
SELECT t1.name FROM affiliation AS t1 JOIN author_list AS t2 ON t1.affiliation_id = t2.affiliation_id JOIN paper AS t3 ON t3.paper_id = t2.paper_id WHERE t1.address LIKE '%China%' GROUP BY t1.affiliation_id ORDER BY COUNT ( DISTINCT t3.paper_id ) DESC LIMIT 1
SELECT DISTINCT COUNT ( t3.paper_id ) , t2.name FROM affiliation AS t2 JOIN author_list AS t1 ON t2.affiliation_id = t1.affiliation_id JOIN paper AS t3 ON t3.paper_id = t1.paper_id GROUP BY t2.name
SELECT DISTINCT t3.title FROM citation AS t1 JOIN paper AS t3 ON t1.cited_paper_id = t3.paper_id JOIN paper AS t2 ON t2.paper_id = t1.paper_id GROUP BY t3.paper_id HAVING COUNT ( DISTINCT t1.cited_paper_id ) > 50
SELECT venue , COUNT(*) , YEAR FROM paper GROUP BY venue , YEAR
SELECT count(*) FROM conference
SELECT count(*) FROM paper WHERE paper_id NOT IN (SELECT t1.cited_paper_id FROM citation AS t1 JOIN paper AS t2 ON t1.cited_paper_id = t2.paper_id GROUP BY t1.cited_paper_id HAVING count(*) > 50)
SELECT count(*) FROM conference
SELECT DISTINCT Conference_Name FROM conference
SELECT name FROM author WHERE author_id NOT IN ( SELECT DISTINCT t1.author_id FROM paper AS t2 JOIN author_list AS t1 ON t2.paper_id = t1.paper_id WHERE t2.venue = ACL )
SELECT DISTINCT Conference_Name FROM conference
SELECT Conference_Name , YEAR , LOCATION FROM conference
SELECT name FROM author WHERE author_id NOT IN ( SELECT DISTINCT t1.author_id FROM paper AS t3 JOIN author_list AS t1 ON t3.paper_id = t1.paper_id JOIN affiliation AS t2 ON t2.affiliation_id = t1.affiliation_id WHERE t2.name = ACL )
SELECT Conference_Name , YEAR , LOCATION FROM conference
SELECT Conference_Name , count(*) FROM conference GROUP BY Conference_Name
SELECT conference_name , count(*) FROM conference GROUP BY conference_name
SELECT count(*) , year FROM conference GROUP BY YEAR
SELECT YEAR , count(*) FROM conference GROUP BY YEAR
SELECT DISTINCT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t3.year = 2009 AND t3.venue = ACL INTERSECT SELECT DISTINCT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t3.year = 2009 AND t3.venue = NAACL
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) ASC LIMIT 1
SELECT Year FROM conference GROUP BY Year ORDER BY count(*) ASC LIMIT 1
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING count(*) >= 2
SELECT institution_name , LOCATION , founded FROM institution
SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t3.venue = NAACL AND t3.year = 2009 INTERSECT SELECT t1.name FROM author AS t1 JOIN author_list AS t2 ON t1.author_id = t2.author_id JOIN paper AS t3 ON t2.paper_id = t3.paper_id WHERE t3.venue = ACL AND t3.year = 2009
SELECT count(*) FROM institution WHERE founded BETWEEN 1850 AND 1900
SELECT count(*) FROM institution WHERE founded BETWEEN 1850 AND 1900
SELECT institution_name , LOCATION FROM institution ORDER BY founded DESC LIMIT 1
SELECT institution_name , LOCATION FROM institution ORDER BY founded DESC LIMIT 1
SELECT COUNT(*) FROM (SELECT DISTINCT t1.paper_id FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.cited_paper_id GROUP BY t1.paper_id HAVING COUNT(*) >= 50) AS t4 JOIN author AS t3 ON t3.author_id IN (SELECT DISTINCT t1.paper_id FROM paper AS t1 JOIN citation AS t2 ON t1.paper_id = t2.cited_paper_id GROUP BY t1.paper_id HAVING COUNT(*) >= 50)
SELECT institution_name , LOCATION , founded FROM institution
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING count(*) >= 2
SELECT institution_name FROM institution EXCEPT SELECT T1.institution_name FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id = T2.institution_id
SELECT name FROM staff WHERE Age > (SELECT avg(Age) FROM staff)
SELECT T2.institution_name , T1.institution_id FROM staff AS T1 JOIN institution AS T2 ON T1.institution_id = T2.institution_id WHERE T2.founded > 1800 GROUP BY T1.institution_id
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT name FROM staff WHERE Age > (SELECT avg(Age) FROM staff)
SELECT max(Age) , min(Age) FROM staff WHERE Nationality = United States
SELECT max(Age) , min(Age) FROM staff
SELECT T2.Institution_Name , COUNT(*) FROM staff AS T1 JOIN institution AS T2 ON T1.institution_id = T2.Institution_ID WHERE T2.Founded > 1800 GROUP BY T1.Institution_ID
SELECT DISTINCT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_ID = T3.staff_ID WHERE T3.nationality = Canada
SELECT DISTINCT T1.Conference_Name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.Conference_ID = T2.Conference_ID JOIN staff AS T3 ON T2.staff_ID = T3.staff_ID WHERE T3.Nationality = Canada
SELECT t2.name FROM conference_participation AS t3 JOIN staff AS t2 ON t3.staff_id = t2.staff_id JOIN conference_participation AS t4 ON t4.staff_id = t2.staff_id WHERE t3.role = speaker AND t4.role = sponsor
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T3.conference_name = ACL INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T3.conference_name = Naccl
SELECT T3.name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id JOIN staff AS T3 ON T2.staff_id = T3.staff_id WHERE T1.year = 2003 OR T1.year = 2004
SELECT T2.conference_name , T2.year , count(*) FROM conference_participation AS T1 JOIN conference AS T2 ON T1.conference_id = T2.conference_id GROUP BY T1.conference_id
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T3.conference_name = ACL INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T2.conference_id = T3.conference_id WHERE T3.conference_name = NACCL
SELECT t3.name FROM conference_participation AS t1 JOIN staff AS t3 ON t1.staff_id = t3.staff_id JOIN conference AS t2 ON t1.conference_id = t2.conference_id WHERE t2.location = Los Angeles AND t1.role = speaker INTERSECT SELECT t3.name FROM conference_participation AS t1 JOIN staff AS t3 ON t1.staff_id = t3.staff_id JOIN conference AS t2 ON t1.conference_id = t2.conference_id WHERE t2.location = Los Angeles AND t1.role = sponsor
SELECT T2.name FROM conference_participation AS T1 JOIN staff AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T1.conference_id = T3.conference_id WHERE T3.year = 2003 OR T3.year = 2004
SELECT T3.conference_name , T3.year , count(*) FROM conference_participation AS T1 JOIN staff AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T1.conference_id = T3.conference_id GROUP BY T3.conference_id
SELECT T1.conference_name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id GROUP BY T1.conference_name ORDER BY count(*) DESC LIMIT 2
SELECT pilot_name FROM PilotSkills ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM PilotSkills ORDER BY age DESC LIMIT 1
SELECT T3.conference_name FROM conference_participation AS T1 JOIN staff AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T3.conference_id = T1.conference_id GROUP BY T3.conference_name ORDER BY count(*) DESC LIMIT 2
SELECT name , nationality FROM staff WHERE staff_id NOT IN (SELECT T2.staff_id FROM conference_participation AS T1 JOIN staff AS T2 ON T1.staff_id = T2.staff_id JOIN conference AS T3 ON T1.conference_id = T3.conference_id WHERE T3.conference_name = ACL )
SELECT name , nationality FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM conference_participation AS T1 JOIN conference AS T2 ON T1.conference_id = T2.conference_id WHERE T2.conference_name = ACL )
SELECT institution_name , LOCATION FROM institution EXCEPT SELECT t1.institution_name , t1.location FROM institution AS t1 JOIN staff AS t2 ON t1.institution_id = t2.institution_id JOIN conference_participation AS t3 ON t2.staff_id = t3.staff_id JOIN conference AS t4 ON t3.conference_id = t4.conference_id WHERE t4.year = 2004
SELECT institution_name , LOCATION FROM institution WHERE institution_id NOT IN (SELECT T3.institution_id FROM conference_participation AS T1 JOIN staff AS T2 ON T1.staff_id = T2.staff_id JOIN institution AS T3 ON T3.institution_id = T2.institution_id JOIN conference AS T4 ON T4.conference_id = T1.conference_id WHERE T4.year = 2004)
SELECT count(*) FROM paper AS t1 JOIN affiliation AS t2 ON t2.affiliation_id = t2.affiliation_id JOIN author AS t3 ON t3.author_id = t3.author_id JOIN author_list AS t4 ON t4.paper_id = t1.paper_id WHERE t1.year = 2009 AND t2.name = Columbia University AND t4.affiliation_id = t2.affiliation_id
SELECT * FROM pilotskills WHERE age < 30
SELECT pilot_name FROM pilotskills WHERE age < (SELECT avg(age) FROM pilotskills) ORDER BY age
SELECT location FROM Hangar WHERE plane_name = F-14 Fighter
SELECT * FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < 30
SELECT LOCATION FROM hangar WHERE plane_name = F-14 Fighter
SELECT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = piper cub AND T1.age < 35
SELECT count(DISTINCT location) FROM hangar
SELECT pilot_name FROM pilotskills WHERE plane_name = Piper Cub AND age < 35
SELECT pilot_name FROM PilotSkills WHERE age < ( SELECT avg(age) FROM pilotSkills ) ORDER BY age ASC
SELECT count(DISTINCT location) FROM hangar
SELECT count(*) FROM PilotSkills WHERE age > 40
SELECT count(*) FROM pilotSkills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = B-52 AND age < 35
SELECT pilot_name FROM pilotskills WHERE age = ( SELECT min(age) FROM pilotskills WHERE plane_name = Piper Cub ) AND plane_name = Piper Cub
SELECT T1.plane_name FROM Hangar AS T1 JOIN pilotSkills AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name ORDER BY count(*) DESC LIMIT 1
SELECT T2.plane_name FROM pilotSkills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name ORDER BY count(*) ASC LIMIT 1
SELECT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = Piper Cub ORDER BY T1.age ASC LIMIT 1
SELECT count(*) FROM pilotSkills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = Chicago
SELECT T1.plane_name FROM Hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name GROUP BY T2.plane_name ORDER BY count(*) ASC LIMIT 1
SELECT T1.plane_name FROM pilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = 'Smith' AND T1.age = 41
SELECT T1.plane_name FROM hangar AS T1 JOIN pilot_skills AS T2 ON T1.plane_name = T2.plane_name WHERE pilot_name = Jones AND T2.age = 32
SELECT T1.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name JOIN pilotskills AS T3 ON T1.pilot_name = T3.pilot_name WHERE T3.age = 41 AND T3.pilot_name = Smith
SELECT count(DISTINCT plane_name) FROM pilotskills
SELECT count(*) FROM pilot_skills WHERE age < 35 AND plane_name = 'B-52'
SELECT count(*) FROM pilotskills WHERE age > 40
SELECT count(DISTINCT plane_name) FROM pilotSkills
SELECT count(*) FROM pilotskills WHERE pilot_name = Smith
SELECT count(DISTINCT T1.plane_name) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 40
SELECT count(*) FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.pilot_name = Smith
SELECT DISTINCT location FROM hangar ORDER BY plane_name
SELECT pilot_name FROM PilotSkills ORDER BY age DESC
SELECT pilot_name FROM PilotSkills WHERE age BETWEEN 30 AND 40 ORDER BY age
SELECT location FROM hangar ORDER BY plane_name
SELECT T1.plane_name FROM pilot_skills AS T1 JOIN pilot_skills AS T2 ON T1.pilot_name = T2.pilot_name JOIN hangar AS T3 ON T1.plane_name = T3.plane_name WHERE T1.pilot_name = Jones AND T1.age = 32 AND T2.pilot_name = Jones
SELECT distinct(plane_name) FROM pilotSkills ORDER BY plane_name
SELECT count(*) FROM pilotskills WHERE age > 40 OR age < 30
SELECT DISTINCT plane_name FROM hangar ORDER BY plane_name
SELECT count(*) FROM pilotSkills WHERE age > 40 or age < 30
SELECT pilot_name , age FROM pilotskills WHERE pilot_name LIKE piper cubs OR pilot_name LIKE F-14
SELECT COUNT(*) FROM pilot_skills JOIN hangar ON pilot_skills.plane_name = hangar.plane_name WHERE hangar.location = Chicago
SELECT pilot_name FROM pilotskills ORDER BY age DESC
SELECT pilot_name FROM pilotSkills WHERE plane_name = Piper Cub EXCEPT SELECT pilot_name FROM pilotSkills WHERE plane_name = B-52
SELECT pilot_name FROM pilotskills WHERE plane_name = Piper Cub EXCEPT SELECT pilot_name FROM pilotskills WHERE plane_name = B-52
SELECT avg(age) , min(age) FROM pilotskills
SELECT pilot_name , age FROM pilotskills WHERE pilot_name IN (SELECT pilot_name FROM pilotskills WHERE plane_name = Piper Cub ) AND age > 35 UNION SELECT pilot_name , age FROM pilotskills WHERE pilot_name IN (SELECT pilot_name FROM pilotskills WHERE plane_name = F-14 Fighter ) AND age < 30
SELECT count(*) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age > 40
SELECT pilot_name FROM pilotSkills WHERE plane_name = Piper Cub INTERSECT SELECT pilot_name FROM pilotSkills WHERE plane_name = B-52
SELECT pilot_name FROM pilot_skills WHERE age BETWEEN 30 AND 40 ORDER BY age
SELECT avg(age) , min(age) FROM pilotSkills
SELECT count(*) , location FROM pilotskills JOIN hangar ON pilotskills.plane_name = hangar.plane_name GROUP BY location
SELECT avg(age) , plane_name FROM PilotSkills GROUP BY plane_name
SELECT T2.pilot_name FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name WHERE T1.location = Austin INTERSECT SELECT T2.pilot_name FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name WHERE T1.location = Boston
SELECT pilot_name FROM pilotskills WHERE plane_name = Piper Cub OR pilot_name IN (SELECT pilot_name FROM pilotskills WHERE plane_name = F-14 )
SELECT pilot_name FROM pilotskills WHERE plane_name = Piper Cub UNION SELECT pilot_name FROM pilotskills WHERE plane_name = F-14 Fighter
SELECT count(*) , T1.plane_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name
SELECT max(age) , plane_name FROM pilotSkills GROUP BY plane_name ORDER BY plane_name
SELECT T1.pilot_name , T2.plane_name , max(T1.age) FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T2.plane_name
SELECT pilot_name , max(age) FROM pilotskills GROUP BY pilot_name
SELECT T2.plane_name , T1.pilot_name , T1.age FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age = ( SELECT max(T1.age) FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T2.plane_name )
SELECT avg(T1.age) , T2.location FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name
SELECT max(age) , pilot_name FROM pilotskills GROUP BY pilot_name
SELECT count(*) , avg(age) , T2.location FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T2.location
SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = Piper Cub EXCEPT SELECT T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = B-52
SELECT T1.location FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.age LIMIT 1
SELECT T1.location FROM Hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name ORDER BY T2.age ASC LIMIT 1
SELECT count(*) , avg(T1.age) , T2.location FROM PilotSkills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T2.location
SELECT pilot_name FROM pilotskills WHERE age > (SELECT min(age) FROM pilotskills WHERE plane_name = Piper Cub )
SELECT count(*) , T1.plane_name FROM hangar AS T1 JOIN pilotskills AS T2 ON T1.plane_name = T2.plane_name GROUP BY T2.plane_name HAVING avg(T2.age) < 35
SELECT pilot_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM hangar WHERE LOCATION = Austin ) INTERSECT SELECT pilot_name FROM pilot_skills WHERE plane_name IN (SELECT plane_name FROM hangar WHERE LOCATION = Boston )
SELECT DISTINCT T2.pilot_name , T2.age FROM Hangar AS T1 JOIN PilotSkills AS T2 ON T1.plane_name = T2.plane_name WHERE T1.location = Austin
SELECT T1.pilot_name , T1.age FROM Pilotskills AS T1 JOIN Hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.location = Austin
SELECT pilot_name FROM pilotskills WHERE age > ( SELECT max(age) FROM pilotskills WHERE plane_name = Piper Cub ) ORDER BY pilot_name
SELECT DISTINCT T1.plane_name , T1.pilot_name FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name ORDER BY T1.plane_name
SELECT DISTINCT plane_name FROM pilotskills WHERE pilot_name LIKE %Bomber%
SELECT count(*) FROM pilotskills WHERE age < (SELECT min(age) FROM pilotskills WHERE plane_name = Piper Cub )
SELECT count(*) FROM pilotskills WHERE age < (SELECT max(age) FROM pilotskills WHERE plane_name = F-14 )
SELECT count(*) FROM pilotSkills WHERE age > ( SELECT min(age) FROM pilotSkills WHERE plane_name = Piper Cub )
SELECT Name FROM district ORDER BY Area_km DESC LIMIT 1
SELECT Area_km , Government_website FROM district ORDER BY Population LIMIT 1
SELECT max(Area_km) , avg(Area_km) FROM district
SELECT name , population FROM district WHERE area_km > (SELECT avg(area_km) FROM district)
SELECT District_ID , Name , Government_website FROM district ORDER BY Population
SELECT sum(Population) FROM district ORDER BY area_km DESC LIMIT 3
SELECT name FROM district WHERE government_website LIKE '%gov%'
SELECT count(*) , T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T1.age < (SELECT min(T1.age) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name WHERE T2.plane_name = F-14 Fighter )
SELECT name FROM spokesman ORDER BY Age DESC LIMIT 1
SELECT District_ID , Name FROM district WHERE population > 4000 OR area_km > 3000
SELECT name FROM spokesman WHERE points < (SELECT avg(points) FROM spokesman)
SELECT name , points FROM spokesman WHERE age < 40
SELECT avg(Points) , avg(Age) FROM spokesman WHERE Rank_position = 1
SELECT name , speach_title FROM spokesman
SELECT T2.name FROM spokesman_district AS T1 JOIN spokesman AS T2 ON T1.spokesman_id = T2.spokesman_id WHERE T1.Start_year < 2004
SELECT T1.plane_name , count(*) FROM pilot_skills AS T1 JOIN hangar AS T2 ON T1.plane_name = T2.plane_name GROUP BY T1.plane_name HAVING avg(T1.age) < 35
SELECT count(*) , T3.name FROM spokesman_district AS T1 JOIN district AS T3 ON T1.district_ID = T3.District_ID GROUP BY T1.district_ID
SELECT T3.name FROM spokesman AS T1 JOIN spokesman_district AS T2 ON T1.Spokesman_ID = T2.Spokesman_ID JOIN district AS T3 ON T2.District_ID = T3.District_ID GROUP BY T3.name ORDER BY count(*) DESC LIMIT 1
SELECT SUM(T1.population) , AVG(T1.population) FROM district AS T1 JOIN spokesman_district AS T2 ON T1.District_ID = T2.District_ID
SELECT count(*) FROM district WHERE district_id NOT IN (SELECT district_id FROM spokesman_district)
SELECT Name FROM spokesman WHERE Spokesman_ID NOT IN (SELECT Spokesman_ID FROM spokesman_district)
SELECT title FROM sculptures ORDER BY year DESC LIMIT 1
SELECT T3.name FROM spokesman_district AS T1 JOIN district AS T3 ON T1.district_id = T3.district_id JOIN spokesman AS T2 ON T1.spokesman_id = T2.spokesman_id GROUP BY T3.district_id HAVING count(*) > 1
SELECT T3.name FROM district AS T3 JOIN spokesman_district AS T1 ON T3.District_ID = T1.district_id JOIN spokesman AS T2 ON T1.Spokesman_ID = T2.Spokesman_ID WHERE T2.Rank_position = 1 INTERSECT SELECT T3.name FROM district AS T3 JOIN spokesman_district AS T1 ON T3.District_ID = T1.district_id JOIN spokesman AS T2 ON T1.Spokesman_ID = T2.Spokesman_ID WHERE T2.Rank_position = 2
SELECT title FROM sculptures ORDER BY YEAR DESC LIMIT 1
SELECT title FROM sculptures WHERE LOCATION = 226
SELECT title FROM sculptures WHERE LOCATION = gallery 226
SELECT title , LOCATION FROM Sculptures
SELECT title , LOCATION FROM SCULPTURES
SELECT title , LOCATION FROM paintings ORDER BY YEAR ASC LIMIT 1
SELECT title , LOCATION FROM paintings ORDER BY YEAR ASC LIMIT 1
SELECT title , LOCATION FROM Paintings
SELECT title , LOCATION FROM Paintings
SELECT fname , lname FROM Artists WHERE birthYear > 1850
SELECT title , YEAR FROM sculptures WHERE LOCATION != gallery 226
SELECT DISTINCT T1.plane_name FROM hangar AS T1 WHERE T1.plane_name LIKE %Bomber%
SELECT DISTINCT medium FROM Paintings WHERE paintingID = 80
SELECT DISTINCT T2.fname , T2.lname FROM Sculptures AS T1 JOIN Artists AS T2 ON T1.sculptorID = T2.artistID WHERE T1.year < 1900
SELECT DISTINCT T1.medium FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid WHERE T1.paintingid = 80
SELECT fname , lname FROM Artists WHERE birthYear > 1850
SELECT fname , lname FROM artists WHERE deathyear - birthyear = (SELECT max(deathyear - birthyear) FROM artists)
SELECT title , YEAR FROM SCULPtures WHERE LOCATION != gallery 226
SELECT fname , lname FROM Artists ORDER BY birthYear - deathYear LIMIT 1
SELECT max(deathyear - birthyear) FROM artists
SELECT DISTINCT T2.fname , T2.lname FROM sculptures AS T1 JOIN artists AS T2 ON T1.sculptorID = T2.artistID WHERE T1.year < 1900
SELECT abs(deathyear - birthyear) FROM artists
SELECT DISTINCT T1.birthyear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid WHERE T2.year > 1920
SELECT fname , birthYeaR - deathYeaR FROM Artists ORDER BY birthYeaR - deathYeaR DESC LIMIT 1
SELECT T1.fname , ( T1.deathYear - T1.birthYear ) FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorID GROUP BY T1.fname ORDER BY ( T1.deathYear - T1.birthYear ) DESC LIMIT 1
SELECT count(*) FROM paintings WHERE LOCATION = gallery 240
SELECT DISTINCT T1.birthYear FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.year > 1920
SELECT count(*) FROM paintings WHERE LOCATION = 240
SELECT T2.width_mm FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T1.birthYear < 1850
SELECT T2.width_mm FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.birthyear < 1850
SELECT count(*) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY lname HAVING ( deathyear - birthyear ) = ( SELECT max(deathyear - birthyear) FROM artists )
SELECT T2.title , T2.year FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T1.fname = Mary
SELECT DISTINCT T2.fname , T1.year FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.fname = Mary
SELECT DISTINCT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID JOIN Sculptures AS T3 ON T1.artistID = T3.sculptorID
SELECT T2.location , T2.medium FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.fname = Pablo
SELECT T2.location , T2.mediumOn FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T1.fname = pablo
SELECT count(*) , T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID = T2.painterID GROUP BY T1.fname ORDER BY T1.deathyear - T1.birthyear DESC LIMIT 1
SELECT DISTINCT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.medium = oil INTERSECT SELECT DISTINCT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.mediumOn = lithography
SELECT fname , lname FROM Artists WHERE artistID IN (SELECT painterID FROM Paintings UNION SELECT sculptorID FROM Sculptures)
SELECT count(*) , medium FROM paintings GROUP BY medium UNION SELECT count(*) , medium FROM sculptures GROUP BY medium
SELECT DISTINCT T2.fname FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistid WHERE T1.medium = oil AND T1.location = gallery 241
SELECT T1.birthyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year = 1884
SELECT T2.birthYear FROM Paintings AS T1 JOIN Artists AS T2 ON T1.painterID = T2.artistID WHERE T1.title = 'on canvas' AND T1.year = 1884
SELECT T2.fname FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T1.title = 'oil' AND T1.location = 'gallery 241'
SELECT avg(height_mm) , medium FROM paintings GROUP BY medium
SELECT avg(height_mm) , medium FROM Paintings GROUP BY medium
SELECT count(*) , location FROM Paintings WHERE YEAR < 1900 GROUP BY LOCATION
SELECT count(*) , LOCATION FROM sculptures WHERE YEAR < 1900 GROUP BY LOCATION
SELECT title FROM paintings WHERE medium = oil AND YEAR > 1910
SELECT title FROM paintings WHERE YEAR > 1910 AND medium = oil
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings WHERE medium = on canvas )
SELECT DISTINCT title FROM paintings WHERE height_mm > (SELECT min(height_mm) FROM paintings WHERE mediumon = canvas )
SELECT DISTINCT paintingid FROM paintings WHERE YEAR < (SELECT min(YEAR) FROM paintings WHERE LOCATION = gallery 240 )
SELECT DISTINCT paintingID FROM paintings WHERE YEAR < (SELECT max(YEAR) FROM paintings WHERE location = gallery 240 )
SELECT paintingid FROM paintings ORDER BY YEAR LIMIT 1
SELECT DISTINCT T1.artistID FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.medium = oil AND T2.location = 240
SELECT DISTINCT title FROM Paintings ORDER BY title
SELECT paintingid FROM paintings ORDER BY YEAR DESC LIMIT 1
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID WHERE T2.title LIKE '%female%'
SELECT T2.fname , T2.lname FROM Sculptures AS T1 JOIN Artists AS T2 ON T1.sculptorID = T2.artistID WHERE T1.title LIKE %female%
SELECT DISTINCT T1.painterID FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T1.medium = oil AND T1.location = 240
SELECT DISTINCT title FROM paintings ORDER BY height_mm + width_mm
SELECT DISTINCT title FROM Paintings ORDER BY title
SELECT count(*) , T1.medium FROM paintings AS T1 JOIN artists AS T2 ON T1.painterid = T2.artistid GROUP BY T1.medium UNION SELECT count(*) , T1.medium FROM sculptures AS T1 JOIN artists AS T2 ON T1.sculptorid = T2.artistid GROUP BY T1.medium
SELECT DISTINCT title FROM paintings ORDER BY height_mm
SELECT title FROM paintings WHERE 1900 <= year AND year <= 1950 UNION SELECT title FROM sculptures WHERE 1900 <= year AND year <= 1950
SELECT title FROM paintings WHERE painterid = 222 UNION SELECT title FROM sculptures WHERE sculptorid = 222
SELECT title FROM paintings WHERE year BETWEEN 1900 AND 1950 UNION SELECT title FROM sculptures WHERE year BETWEEN 1900 AND 1950
SELECT T1.artistID FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.year < 1900 GROUP BY T1.artistID ORDER BY count(*) DESC LIMIT 1
SELECT T1.fname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID GROUP BY T2.sculptorID ORDER BY count(*) DESC LIMIT 1
SELECT T1.title FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T2.artistID = 222 UNION SELECT title FROM sculptures AS T1 JOIN artists AS T2 ON T1.sculptorID = T2.artistID WHERE T2.artistID = 222
SELECT title FROM paintings WHERE width_mm < 600 OR height_mm > 800
SELECT T1.fname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T2.sculptorid ORDER BY count(*) DESC LIMIT 1
SELECT T1.artistID FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.year < 1900 GROUP BY T1.artistID ORDER BY COUNT(*) DESC LIMIT 1
SELECT title FROM paintings WHERE height_mm > 800 OR width_mm < 600
SELECT DISTINCT LOCATION FROM paintings WHERE year < 1885 OR year > 1930
SELECT DISTINCT location FROM paintings WHERE year < 1885 OR year > 1930
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'oil' INTERSECT SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistid = T2.painterid WHERE T2.medium = 'lithographic'
SELECT paintingID FROM Paintings WHERE height_mm > 2000 AND height_mm < 500
SELECT paintingid FROM paintings WHERE height_mm > 500 AND height_mm < 2000
SELECT DISTINCT LOCATION FROM paintings WHERE mediumon = on panel INTERSECT SELECT DISTINCT LOCATION FROM paintings WHERE mediumon = on canvas GROUP BY LOCATION
SELECT DISTINCT location FROM paintings WHERE mediumon = on panels INTERSECT SELECT DISTINCT location FROM paintings WHERE mediumon = on canvas
SELECT LOCATION FROM Paintings WHERE YEAR < 1885 INTERSECT SELECT LOCATION FROM Paintings WHERE YEAR > 1930
SELECT height_mm , paintingID FROM paintings WHERE height_mm = ( SELECT max(height_mm) FROM paintings WHERE YEAR < 1900 )
SELECT avg(height_mm) , avg(width_mm) FROM Paintings WHERE medium = oil AND mediumOn = 241
SELECT max(height_mm) , paintingID FROM paintings WHERE year < 1900
SELECT LOCATION FROM paintings WHERE YEAR < 1885 INTERSECT SELECT LOCATION FROM paintings WHERE LOCATION > 1930
SELECT max(height_mm) , max(width_mm) , YEAR FROM paintings GROUP BY YEAR
SELECT avg(height_mm) , avg(width_mm) FROM artists AS t1 JOIN paintings AS t2 ON t1.artistid = t2.painterid WHERE t2.mediumon = 'oil' AND t2.location = 'gallery 241'
SELECT max(height_mm) , max(width_mm) , year FROM Paintings GROUP BY year
SELECT avg(height_mm) , avg(width_mm) , T2.fname , T2.lname FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID GROUP BY T2.fname , T2.lname ORDER BY T2.fname
SELECT T1.fname , count(*) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID = T2.painterID GROUP BY T1.fname HAVING count(*) >= 2
SELECT T1.fname , count(*) FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID GROUP BY T1.artistID HAVING count(*) >= 2
SELECT T1.deathyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.fname , T1.lname HAVING count(*) <= 3
SELECT avg(height_mm) , avg(width_mm) , T1.fname , T1.lname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY T1.fname , T1.lname ORDER BY T1.fname , T1.lname
SELECT T1.deathyear FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T2.sculptorid ORDER BY count(*) LIMIT 1
SELECT T1.fname , T1.lname , T1.deathYear FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistid = T2.sculptorid GROUP BY T1.artistid ORDER BY count(*) ASC LIMIT 1
SELECT paintingid FROM paintings WHERE year < (SELECT min(year) FROM paintings WHERE LOCATION = 240 )
SELECT painterid FROM paintings WHERE paintingid IN (SELECT paintingid FROM sculptures WHERE LOCATION = 240 GROUP BY title HAVING count(*) > 1)
SELECT height_mm , paintingID FROM paintings WHERE location = 240 ORDER BY height_mm DESC LIMIT 1
SELECT T1.deathyear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistid = T2.painterid GROUP BY lname HAVING COUNT(*) < 4
SELECT paintingid FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT paintingID FROM paintings WHERE height_mm > (SELECT max(height_mm) FROM paintings WHERE YEAR > 1900)
SELECT title , paintingID FROM paintings WHERE location = 240 ORDER BY width_mm LIMIT 1
SELECT title , LOCATION , YEAR FROM Paintings WHERE height_mm > 1000 ORDER BY title
SELECT fname , lname FROM Artists EXCEPT SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID WHERE T2.medium = oil GROUP BY T1.fname , T1.lname ORDER BY count(*) DESC LIMIT 1
SELECT T2.fname , T2.lname FROM paintings AS T1 JOIN artists AS T2 ON T1.painterID = T2.artistID WHERE T1.medium = oil GROUP BY T2.fname , T2.lname ORDER BY COUNT(*) DESC LIMIT 3
SELECT paintingid , LOCATION , title FROM paintings WHERE medium = oil ORDER BY YEAR
SELECT paintingid , LOCATION , title FROM paintings WHERE medium = oil ORDER BY YEAR
SELECT year , LOCATION , title FROM Paintings WHERE height_mm > 1000 ORDER BY title
SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Paintings AS T2 ON T1.artistID = T2.painterID EXCEPT SELECT T1.fname , T1.lname FROM Artists AS T1 JOIN Sculptures AS T2 ON T1.artistID = T2.sculptorID
SELECT count(*) FROM race
SELECT Winning_driver FROM race WHERE Winning_team != Pole_Position
SELECT count(*) FROM race
SELECT DISTINCT LOCATION FROM Paintings WHERE YEAR < 1885 AND mediumOn != canvas
SELECT Winning_driver FROM race WHERE Winning_driver != Junior Stous
SELECT LOCATION FROM Paintings WHERE YEAR < 1885 EXCEPT SELECT LOCATION FROM Paintings WHERE mediumOn = canvas
SELECT Constructor FROM DRIVER ORDER BY age ASC
SELECT DISTINCT constructor FROM driver WHERE age > 19
SELECT Winning_driver , Winning_team FROM race ORDER BY Winning_team
SELECT winning_driver , winning_team FROM race ORDER BY winning_team
SELECT DISTINCT Constructor FROM driver WHERE Age >= 20
SELECT DISTINCT Constructor FROM driver ORDER BY Age
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT T2.Driver_Name , T1.Race_Name FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT max(age) , min(age) FROM driver
SELECT max(Age) , min(Age) FROM driver
SELECT count(DISTINCT engine) FROM driver WHERE age > 30 OR age < 20
SELECT count(*) , T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id GROUP BY T2.driver_id
SELECT T2.Driver_Name , COUNT(*) FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID
SELECT T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T2.Driver_ID ORDER BY count(*) DESC LIMIT 1
SELECT T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Age >= 26
SELECT T1.Driver_Name , T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T2.Driver_ID HAVING count(*) >= 2
SELECT Driver_Name FROM driver WHERE Constructor != Bugatti
SELECT constructor , count(*) FROM driver GROUP BY constructor
SELECT count(DISTINCT Engine) FROM driver WHERE Age > 30 OR Age < 20
SELECT Driver_Name FROM driver WHERE Constructor != Bugatti
SELECT T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T1.Age >= 26
SELECT T2.Driver_Name , T2.Age FROM race AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T1.Driver_ID HAVING COUNT(*) >= 2
SELECT Engine FROM driver GROUP BY Engine ORDER BY COUNT(*) DESC LIMIT 1
SELECT engine FROM driver GROUP BY engine HAVING count(*) >= 2
SELECT T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID GROUP BY T2.Driver_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.Driver_Name , T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID
SELECT Constructor , count(*) FROM driver GROUP BY Constructor
SELECT Driver_Name FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM race)
SELECT Engine FROM driver GROUP BY Engine ORDER BY COUNT(*) DESC LIMIT 1
SELECT ENGINE FROM driver GROUP BY ENGINE HAVING count(*) >= 2
SELECT Constructor FROM driver WHERE Age < 20 INTERSECT SELECT Constructor FROM driver WHERE Age > 30
SELECT Driver_Name FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM race)
SELECT Winning_team FROM race GROUP BY Winning_team HAVING COUNT(*) > 1
SELECT Constructor FROM driver WHERE Age < 20 INTERSECT SELECT Constructor FROM driver WHERE Age > 30
SELECT driver_name FROM driver EXCEPT SELECT T1.driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T1.driver_name = 'James Hinchcliffe'
SELECT count(*) FROM languages
SELECT Winning_team FROM race GROUP BY Winning_team HAVING count(*) > 1
SELECT name FROM languages ORDER BY name ASC
SELECT DISTINCT T1.Constructor , T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = James Hinchcliffe INTERSECT SELECT DISTINCT T1.Constructor , T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = Carl Skerlong
SELECT count(*) FROM languages
SELECT name FROM languages ORDER BY name
SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = James Hinchcliffe INTERSECT SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID = T2.Driver_ID WHERE T2.Pole_Position = Carl Skerlong
SELECT name FROM languages WHERE name LIKE %ish%
SELECT name FROM countries ORDER BY overall_score DESC
SELECT name FROM languages WHERE name LIKE %ish%
SELECT Driver_name FROM driver EXCEPT SELECT T1.Driver_name FROM driver AS T1 JOIN race AS T2 ON T1.driver_id = T2.driver_id WHERE T1.Driver_name = James Hinchcliffe
SELECT count(DISTINCT language_id) FROM official_languages
SELECT count(DISTINCT language_id) FROM official_languages
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY overall_score DESC
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT avg(overall_score) FROM countries
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT name FROM countries ORDER BY education_score DESC
SELECT max(health_score) , min(health_score) FROM countries WHERE name != Norway
SELECT avg(overall_score) FROM countries
SELECT t1.name FROM languages AS t1 JOIN official_languages AS t2 ON t1.id = t2.language_id GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT max(health_score) , min(health_score) FROM countries WHERE name != Norway
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T3.name , count(*) FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id = T2.id JOIN countries AS T3 ON T1.country_id = T3.id GROUP BY T2.name
SELECT t1.name FROM languages AS t1 JOIN official_languages AS t2 ON t1.id = t2.language_id GROUP BY t2.language_id HAVING count(*) >= 2
SELECT avg(T1.overall_score) FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id JOIN languages AS T3 ON T2.language_id = T3.id WHERE T3.name = english
SELECT t1.name FROM languages AS t1 JOIN official_languages AS t2 ON t1.id = t2.language_id GROUP BY t1.name ORDER BY count(*) DESC LIMIT 3
SELECT t1.name FROM languages AS t1 JOIN official_languages AS t2 ON t1.id = t2.language_id GROUP BY t2.language_id HAVING count(*) >= 2
SELECT T2.name , T3.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id JOIN languages AS T3 ON T1.language_id = T3.id
SELECT T1.name , T3.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id JOIN languages AS T3 ON T3.id = T2.language_id
SELECT T3.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id JOIN languages AS T3 ON T1.language_id = T3.id GROUP BY T1.language_id ORDER BY avg(T2.overall_score) DESC
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T2.country_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id GROUP BY T2.country_id ORDER BY count(*) DESC LIMIT 1
SELECT T3.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id JOIN languages AS T3 ON T1.language_id = T3.id GROUP BY T3.name ORDER BY count(*) DESC LIMIT 3
SELECT T3.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id = T2.country_id JOIN languages AS T3 ON T2.language_id = T3.id GROUP BY T3.name ORDER BY avg(T1.overall_score) DESC
SELECT avg(T3.overall_score) FROM languages AS T1 JOIN official_languages AS T2 JOIN countries AS T3 ON T1.id = T2.language_id AND T2.country_id = T3.id WHERE T1.name = English
SELECT name FROM languages EXCEPT SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id
SELECT name FROM countries EXCEPT SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T3.id = T2.country_id
SELECT name FROM languages WHERE id NOT IN (SELECT DISTINCT language_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT DISTINCT country , town_city FROM addresses
SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T3.id = T2.country_id WHERE T3.overall_score > 95 INTERSECT SELECT T1.name FROM languages AS T1 JOIN official_languages AS T2 ON T1.id = T2.language_id JOIN countries AS T3 ON T3.id = T2.country_id WHERE T3.overall_score < 90
SELECT feature_description FROM FEATURES WHERE feature_name = rooftop
SELECT T3.name , count(*) FROM countries AS t1 JOIN official_languages AS t2 ON t1.id = t2.country_id JOIN languages AS T3 ON T3.id = T2.language_id GROUP BY T3.id
SELECT country , town_city FROM addresses
SELECT feature_description FROM features WHERE feature_name = 'rooftop'
SELECT T1.county_state_province FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id
SELECT T1.county_state_province FROM Addresses AS T1 JOIN properties AS T2 ON T1.address_id = T2.property_address_id GROUP BY T2.property_id
SELECT T3.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id JOIN languages AS T3 ON T1.language_id = T3.id WHERE T2.overall_score > 95 INTERSECT SELECT T3.name FROM official_languages AS T1 JOIN countries AS T2 ON T1.country_id = T2.id JOIN languages AS T3 ON T1.language_id = T3.id WHERE T2.overall_score < 90
SELECT T1.feature_name , T1.feature_description FROM FEATURES AS T1 JOIN Property_Features AS T2 ON T1.feature_id = T2.feature_id GROUP BY T2.feature_id ORDER BY count(*) DESC LIMIT 1
SELECT t2.feature_name , t2.feature_description FROM property_features AS t1 JOIN features AS t2 ON t1.feature_id = t2.feature_id GROUP BY t1.feature_id ORDER BY count(*) DESC LIMIT 1
SELECT min(room_count) FROM properties
SELECT DISTINCT T1.age_category_code FROM Ref_Age_Categories AS T1 JOIN Users AS T2 ON T1.age_category_code = T2.age_category_code WHERE T2.first_name LIKE %Mother%
SELECT T2.first_name FROM properties AS T1 JOIN users AS T2 ON T1.owner_user_id = T2.user_id GROUP BY T1.owner_user_id ORDER BY count(*) DESC LIMIT 1
SELECT age_category_code FROM Ref_Age_Categories WHERE age_category_description LIKE Mother
SELECT T1.first_name FROM USERS AS T1 JOIN properties AS T2 ON T1.user_id = T2.owner_user_id GROUP BY T1.first_name ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT property_id , vendor_requested_price FROM Properties ORDER BY vendor_requested_price LIMIT 1
SELECT min(room_count) FROM properties
SELECT count(*) FROM Properties WHERE parking_lots = 1 OR garage_yn = 1
SELECT property_id , vendor_requested_price FROM properties ORDER BY vendor_requested_price LIMIT 1
SELECT DISTINCT T3.town_city FROM Property_Features AS T1 JOIN FEATURES AS T2 ON T1.feature_id = T2.feature_id JOIN Addresses AS T3 ON T3.address_id = Properties.property_address_id JOIN Properties ON T3.address_id = Properties.property_address_id WHERE T2.feature_name = swimming pool
SELECT avg(room_count) FROM Properties
SELECT avg(T3.room_count) FROM Property_Features AS T1 JOIN Features AS T2 ON T1.feature_id = T2.feature_id JOIN Properties AS T3 ON T3.property_id = T1.property_id WHERE T2.feature_name = garden
SELECT count(DISTINCT room_size) FROM Rooms
SELECT count(DISTINCT room_size) FROM Rooms
SELECT user_id , search_seq FROM User_Searches GROUP BY user_id HAVING count(*) >= 2
SELECT search_string , search_datetime FROM USER_SEARCHES ORDER BY search_string DESC
SELECT search_datetime , search_string FROM USER_SEARCHES ORDER BY search_string DESC
SELECT max(search_datetime) FROM user_searches
SELECT DISTINCT search_datetime FROM user_searches ORDER BY search_datetime DESC LIMIT 1
SELECT avg(T2.room_count) , T2.property_name FROM properties AS T2 JOIN property_features AS T1 ON T1.property_id = T2.property_id JOIN features AS T3 ON T3.feature_id = T1.feature_id WHERE T3.feature_name = garden
SELECT T3.town_city FROM property_features AS T1 JOIN features AS T2 ON T1.feature_id = T2.feature_id JOIN properties AS T4 ON T4.property_id = T1.property_id JOIN addresses AS T3 ON T3.address_id = T4.property_address_id WHERE T2.feature_name = Swimming Pool
SELECT T1.user_id , T2.search_string FROM User_searches AS T1 JOIN User_searches AS T2 ON T1.user_id = T2.user_id WHERE T1.search_seq = T2.search_seq
SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id = T2.property_address_id JOIN Users AS T3 ON T2.owner_user_id = T3.user_id GROUP BY T2.owner_user_id HAVING count(DISTINCT T1.zip_postcode) > 2
SELECT DISTINCT T3.zip_postcode FROM USER_PROPERTY_HISTORY AS T1 JOIN properties AS T2 ON T1.property_id = T2.property_id JOIN addresses AS T3 ON T3.address_id = T2.property_address_id GROUP BY T1.user_id HAVING count(*) > 2
SELECT T2.user_category_code , T1.user_id FROM USER_SEARCHES AS T1 JOIN USERS AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) = 1
SELECT login_name FROM users WHERE age_category_code = senior ORDER BY first_name
SELECT T2.age_category_code FROM user_searches AS T1 JOIN users AS T2 ON T1.user_id = T2.user_id ORDER BY T1.search_datetime ASC LIMIT 1
SELECT login_name FROM users WHERE age_category_code = Senior ORDER BY first_name
SELECT T1.age_category_description FROM Ref_Age_Categories AS T1 JOIN USERS AS T2 ON T1.age_category_code = T2.age_category_code JOIN USER_SEARCHES AS T3 ON T2.user_id = T3.user_id ORDER BY T3.search_datetime LIMIT 1
SELECT T1.user_id , T1.user_category_code FROM USERS AS T1 JOIN USER_SEARCHES AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) = 1
SELECT avg(room_count) FROM Properties
SELECT count(*) FROM user_searches AS T1 JOIN users AS T2 ON T1.user_id = T2.user_id WHERE T2.is_buyer = 1
SELECT count(*) FROM users AS T1 JOIN user_searches AS T2 ON T1.user_id = T2.user_id WHERE T1.is_buyer = 1
SELECT date_registered FROM USERS WHERE login_name = ratione
SELECT first_name , middle_name , last_name , login_name FROM users WHERE is_seller = 1
SELECT date_registered FROM USERS WHERE login_name = ratione
SELECT count(*) FROM properties WHERE property_id IN (SELECT property_id FROM Property_Features GROUP BY property_id HAVING count(*) >= 2)
SELECT count(*) FROM (SELECT T1.property_id FROM properties AS T1 JOIN property_features AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id HAVING count(*) >= 2)
SELECT first_name , middle_name , last_name , login_name FROM USERS WHERE is_seller = 1
SELECT count(*) , T1.property_id FROM Properties AS T1 JOIN Property_Photos AS T2 ON T1.property_id = T2.property_id GROUP BY T1.property_id
SELECT count(*) , T2.owner_user_id FROM Property_Photos AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id GROUP BY T2.owner_user_id
SELECT count(DISTINCT photo_title) , t1.property_id FROM Properties AS t1 JOIN Property_Photos AS t2 ON t1.property_id = t2.property_id GROUP BY t1.property_id
SELECT T2.user_id , count(*) FROM User_Property_History AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id JOIN Property_Photos AS T3 ON T1.property_id = T3.property_id GROUP BY T3.property_id
SELECT sum(T1.price_max) FROM properties AS T1 JOIN users AS T2 ON T1.owner_user_id = T2.user_id JOIN Ref_user_categories AS T3 ON T2.user_category_code = T3.user_category_code WHERE T3.user_category_description = Single OR T3.user_category_description = Student
SELECT T1.line_1_number_building , T1.line_2_number_street , T1.town_city FROM addresses AS T1 JOIN users AS T2 ON T1.address_id = T2.user_address_id WHERE T2.user_category_code = Senior Citizens
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = Over 60
SELECT T1.datestamp , T2.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id ORDER BY T1.datestamp
SELECT T1.datestamp , T2.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id = T2.property_id ORDER BY T1.datestamp
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = Over 60
SELECT sum(T2.price_max) FROM users AS T1 JOIN properties AS T2 ON T1.user_id = T2.owner_user_id WHERE T1.user_category_code = single mothers or students
SELECT room_size , count(*) FROM Rooms GROUP BY room_size
SELECT T1.line_1_number_building , T1.line_2_number_street , T1.town_city FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id = T2.user_address_id JOIN Ref_Age_Categories AS T3 ON T2.age_category_code = T3.age_category_code WHERE T3.age_category_description = Senior
SELECT count(*) , room_size FROM Rooms GROUP BY room_size
SELECT T2.country FROM USERS AS T1 JOIN Addresses AS T2 ON T1.user_address_id = T2.address_id WHERE T1.first_name = Robbie
SELECT T2.country FROM USERS AS T1 JOIN Addresses AS T2 ON T1.user_address_id = T2.address_id WHERE T1.first_name = Robbie
SELECT T1.property_type_description , T1.property_type_code FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T2.property_type_code ORDER BY count(*) LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name FROM users AS T1 JOIN addresses AS T2 ON T1.user_address_id = T2.address_id JOIN properties AS T3 ON T3.owner_user_id = T1.user_id WHERE T2.address_id = T3.property_address_id
SELECT T2.first_name , T2.middle_name , T2.last_name FROM USER_PROPERTY_HISTORY AS T1 JOIN USERS AS T2 ON T1.user_id = T2.user_id JOIN properties AS T3 ON T1.property_id = T3.property_id AND T3.owner_user_id = T2.user_id
SELECT DISTINCT T1.search_string FROM User_Searches AS T1 JOIN USERS AS T2 ON T1.user_id = T2.user_id EXCEPT SELECT DISTINCT T1.search_string FROM User_Searches AS T1 JOIN USERS AS T2 ON T1.user_id = T2.user_id WHERE T2.user_id IN ( SELECT owner_user_id FROM Properties )
SELECT T1.search_string FROM User_Searches AS T1 JOIN Users AS T2 ON T1.user_id = T2.user_id JOIN USER_PROPERTY_HISTORY AS T3 ON T2.user_id = T3.user_id GROUP BY T2.user_id HAVING count(*) <= 1
SELECT heat , name , nation FROM cyclist
SELECT product_name , weight FROM bike ORDER BY price ASC
SELECT max(weight) , min(weight) FROM bike
SELECT count(*) FROM bike WHERE weight > 780
SELECT DISTINCT T1.id , T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bike_id WHERE T2.purchase_year > 2015
SELECT name , RESULT FROM cyclist WHERE nation != 'Russia'
SELECT T1.last_name , T1.user_id FROM USERS AS T1 JOIN USER_SEARCHES AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) <= 2 INTERSECT SELECT T3.last_name , T3.user_id FROM USERS AS T3 JOIN USER_PROPERTY_HISTORY AS T4 ON T3.user_id = T4.user_id GROUP BY T3.user_id HAVING count(*) >= 2
SELECT count(DISTINCT heat) FROM cyclist
SELECT count(*) FROM cyclist WHERE id NOT IN ( SELECT cyclist_id FROM cyclists_own_bikes WHERE purchase_year > 2015 )
SELECT T1.property_type_description , T1.property_type_code FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code GROUP BY T1.property_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.last_name , T1.user_id FROM User_Property_History AS T1 JOIN USERS AS T2 ON T1.user_id = T2.user_id GROUP BY T1.user_id HAVING count(*) >= 2 INTERSECT SELECT T1.user_id , 'NULL' FROM USER_SEARCHES AS T1 GROUP BY T1.user_id HAVING count(*) <= 2
SELECT name , nation , RESULT FROM cyclist WHERE id NOT IN (SELECT T1.cyclist_id FROM cyclists_own_bikes AS T1 JOIN bike AS T2 ON T1.bike_id = T2.id WHERE T2.product_name = 'racing')
SELECT avg(price) FROM bike WHERE material = 'Carbon CC'
SELECT product_name FROM bike WHERE material LIKE '%fiber%'
SELECT T3.cyclist_id , T2.product_name FROM bike AS T2 JOIN cyclists_own_bikes AS T3 ON T2.id = T3.bike_id WHERE product_name = racing GROUP BY T3.cyclist_id HAVING count(*) >= 4
SELECT DISTINCT T3.product_name FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id JOIN bike AS T3 ON T2.bike_id = T3.id WHERE T1.nation = 'Russia' OR T1.nation = 'Great Britain'
SELECT ID , FlAVOR FROM goods WHERE Food = Cake ORDER BY price DESC LIMIT 1
SELECT id , flavor FROM goods WHERE food = cookie ORDER BY price LIMIT 1
SELECT id FROM goods WHERE food = Desserts AND flavor = apple
SELECT id FROM goods WHERE flavor = apple
SELECT id FROM goods WHERE price < 3
SELECT id FROM goods WHERE price < 3
SELECT count(*) , T1.id FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclist_id GROUP BY T1.id ORDER BY T1.id
SELECT DISTINCT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T3.Receipt = T2.receiptnumber JOIN goods AS T4 ON T3.Item = T4.id WHERE T4.flavor = lemon AND T4.food = cake
SELECT DISTINCT T2.product_name FROM cyclists AS T1 JOIN cyclists_own_bikes AS T3 ON T1.id = T3.cyclist_id JOIN bike AS T2 ON T2.id = T3.bike_id WHERE T1.name = austria AND T1.result > 421.558
SELECT T2.id , T1.name FROM (SELECT T3.cyclistid , count(*) FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id = T2.bikeid JOIN cyclist AS T3 ON T2.cyclistid = T3.id GROUP BY T3.cyclistid ORDER BY count(*) DESC LIMIT 1) AS T4 JOIN cyclist AS T1 ON T4.cyclistid = T1.id JOIN cyclists_own_bikes AS T2 ON T1.id = T2.cyclistid
SELECT DISTINCT T1.CustomerId FROM receipts AS T1 JOIN customers AS T2 ON T1.CustomerId = T2.Id JOIN items AS T3 ON T3.Receipt = T1.ReceiptNumber JOIN goods AS T4 ON T4.id = T3.Item WHERE T4.flavor = Lemon
SELECT t1.flavor , min(t1.price) FROM goods AS t1 JOIN items AS t2 ON t1.id = t2.item WHERE t2.food = cookie
SELECT T1.Flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.id WHERE T1.Food = cake ORDER BY T1.Price DESC LIMIT 1
SELECT DISTINCT customerId FROM receipts GROUP BY CustomerId HAVING count(*) >= 15
SELECT count(*) FROM goods WHERE FLAVOR = Cake
SELECT t1.name , t1.price FROM bike AS t1 JOIN cyclists_own_bikes AS t2 ON t2.bike_id = t1.id JOIN cyclist AS t3 ON t2.cyclist_id = t3.id WHERE t3.name = Bradley Wiggins INTERSECT SELECT t1.name , t1.price FROM bike AS t1 JOIN cyclists_own_bikes AS t2 ON t2.bike_id = t1.id JOIN cyclist AS t3 ON t2.cyclist_id = t3.id WHERE t3.name = Antonio Tauler
SELECT T1.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.Id = T2.CustomerId JOIN items AS T3 ON T3.Receipt = T2.ReceiptNumber JOIN goods AS T4 ON T4.id = T3.Item GROUP BY T1.LastName HAVING count(*) > 10 AND T4.Food = bakery
SELECT count(DISTINCT food) FROM goods WHERE food = 'cake'
SELECT DISTINCT T1.flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.food = Croissant
SELECT DISTINCT T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T3.receipt = T2.receiptnumber JOIN goods AS T4 ON T3.item = T4.id WHERE T4.food = bakery GROUP BY T1.lastname HAVING count(*) > 10
SELECT avg(Price) , max(Price) , min(Price) FROM goods GROUP BY Food
SELECT DISTINCT T1.flavor FROM goods AS T1 JOIN items AS T2 JOIN receipts AS T3 ON T1.id = T2.item AND T3.date LIKE 2013-12-% AND T3.customerid = G1
SELECT DISTINCT T1.item FROM items AS T1 JOIN receipts AS T2 ON T1.receipt = T2.receiptnumber JOIN customers AS T3 ON T2.customerid = T3.id WHERE T3.id = 15
SELECT DISTINCT T3.Item FROM customers AS T1 JOIN receipts AS T2 ON T1.Id = T2.CustomerId JOIN items AS T3 ON T3.Receipt = T2.ReceiptNumber WHERE T2.CustomerId = 15
SELECT avg(price) , min(price) , max(price) , Food FROM goods GROUP BY Food
SELECT count(*) , T3.food FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T2.receiptnumber = T3.receipt GROUP BY T3.food
SELECT T1.id FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T2.receipt = T3.receipt JOIN goods AS T4 ON T3.id = T4.id WHERE T4.food = bakery GROUP BY T1.id HAVING count(*) >= 15
SELECT T3.food , count(*) FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id JOIN items AS T3 ON T1.receiptnumber = T3.receipt GROUP BY T3.food
SELECT T3.ReceiptNumber FROM receipts AS T3 JOIN items AS T1 JOIN goods AS T2 ON T3.ReceiptNumber = T1.Receipt AND T1.item = T2.id WHERE T2.food = Cake INTERSECT SELECT T3.ReceiptNumber FROM receipts AS T3 JOIN items AS T1 JOIN goods AS T2 ON T3.ReceiptNumber = T1.Receipt AND T1.item = T2.id WHERE T2.food = Cookie
SELECT DISTINCT T3.receiptnumber FROM customers AS T1 JOIN receipts AS T3 ON T1.id = T3.customerid JOIN items AS T2 ON T2.receipt = T3.receiptnumber JOIN goods AS T4 ON T4.id = T2.item WHERE T1.lastname = LOGAN AND T4.food = Croissant
SELECT item FROM items GROUP BY item ORDER BY count(*) ASC LIMIT 1
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN customers AS T2 ON T1.CustomerId = T2.Id JOIN items AS T3 ON T3.Receipt = T1.ReceiptNumber JOIN goods AS T4 ON T3.Item = T4.id WHERE T2.lastname = Logan AND T4.food = croissant
SELECT count(*) , Food FROM goods GROUP BY Food
SELECT count(*) , food FROM goods GROUP BY food
SELECT AVG(Price) , Food FROM goods GROUP BY Food
SELECT avg(price) , food FROM goods GROUP BY food
SELECT T2.Item , count(*) FROM receipts AS T1 JOIN items AS T2 ON T1.Receiptnumber = T2.Receipt GROUP BY T2.Item ORDER BY count(*) LIMIT 1
SELECT id FROM Goods WHERE price < 5 AND FLAVOR = Apricot
SELECT id FROM goods WHERE flavor = Apricot AND price < 5
SELECT T1.ReceiptNumber , T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt JOIN goods AS T3 ON T2.Item = T3.id ORDER BY T3.price DESC LIMIT 1
SELECT flavor FROM goods WHERE price > 10 AND food = cake
SELECT FLAVOR FROM goods WHERE food = cakes AND price > 10
SELECT DISTINCT id , price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT T3.ReceiptNumber , T3.Date FROM items AS T1 JOIN goods AS T2 ON T1.item = T2.id JOIN receipts AS T3 ON T3.ReceiptNumber = T1.receipt GROUP BY T1.receipt ORDER BY max(T2.price) ASC LIMIT 1
SELECT DISTINCT id , price FROM goods WHERE price < (SELECT avg(price) FROM goods)
SELECT DISTINCT id FROM goods WHERE price < (SELECT min(price) FROM goods WHERE food = Tart )
SELECT DISTINCT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt JOIN goods AS T3 ON T3.id = T2.item WHERE T3.price > 13
SELECT id FROM goods WHERE id LIKE %APP%
SELECT price FROM goods WHERE id = 70
SELECT DISTINCT T3.date FROM customers AS T1 JOIN receipts AS T3 ON T1.id = T3.customerid JOIN items AS T2 ON T2.receipt = T3.receiptnumber JOIN goods AS T4 ON T4.id = T2.item WHERE T4.price > 15 GROUP BY T3.date
SELECT id FROM goods WHERE id LIKE %APP%
SELECT DISTINCT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE Food = Tart )
SELECT DISTINCT item FROM items ORDER BY item
SELECT id , price FROM goods WHERE id = 70
SELECT T2.Item FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt ORDER BY T2.Ordinal
SELECT DISTINCT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt JOIN goods AS T3 ON T2.Item = T3.Id WHERE T3.Price > 13
SELECT DISTINCT lastName FROM customers ORDER BY lastName
SELECT DISTINCT lastName FROM customers ORDER BY lastName
SELECT receiptnumber , date FROM receipts ORDER BY date DESC LIMIT 1
SELECT Date , ReceiptNumber FROM receipts ORDER BY Date DESC LIMIT 1
SELECT DISTINCT T4.ReceiptNumber FROM customers AS t1 JOIN receipts AS T4 ON t1.Id = T4.CustomerId JOIN items AS T2 ON T4.ReceiptNumber = T2.Receipt JOIN goods AS T3 ON T2.Item = T3.Id WHERE T3.Food = apple OR t1.id = 12
SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN customers AS T2 ON T1.CustomerId = T2.Id WHERE T2.id = 12 UNION SELECT T3.ReceiptNumber FROM receipts AS T3 JOIN items AS T4 ON T3.ReceiptNumber = T4.Receipt JOIN goods AS T5 ON T4.Item = T5.id WHERE T5.flavor = apple
SELECT DISTINCT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber = T2.Receipt JOIN goods AS T3 ON T2.Item = T3.id WHERE T3.Price > 10 OR T1.date = (SELECT min(date) FROM receipts)
SELECT T3.ReceiptNumber FROM receipts AS T3 JOIN items AS T2 ON T3.ReceiptNumber = T2.ReceiptNumber WHERE T2.Item IN (SELECT T1.id FROM goods AS T1 WHERE T1.food = cake ) INTERSECT SELECT T3.ReceiptNumber FROM receipts AS T3 JOIN items AS T2 ON T3.ReceiptNumber = T2.ReceiptNumber WHERE T2.Item IN (SELECT T1.id FROM goods AS T1 WHERE T1.food = cookie )
SELECT id FROM goods WHERE price BETWEEN 3 AND 7 AND Food = Cookie OR Food = Cake
SELECT id FROM goods WHERE price BETWEEN 3 AND 7 AND food = Cookie UNION SELECT id FROM goods WHERE price BETWEEN 3 AND 7 AND food = Cake
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid ORDER BY T2.date ASC LIMIT 1
SELECT avg(price) FROM goods WHERE flavor = blackberry OR flavor = blueberry
SELECT T2.FirstName , T2.LastName FROM receipts AS T1 JOIN customers AS T2 ON T1.CustomerId = T2.Id WHERE T1.Date = (SELECT min(Date) FROM receipts)
SELECT avg(Price) FROM goods WHERE flavor = blackberry OR flavor = blueberry
SELECT min(Price) , max(Price) FROM goods ORDER BY Food
SELECT max(price) , min(price) , avg(price) , flavor FROM goods GROUP BY flavor ORDER BY max(price) , min(price) , avg(price) , flavor
SELECT min(Price) , max(Price) , Food FROM goods GROUP BY Food ORDER BY Food
SELECT max(Price) , min(Price) , avg(Price) , Flavor FROM goods GROUP BY Flavor ORDER BY Flavor
SELECT date FROM receipts GROUP BY date ORDER BY count(*) DESC LIMIT 3
SELECT date FROM receipts GROUP BY date ORDER BY count(*) DESC LIMIT 3
SELECT price FROM goods WHERE flavor = 'cheese' ORDER BY price ASC LIMIT 1
SELECT T4.date FROM receipts AS T4 JOIN customers AS T2 ON T4.customerid = T2.id JOIN items AS T1 ON T1.receipt = T4.receipt JOIN goods AS T3 ON T1.id = T3.id WHERE T3.price > 15
SELECT T1.firstname , T1.lastname , count(*) FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid GROUP BY T1.firstname , T1.lastname ORDER BY count(*) DESC LIMIT 1
SELECT T1.CustomerId , count(*) FROM receipts AS T1 GROUP BY T1.CustomerId ORDER BY count(*) DESC LIMIT 1
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T3.receipt = T2.receiptnumber JOIN goods AS T4 ON T4.id = T3.item WHERE T4.flavor = apple AND T4.food = Tart
SELECT T1.firstname , T1.lastname FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.customerid JOIN items AS T3 ON T3.receipt = T2.receiptnumber JOIN goods AS T4 ON T4.id = T3.item WHERE T4.food = Tarts AND T4.flavor = apple
SELECT id FROM goods WHERE price < (SELECT max(price) FROM goods WHERE Food = Croissant )
SELECT id FROM goods WHERE food = Tart INTERSECT SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE food = Tart )
SELECT T4.receiptnumber FROM items AS T1 JOIN customers AS T2 ON T1.receipt = T2.ReceiptNumber JOIN goods AS T3 ON T1.Item = T3.id JOIN receipts AS T4 ON T4.receiptnumber = T1.receipt WHERE T3.price > 10 UNION SELECT receiptnumber FROM receipts ORDER BY date LIMIT 1
SELECT count(*) , T1.Date FROM receipts AS T1 GROUP BY T1.Date
SELECT id FROM goods WHERE price >= (SELECT avg(price) FROM goods WHERE food = Tart )
SELECT id , food , price FROM goods ORDER BY price
SELECT T3.Food FROM customers AS T1 JOIN receipts AS T2 ON T1.id = T2.CustomerId JOIN items AS T3 ON T2.ReceiptNumber = T3.Receipt GROUP BY T2.ReceiptNumber ORDER BY min(T3.price) DESC LIMIT 1
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods) * 2
SELECT count(DISTINCT t1.customerid) , t1.date FROM receipts AS t1 GROUP BY t1.date
SELECT id , flavor , food FROM goods ORDER BY price
SELECT id FROM goods WHERE price > (SELECT avg(price) FROM goods) * 2
SELECT id , flavor FROM goods WHERE food = cake ORDER BY flavor
SELECT T1.id , T1.flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item WHERE T1.food = Cake ORDER BY T1.flavor
SELECT T1.Flavor , count(*) FROM goods AS T1 JOIN items AS T2 ON T1.Id = T2.ITEM WHERE T1.Food = Chocolate GROUP BY T1.Flavor HAVING count(*) <= 10
SELECT item FROM receipts AS T1 JOIN items AS T2 ON T1.receiptnumber = T2.receipt JOIN goods AS T3 ON T3.id = T2.Item WHERE T3.flavor = chocolate GROUP BY item HAVING count(*) <= 10
SELECT t1.flavor , count(*) FROM goods AS t1 JOIN items AS t2 ON t1.id = t2.item GROUP BY t1.id ORDER BY count(*) DESC LIMIT 3
SELECT T1.Id FROM customers AS T1 JOIN receipts AS T2 ON T1.Id = T2.CustomerId JOIN items AS T3 ON T3.Receipt = T2.ReceiptNumber JOIN goods AS T4 ON T4.Id = T3.Item GROUP BY T1.Id HAVING sum(T4.Price) > 150
SELECT T1.flavor FROM goods AS T1 WHERE T1.food = Cake EXCEPT SELECT T1.flavor FROM goods AS T1 WHERE T1.food = Tart
SELECT T1.id FROM goods AS T1 JOIN on T1.id = T2.id WHERE T1.food = cooke INTERSECT SELECT T1.id FROM goods AS T1 JOIN on T1.id = T2.id WHERE T1.food = croissant
SELECT T3.Date FROM receipts AS T3 JOIN items AS T1 JOIN goods AS T2 ON T3.ReceiptNumber = T1.Receipt AND T1.Item = T2.id GROUP BY T3.ReceiptNumber HAVING sum(T2.price) > 100
SELECT T1.flavor FROM goods AS T1 JOIN items AS T2 ON T1.id = T2.item GROUP BY T1.id ORDER BY count(*) DESC LIMIT 3
SELECT count(*) FROM driver
SELECT count(*) FROM driver
SELECT count(*) , make FROM driver WHERE Points > 150 GROUP BY make
SELECT avg(Age) , Make FROM driver GROUP BY Make
SELECT T2.Date FROM items AS T1 JOIN receipts AS T2 ON T1.receipt = T2.receiptnumber JOIN goods AS T3 ON T1.item = T3.id GROUP BY T2.receiptnumber HAVING sum(T3.price) > 100
SELECT count(*) , T3.Team FROM team_driver AS T1 JOIN driver AS T2 ON T1.Driver_ID = T2.Driver_ID JOIN team AS T3 ON T1.Team_ID = T3.Team_ID WHERE T2.Points > 150 GROUP BY T2.Make
SELECT avg(Age) , Make FROM driver GROUP BY Make
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT Manager , Sponsor FROM Team ORDER BY Car_Owner
SELECT avg(Laps) FROM driver WHERE Age < 20
SELECT Manager , Sponsor FROM team ORDER BY Car_Owner
SELECT T3.id , T3.food FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id JOIN items AS T3 ON T3.receipt = T1.receipt JOIN goods AS T4 ON T3.id = T4.id GROUP BY T4.id HAVING avg(T4.price) > 5
SELECT T1.customerid FROM receipts AS T1 JOIN customers AS T2 ON T1.customerid = T2.id JOIN items AS T3 ON T1.receiptnumber = T3.receipt WHERE T3.food != Good GROUP BY T1.customerid HAVING avg(T3.price) > 5
SELECT T1.Make FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID JOIN driver AS T3 ON T2.Driver_ID = T3.Driver_ID GROUP BY T3.Make HAVING COUNT(*) > 1
SELECT T1.CustomerId FROM receipts AS T1 JOIN customers AS T2 ON T1.CustomerId = T2.Id JOIN items AS T3 ON T3.receipt = T1.receipt JOIN goods AS T4 ON T4.id = T3.id GROUP BY T1.CustomerId HAVING sum(T4.price) > 150
SELECT DISTINCT T1.flavor FROM T1 JOIN items AS T2 ON T1.id = T2.id WHERE T2.food = Cake EXCEPT SELECT DISTINCT T1.flavor FROM T1 JOIN items AS T2 ON T1.id = T2.id WHERE T2.food = Tart
SELECT T2.Make FROM team AS T1 JOIN driver AS T2 ON T1.Team_ID = T3.Team_ID JOIN team_driver AS T3 ON T2.Driver_ID = T3.Driver_ID WHERE T1.Team = Buddy Arrington GROUP BY T1.Team_ID
SELECT Driver FROM driver ORDER BY Age ASC
SELECT max(Points) , min(Points) FROM driver
SELECT count(*) FROM driver WHERE Points < 150
SELECT max(Points) , min(Points) FROM driver
SELECT Make FROM team GROUP BY Make HAVING count(*) > 1
SELECT Driver , Country FROM driver
SELECT Driver FROM driver ORDER BY Points DESC
SELECT Driver FROM driver ORDER BY Points DESC
SELECT Driver FROM driver ORDER BY Age ASC
SELECT Driver , Country FROM DRIVER
SELECT count(*) FROM driver WHERE Points < 150
SELECT avg(T2.Age) FROM country AS T1 JOIN driver AS T2 ON T1.Country_ID = T2.Country WHERE T1.Official_native_language = English
SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_ID = T2.Country WHERE T2.Points > 150 GROUP BY T1.Country
SELECT max(T2.Points) FROM country AS T1 JOIN driver AS T2 ON T1.Country_ID = T2.Country WHERE T1.Capital = Dublin
SELECT avg(T1.Age) FROM driver AS T1 JOIN country AS T2 ON T1.Country = T2.Country_ID WHERE T2.Official_native_language = English
SELECT max(T1.Points) FROM driver AS T1 JOIN country AS T2 ON T1.Country = T2.Country_ID WHERE T2.Capital = Dublin
SELECT T1.Make FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID JOIN driver AS T3 ON T2.Driver_ID = T3.Driver_ID WHERE T3.Driver = Buddy Arrington
SELECT T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Country_ID = T2.Country ORDER BY T2.Points DESC LIMIT 1
SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_ID = T2.Country WHERE T2.Points > 150
SELECT Make , COUNT(*) FROM driver GROUP BY Make
SELECT make , count(*) FROM driver GROUP BY make
SELECT T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Country_id = T2.Country ORDER BY T2.Points DESC LIMIT 1
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT Make FROM driver GROUP BY Make HAVING count(*) >= 3
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT (*) DESC LIMIT 1
SELECT Team FROM team EXCEPT SELECT T1.Team FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID
SELECT Make FROM driver GROUP BY Make HAVING count(*) >= 3
SELECT Country FROM country WHERE Country_id NOT IN (SELECT Country FROM driver)
SELECT Team FROM team EXCEPT SELECT T1.Team FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID
SELECT sum(Points) , avg(Points) FROM driver
SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_ID = T2.Country WHERE T2.Make = Dodge INTERSECT SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_ID = T2.Country WHERE T2.Make = Chevrolet
SELECT sum(Points) , avg(Points) FROM driver
SELECT Country FROM country WHERE Country_ID NOT IN (SELECT Country FROM driver)
SELECT Country FROM driver WHERE Make = Chevrolet INTERSECT SELECT Country FROM driver WHERE Make = Dodge
SELECT T2.manager , T2.sponsor FROM team_driver AS T1 JOIN team AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM institution
SELECT count(*) FROM institution
SELECT Name FROM institution ORDER BY Name ASC
SELECT T2.manager , T2.car_owner FROM team_driver AS T1 JOIN team AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id HAVING count(Driver_ID) >= 2
SELECT T1.manager , T1.car_owner FROM team AS T1 JOIN team_driver AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.team_id HAVING count(*) >= 2
SELECT T2.Manager , T2.Sponsor FROM team_driver AS T1 JOIN team AS T2 ON T1.Team_ID = T2.Team_ID GROUP BY T1.Team_ID ORDER BY count(T2.Team) DESC LIMIT 1
SELECT Name FROM institution ORDER BY Name
SELECT Name FROM institution ORDER BY Founded
SELECT Name FROM institution ORDER BY Founded
SELECT City , Province FROM institution
SELECT City , Province FROM institution
SELECT stadium FROM institution ORDER BY capacity DESC
SELECT DISTINCT affiliation FROM institution WHERE city != Vancouver
SELECT max(Enrollment) , min(Enrollment) FROM institution
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1
SELECT max(Enrollment) , min(Enrollment) FROM institution
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT Affiliation FROM institution EXCEPT SELECT Affiliation FROM institution WHERE City = Vancouver
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1
SELECT T1.Name FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T2.Number_of_Championships DESC
SELECT T1.Name , T2.Nickname FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID
SELECT T2.Name FROM championship AS T1 JOIN institution AS T2 ON T1.Institution_ID = T2.Institution_ID ORDER BY T1.Number_of_Championships DESC
SELECT T2.Name , T1.Nickname FROM championship AS T1 JOIN institution AS T2 ON T1.Institution_ID = T2.Institution_ID
SELECT T2.Name FROM championship AS T1 JOIN institution AS T2 ON T1.Institution_ID = T2.Institution_ID GROUP BY T1.Institution_ID HAVING count(*) >= 1
SELECT T2.name FROM championship AS T1 JOIN institution AS T2 ON T1.institution_id = T2.Institution_ID GROUP BY T1.institution_id HAVING count(*) >= 1
SELECT Affiliation , COUNT(*) FROM institution GROUP BY Affiliation
SELECT sum(T2.Number_of_Championships) FROM institution AS T1 JOIN championship AS T2 ON T1.Institution_ID = T2.Institution_ID WHERE T1.Affiliation = Public
SELECT t2.nickname FROM institution AS t1 JOIN championship AS t2 ON t1.Institution_ID = t2.Institution_ID ORDER BY t1.Enrollment ASC LIMIT 1
SELECT count(*) , affiliation FROM institution GROUP BY affiliation
SELECT founded , count(*) FROM institution GROUP BY founded HAVING count(*) > 1
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.nickname FROM championship AS T1 JOIN institution AS T2 ON T1.institution_id = T2.institution_id ORDER BY T2.Capacity DESC
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY count(*) DESC LIMIT 1
SELECT founded FROM institution GROUP BY founded HAVING count(*) > 1
SELECT t2.nickname FROM institution AS t1 JOIN championship AS t2 ON t1.institution_id = t2.institution_id ORDER BY t1.enrollment ASC LIMIT 1
SELECT sum(t1.Number_of_Championships) FROM institution AS t2 JOIN championship AS t1 ON t2.Institution_ID = t1.Institution_ID WHERE t2.Affiliation = 'Public'
SELECT Enrollment FROM institution WHERE City = Vancouver OR City = Calgary
SELECT sum(Enrollment) FROM institution WHERE City = Vancouver OR City = Calgary
SELECT count(DISTINCT province) FROM institution
SELECT Province FROM institution WHERE Founded < 1920 INTERSECT SELECT Province FROM institution WHERE Founded > 1950
SELECT DISTINCT Province FROM institution WHERE founded < 1920 EXCEPT SELECT DISTINCT Province FROM institution WHERE founded > 1950
SELECT T2.Nickname FROM institution AS T1 JOIN championship AS T2 ON T1.institution_id = T2.institution_id ORDER BY T1.capacity DESC
SELECT count(DISTINCT Province) FROM institution
SELECT * FROM warehouses
SELECT * FROM warehouses
SELECT DISTINCT Contents FROM Boxes WHERE Value > 150
SELECT DISTINCT T2.Contents FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.Warehouse WHERE T1.Location = New York
SELECT DISTINCT T2.Contents FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T1.location = New York
SELECT Contents FROM Boxes WHERE value > 150
SELECT AVG(Value) , Warehouse FROM Boxes GROUP BY Warehouse
SELECT avg(value) , sum(value) FROM boxes
SELECT avg(value) , sum(value) FROM boxes
SELECT warehouse , avg(value) FROM boxes GROUP BY warehouse
SELECT avg(capacity) , sum(capacity) FROM warehouses
SELECT max(Value) , avg(Value) FROM Boxes GROUP BY Contents
SELECT avg(capacity) , sum(capacity) FROM warehouses
SELECT avg(value) FROM boxes
SELECT Contents FROM Boxes ORDER BY Value DESC LIMIT 1
SELECT avg(Value) FROM boxes
SELECT avg(value) , max(value) , contents FROM boxes GROUP BY contents
SELECT DISTINCT Contents FROM Boxes
SELECT count(DISTINCT contents) FROM boxes
SELECT count(DISTINCT Contents) FROM Boxes
SELECT DISTINCT contents FROM boxes
SELECT DISTINCT location FROM warehouses
SELECT DISTINCT LOCATION FROM WAREHOUSES
SELECT DISTINCT T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.Warehouse = T2.code WHERE T2.location = Chicago OR T2.location = New York
SELECT T2.code FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T1.location = Chicago OR T1.location = New York
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = Chicago OR T2.location = New York
SELECT sum(t1.value) FROM boxes AS t1 JOIN warehouses AS t2 ON t1.warehouse = t2.code WHERE t2.location = Chicago OR t2.location = New York
SELECT T2.Contents FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.Code = T2.Warehouse WHERE T1.Location = Chicago UNION SELECT T2.Contents FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.Code = T2.Warehouse WHERE T1.Location = New York
SELECT T1.Contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.Warehouse = T2.Code WHERE T2.Location = 'Chicago' INTERSECT SELECT T1.Contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.Warehouse = T2.Code WHERE T2.Location = 'New York'
SELECT sum(value) , contents FROM boxes GROUP BY contents ORDER BY sum(value) DESC LIMIT 1
SELECT T1.Contents FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.code WHERE T2.location != New York
SELECT DISTINCT T2.Contents FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T1.location != New York EXCEPT SELECT DISTINCT T2.Contents FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T1.location = New York
SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T1.contents = Rocks OR T1.contents = Scissors
SELECT T1.Location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.Code = T2.Warehouse WHERE T2.Contents = Rocks EXCEPT SELECT T1.Location FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.Code = T2.Warehouse WHERE T2.Contents = Scissors
SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.Warehouse = T2.code WHERE T1.Contents = Rocks EXCEPT SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.Warehouse = T2.code WHERE T1.Contents = Scissors
SELECT code , contents FROM boxes ORDER BY value
SELECT code , contents FROM Boxes ORDER BY VALUE
SELECT code , contents FROM boxes ORDER BY value ASC LIMIT 1
SELECT T2.Location FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.code WHERE T1.Contents = 'Rocks' INTERSECT SELECT T2.Location FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.code WHERE T1.Contents = 'Scissors'
SELECT DISTINCT warehouse FROM boxes WHERE contents = Rocks OR contents = Scissors
SELECT code , contents FROM boxes ORDER BY value LIMIT 1
SELECT DISTINCT Contents FROM Boxes ORDER BY Contents
SELECT Code FROM Boxes WHERE value > ( SELECT max(value) FROM Boxes WHERE Contents = Rocks )
SELECT code , contents FROM boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = Scissors )
SELECT DISTINCT Contents FROM Boxes WHERE Value > (SELECT avg(Value) FROM Boxes)
SELECT code FROM Boxes WHERE value > (SELECT max(value) FROM boxes WHERE contents = 'Rocks')
SELECT DISTINCT T2.Contents FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.Code = T2.Warehouse WHERE T2.Value > (SELECT avg(Value) FROM Boxes)
SELECT DISTINCT T2.Location FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.code WHERE T1.Contents = Rocks INTERSECT SELECT DISTINCT T2.Location FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.Warehouse = T2.code WHERE T1.Contents = Scissors
SELECT distinct(Contents) FROM Boxes ORDER BY Contents
SELECT warehouse , avg(value) FROM boxes GROUP BY warehouse HAVING avg(value) > 150
SELECT sum(value) , count(*) , contents FROM boxes GROUP BY contents
SELECT avg(value) , warehouse FROM boxes GROUP BY warehouse HAVING avg(value) > 150
SELECT sum(t2.value) FROM warehouses AS t1 JOIN boxes AS t2 ON t1.code = t2.warehouse WHERE t1.capacity = (SELECT max(capacity) FROM warehouses)
SELECT sum(t1.value) FROM boxes AS t1 JOIN warehouses AS t2 ON t1.warehouse = t2.code ORDER BY t2.capacity DESC LIMIT 1
SELECT avg(capacity) , max(capacity) , sum(capacity) , location FROM warehouses GROUP BY location
SELECT sum(capacity) , avg(capacity) , max(capacity) , Location FROM Warehouses GROUP BY Location
SELECT sum(value) , count(*) , contents FROM boxes GROUP BY contents
SELECT sum(capacity) FROM warehouses
SELECT max(T1.value) , T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T2.location
SELECT sum(capacity) FROM warehouses
SELECT warehouse , count(*) FROM boxes GROUP BY warehouse
SELECT max(t1.value) , t2.location FROM boxes AS t1 JOIN warehouses AS t2 ON t1.warehouse = t2.code GROUP BY t2.location
SELECT count(DISTINCT warehouse) FROM boxes WHERE Contents = Rocks
SELECT count(*) , warehouse FROM boxes GROUP BY warehouse
SELECT DISTINCT T1.code , T1.Contents FROM Boxes AS T1 JOIN Boxes AS T2 ON T1.code = T2.code WHERE T1.Code != T2.code AND T1.Contents = 'Scissors' AND T1.value > (SELECT max(value) FROM boxes WHERE T1.contents = 'scissors')
SELECT T1.code , T2.Location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.Warehouse = T2.code
SELECT count(DISTINCT T1.location) FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse WHERE T2.contents = Rocks
SELECT T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location = Chicago
SELECT T1.code , T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code
SELECT code FROM warehouses WHERE capacity < 1
SELECT count(*) , warehouse FROM boxes GROUP BY warehouse
SELECT T2.code FROM Warehouses AS T1 JOIN Boxes AS T2 ON T1.code = T2.warehouse WHERE T1.location = Chicago
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location != Chicago
SELECT count(DISTINCT Contents) , Warehouse FROM Boxes GROUP BY Warehouse
SELECT T1.code FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse GROUP BY T1.code HAVING count(*) > T1.capacity
SELECT count(*) , T1.code FROM warehouses AS T1 JOIN boxes AS T2 ON T1.code = T2.warehouse GROUP BY T1.code
SELECT count(DISTINCT T1.contents) , T1.warehouse FROM Boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse = T2.code GROUP BY T1.warehouse
SELECT University_Name , City , State FROM university ORDER BY University_Name
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse = T2.code WHERE T2.location != Chicago
SELECT University_Name , City , State FROM university ORDER BY University_Name
SELECT max(enrollment) , avg(enrollment) , min(enrollment) FROM university
SELECT count(*) FROM university WHERE State = Illinois OR State = Ohio
SELECT count(*) FROM university WHERE State = Illinois OR State = Ohio
SELECT max(Enrollment) , avg(Enrollment) , min(Enrollment) FROM university
SELECT State FROM university GROUP BY State ORDER BY count(*) DESC LIMIT 1
SELECT Team_Name FROM university GROUP BY University_Name HAVING Enrollment > (SELECT avg(Enrollment) FROM university)
SELECT DISTINCT Home_Conference FROM university
SELECT Team_Name FROM university WHERE Enrollment > (SELECT avg(Enrollment) FROM university)
SELECT DISTINCT home_conference FROM university
SELECT home_conference , count(*) FROM university GROUP BY home_conference
SELECT home_conference , count(*) FROM university GROUP BY home_conference
SELECT STATE FROM university GROUP BY STATE ORDER BY count(*) DESC LIMIT 1
SELECT home_conference FROM university GROUP BY home_conference HAVING avg(Enrollment) > 2000
SELECT home_conference FROM university GROUP BY home_conference ORDER BY sum(enrollment) LIMIT 1
SELECT Home_Conference FROM university GROUP BY Home_Conference ORDER BY SUM(Enrollment) ASC LIMIT 1
SELECT major_name , major_code FROM major ORDER BY major_code
SELECT Major_Name , Major_Code FROM major ORDER BY Major_Code
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T2.rank = 1 GROUP BY T1.University_Name ORDER BY count(*) DESC LIMIT 1
SELECT t1.University_Name , t1.city , t1.State FROM university AS t1 JOIN major_ranking AS t2 ON t1.University_ID = t2.University_ID JOIN major AS t3 ON t2.Major_ID = t3.Major_ID WHERE t3.Major_Name = Accounting AND t2.rank = 1
SELECT university_name FROM university EXCEPT SELECT T2.university_name FROM major_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID WHERE T1.rank = 1
SELECT T2.University_Name FROM major_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID WHERE T1.Rank = 1 GROUP BY T2.University_Name ORDER BY count(*) DESC LIMIT 1
SELECT home_conference FROM university GROUP BY home_conference HAVING avg(enrollment) > 2000
SELECT T1.university_name , T1.city , T1.state FROM university AS T1 JOIN major_ranking AS T2 ON T1.university_id = T2.university_id JOIN major AS T3 ON T2.major_id = T3.major_id WHERE T3.major_name = Accounting ORDER BY T2.rank LIMIT 1
SELECT T2.University_Name , T1.rank FROM overall_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID WHERE T2.State = Wisconsin
SELECT university_name FROM university EXCEPT SELECT T1.university_name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T2.rank = 1
SELECT T2.University_Name FROM overall_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID ORDER BY T1.Reputation_point DESC LIMIT 1
SELECT T2.Rank , T3.Major_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T2.Major_ID = T3.Major_ID WHERE T1.University_Name = Augustana College
SELECT t2.major_name , t1.rank FROM major_ranking AS t1 JOIN major AS t2 ON t1.major_id = t2.major_id JOIN university AS t3 ON t3.university_id = t1.university_id WHERE t3.university_name = Augustana College
SELECT T2.University_Name FROM major_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T1.Major_ID = T3.Major_ID WHERE T3.Major_Name = Accounting INTERSECT SELECT T2.University_Name FROM major_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T1.Major_ID = T3.Major_ID WHERE T3.Major_Name = Urban Education
SELECT T2.University_Name FROM overall_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID ORDER BY T1.Reputation_point
SELECT T2.University_Name FROM overall_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID ORDER BY T1.Research_point DESC LIMIT 1
SELECT T1.University_Name FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID ORDER BY T2.Reputation_point
SELECT sum(T2.Enrollment) FROM overall_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID WHERE T1.rank <= 5
SELECT T3.university_name FROM major_ranking AS T1 JOIN major AS T2 ON T1.major_id = T2.major_id JOIN university AS T3 ON T1.university_id = T3.university_id WHERE T2.major_name = Accounting AND T1.rank >= 3
SELECT T2.University_Name , T1.Rank FROM overall_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID WHERE T2.State = Wisconsin
SELECT sum(T1.Enrollment) FROM university AS T1 JOIN overall_ranking AS T2 ON T1.University_ID = T2.University_ID WHERE T2.rank <= 5
SELECT state FROM university WHERE enrollment < 3000 GROUP BY state HAVING count(*) > 2
SELECT DISTINCT t5.university_name FROM major_ranking AS t1 JOIN university AS t5 ON t1.University_ID = t5.University_ID JOIN major AS t3 ON t1.major_id = t3.major_id JOIN overall_ranking AS t2 ON t5.University_ID = t2.University_ID WHERE t1.Rank >= 3 AND t3.major_name = Accounting
SELECT T2.University_Name , T1.Citation_point FROM overall_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID ORDER BY T1.Reputation_point DESC LIMIT 3
SELECT T1.Reputation_point , T2.University_Name FROM overall_ranking AS T1 JOIN university AS T2 ON T1.University_ID = T2.University_ID ORDER BY T1.Reputation_point DESC LIMIT 3
SELECT state FROM university WHERE enrollment < 3000 GROUP BY state HAVING count(*) > 2
SELECT title FROM movies EXCEPT SELECT title FROM movies WHERE rating !=
SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T3.major_id = T2.major_id WHERE T3.major_name = Accounting INTERSECT SELECT T1.University_Name FROM university AS T1 JOIN major_ranking AS T2 ON T1.University_ID = T2.University_ID JOIN major AS T3 ON T3.major_id = T2.major_id WHERE T3.major_name = Urban Education
SELECT title FROM Movies WHERE rating = 'G'
SELECT title FROM Movies WHERE Rating = 'G'
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.code WHERE T1.name = Odeon
SELECT T2.title , T1.name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.code WHERE T1.Name = Odeon
SELECT title FROM Movies WHERE code NOT IN (SELECT movie FROM MovieTheaters)
SELECT T2.title , T1.name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code
SELECT count(*) FROM Movies WHERE Rating = G
SELECT count(*) FROM Movies WHERE Rating = G
SELECT count(*) FROM MovieTheaters
SELECT count(DISTINCT Movie) FROM MovieTheaters
SELECT count(DISTINCT title) FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code = T2.movie
SELECT Rating FROM Movies WHERE Title LIKE '%Citizen%'
SELECT count(DISTINCT T1.title) FROM movies AS T1 JOIN movieTheaters AS T2 ON T1.code = T2.movie
SELECT count(DISTINCT Name) FROM MovieTheaters
SELECT count(DISTINCT name) FROM MovieTheaters
SELECT T2.name FROM Movies AS T1 JOIN MovieTheaters AS T2 ON T1.Code = T2.Movie WHERE T1.Rating = 'G' OR T1.Rating = 'PG'
SELECT T2.title FROM MovieTheaters AS T1 JOIN MOVIES AS T2 ON T1.movie = T2.code WHERE T1.name = Imperial OR T1.name = Odeon
SELECT T2.name FROM movies AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.movie WHERE T1.rating = 'G' OR T1.rating = 'PG'
SELECT title FROM movies ORDER BY title
SELECT T2.title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.code WHERE T1.Name = Odeon OR T1.Name = Imperial
SELECT title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code EXCEPT SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = Odeon
SELECT T2.title FROM movieTheaters AS T1 JOIN movies AS T2 ON T1.Movie = T2.code WHERE T1.name = Odeon INTERSECT SELECT T2.title FROM movieTheaters AS T1 JOIN movies AS T2 ON T1.Movie = T2.code WHERE T1.name = Imperial
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code EXCEPT SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = Odeon
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = Odeon INTERSECT SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T1.Name = Imperial
SELECT title FROM Movies ORDER BY Rating
SELECT T1.name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.movie = T2.code GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T2.Rating FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T2.Title LIKE '%Citizen%'
SELECT title FROM Movies ORDER BY Rating
SELECT Title FROM Movies ORDER BY Title
SELECT T2.name FROM MovieTheaters AS T1 JOIN MovieTheaters AS T2 ON T1.Movie = T2.Movie GROUP BY T1.Movie ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , Rating FROM Movies GROUP BY Rating
SELECT COUNT(*) , Rating FROM Movies GROUP BY Rating
SELECT count(*) FROM Movies WHERE Rating != null
SELECT count(DISTINCT title) FROM MOVIES WHERE rating != null
SELECT DISTINCT T2.name FROM MovieTheaters AS T1 JOIN MovieTheaters AS T2 ON T1.code = T2.code
SELECT DISTINCT name FROM MovieTheaters
SELECT T2.Title FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code GROUP BY T2.Title ORDER BY count(*) DESC LIMIT 1
SELECT name FROM MovieTheaters WHERE code NOT IN (SELECT movie FROM MovieTheaters)
SELECT title FROM Movies
SELECT title FROM Movies
SELECT name FROM MovieTheaters EXCEPT SELECT T1.name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code
SELECT T1.name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T2.rating = G
SELECT title FROM MovieTheaters JOIN Movies ON MovieTheaters.movie = Movies.code GROUP BY title ORDER BY count(*) DESC LIMIT 1
SELECT distinct rating FROM Movies
SELECT DISTINCT Rating FROM Movies
SELECT title FROM Movies WHERE code NOT IN (SELECT movie FROM MovieTheaters)
SELECT * FROM Movies WHERE Rating = null
SELECT * FROM Movies WHERE Rating = 'null'
SELECT DISTINCT title FROM movies WHERE code NOT IN (SELECT movie FROM MovieTheaters)
SELECT T2.Name FROM Package AS T1 JOIN Client AS T2 ON T1.Recipient = T2.AccountNumber ORDER BY Weight DESC LIMIT 1
SELECT T1.name FROM MovieTheaters AS T1 JOIN Movies AS T2 ON T1.Movie = T2.Code WHERE T2.Rating = 'G'
SELECT T2.Name FROM Package AS T1 JOIN Client AS T2 ON T1.Recipient = T2.AccountNumber ORDER BY T1.Weight DESC LIMIT 1
SELECT POSITION FROM Employee WHERE Name = Amy Wong
SELECT Position FROM Employee WHERE Name = Amy Wong
SELECT sum(t2.weight) FROM employee AS t1 JOIN package AS t2 ON t1.employeeid = t2.sender WHERE t1.name = Leo Wong
SELECT salary , POSITION FROM Employee WHERE Name = Turanga Leela
SELECT sum(t2.weight) FROM Client AS t1 JOIN Package AS t2 ON t1.AccountNumber = t2.Sender WHERE t1.Name = Leo Wong
SELECT salary , POSITION FROM Employee WHERE Name = Turanga Leela
SELECT avg(Salary) FROM Employee WHERE POSITION = 'Intern'
SELECT avg(Salary) FROM Employee WHERE Position = intern
SELECT max(t2.Level) FROM Employee AS t1 JOIN Has_clearance AS t2 ON t1.EmployeeID = t2.Employee WHERE t1.Position = Physician
SELECT count(*) FROM Employee AS T1 JOIN Package AS T2 ON T1.EmployeeID = T2.Sender WHERE T1.Name = Leo Wong
SELECT T2.contents FROM Client AS T1 JOIN Package AS T2 ON T1.accountnumber = T2.sender OR T1.accountnumber = T2.recipient WHERE T1.name = Leo Wong
SELECT T3.PackageNumber FROM CLIENT AS T1 JOIN PACKAGE AS T3 ON T1.AccountNumber = T3.Sender JOIN EMPLOYEE AS T2 ON T2.EmployeeID = T3.Recipient WHERE T1.Name = Leo Wong
SELECT count(*) FROM Employee AS T1 JOIN Package AS T2 ON T1.EmployeeID = T2.Sender JOIN Client AS T3 ON T3.AccountNumber = T2.Sender WHERE T1.Name = Ogden Wernstrom INTERSECT SELECT count(*) FROM Employee AS T1 JOIN Package AS T2 ON T1.EmployeeID = T2.Recipient JOIN Client AS T3 ON T3.AccountNumber = T2.Sender WHERE T1.Name = Leo Wong
SELECT T1.PackageNumber FROM Package AS T1 JOIN Client AS T2 ON T1.Sender = T2.AccountNumber JOIN Employee AS T3 ON T3.EmployeeID = T2.AccountNumber WHERE T3.Name = Leo Wong
SELECT T2.PackageNumber FROM Client AS T1 JOIN Package AS T2 ON T1.AccountNumber = T2.Sender WHERE T1.Name = Leo Wong
SELECT T3.Contents FROM Client AS T1 JOIN Package AS T3 JOIN Shipment AS T2 ON T1.AccountNumber = T3.Sender AND T2.ShipmentID = T3.Shipment JOIN Employee AS T4 ON T4.EmployeeID = T2.Manager WHERE T1.Name = John Zoidfarb
SELECT DISTINCT T2.PackageNumber FROM Employee AS T1 JOIN PACKAGE AS T2 ON T1.EmployeeID = T2.Sender UNION SELECT DISTINCT T2.PackageNumber FROM Employee AS T1 JOIN PACKAGE AS T2 ON T1.EmployeeID = T2.Recipient WHERE T1.Name = Leo Wong
SELECT DISTINCT T1.PackageNumber , T1.Weight FROM Package AS T1 JOIN Client AS T2 ON T1.Sender = T2.AccountNumber WHERE T2.Name LIKE '%John%?' ORDER BY Weight DESC LIMIT 1
SELECT PackageNumber , Weight FROM PACKAGE ORDER BY Weight ASC LIMIT 3
SELECT T2.name , count(*) FROM Package AS T1 JOIN Client AS T2 ON T1.Sender = T2.AccountNumber GROUP BY T1.Sender ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Package AS T1 JOIN Client AS T2 ON T1.Sender = T2.AccountNumber JOIN Client AS T3 ON T1.Recipient = T3.AccountNumber JOIN Shipment AS T4 ON T1.Shipment = T4.ShipmentID JOIN Employee AS T5 ON T4.Manager = T5.EmployeeID WHERE T2.Name = Ogden Wernstrom AND T3.Name = Leo Wong
SELECT T2.PackageNumber , T2.Weight FROM CLIENT AS T1 JOIN PACKAGE AS T2 ON T1.AccountNumber = T2.Sender WHERE T1.Name LIKE '%John%' ORDER BY Weight DESC LIMIT 1
SELECT LEVEL FROM Has_clearance JOIN Employee ON Has_clearance.EmployeeID = Employee.EmployeeID WHERE Employee.position = Physician
SELECT packageNumber , Weight FROM PACKAGE ORDER BY Weight ASC LIMIT 3
SELECT T2.Contents FROM Client AS T1 JOIN Package AS T2 ON T1.AccountNumber = T2.Sender JOIN Shipment AS T3 ON T3.ShipmentID = T2.ShipMENT JOIN Employee AS T4 ON T3.Manager = T4.EmployeeID WHERE T1.Name = John Zoidfarb
SELECT T2.Name FROM Package AS T1 JOIN Client AS T2 ON T1.Sender = T2.AccountNumber GROUP BY T1.Sender HAVING count(*) > 1
SELECT COORDINATES FROM Planet WHERE NAME = Mars
SELECT name , coordinates FROM planet ORDER BY name
SELECT T1.Name , count(*) FROM Client AS T1 JOIN Package AS T2 ON T1.AccountNumber = T2.Recipient GROUP BY T2.Recipient ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , sender FROM Client AS T1 JOIN PACKAGE AS T2 ON T1.accountnumber = T2.Sender GROUP BY T2.Sender ORDER BY count(*) ASC LIMIT 1
SELECT T1.Name FROM Client AS T1 JOIN Package AS T2 ON T1.AccountNumber = T2.Sender GROUP BY T2.Sender HAVING count(*) > 1
SELECT T2.Name , count(*) FROM Package AS T1 JOIN Client AS T2 ON T1.Sender = T2.AccountNumber GROUP BY T1.Sender ORDER BY count(*) DESC LIMIT 1
SELECT name , coordinates FROM planet ORDER BY name
SELECT Coordinates FROM Planet WHERE Name = Mars
SELECT date FROM shipment
SELECT T1.ShipmentID FROM shipment AS T1 JOIN Employee AS T2 ON T1.Manager = T2.EmployeeID WHERE T2.Name = Phillip J. Fry
SELECT Date FROM Shipment
SELECT T2.ShipmentID FROM PLANET AS T1 JOIN SHIPMENT AS T2 ON T1.PlanetID = T2.Planet WHERE T1.Name = Mars
SELECT T1.shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid WHERE T2.name = Phillip J. Fry
SELECT T2.ShipmentID FROM PLANET AS T1 JOIN SHIPMENT AS T2 ON T1.PlanetID = T2.Planet WHERE T1.Name = Mars
SELECT shipmentid FROM Shipment WHERE date = 15-10-2014 AND manager = (SELECT employeeid FROM employee WHERE name = Turanga Leela ) OR planet = (SELECT planetid FROM planet WHERE name = Mars )
SELECT T2.name , count(*) FROM shipment AS T1 JOIN planet AS T2 ON T1.planet = T2.planetid GROUP BY T2.name
SELECT count(*) , T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.PlanetID = T2.Planet GROUP BY T1.name
SELECT T3.ShipmentID FROM Has_clearance AS T1 JOIN Employee AS T2 JOIN Shipment AS T3 ON T1.employee = T2.EmployeeID AND T1.Planet = T3.Planet AND T2.Name = Turanga Leela AND T3.manager = T2.EmployeeID WHERE T1.level = 1 AND T3.manager = T2.EmployeeID AND T3.date > 2016-12-08 AND T1.Planet = (SELECT planetid FROM Planet WHERE name = Mars )
SELECT T1.shipmentid FROM shipment AS T1 JOIN employee AS T2 ON T1.manager = T2.employeeid JOIN planet AS T3 ON T1.planet = T3.planetid WHERE T2.name = Turanga Leela AND T3.name = Mars
SELECT T2.name FROM shipment AS T1 JOIN planet AS T2 ON T1.Planet = T2.PlanetID GROUP BY T1.Planet ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM shipment AS T1 JOIN planet AS T2 ON T1.Planet = T2.PlanetID GROUP BY T2.PlanetID ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T1.name FROM employee AS T1 JOIN shipment AS T2 ON T1.EmployeeID = T2.manager GROUP BY name
SELECT T1.Name , COUNT(*) FROM Employee AS T1 JOIN Shipment AS T2 ON T1.EmployeeID = T2.Manager GROUP BY T2.Manager
SELECT sum(t3.weight) FROM planet AS t1 JOIN shipment AS t2 ON t1.PlanetID = t2.Planet JOIN package AS t3 ON t2.ShipmentID = t3.Shipment WHERE t1.Name = Mars
SELECT sum(t3.weight) , t2.name FROM shipment AS t1 JOIN planet AS t2 ON t1.planet = t2.planetid JOIN package AS t3 ON t1.shipmentid = t3.shipment GROUP BY t2.name
SELECT sum(T2.Weight) FROM shipment AS T1 JOIN package AS T2 ON T1.ShipmentID = T2.Shipment WHERE T1.Planet = (SELECT T1.PlanetID FROM planet AS T1 WHERE T1.Name = Mars )
SELECT T3.name FROM shipment AS T1 JOIN package AS T2 ON T1.shipmentid = T2.shipment JOIN planet AS T3 ON T3.planetid = T1.planet GROUP BY T1.planet HAVING sum(T2.weight) > 30
SELECT PackageNumber , Weight FROM PACKAGE WHERE Weight > 10 AND Weight < 30
SELECT T4.ShipmentID FROM Employee AS T1 JOIN Shipment AS T4 ON T1.EmployeeID = T4.Manager JOIN Has_clearance AS T3 ON T3.Employee = T1.Employee JOIN Planet AS T2 ON T2.PlanetID = T3.Planet WHERE T1.Name = Turanga Leela AND T2.Name = Mars
SELECT name FROM Employee EXCEPT SELECT T1.name FROM Employee AS T1 JOIN Has_clearance AS T2 ON T1.EmployeeID = T2.employee JOIN planet AS T3 ON T3.planetID = T2.planet WHERE T3.name = Mars
SELECT packageNumber , weight FROM Package WHERE weight BETWEEN 10 AND 30
SELECT T2.name , sum(T1.weight) FROM Package AS T1 JOIN Shipment AS T3 ON T1.Shipment = T3.Shipment JOIN Planet AS T2 ON T2.PlanetID = T3.Planet GROUP BY T2.name
SELECT name FROM employee EXCEPT SELECT T1.name FROM employee AS T1 JOIN has_clearance AS T2 ON T1.EmployeeID = T2.Employee JOIN planet AS T3 ON T3.PlanetID = T2.Planet WHERE T3.name = Mars
SELECT T1.name FROM Employee AS T1 JOIN Has_Clearance AS T2 ON T1.EmployeeID = T2.Employee JOIN Planet AS T3 ON T3.PlanetID = T2.Planet WHERE T3.name = Omega III
SELECT T1.name FROM planet AS T1 JOIN Has_Clearance AS T2 ON T1.planetid = T2.planet GROUP BY T2.planet HAVING count(*) = 1
SELECT T1.name FROM planet AS T1 JOIN shipment AS T2 ON T1.PlanetID = T2.Planet JOIN package AS T3 ON T2.ShipmentID = T3.Shipment GROUP BY T2.Planet HAVING sum(T3.Weight) > 30
SELECT count(*) FROM Employee AS T1 JOIN Planet AS T2 JOIN Shipment AS T3 JOIN Package AS T4 JOIN Client AS T5 ON T1.Name = Zapp Brannigan AND T2.Name = Omicron Persei 8 AND T3.Planet = T2.PlanetID AND T3.Manager = T1.EmployeeID AND T4.ShipMENT = T3.ShipMENTID AND T4.Sender = T5.AccountNumber
SELECT Name FROM Employee WHERE Salary BETWEEN 5000 AND 10000
SELECT T1.name FROM planet AS T1 JOIN has_clearance AS T2 ON T1.planetid = T2.planet GROUP BY T2.planet HAVING count(*) = 1
SELECT T1.Name FROM Employee AS T1 JOIN Has_clearance AS T2 ON T1.EmployeeID = T2.Employee JOIN planet AS T3 ON T3.PlanetID = T2.Planet WHERE T3.name = Omega III
SELECT Name FROM Employee WHERE Salary BETWEEN 5000 AND 10000
SELECT Name FROM Employee WHERE Salary > (SELECT avg(Salary) FROM Employee) OR Salary > 5000
SELECT T3.PackageNumber FROM Employee AS T1 JOIN Shipment AS T2 JOIN Package AS T3 ON T1.EmployeeID = T2.Manager AND T2.ShiptID = T3.ShiptID JOIN Planet AS T4 ON T2.Planet = T4.PlanetID WHERE T1.Name = Zapp Brannigan AND T4.Name = Omicron Persei 8
SELECT Name FROM Employee WHERE salary > (SELECT avg(salary) FROM Employee) OR salary > 5000
SELECT count(*) FROM game
SELECT count(*) FROM game
SELECT title , Developers FROM game ORDER BY Units_sold_Millions DESC
SELECT title , developers FROM game ORDER BY units_sold_Millions DESC
SELECT Platform_name , Market_district FROM platform
SELECT avg(Units_sold_Millions) FROM game WHERE Developers != Nintendo
SELECT count(*) FROM Shipment AS T1 JOIN CLIENT AS T2 ON T2.AccountNumber = T1.Sender WHERE T1.manager = Zapp Brannigan UNION SELECT count(*) FROM Shipment AS T1 JOIN CLIENT AS T2 ON T2.AccountNumber = T1.Recipient WHERE T1.manager = Zapp Brannigan AND T1.Planet = Omicron Persei 8
SELECT Platform_name , market_district FROM platform
SELECT avg(Units_sold_Millions) FROM game WHERE Developers != Nintendo
SELECT player_name , rank_of_the_year FROM player WHERE rank_of_the_year = 1
SELECT count(*) FROM Employee WHERE EmployeeID NOT IN (SELECT T1.Employee FROM Has_Clearance AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID WHERE T2.Name = Mars )
SELECT player_name , player_id FROM player WHERE rank_of_the_year = 1
SELECT max(rank_of_the_year) , min(rank_of_the_year) FROM player
SELECT count(*) FROM player WHERE rank_of_the_year <= 3
SELECT Player_name FROM player ORDER BY Player_name
SELECT max(rank_of_the_year) , min(rank_of_the_year) FROM player
SELECT player_name , college FROM player ORDER BY rank_of_the_year DESC
SELECT player_name , college FROM player ORDER BY rank_of_the_year DESC
SELECT T3.player_name , T3.rank_of_the_year FROM game_player AS T1 JOIN game AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T1.player_id = T3.player_id WHERE T2.title = Super Mario World
SELECT player_name FROM player ORDER BY player_name
SELECT count(*) FROM player WHERE rank_of_the_year < 3
SELECT DISTINCT T3.Developers FROM game_player AS T1 JOIN player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T1.Game_ID = T3.Game_ID WHERE T2.College = Auburn
SELECT DISTINCT T3.Developers FROM game_player AS T1 JOIN player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T1.Game_ID = T3.Game_ID WHERE T2.College = Auburn
SELECT T3.Player_name , T3.Rank_of_the_year FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T1.Title = Super Mario World
SELECT avg(T1.Units_sold_Millions) FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID = T2.Game_ID JOIN player AS T3 ON T2.Player_ID = T3.Player_ID WHERE T3.Position = Guard
SELECT T1.PackageNumber FROM Package AS T1 JOIN Shipment AS T2 ON T1.ShipMENT = T2.ShipMENT JOIN Has_Clarance AS T3 ON T2.Planet = T3.Planet JOIN Employee AS T4 ON T3.Employee = T4.EmployeeID WHERE T4.Name = Zapp Brannigan OR T2.Planet = (SELECT T2.Planet FROM Shipment AS T2 JOIN Has_Clarance AS T3 ON T2.Planet = T3.Planet JOIN Employee AS T4 ON T3.Employee = T4.EmployeeID WHERE T4.Name = Zapp Brannigan )
SELECT avg(T2.Units_sold_Millions) FROM game_player AS T1 JOIN game AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T1.player_id = T3.player_id WHERE T3.position = Guard
SELECT T2.title , T1.Platform_name FROM platform AS T1 JOIN game AS T2 ON T1.Platform_id = T2.Platform_id
SELECT T1.title FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID = T2.Platform_ID WHERE T2.market_district = 'Asia' OR T2.market_district = 'USA'
SELECT T2.title , T1.Platform_name FROM platform AS T1 JOIN game AS T2 ON T1.Platform_ID = T2.Platform_ID
SELECT T2.title FROM platform AS T1 JOIN game AS T2 ON T1.platform_id = T2.platform_id WHERE T1.market_district = 'Asia' OR T1.market_district = 'USA'
SELECT Franchise , count(*) FROM game GROUP BY Franchise
SELECT Franchise FROM game GROUP BY Franchise ORDER BY COUNT(*) DESC LIMIT 1
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*) >= 2
SELECT Franchise FROM game GROUP BY Franchise HAVING count(*) >= 2
SELECT Franchise , COUNT(*) FROM game GROUP BY Franchise
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM game_player)
SELECT Franchise FROM game GROUP BY Franchise ORDER BY count(*) DESC LIMIT 1
SELECT player_name FROM player EXCEPT SELECT T1.player_name FROM player AS T1 JOIN game_player AS T2 ON T1.Player_ID = T2.Player_ID
SELECT count(*) FROM Employee EXCEPT SELECT count(*) FROM Has_clearance AS T1 JOIN Employee AS T2 ON T1.Employee = T2.EmployeeID WHERE T1.Plant = (SELECT PlanetID FROM Planet WHERE name = Mars )
SELECT DISTINCT Franchise FROM game
SELECT DISTINCT Franchise FROM game
SELECT T3.Title FROM game_player AS T1 JOIN player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T1.Game_ID = T3.Game_ID WHERE T2.College = Oklahoma INTERSECT SELECT T3.Title FROM game_player AS T1 JOIN player AS T2 ON T1.Player_ID = T2.Player_ID JOIN game AS T3 ON T1.Game_ID = T3.Game_ID WHERE T2.College = Auburn
SELECT Name FROM press ORDER BY YEAR_Profits_billion DESC
SELECT Name FROM press WHERE Year_Profits_billion > 15 OR Month_Profits_billion > 1
SELECT title FROM game WHERE game_id NOT IN (SELECT game_id FROM game_player AS T1 JOIN player AS T2 ON T1.player_id = T2.player_id WHERE T2.position = Guard )
SELECT Name FROM press ORDER BY Year_Profits_billion DESC
SELECT title FROM game EXCEPT SELECT T2.title FROM game_player AS T1 JOIN game AS T2 ON T1.game_id = T2.game_id JOIN player AS T3 ON T1.player_id = T3.player_id WHERE T3.position = Guard
SELECT Name FROM press WHERE Year_Profits_billion > 15 OR MONTH_Profits_billion > 1
SELECT DISTINCT T3.title FROM game_player AS T1 JOIN player AS T2 ON T1.Player_ID = T2.Player_name JOIN game AS T3 ON T1.game_id = T3.game_id WHERE T2.college = Oklahoma OR T2.college = Auburn
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1
SELECT avg(Year_Profits_billion) , max(Year_Profits_billion) FROM press
SELECT avg(Year_Profits_billion) , max(Year_Profits_billion) FROM press
SELECT name FROM press ORDER BY month_profits_billion DESC LIMIT 1
SELECT count(*) FROM author WHERE age < 30
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender
SELECT count(*) FROM author WHERE age < 30
SELECT gender , avg(age) FROM author GROUP BY gender
SELECT avg(Age) , gender FROM author GROUP BY gender
SELECT title FROM book ORDER BY Release_date DESC
SELECT count(*) , gender FROM author WHERE age > 30 GROUP BY gender
SELECT count(*) , book_series FROM book GROUP BY book_series
SELECT title FROM book ORDER BY RELEASE_date DESC
SELECT book_series , count(*) FROM book GROUP BY book_series
SELECT title , release_date FROM book ORDER BY sale_amount DESC LIMIT 5
SELECT book_series FROM book WHERE sale_amount > 1000 INTERSECT SELECT book_series FROM book WHERE sale_amount < 500
SELECT name , age FROM author WHERE Author_ID NOT IN (SELECT Author_ID FROM book)
SELECT book_series FROM book WHERE sale_amount > 1000 INTERSECT SELECT book_series FROM book WHERE sale_amount < 500
SELECT Title , Release_date FROM book ORDER BY Sale_Amount DESC LIMIT 5
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID WHERE T1.Book_Series = MM INTERSECT SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID WHERE T1.Book_Series = LT
SELECT name FROM author WHERE author_id NOT IN ( SELECT DISTINCT author_id FROM book )
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID WHERE T1.Book_Series = MM INTERSECT SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID WHERE T1.Book_Series = LT
SELECT T2.name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.author_id HAVING count(*) > 1
SELECT T1.name FROM author AS T1 JOIN book AS T2 ON T1.author_id = T2.author_id GROUP BY T2.author_id HAVING count(*) > 1
SELECT T2.Title , T1.Name , T3.Name FROM author AS T1 JOIN book AS T2 ON T1.Author_ID = T2.Author_ID JOIN press AS T3 ON T3.Press_ID = T2.Press_ID ORDER BY T2.Sale_Amount DESC LIMIT 3
SELECT name FROM press ORDER BY MONTH_Profits_billion DESC LIMIT 1 UNION SELECT name FROM press ORDER BY MONTH_Profits_billion LIMIT 1
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID WHERE T1.Sale_Amount = (SELECT max(Sale_Amount) FROM book)
SELECT T2.Name , sum(T1.Sale_Amount) FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID GROUP BY T1.Press_ID
SELECT T2.Name , sum(T1.Sale_Amount) FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID GROUP BY T2.Press_ID
SELECT count(*) , T1.name FROM press AS T1 JOIN book AS T2 ON T1.Press_ID = T2.Press_ID WHERE T2.Sale_Amount > 1000 GROUP BY T2.Press_ID
SELECT T2.Name , count(*) FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID WHERE T1.Sale_Amount > 1000 GROUP BY T2.Name
SELECT Name FROM press ORDER BY Month_Profits_billion DESC LIMIT 1 UNION SELECT Name FROM press ORDER BY Month_Profits_billion ASC LIMIT 1
SELECT T2.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID WHERE T1.Sale_Amount = (SELECT max(Sale_Amount) FROM book)
SELECT T2.Name , T2.gender FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Author_ID ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name , T2.gender FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID GROUP BY T1.Author_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name , T2.Year_Profits_billion FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID GROUP BY T1.Press_ID HAVING count(*) > 2
SELECT name FROM author WHERE author_id NOT IN (SELECT T1.author_id FROM book AS T1 JOIN press AS T2 ON T1.press_id = T2.press_id WHERE T2.name = Accor )
SELECT Name FROM author WHERE Author_ID NOT IN (SELECT T2.Author_ID FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID WHERE T1.Press_ID = (SELECT Press_ID FROM press WHERE Name = Accor ))
SELECT DISTINCT author_name FROM authors
SELECT other_details FROM authors WHERE author_name = Addison Denesik
SELECT author_name , other_details FROM AUTHORS
SELECT count(DISTINCT author_name) FROM authors
SELECT T1.Title , T2.Name , T3.Name FROM book AS T1 JOIN author AS T2 ON T1.Author_ID = T2.Author_ID JOIN press AS T3 ON T1.press_id = T3.press_id ORDER BY T1.Sale_Amount DESC LIMIT 3
SELECT count(*) FROM Documents
SELECT T2.Name , T2.Year_Profits_billion FROM book AS T1 JOIN press AS T2 ON T1.Press_ID = T2.Press_ID GROUP BY T1.Press_ID HAVING COUNT(*) > 2
SELECT author_name FROM Documents WHERE document_id = 4
SELECT author_name , count(*) FROM Documents GROUP BY author_name
SELECT document_id , document_name FROM Documents WHERE author_name = Bianka Cummings
SELECT author_name , other_details FROM documents WHERE document_name = Travel to China
SELECT T1.author_name FROM Documents AS T1 JOIN Authors AS T2 ON T1.author_name = T2.author_name WHERE T1.document_name = Travel to Brazil
SELECT author_name FROM documents GROUP BY author_name ORDER BY count(*) DESC LIMIT 1
SELECT document_name , document_description FROM Documents
SELECT count(*) FROM Documents AS t1 JOIN authors AS t2 ON t1.author_name = t2.author_name WHERE t2.author_name = Era Kerluke
SELECT count(*) FROM Business_processes
SELECT T2.author_name FROM documents AS T1 JOIN authors AS T2 ON T1.author_name = T2.author_name GROUP BY T1.author_name HAVING count(*) >= 2
SELECT next_process_id , process_name , process_description FROM Business_Processes WHERE process_id = 9
SELECT process_outcome_code , process_outcome_description FROM Process_Outcomes
SELECT T2.process_name FROM business_processes AS T1 JOIN business_processes AS T2 ON T1.next_process_id = T2.process_id WHERE T1.process_id = 9
SELECT process_outcome_description FROM Process_outcomes WHERE process_outcome_code = 'working'
SELECT count(*) FROM Process_Status
SELECT process_status_description FROM Process_Status WHERE process_status_code = ct
SELECT count(*) FROM process_outcomes
SELECT process_status_code , process_status_description FROM Process_Status
SELECT count(*) FROM staff
SELECT staff_id , staff_details FROM Staff
SELECT staff_details FROM Staff WHERE staff_id = 100
SELECT count(*) FROM Ref_Staff_Roles
SELECT staff_role_code , staff_role_description FROM Ref_Staff_Roles
SELECT DISTINCT document_id FROM Documents_processes
SELECT staff_role_description FROM Ref_Staff_Roles WHERE staff_role_code = HR
SELECT COUNT(*) , T2.process_name FROM Documents AS T1 JOIN Business_Processes AS T2 ON T1.author_name != T2.process_name GROUP BY T2.process_name
SELECT document_id FROM documents EXCEPT SELECT document_id FROM Documents_processes
SELECT staff_id , count(*) FROM Staff_in_processes GROUP BY staff_id
SELECT count(*) FROM Staff_in_processes WHERE document_id = 0 AND process_id = 9
SELECT count(DISTINCT document_id) FROM Documents_Processes
SELECT process_id FROM business_processes EXCEPT SELECT process_id FROM documents_processes
SELECT T2.staff_role_code , count(*) FROM Documents_Processes AS T1 JOIN Staff_in_Processes AS T2 ON T1.document_id = T2.document_id AND T1.process_id = T2.process_id GROUP BY T2.staff_role_code
SELECT t2.process_name FROM documents AS t1 JOIN documents_processes AS t3 ON t1.document_id = t3.document_id JOIN business_processes AS t2 ON t3.process_id = t2.process_id WHERE t1.document_name = Travel to Brazil
SELECT count(*) FROM agencies
SELECT count(*) FROM Clients
SELECT count(DISTINCT staff_role_code) FROM Staff_in_processes WHERE staff_id = 3
SELECT count(*) FROM Agencies
SELECT agency_id , agency_details FROM Agencies
SELECT agency_id , agency_details FROM Agencies
SELECT count(*) FROM Clients
SELECT client_id , client_details FROM Clients
SELECT client_id , client_details FROM Clients
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id , count(*) FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id
SELECT T2.agency_id , T2.agency_details FROM Clients AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT T1.process_outcome_description , T2.process_status_description FROM Process_outcomes AS T1 JOIN Documents_processes AS T3 JOIN Process_status AS T2 ON T3.process_outcome_code = T1.process_outcome_code AND T3.process_status_code = T2.process_status_code WHERE T3.document_id = 0
SELECT count(*) , T1.agency_id FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id
SELECT T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = 'Mac'
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_details FROM agencies AS T1 JOIN clients AS T2 ON T1.agency_id = T2.agency_id WHERE T2.client_details = 'Mac'
SELECT T1.client_details , T2.agency_details FROM Clients AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id
SELECT count(*) , sic_code FROM Clients GROUP BY sic_code
SELECT sic_code , count(*) FROM Clients GROUP BY sic_code
SELECT client_id , client_details FROM Clients WHERE sic_code = Bad
SELECT T2.client_details , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id
SELECT DISTINCT agency_id FROM Agencies EXCEPT SELECT DISTINCT agency_id FROM Clients
SELECT client_details , sic_code FROM Clients WHERE sic_code = Bad
SELECT agency_id FROM Agencies EXCEPT SELECT DISTINCT agency_id FROM Clients
SELECT T1.agency_details , T1.agency_id FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id
SELECT count(*) , T1.client_id FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id
SELECT count(*) FROM invoices
SELECT count(*) , client_id FROM Invoices GROUP BY client_id
SELECT invoice_id , invoice_status , invoice_details FROM invoices
SELECT invoice_id , invoice_status , invoice_details FROM Invoices
SELECT count(*) FROM invoices
SELECT T2.client_id , T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T2.client_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id ORDER BY count(T1.client_id) DESC LIMIT 1
SELECT invoice_status , count(*) FROM Invoices GROUP BY invoice_status
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id HAVING count(*) >= 2
SELECT invoice_status , count(*) FROM invoices GROUP BY invoice_status
SELECT T1.client_id FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id HAVING count(*) >= 2
SELECT invoice_status FROM invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT T1.client_id FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id HAVING count(*) >= 2
SELECT meeting_outcome , purpose_of_meeting FROM Meetings
SELECT meeting_type , other_details FROM Meetings
SELECT invoice_status FROM invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT meeting_type , other_details FROM Meetings
SELECT meeting_outcome , purpose_of_meeting FROM meetings
SELECT T1.invoice_status , T1.invoice_details , T1.client_id , T2.client_details , T3.agency_id , T3.client_details FROM invoices AS T1 JOIN clients AS T2 ON T1.client_id = T2.client_id JOIN clients AS T3 ON T2.client_id = T3.client_id
SELECT T2.invoice_status , T2.invoice_details , T1.client_id , T1.client_details , T1.agency_id , T3.agency_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id JOIN Agencies AS T3 ON T1.agency_id = T3.agency_id
SELECT count(*) FROM Payments
SELECT count(*) FROM Payments
SELECT invoice_id , invoice_status FROM invoices WHERE invoice_id NOT IN ( SELECT invoice_id FROM payments )
SELECT DISTINCT T2.agency_id , T1.agency_details FROM Clients AS T1 JOIN Agencies AS T2 ON T1.agency_id = T2.agency_id
SELECT T1.payment_id , T1.payment_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = Working
SELECT T1.payment_id , T1.payment_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id WHERE T2.invoice_status = Working
SELECT payment_id , invoice_id , payment_details FROM Payments
SELECT invoice_id , invoice_status FROM invoices EXCEPT SELECT T1.invoice_id , T1.invoice_status FROM invoices AS T1 JOIN payments AS T2 ON T1.invoice_id = T2.invoice_id
SELECT T2.invoice_id , count(T2.payment_id) FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T1.invoice_id
SELECT count(*) , invoice_id FROM Payments GROUP BY invoice_id
SELECT payment_id , invoice_id FROM Payments
SELECT T2.invoice_id , T2.invoice_status , T2.invoice_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T2.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.invoice_id , T1.invoice_status , T1.invoice_details FROM invoices AS T1 JOIN payments AS T2 ON T1.invoice_id = T2.invoice_id GROUP BY T2.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT staff_id) FROM Staff
SELECT DISTINCT T1.invoice_id , T1.invoice_status FROM invoices AS T1 JOIN payments AS T2 ON T1.invoice_id = T2.invoice_id
SELECT count(*) FROM staff
SELECT meeting_outcome , count(*) FROM Meetings GROUP BY meeting_outcome
SELECT meeting_outcome , count(*) FROM Meetings GROUP BY meeting_outcome
SELECT T1.agency_id , T1.agency_details FROM agencies AS T1 JOIN staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT payment_id , T2.invoice_status FROM payments AS T1 JOIN invoices AS T2 ON T1.invoice_id = T2.invoice_id
SELECT T1.agency_id , T1.agency_details FROM Agencies AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T1.client_id FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id GROUP BY T1.client_id
SELECT T1.meeting_id , T1.meeting_outcome , T1.meeting_type , T2.client_details FROM Meetings AS T1 JOIN Clients AS T2 ON T1.client_id = T2.client_id
SELECT meeting_type , count(*) FROM Meetings GROUP BY client_id
SELECT T1.agency_id , count(*) FROM staff AS T1 JOIN staff_in_meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.agency_id
SELECT T1.agency_id , count(*) FROM Agencies AS T1 JOIN Staff AS T2 ON T1.agency_id = T2.agency_id GROUP BY T1.agency_id
SELECT meeting_type , count(*) FROM Meetings GROUP BY meeting_type
SELECT client_id , count(*) FROM Meetings GROUP BY client_id
SELECT T2.meeting_id , count(*) FROM Staff_in_Meetings AS T1 JOIN Meetings AS T2 ON T1.meeting_id = T2.meeting_id GROUP BY T2.meeting_id
SELECT meeting_id , meeting_type , meeting_outcome , T1.client_details FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id
SELECT T1.staff_id , COUNT(*) FROM Staff_in_Meetings AS T1 JOIN Meetings AS T2 ON T1.meeting_id = T2.meeting_id GROUP BY T1.staff_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) , T1.meeting_id FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id GROUP BY T1.meeting_id
SELECT count(DISTINCT staff_id) FROM Staff_in_Meetings
SELECT count(DISTINCT staff_id) FROM Staff_in_Meetings
SELECT count(*) FROM staff WHERE staff_id NOT IN (SELECT staff_id FROM Staff_in_Meetings)
SELECT T1.staff_id FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id GROUP BY T2.staff_id ORDER BY count(*) ASC LIMIT 1
SELECT DISTINCT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T1.client_id = T2.client_id UNION SELECT DISTINCT T3.client_id , T3.client_details FROM Clients AS T3 JOIN Meetings AS T4 ON T3.client_id = T4.client_id
SELECT DISTINCT T1.client_id , T1.client_details FROM Clients AS T1 JOIN Invoices AS T2 ON T2.client_id = T1.client_id UNION SELECT DISTINCT T3.client_id , T3.client_details FROM Clients AS T3 JOIN Meetings AS T4 ON T4.client_id = T3.client_id
SELECT T1.staff_id , T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id WHERE T1.staff_details LIKE '%s%'
SELECT count(*) FROM Staff WHERE staff_id NOT IN (SELECT staff_id FROM Staff_in_Meetings)
SELECT T2.staff_id , T1.staff_details FROM Staff AS T1 JOIN Staff_in_Meetings AS T2 ON T1.staff_id = T2.staff_id WHERE T1.staff_details LIKE %s GROUP BY T2.staff_id HAVING count(*) >= 1
SELECT T1.start_date_time , T1.end_date_time , T3.client_details , T4.staff_details FROM Meetings AS T1 JOIN Staff_in_Meetings AS T2 ON T1.meeting_id = T2.meeting_id JOIN Clients AS T3 ON T1.client_id = T3.client_id JOIN Staff AS T4 ON T2.staff_id = T4.staff_id
SELECT T3.client_id , T3.sic_code , T3.agency_id FROM Meetings AS T1 JOIN Clients AS T3 ON T1.client_id = T3.client_id JOIN Invoices AS T2 ON T2.client_id = T3.client_id GROUP BY T3.client_id HAVING count(DISTINCT T1.meeting_outcome) = 1
SELECT T1.client_id , T1.sic_code , T1.agency_id FROM Clients AS T1 JOIN Invoices AS T2 JOIN Meetings AS T3 ON T1.client_id = T2.client_id AND T1.client_id = T3.client_id GROUP BY T1.client_id HAVING count(DISTINCT T3.meeting_id) = 1
SELECT T2.start_date_time , T2.end_date_time , T1.client_details , T4.staff_details FROM Clients AS T1 JOIN Meetings AS T2 ON T1.client_id = T2.client_id JOIN Staff_in_Meetings AS T3 ON T2.meeting_id = T3.meeting_id JOIN Staff AS T4 ON T3.staff_id = T4.staff_id
