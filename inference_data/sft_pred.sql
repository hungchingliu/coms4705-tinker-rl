SELECT Name FROM club ORDER BY Name
SELECT COUNT(*) FROM club
SELECT Name FROM club WHERE Manufacturer != 'Nike'
SELECT Manager , Captain FROM club
SELECT COUNT(*) FROM club
SELECT Name FROM club ORDER BY Name ASC
SELECT Manager , Captain FROM club
SELECT Name FROM player ORDER BY Wins_count
SELECT Name FROM club WHERE Manufacturer != 'Nike'
SELECT DISTINCT Country FROM player WHERE Earnings > 1200000
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT DISTINCT Country FROM player WHERE Earnings > 1200000
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT p.Name, c.Name FROM player p JOIN club c ON p.Club_ID = c.Club_ID
SELECT Country FROM player WHERE Wins_count > 2 ORDER BY Earnings DESC LIMIT 1
SELECT Country FROM player WHERE Wins_count > 2 ORDER BY Earnings DESC LIMIT 1
SELECT p.Name FROM player p JOIN club c ON p.Club_ID = c.Club_ID WHERE c.Manager = 'Sam Allardyce'
SELECT p.Name FROM player p JOIN club c ON p.Club_ID = c.Club_ID WHERE c.Manager = 'Sam Allardyce'
SELECT p.Name AS Player_name, c.Name AS Club_name FROM player p JOIN club c ON p.Club_ID = c.Club_ID
SELECT Manufacturer, COUNT(*) AS Club_Count FROM club GROUP BY Manufacturer
SELECT COUNT(*) AS club_count, Manufacturer FROM club GROUP BY Manufacturer
SELECT c.Name FROM club c JOIN player p ON c.Club_ID = p.Club_ID GROUP BY c.Club_ID ORDER BY AVG(p.Earnings) DESC
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT c.Name FROM club c JOIN player p ON c.Club_ID = p.Club_ID GROUP BY c.Name ORDER BY AVG(p.Earnings) DESC
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT Manufacturer FROM club GROUP BY Manufacturer HAVING COUNT(*) > 1
SELECT Manufacturer FROM club GROUP BY Manufacturer HAVING COUNT(*) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(Player_ID) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT Country FROM player WHERE Earnings > 1400000 OR Earnings < 1100000
SELECT COUNT(DISTINCT Country) FROM player
SELECT COUNT(DISTINCT Country) FROM player
SELECT Earnings FROM player WHERE Country = 'Australia' OR Country = 'Zimbabwe'
placeholder
SELECT Earnings FROM player WHERE Country = 'Australia' OR Country = 'Zimbabwe'
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT c.customer_first_name, c.customer_middle_initial, c.customer_last_name FROM Customers c WHERE NOT EXISTS ( SELECT 1 FROM Orders WHERE Orders.customer_id = c.customer_id )
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT c.gender_code, COUNT(o.order_id) AS order_count FROM Customers c JOIN Orders o ON c.customer_id = o.customer_id GROUP BY c.gender_code
placeholder
SELECT payment_method_code FROM `Customer_Payment_Methods` GROUP BY payment_method_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT c.gender_code, COUNT(o.order_id) AS order_count FROM Orders o JOIN Customers c ON o.customer_id = c.customer_id GROUP BY c.gender_code
SELECT payment_method_code FROM `Customer_Payment_Methods` GROUP BY payment_method_code ORDER BY COUNT(*) DESC LIMIT 1
placeholder
SELECT c.gender_code, COUNT(*) AS product_count FROM Customers c JOIN Orders o ON c.customer_id = o.customer_id JOIN Order_Items oi ON o.order_id = oi.order_id GROUP BY c.gender_code
SELECT i.invoice_status_code, i.invoice_date, s.shipment_date FROM Invoices i JOIN Shipments s ON i.invoice_number = s.invoice_number
SELECT p.product_name, sh.shipment_date FROM Products p JOIN Order_Items oi ON p.product_id = oi.product_id JOIN Orders o ON oi.order_id = o.order_id JOIN Shipments sh ON o.order_id = sh.order_id
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT COUNT(DISTINCT customer_id) FROM Orders
placeholder
SELECT COUNT(DISTINCT customer_id) FROM Orders
placeholder
placeholder
placeholder
placeholder
SELECT COUNT(DISTINCT payment_method_code) FROM `Customer_Payment_Methods`
SELECT COUNT(DISTINCT order_item_status_code) FROM Order_Items
SELECT login_name, login_password FROM Customers WHERE phone_number LIKE '+12%'
placeholder
SELECT login_name, login_password FROM Customers WHERE phone_number LIKE '+12%'
SELECT product_price, product_size FROM Products WHERE product_price > (SELECT AVG(product_price) FROM Products)
SELECT product_size FROM Products WHERE product_name LIKE '%Dell%'
placeholder
SELECT product_size FROM Products WHERE product_name LIKE '%Dell%'
SELECT COUNT(DISTINCT order_item_status_code) FROM `Order_Items`
SELECT product_price, product_size FROM Products WHERE product_price > (SELECT AVG(product_price) FROM Products)
SELECT COUNT(DISTINCT payment_method_code) FROM Customer_Payment_Methods
SELECT order_status_code, date_order_placed FROM Orders
SELECT address_line_1, town_city, county FROM Customers WHERE country = 'USA'
SELECT address_line_1, town_city, county FROM Customers WHERE country = 'United States'
SELECT order_status_code, date_order_placed FROM Orders
SELECT COUNT(*) FROM Customers LEFT JOIN Customer_Payment_Methods ON Customers.customer_id = Customer_Payment_Methods.customer_id WHERE Customer_Payment_Methods.payment_method_code IS NULL
SELECT COUNT(*) FROM Customers LEFT JOIN Customer_Payment_Methods ON Customers.customer_id = Customer_Payment_Methods.customer_id WHERE Customer_Payment_Methods.payment_method_code IS NULL
placeholder
SELECT AVG(product_price) FROM Products
placeholder
placeholder
SELECT AVG(product_price) FROM Products
placeholder
SELECT COUNT(DISTINCT p.product_id) FROM `Products` p JOIN `Order_Items` oi ON p.product_id = oi.product_id JOIN `Shipment_Items` si ON oi.order_item_id = si.order_item_id
SELECT COUNT(*) FROM Shipment_Items
SELECT AVG(p.product_price) FROM Products p JOIN Order_Items oi ON p.product_id = oi.product_id
SELECT order_status_code FROM Orders GROUP BY order_status_code ORDER BY COUNT(*) ASC LIMIT 1
SELECT order_status_code FROM Orders GROUP BY order_status_code ORDER BY COUNT(*) ASC LIMIT 1
placeholder
placeholder
placeholder
SELECT i.invoice_date, i.invoice_number FROM Invoices i JOIN Shipments s ON i.invoice_number = s.invoice_number GROUP BY i.invoice_number HAVING COUNT(s.shipment_id) >= 2
SELECT o.date_order_placed FROM Orders o INNER JOIN ( SELECT customer_id FROM Customer_Payment_Methods GROUP BY customer_id HAVING COUNT(*) >= 2 ) cpm ON o.customer_id = cpm.customer_id
SELECT shipment_tracking_number, shipment_date FROM Shipments
SELECT shipment_tracking_number, shipment_date FROM Shipments
SELECT product_color, product_description, product_size FROM Products WHERE product_price < (SELECT MAX(product_price) FROM Products)
placeholder
SELECT Name FROM director WHERE Age > (SELECT AVG(Age) FROM director)
SELECT COUNT(DISTINCT Digital_terrestrial_channel) FROM channel
SELECT Name FROM director ORDER BY Age DESC LIMIT 1
placeholder
SELECT Title FROM program ORDER BY Start_Year DESC
placeholder
SELECT product_color, product_description, product_size FROM Products WHERE product_price != (SELECT MAX(product_price) FROM Products)
SELECT COUNT(*) FROM channel WHERE LOWER( Internet ) LIKE '%bbc%'
SELECT Title FROM program ORDER BY Start_Year DESC LIMIT 1
SELECT c.Name, COUNT(p.Program_ID) AS Program_Count FROM channel c JOIN program p ON c.Channel_ID = p.Channel_ID GROUP BY c.Channel_ID, c.Name
` but not properly closed or completed — specifically, the query block was cut off mid-sentence and not properly terminated. I now correct and finalize the SQL query by ensuring: 1. The query is fully enclosed within
SELECT d.Name FROM program p JOIN director d ON p.Director_ID = d.Director_ID WHERE p.Title = 'Dracula'
SELECT c.Name, c.Internet FROM program p JOIN channel c ON p.Channel_ID = c.Channel_ID GROUP BY c.Channel_ID HAVING COUNT(p.Program_ID) > 1
SELECT d.Name, d.Age FROM director d JOIN program p ON d.Director_ID = p.Director_ID GROUP BY d.Director_ID, d.Name, d.Age ORDER BY COUNT(p.Program_ID) DESC LIMIT 1
SELECT Name FROM director WHERE Age BETWEEN 30 AND 60
SELECT COUNT(*) FROM radio
SELECT tv_show_name, Original_Airdate FROM tv_show
SELECT Station_name FROM city_channel WHERE Affiliation != 'ABC'
placeholder
SELECT Transmitter FROM radio ORDER BY CAST(ERP_kW AS REAL) ASC
SELECT Transmitter FROM radio WHERE ERP_kW > 150 OR ERP_kW < 30
SELECT Transmitter FROM radio ORDER BY ERP_kW DESC LIMIT 1
SELECT AVG(ERP_kW) FROM radio
SELECT Affiliation FROM city_channel GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT Affiliation, COUNT(*) AS channel_count FROM city_channel GROUP BY Affiliation
placeholder
SELECT City, Station_name FROM city_channel ORDER BY Station_name
SELECT Affiliation FROM city_channel GROUP BY Affiliation HAVING COUNT(*) > 3
placeholder
placeholder
SELECT r.Transmitter, cc.City FROM radio r JOIN city_channel_radio ccr ON r.Radio_ID = ccr.Radio_ID JOIN city_channel cc ON ccr.City_channel_ID = cc.ID
placeholder
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1
SELECT Name FROM driver WHERE Citizenship = 'United States'
SELECT Name FROM driver WHERE Citizenship = 'United States'
SELECT DISTINCT r.Transmitter FROM radio r WHERE NOT EXISTS ( SELECT 1 FROM city_channel_radio ccr WHERE ccr.Radio_ID = r.Radio_ID )
SELECT v.Driver_ID, COUNT(*) AS vehicle_count FROM vehicle_driver v GROUP BY v.Driver_ID ORDER BY vehicle_count DESC LIMIT 1
SELECT MAX( Power ) AS Max_Power, AVG( Power ) AS Avg_Power FROM vehicle WHERE Builder = 'Zhuzhou'
SELECT Driver_ID FROM vehicle_driver GROUP BY Driver_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT MAX( Power ) AS Max_Power, AVG( Power ) AS Avg_Power FROM vehicle WHERE Builder = 'Zhuzhou'
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = '1996'
SELECT r.Transmitter, COUNT(*) AS channel_count FROM radio r
SELECT Vehicle_ID FROM vehicle_driver GROUP BY Vehicle_ID ORDER BY COUNT(*) ASC LIMIT 1
SELECT Build_Year , Model , Builder FROM vehicle
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = '1996'
SELECT Build_Year , Model , Builder FROM vehicle
SELECT COUNT(*) FROM driver WHERE Racing_Series = 'NASCAR'
SELECT AVG(Top_Speed) FROM vehicle
SELECT COUNT(*) FROM driver WHERE Racing_Series = 'NASCAR'
placeholder
SELECT AVG(Top_Speed) FROM vehicle
SELECT DISTINCT d.Name FROM driver d JOIN vehicle_driver vd ON d.Driver_ID = vd.Driver_ID JOIN vehicle v ON vd.Vehicle_ID = v.Vehicle_ID WHERE v.Power > 5000
SELECT Model FROM vehicle WHERE Total_Production > 100 OR Top_Speed > 150
SELECT Model , Build_Year FROM vehicle WHERE Model LIKE '%DJ%'
SELECT Model , Build_Year FROM vehicle WHERE Model LIKE '%DJ%'
SELECT Vehicle_ID FROM vehicle_driver GROUP BY Vehicle_ID ORDER BY COUNT(*) ASC LIMIT 1
SELECT DISTINCT d.Name FROM driver d JOIN vehicle_driver vd ON d.Driver_ID = vd.Driver_ID JOIN vehicle v ON vd.Vehicle_ID = v.Vehicle_ID WHERE v.Power > 5000
placeholder
placeholder
SELECT Model FROM vehicle WHERE Vehicle_ID NOT IN (SELECT Vehicle_ID FROM vehicle_driver)
SELECT COUNT(*) FROM vehicle WHERE Top_Speed = (SELECT MAX( Top_Speed ) FROM vehicle )
placeholder
SELECT COUNT(*) FROM vehicle WHERE Top_Speed = (SELECT MAX( Top_Speed ) FROM vehicle )
placeholder
SELECT Name FROM driver ORDER BY Name
SELECT Name FROM driver ORDER BY Name
placeholder
SELECT COUNT(*) AS driver_count, Racing_Series FROM driver GROUP BY Racing_Series
SELECT COUNT(*) AS driver_count, Racing_Series FROM driver GROUP BY Racing_Series
placeholder
SELECT COUNT(*) FROM Exams
placeholder
SELECT COUNT(*) FROM Exams
SELECT DISTINCT Subject_Code FROM Exams ORDER BY Subject_Code ASC
SELECT DISTINCT Subject_Code FROM Exams ORDER BY Subject_Code
SELECT COUNT(*) FROM driver LEFT JOIN vehicle_driver ON driver.Driver_ID = vehicle_driver.Driver_ID WHERE vehicle_driver.Driver_ID IS NULL
SELECT Exam_Name, Exam_Date FROM Exams WHERE Subject_Code != 'Database'
SELECT Exam_Date, Exam_Name FROM Exams WHERE Subject_Code != 'Database'
placeholder
SELECT Exam_Date FROM Exams WHERE Subject_Code LIKE '%data%' ORDER BY Exam_Date DESC
SELECT Exam_Date FROM Exams WHERE Subject_Code LIKE '%data%' ORDER BY Exam_Date DESC
SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments = Normal
SELECT Type_of_Question_Code, COUNT(*) AS Question_Count FROM Questions GROUP BY Type_of_Question_Code
SELECT Type_of_Question_Code, COUNT(*) AS Count_Of_Occurrence FROM Questions GROUP BY Type_of_Question_Code
SELECT COUNT(DISTINCT Comments) FROM Student_Answers
placeholder
placeholder
SELECT COUNT(DISTINCT Comments) FROM Student_Answers
SELECT s.First_Name, sa.Date_of_Answer FROM Students s JOIN Student_Answers sa ON s.Student_ID = sa.Student_ID
placeholder
SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments = 'Normal'
SELECT Student_Answer_Text FROM Student_Answers GROUP BY Student_Answer_Text ORDER BY COUNT(*) DESC
SELECT s.First_Name, sa.Date_of_Answer FROM Student_Answers sa JOIN Students s ON sa.Student_ID = s.Student_ID
SELECT s.Email_Adress, sa.Date_of_Answer FROM Students s JOIN Student_Answers sa ON s.Student_ID = sa.Student_ID ORDER BY sa.Date_of_Answer DESC
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY COUNT(*) ASC LIMIT 1
SELECT Valid_Answer_Text FROM Valid_Answers GROUP BY Valid_Answer_Text ORDER BY COUNT(Valid_Answer_Text) DESC LIMIT 1
SELECT Last_Name FROM Students WHERE Gender_MFU != 'M'
SELECT Last_Name FROM Students WHERE Gender_MFU != 'M'
SELECT Student_Answer_Text FROM Student_Answers GROUP BY Student_Answer_Text ORDER BY COUNT(*) DESC
SELECT Valid_Answer_Text FROM Valid_Answers GROUP BY Valid_Answer_Text ORDER BY COUNT(*) DESC LIMIT 1
SELECT Gender_MFU, COUNT(*) AS Number_of_Students FROM Students GROUP BY Gender_MFU
SELECT s.First_Name FROM Students s JOIN Student_Answers sa ON s.Student_ID = sa.Student_ID GROUP BY s.Student_ID HAVING COUNT(*) >= 2
SELECT Gender_MFU, COUNT(*) AS Number_of_Students FROM Students GROUP BY Gender_MFU
SELECT Last_Name FROM Students WHERE Gender_MFU = 'F' OR Gender_MFU = 'M'
SELECT Last_Name FROM Students WHERE Gender_MFU = 'F' OR Gender_MFU = 'M'
placeholder
SELECT Type_of_Question_Code FROM Questions GROUP BY Type_of_Question_Code HAVING COUNT(*) >= 3
placeholder
placeholder
SELECT s.First_Name FROM Students s LEFT JOIN Student_Answers sa ON s.Student_ID = sa.Student_ID WHERE sa.Student_ID IS NULL
SELECT * FROM Students
SELECT Type_of_Question_Code FROM Questions GROUP BY Type_of_Question_Code HAVING COUNT(*) >= 3
SELECT * FROM Students
SELECT COUNT(*) FROM Addresses
SELECT COUNT(*) FROM Addresses
SELECT address_id, address_details FROM Addresses
SELECT address_id, address_details FROM Addresses
SELECT s.First_Name FROM Students s WHERE NOT EXISTS ( SELECT 1 FROM Student_Answers sa WHERE sa.Student_ID = s.Student_ID )
SELECT COUNT(*) FROM `Products`
SELECT product_id, product_type_code, product_name FROM Products
SELECT product_price FROM Products WHERE product_name = 'Monitor'
SELECT COUNT(*) FROM Products
SELECT product_id, product_type_code, product_name FROM Products
SELECT product_price FROM Products WHERE product_name = 'Monitor'
SELECT MIN(product_price) AS min_price, AVG(product_price) AS avg_price, MAX(product_price) AS max_price FROM Products
placeholder
SELECT COUNT(*) FROM `Products` WHERE `product_type_code` = 'hardware'
placeholder
SELECT AVG(product_price) FROM Products WHERE product_type_code = 'Clothes'
SELECT MIN(product_price) AS min_price, AVG(product_price) AS avg_price, MAX(product_price) AS max_price FROM Products
SELECT COUNT(*) FROM Products WHERE product_type_code = 'Hardware'
SELECT product_name FROM Products WHERE product_price > (SELECT AVG(product_price) FROM Products)
SELECT AVG(product_price) FROM Products WHERE product_type_code = 'Clothes'
SELECT product_name FROM Products WHERE product_price > (SELECT AVG(product_price) FROM Products)
SELECT product_name FROM Products ORDER BY product_price DESC
SELECT product_id, product_name FROM Products WHERE product_type_code = 'Hardware' ORDER BY product_price ASC LIMIT 1
SELECT product_name FROM Products WHERE product_type_code = 'Clothes' ORDER BY product_price DESC LIMIT 1
SELECT product_id, product_name FROM Products WHERE product_type_code = 'Hardware' ORDER BY product_price ASC LIMIT 1
SELECT product_name FROM Products WHERE product_type_code = 'Hardware' AND product_price > (SELECT AVG(product_price) FROM Products WHERE product_type_code = 'Hardware')
SELECT product_name FROM Products ORDER BY product_price DESC
SELECT product_name FROM Products WHERE product_type_code = 'Hardware' ORDER BY product_price ASC
SELECT product_type_code, COUNT(*) AS product_count FROM Products GROUP BY product_type_code
SELECT COUNT(*) AS product_count, product_type_code FROM Products GROUP BY product_type_code
SELECT AVG(product_price) AS average_price, product_type_code FROM Products GROUP BY product_type_code
SELECT product_type_code FROM Products GROUP BY product_type_code HAVING COUNT(*) >= 2
SELECT product_type_code, AVG(product_price) AS average_price FROM Products GROUP BY product_type_code
SELECT product_name FROM Products WHERE product_type_code = 'Clothes' ORDER BY product_price DESC LIMIT 1
SELECT product_type_code FROM Products GROUP BY product_type_code HAVING COUNT(*) >= 2
SELECT COUNT(*) FROM `Customers`
SELECT customer_id, customer_name FROM Customers
SELECT product_type_code FROM Products GROUP BY product_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM `Customers`
placeholder
SELECT customer_id, customer_name FROM Customers
SELECT customer_address, customer_phone, customer_email FROM Customers WHERE customer_name = 'Jeromy'
SELECT payment_method_code, COUNT(*) AS customer_count FROM Customers GROUP BY payment_method_code
SELECT payment_method_code FROM Customers GROUP BY payment_method_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT customer_address, customer_phone, customer_email FROM Customers WHERE customer_name = 'Jeromy'
SELECT product_type_code FROM Products GROUP BY product_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT payment_method_code FROM Customers GROUP BY payment_method_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) AS customer_count, payment_method_code FROM Customers GROUP BY payment_method_code
block and not truncated. </REASONING>
SELECT `payment_method_code`, `customer_number` FROM `Customers` WHERE `customer_name` = 'Jeromy'
SELECT payment_method_code, customer_number FROM Customers WHERE customer_name = 'Jeromy'
SELECT DISTINCT payment_method_code FROM Customers
SELECT DISTINCT payment_method_code FROM Customers
SELECT product_id, product_type_code FROM Products ORDER BY product_name
SELECT COUNT(*) FROM `Customer_Orders`
SELECT product_id, product_type_code FROM Products ORDER BY product_name ASC
SELECT COUNT(*) FROM `Customer_Orders`
SELECT product_type_code FROM Products GROUP BY product_type_code ORDER BY COUNT(*) ASC LIMIT 1
SELECT co.order_id, co.order_date, co.order_status_code FROM `Customer_Orders` co JOIN `Customers` c ON co.customer_id = c.customer_id WHERE c.customer_name = 'Jeromy'
SELECT product_type_code FROM Products GROUP BY product_type_code ORDER BY COUNT(*) ASC LIMIT 1
SELECT c.customer_name, c.customer_id, COUNT(co.order_id) AS number_of_orders FROM Customers c JOIN Customer_Orders co ON c.customer_id = co.customer_id GROUP BY c.customer_id, c.customer_name
SELECT c.customer_id, c.customer_name, c.customer_phone, c.customer_email FROM Customers c JOIN Customer_Orders co ON c.customer_id = co.customer_id GROUP BY c.customer_id ORDER BY COUNT(co.order_id) DESC LIMIT 1
placeholder
placeholder
SELECT order_status_code, COUNT(*) AS order_count FROM `Customer_Orders` GROUP BY order_status_code
SELECT COUNT(*) AS order_count, order_status_code FROM `Customer_Orders` GROUP BY order_status_code
SELECT order_status_code FROM Customer_Orders GROUP BY order_status_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM Customers LEFT JOIN Customer_Orders ON Customers.customer_id = Customer_Orders.customer_id WHERE Customer_Orders.customer_id IS NULL
SELECT order_status_code FROM Customer_Orders GROUP BY order_status_code ORDER BY COUNT(*) DESC LIMIT 1
placeholder
SELECT COUNT(*) FROM `Order_Items` JOIN `Products` ON `Order_Items`.`product_id` = `Products`.`product_id` WHERE `Products`.`product_name` = 'Monitor'
SELECT p.product_name FROM Products p WHERE NOT EXISTS ( SELECT 1 FROM Order_Items oi WHERE oi.product_id = p.product_id )
placeholder
SELECT COUNT(*) FROM `Order_Items` JOIN `Products` ON `Order_Items`.`product_id` = `Products`.`product_id` WHERE `Products`.`product_type_code` = 'Monitor'
SELECT COUNT(*) FROM Customer_Orders
SELECT COUNT(DISTINCT customer_id) AS customer_count FROM `Customer_Orders`
placeholder
placeholder
placeholder
SELECT COUNT(*) FROM building
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT COUNT(*) FROM building
placeholder
SELECT Name FROM building ORDER BY Number_of_Stories ASC
placeholder
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT MAX(Number_of_Stories) FROM building WHERE Completed_Year != 1980
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT AVG(Population) FROM region
SELECT AVG( Population ) FROM region
SELECT MAX( Number_of_Stories ) FROM building WHERE Completed_Year != 1980
placeholder
placeholder
SELECT Name FROM region ORDER BY Name ASC
placeholder
placeholder
SELECT Name FROM region ORDER BY Name
SELECT Capital FROM region WHERE Area > 10000
SELECT Name FROM region ORDER BY Area DESC LIMIT 5
SELECT Capital FROM region WHERE Area > 10000
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1
SELECT b.Name, r.Name FROM building b JOIN region r ON b.Region_ID = r.Region_ID
SELECT Name FROM region ORDER BY Area DESC LIMIT 5
SELECT b.Name, r.Name FROM building b JOIN region r ON b.Region_ID = r.Region_ID
SELECT r.Name FROM region r JOIN building b ON r.Region_ID = b.Region_ID GROUP BY r.Region_ID, r.Name HAVING COUNT(b.Building_ID) > 1
SELECT r.Name FROM region r JOIN building b ON r.Region_ID = b.Region_ID GROUP BY r.Region_ID HAVING COUNT(b.Building_ID) > 1
SELECT b.Address, r.Capital FROM building b JOIN region r ON b.Region_ID = r.Region_ID
SELECT b.Number_of_Stories FROM building b JOIN region r ON b.Region_ID = r.Region_ID WHERE r.Name = 'Abruzzo'
SELECT Completed_Year, COUNT(*) AS Number_of_Buildings_Completed FROM building GROUP BY Completed_Year
SELECT b.Number_of_Stories FROM building b JOIN region r ON b.Region_ID = r.Region_ID WHERE r.Name = 'Abruzzo'
SELECT Completed_Year, COUNT(*) AS Number_of_Buildings FROM building GROUP BY Completed_Year
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1
SELECT b.Address, r.Name FROM building b JOIN region r ON b.Region_ID = r.Region_ID
SELECT r.Capital FROM region r JOIN building b ON b.Region_ID = r.Region_ID GROUP BY r.Region_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT Address FROM building
SELECT DISTINCT Address FROM building
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT Channel_Details FROM Channels ORDER BY Channel_Details ASC
SELECT r.Name FROM region r WHERE NOT EXISTS ( SELECT 1 FROM building b WHERE b. Region_ID = r. Region_ID )
placeholder
SELECT Channel_Details FROM Channels ORDER BY Channel_Details
SELECT COUNT(*) FROM Services
SELECT r.Name FROM region r WHERE NOT EXISTS ( SELECT 1 FROM building b WHERE b.Region_ID = r.Region_ID )
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
placeholder
SELECT COUNT(*) FROM Services
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT s.Service_Details FROM Customers c JOIN Customers_and_Services cas ON c.Customer_ID = cas.Customer_ID JOIN Services s ON cas.Service_ID = s.Service_ID WHERE c.Customer_Details = 'Hardy Kutch'
SELECT c.Customer_Details FROM Customers c JOIN Customers_and_Services cas ON c.Customer_ID = cas.Customer_ID GROUP BY c.Customer_ID ORDER BY COUNT(cas.Service_ID) DESC LIMIT 1
SELECT s.Service_Details FROM Services s JOIN Customers_and_Services c ON s.Service_ID = c.Service_ID GROUP BY s.Service_ID HAVING COUNT(*) > 3
SELECT c.Customer_Details FROM Customers c JOIN Customers_and_Services cas ON c.Customer_ID = cas.Customer_ID GROUP BY c.Customer_ID ORDER BY COUNT(DISTINCT cas.Service_ID) DESC LIMIT 1
SELECT s.Service_Details FROM Services s JOIN Customers_and_Services cas ON s.Service_ID = cas.Service_ID GROUP BY s.Service_ID HAVING COUNT(*) > 3
placeholder
SELECT COUNT(DISTINCT Customers_and_Services_Details) FROM Customers_and_Services
placeholder
SELECT Customer_ID, Customer_Details FROM Customers WHERE Customer_Details LIKE '%Kutch%'
placeholder
SELECT Customer_Details FROM Customers WHERE Customer_Details LIKE '%Kutch%'
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT c.Customer_Details FROM Customers c JOIN Customer_Interactions ci ON c.Customer_ID = ci.Customer_ID WHERE ci.Status_Code = 'Stuck' AND ci.Services_and_Channels_Details = 'bad'
placeholder
placeholder
placeholder
placeholder
SELECT COUNT(*) FROM Integration_Platform WHERE Integration_Platform_Details = 'Success'
placeholder
placeholder
SELECT s.Service_Details FROM Services s WHERE NOT EXISTS ( SELECT 1 FROM Customers_and_Services c WHERE c.Service_ID = s.Service_ID )
SELECT c.Customer_Details FROM Customers c JOIN Customer_Interactions ci ON c.Customer_ID = ci.Customer_ID WHERE ci.Status_Code = 'Stuck' AND ci.Services_and_Channels_Details = 'bad'
SELECT s.Service_Details FROM Services s LEFT JOIN Customers_and_Services cas ON s.Service_ID = cas.Service_ID WHERE cas.Service_ID IS NULL
SELECT c.Customer_Details FROM Integration_Platform i JOIN Customer_Interactions ci ON i.Customer_Interaction_ID = ci.Customer_Interaction_ID JOIN Customers c ON ci.Customer_ID = c.Customer_ID WHERE i.Integration_Platform_Details = 'Fail'
SELECT COUNT(*) FROM Vehicles
placeholder
SELECT Analytical_Layer_Type_Code, COUNT(*) AS Usage_Count FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code
SELECT COUNT(*) FROM Vehicles
SELECT name FROM Vehicles ORDER BY Model_year DESC
placeholder
SELECT name FROM Vehicles ORDER BY Model_year DESC
SELECT DISTINCT Type_of_powertrain FROM Vehicles
SELECT DISTINCT Type_of_powertrain FROM Vehicles
SELECT name , Type_of_powertrain , Annual_fuel_cost FROM Vehicles WHERE Model_year = 2013 OR Model_year = 2014
SELECT name , Type_of_powertrain , Annual_fuel_cost FROM Vehicles WHERE Model_year IN (2013, 2014)
SELECT Type_of_powertrain , COUNT(*) AS vehicle_count FROM Vehicles GROUP BY Type_of_powertrain
SELECT COUNT(*) AS vehicle_count, Type_of_powertrain FROM Vehicles GROUP BY Type_of_powertrain
placeholder
SELECT Type_of_powertrain FROM Vehicles GROUP BY Type_of_powertrain ORDER BY COUNT(*) DESC LIMIT 1
SELECT Type_of_powertrain FROM Vehicles GROUP BY Type_of_powertrain ORDER BY COUNT(*) DESC LIMIT 1
placeholder
SELECT MIN( Annual_fuel_cost ) AS min_annual_fuel_cost, MAX( Annual_fuel_cost ) AS max_annual_fuel_cost, AVG( Annual_fuel_cost ) AS avg_annual_fuel_cost FROM Vehicles
SELECT name , Model_year FROM Vehicles WHERE City_fuel_economy_rate <= Highway_fuel_economy_rate
SELECT name , Model_year FROM Vehicles WHERE City_fuel_economy_rate <= Highway_fuel_economy_rate
SELECT MIN( Annual_fuel_cost ) AS min_annual_fuel_cost, MAX( Annual_fuel_cost ) AS max_annual_fuel_cost, AVG( Annual_fuel_cost ) AS avg_annual_fuel_cost FROM Vehicles
SELECT Type_of_powertrain , AVG( Annual_fuel_cost ) AS average_annual_fuel_cost FROM Vehicles GROUP BY Type_of_powertrain HAVING COUNT(*) >= 2
SELECT s.Service_Details FROM Customers_and_Services cas JOIN Services s ON cas.Service_ID = s.Service_ID WHERE cas.Customers_and_Services_Details = 'unsatisfied'
SELECT name , age , membership_credit FROM Customers
SELECT name, age FROM Customers ORDER BY membership_credit DESC LIMIT 1
placeholder
SELECT name, age, membership_credit FROM Customers
SELECT name , age FROM Customers ORDER BY membership_credit DESC LIMIT 1
SELECT AVG(age) FROM Customers WHERE membership_credit > (SELECT AVG(membership_credit) FROM Customers)
SELECT * FROM Discount
SELECT * FROM Discount
SELECT V.name, SUM(R.total_hours) AS total_hours FROM Renting_history R JOIN Vehicles V ON R.vehicles_id = V.id GROUP BY V.name
placeholder
SELECT v.name FROM Vehicles v LEFT JOIN Renting_history rh ON v.id = rh.vehicles_id WHERE rh.vehicles_id IS NULL
SELECT c.name FROM Customers c JOIN Renting_history r ON c.id = r.customer_id GROUP BY c.id, c.name HAVING COUNT(r.id) >= 2
SELECT c.name FROM Customers c JOIN Renting_history r ON c.id = r.customer_id GROUP BY c.name HAVING COUNT(r.id) >= 2
SELECT V.name, SUM(R.total_hours) AS total_rental_hours FROM Vehicles V JOIN Renting_history R ON V.id = R.vehicles_id GROUP BY V.name
SELECT v.name FROM Vehicles v JOIN Renting_history rh ON v.id = rh.vehicles_id ORDER BY rh.total_hours DESC
SELECT AVG(age) FROM Customers WHERE membership_credit > (SELECT AVG(membership_credit) FROM Customers)
SELECT V.name, V.Model_year FROM Renting_history RH JOIN Vehicles V ON RH.vehicles_id = V.id GROUP BY V.name, V.Model_year ORDER BY COUNT(*) DESC LIMIT 1
SELECT V.name FROM Vehicles V JOIN Renting_history RH ON V.id = RH.vehicles_id ORDER BY RH.total_hours DESC
SELECT d.name FROM Discount d JOIN Renting_history rh ON d.id = rh.discount_id GROUP BY d.name ORDER BY COUNT(rh.id) DESC LIMIT 1
placeholder
SELECT d.name FROM Renting_history rh JOIN Discount d ON rh. discount_id = d. id GROUP BY d. name ORDER BY COUNT(rh. id ) DESC LIMIT 1
placeholder
SELECT AVG(amount_of_loan) FROM Student_Loans
SELECT AVG(amount_of_loan) FROM Student_Loans
SELECT AVG(City_fuel_economy_rate) AS average_city_fuel_rate, AVG(Highway_fuel_economy_rate) AS average_highway_fuel_rate FROM Vehicles GROUP BY Type_of_powertrain
SELECT V.name, V.Type_of_powertrain FROM Vehicles V JOIN Renting_history RH ON V.id = RH.vehicles_id GROUP BY V.id, V.name, V.Type_of_powertrain HAVING SUM(RH.total_hours) > 30
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT DISTINCT detention_summary FROM Detention
SELECT DISTINCT dt.detention_type_description FROM Detention d JOIN Ref_Detention_Type dt ON d.detention_type_code = dt.detention_type_code
placeholder
placeholder
SELECT s.bio_data, t.date_of_transcript FROM Students s JOIN Transcripts t ON s.student_id = t.student_id
placeholder
SELECT T.teacher_id, T.teacher_details FROM Teachers AS T JOIN Classes AS C ON T.teacher_id = C.teacher_id GROUP BY T.teacher_id ORDER BY COUNT(C.class_id) DESC LIMIT 1
SELECT s.student_details, rat.address_type_description FROM Students s LEFT JOIN Students_Addresses sa ON s.student_id = sa.student_id LEFT JOIN Ref_Address_Types rat ON sa.address_type_code = rat.address_type_code
placeholder
SELECT COUNT(*) AS count, behaviour_monitoring_details FROM Behaviour_Monitoring GROUP BY behaviour_monitoring_details ORDER BY count DESC LIMIT 1
placeholder
placeholder
SELECT s.bio_data, t.date_of_transcript FROM Students s JOIN Transcripts t ON s.student_id = t.student_id
placeholder
SELECT S.bio_data, SE.event_date FROM Students AS S INNER JOIN Student_Events AS SE ON S.student_id = SE.student_id
SELECT s.bio_data, se.event_date FROM Students s JOIN Student_Events se ON s.student_id = se.student_id
placeholder
placeholder
placeholder
SELECT a.achievement_details, rat.achievement_type_description FROM Achievements a JOIN Ref_Achievement_Type rat ON a.achievement_type_code = rat.achievement_type_code
placeholder
placeholder
SELECT date_of_transcript, transcript_details FROM Transcripts
placeholder
SELECT `date_of_transcript`, `transcript_details` FROM `Transcripts`
SELECT achievement_type_code, achievement_details, date_achievement FROM Achievements
SELECT datetime_detention_start, datetime_detention_end FROM Detention
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT datetime_detention_start, datetime_detention_end FROM Detention
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT COUNT(DISTINCT c.teacher_id) FROM Classes c LEFT JOIN Achievements a ON c.student_id = a.student_id
placeholder
placeholder
placeholder
placeholder
SELECT student_id, COUNT(class_id) AS number_of_courses FROM Classes GROUP BY student_id ORDER BY number_of_courses DESC LIMIT 1
SELECT COUNT(*) AS course_count, student_id FROM Classes GROUP BY student_id ORDER BY course_count DESC LIMIT 1
placeholder
placeholder
SELECT COUNT(*) AS number_of_courses, teacher_id FROM Classes GROUP BY teacher_id ORDER BY number_of_courses DESC LIMIT 1
placeholder
placeholder
SELECT MIN(date_of_loan) FROM Student_Loans
SELECT MIN(date_of_loan) FROM Student_Loans
placeholder
SELECT s.bio_data FROM Student_Loans sl JOIN Students s ON sl.student_id = s.student_id ORDER BY sl.amount_of_loan ASC LIMIT 1
placeholder
SELECT s.bio_data FROM Students s JOIN Student_Loans sl ON s.student_id = sl.student_id ORDER BY sl.amount_of_loan ASC LIMIT 1
SELECT s.bio_data, s.student_details FROM Students s JOIN Student_Loans sl ON s.student_id = sl.student_id WHERE sl.amount_of_loan > (SELECT AVG(amount_of_loan) FROM Student_Loans)
placeholder
SELECT student_id, SUM(amount_of_loan) AS total_loan FROM Student_Loans GROUP BY student_id
SELECT student_id, SUM(amount_of_loan) AS total_loan_amount FROM Student_Loans GROUP BY student_id
SELECT t.date_of_transcript FROM Transcripts t JOIN Student_Loans l ON t.student_id = l.student_id ORDER BY l.amount_of_loan DESC LIMIT 1
SELECT COUNT(DISTINCT student_id) FROM Detention
placeholder
SELECT COUNT(DISTINCT student_id) FROM Detention
placeholder
placeholder
placeholder
SELECT r.address_type_code, r.address_type_description FROM Students_Addresses sa JOIN Ref_Address_Types r ON sa.address_type_code = r.address_type_code GROUP BY r.address_type_code ORDER BY COUNT(sa.student_id) DESC LIMIT 1
placeholder
placeholder
SELECT datetime_detention_start FROM Detention
SELECT datetime_detention_start FROM Detention
SELECT Name FROM Author
SELECT Name, Address FROM Client
SELECT Name FROM Author
SELECT Name, Address FROM Client
SELECT Title, ISBN, SalePrice FROM Book
placeholder
SELECT Title, ISBN, SalePrice FROM Book
SELECT COUNT(*) FROM Book
SELECT COUNT(*) FROM Author
SELECT COUNT(*) FROM Book
placeholder
SELECT COUNT(*) FROM Client
placeholder
SELECT COUNT(*) FROM Author
SELECT Name, Address FROM Client ORDER BY Name
placeholder
SELECT COUNT(*) FROM Client
placeholder
SELECT Name, Address FROM Client ORDER BY Name
SELECT o.IdOrder, c.Name FROM Orders o JOIN Client c ON o.IdClient = c.IdClient
SELECT b.Title, a.Name FROM Book b JOIN Author a ON b.Author = a.idAuthor
SELECT O.IdOrder, C.Name FROM Orders O JOIN Client C ON O.IdClient = C.IdClient
SELECT b.ISBN, COUNT(*) AS NumberOfOrders FROM Book b JOIN Books_Order bo ON b.ISBN = bo.ISBN GROUP BY b.ISBN
SELECT ISBN, SUM(amount) AS total_amount_ordered FROM Books_Order GROUP BY ISBN
SELECT b.Title FROM Book b JOIN Books_Order bo ON b.ISBN = bo.ISBN GROUP BY b.Title ORDER BY COUNT(*) DESC LIMIT 1
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT C.Name FROM Client C INNER JOIN Orders O ON C.IdClient = O.IdClient
SELECT DISTINCT C.Name FROM Client C JOIN Orders O ON C.IdClient = O.IdClient
placeholder
SELECT c.Name FROM Client c JOIN Orders o ON c.IdClient = o.IdClient GROUP BY c.Name ORDER BY COUNT(o.IdOrder) DESC LIMIT 1
SELECT DISTINCT Title FROM Book JOIN Books_Order ON Book.ISBN = Books_Order.ISBN
SELECT c.Name FROM Client c JOIN Orders o ON c.IdClient = o.IdClient GROUP BY c.Name ORDER BY COUNT(o.IdOrder) DESC LIMIT 1
SELECT DISTINCT b.Title FROM Book b JOIN Books_Order bo ON b.ISBN = bo.ISBN
placeholder
SELECT C.Name, SUM(BO.amount) AS total_books_ordered FROM Client C JOIN Orders O ON C.IdClient = O.IdClient JOIN Books_Order BO ON O.IdOrder = BO.IdOrder GROUP BY C.Name
placeholder
SELECT b.Title FROM Book b LEFT JOIN Books_Order bo ON b.ISBN = bo.ISBN WHERE bo.ISBN IS NULL
SELECT Client.Name, COUNT(*) FROM Client JOIN Orders ON Client.IdClient = Orders.IdClient GROUP BY Client.Name
placeholder
placeholder
placeholder
SELECT MAX(SalePrice), MIN(SalePrice) FROM Book
SELECT AVG(PurchasePrice), AVG(SalePrice) FROM Book
SELECT Title FROM Book WHERE NOT EXISTS (SELECT 1 FROM Books_Order WHERE Books_Order.ISBN = Book.ISBN)
SELECT AVG(PurchasePrice) AS AveragePurchasePrice, AVG(SalePrice) AS AverageSalePrice FROM Book
SELECT c.Name FROM Client c LEFT JOIN Orders o ON c.IdClient = o.IdClient WHERE o.IdClient IS NULL
SELECT MAX(SalePrice - PurchasePrice) AS MaxDifference FROM Book
SELECT MAX(SalePrice), MIN(SalePrice) FROM Book
SELECT ABS(SalePrice - PurchasePrice) AS price_difference FROM Book ORDER BY price_difference DESC LIMIT 1
SELECT Title FROM Book WHERE SalePrice > (SELECT AVG(SalePrice) FROM Book)
SELECT Title FROM Book WHERE SalePrice > (SELECT AVG(SalePrice) FROM Book)
SELECT Title FROM Book WHERE PurchasePrice = (SELECT MAX(PurchasePrice) FROM Book)
SELECT Title FROM Book WHERE SalePrice = (SELECT MIN(SalePrice) FROM Book)
placeholder
SELECT Title FROM Book WHERE SalePrice = (SELECT MIN(SalePrice) FROM Book)
SELECT Title FROM Book WHERE PurchasePrice = (SELECT MAX(PurchasePrice) FROM Book)
SELECT AVG(B.SalePrice) FROM Book AS B JOIN Author AS A ON B.Author = A.idAuthor WHERE A.Name = 'George Orwell'
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT B.Title FROM Book B JOIN Author A ON B.Author = A.idAuthor WHERE A.Name LIKE '%Plato%'
placeholder
SELECT A.Name FROM Book B JOIN Author A ON B.Author = A.idAuthor WHERE B.Title = 'Pride and Prejudice'
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT COUNT(*) FROM book
SELECT Title FROM book ORDER BY Title
placeholder
placeholder
placeholder
SELECT Title FROM book ORDER BY Pages DESC
SELECT Type , Release FROM book
SELECT Title FROM book WHERE Type != 'Poet'
SELECT Book_ID, MAX(Chapters) AS Max_Chapters, MIN(Chapters) AS Min_Chapters FROM book GROUP BY Book_ID
SELECT book.Title, review.Rating FROM book JOIN review ON book.Book_ID = review.Book_ID
SELECT AVG(Rating) FROM review
SELECT b.Title FROM book b JOIN review r ON b.Book_ID = r.Book_ID ORDER BY r.Rank DESC LIMIT 1
placeholder
placeholder
SELECT Type, COUNT(*) AS Number_of_Books FROM book GROUP BY Type
SELECT AVG(r.Readers_in_Million) FROM review r JOIN book b ON r.Book_ID = b.Book_ID WHERE b.Type = 'Novel'
SELECT Type FROM book GROUP BY Type ORDER BY COUNT(*) DESC LIMIT 1
SELECT Type FROM book GROUP BY Type HAVING COUNT(*) >= 3
SELECT r.Rank FROM book b JOIN review r ON b.Book_ID = r.Book_ID ORDER BY b.Pages ASC LIMIT 1
SELECT b.Title FROM book b JOIN review r ON b.Book_ID = r.Book_ID ORDER BY r.Rating ASC
placeholder
SELECT COUNT(DISTINCT Type) FROM book
SELECT COUNT(*) FROM customer
SELECT Type, Title FROM book WHERE NOT EXISTS ( SELECT 1 FROM review WHERE review.Book_ID = book.Book_ID )
SELECT COUNT(*) FROM customer
SELECT COUNT(*) FROM book LEFT JOIN review ON book.Book_ID = review.Book_ID WHERE review.Book_ID IS NULL
SELECT Name FROM customer ORDER BY Level_of_Membership ASC
SELECT Nationality , Card_Credit FROM customer
SELECT Name FROM customer ORDER BY Level_of_Membership ASC
SELECT Nationality , Card_Credit FROM customer
SELECT r.Rating FROM review r JOIN book b ON r.Book_ID = b.Book_ID ORDER BY b.Chapters DESC LIMIT 1
SELECT Name FROM customer WHERE Nationality = England OR Nationality = Australia
SELECT Name FROM customer WHERE Nationality = England OR Nationality = Australia
SELECT AVG( Card_Credit ) FROM customer WHERE Level_of_Membership > 1
SELECT AVG(Card_Credit) FROM customer WHERE Level_of_Membership > 1
SELECT Card_Credit FROM customer ORDER BY Level_of_Membership DESC LIMIT 1
SELECT Nationality, COUNT(*) AS Number_of_Customers FROM customer GROUP BY Nationality
SELECT Nationality, COUNT(*) AS Customer_Count FROM customer GROUP BY Nationality
SELECT Card_Credit FROM customer ORDER BY Level_of_Membership DESC LIMIT 1
placeholder
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
placeholder
SELECT c.Name, co.Dish_Name FROM customer_order co JOIN customer c ON co.Customer_ID = c.Customer_ID
SELECT c.Name, co.Dish_Name FROM customer c JOIN customer_order co ON c.Customer_ID = co.Customer_ID
SELECT c.Name, SUM(co.Quantity) AS Total_Quantity FROM customer c JOIN customer_order co ON c.Customer_ID = co.Customer_ID GROUP BY c.Name
SELECT c.Name, co.Dish_Name FROM customer_order co JOIN customer c ON co.Customer_ID = c.Customer_ID ORDER BY co.Quantity DESC
SELECT c.Name, co.Dish_Name FROM customer c JOIN customer_order co ON c.Customer_ID = co.Customer_ID ORDER BY co.Quantity DESC
SELECT Customer_ID FROM customer_order GROUP BY Customer_ID HAVING SUM(Quantity) > 1
SELECT DISTINCT Manager FROM branch
SELECT DISTINCT Manager FROM branch
SELECT c.Name, SUM(co.Quantity) AS Total_Quantity FROM customer c JOIN customer_order co ON c.Customer_ID = co.Customer_ID GROUP BY c.Name
SELECT COUNT(*) FROM member
SELECT Name FROM member ORDER BY Age ASC
SELECT Name FROM member WHERE Nationality != 'England'
SELECT c.Name FROM customer c LEFT JOIN customer_order co ON c.Customer_ID = co.Customer_ID WHERE co.Customer_ID IS NULL
SELECT Name , Nationality FROM member
placeholder
SELECT Nationality FROM customer WHERE Card_Credit > 50 INTERSECT SELECT Nationality FROM customer WHERE Card_Credit < 75
SELECT Name FROM member ORDER BY Age DESC LIMIT 1
SELECT Nationality FROM member GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM member GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT c.Name FROM customer c LEFT JOIN customer_order co ON c.Customer_ID = co.Customer_ID WHERE co.Customer_ID IS NULL
SELECT Nationality, COUNT(*) AS Member_Count FROM member GROUP BY Nationality
SELECT Name FROM member WHERE Age = 19 OR Age = 20
placeholder
SELECT Team_Leader FROM club WHERE Club_Name = Houston
SELECT Club_Name FROM club WHERE Club_Name LIKE '%state%'
SELECT AVG(m.Age) FROM member m JOIN club_leader cl ON m.Member_ID = cl.Member_ID
SELECT m.Name FROM club c JOIN club_leader cl ON c.Club_ID = cl.Club_ID JOIN member m ON cl.Member_ID = m.Member_ID WHERE c.Overall_Ranking > 100
SELECT Name FROM member WHERE Member_ID NOT IN (SELECT Member_ID FROM club_leader)
SELECT Collection_Subset_Name FROM Collection_Subsets
SELECT Collecrtion_Subset_Details FROM Collection_Subsets WHERE Collection_Subset_Name = 'Top collection'
SELECT Document_Subset_Name FROM Document_Subsets
SELECT Document_Subset_Details FROM Document_Subsets WHERE Document_Subset_Name = 'Best for 2000'
placeholder
SELECT Document_Subset_Details FROM Document_Subsets WHERE Document_Subset_Name = 'Best for 2000'
placeholder
SELECT Document_Object_ID FROM Document_Objects
SELECT Parent_Document_Object_ID FROM Document_Objects WHERE Owner = 'Marlin'
placeholder
placeholder
SELECT Document_Object_ID FROM Document_Objects WHERE Owner = 'Marlin'
SELECT Owner FROM Document_Objects WHERE Description = 'Braeden Collection'
placeholder
placeholder
SELECT COUNT(*) FROM Document_Objects WHERE Owner = 'Marlin'
SELECT COUNT(*) FROM Document_Objects WHERE Owner = 'Marlin'
SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IS NULL
placeholder
SELECT do.Owner FROM Collections c JOIN Documents_in_Collections dic ON c.Collection_ID = dic.Collection_ID JOIN Document_Objects do ON dic.Document_Object_ID = do.Document_Object_ID WHERE c.Collection_Name = 'Braeden Collection'
SELECT Collection_Name FROM Collections
placeholder
placeholder
SELECT DISTINCT a.Description FROM Document_Objects a JOIN Document_Objects b ON a.Document_Object_ID = b.Parent_Document_Object_ID
placeholder
SELECT Collection_Name FROM Collections
SELECT Collection_Description FROM Collections WHERE Collection_Name = 'Best'
SELECT Collection_Description FROM Collections WHERE Collection_Name = 'Best'
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT COUNT(*) FROM Collections WHERE Parent_Collection_ID = ( SELECT Collection_ID FROM Collections WHERE Collection_Name = 'Best' )
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT Document_Object_ID FROM Documents_in_Collections GROUP BY Document_Object_ID ORDER BY COUNT(*) ASC LIMIT 1
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT dsml.Document_Object_ID FROM Document_Subset_Members dsml JOIN Document_Subsets ds ON dsml.Document_Subset_ID = ds.Document_Subset_ID WHERE ds.Document_Subset_Name = 'Best for 2000'
SELECT c.Collection_Name FROM Document_Objects do JOIN Documents_in_Collections dic ON do.Document_Object_ID = dic.Document_Object_ID JOIN Collections c ON dic.Collection_ID = c.Collection_ID WHERE do.Owner = 'Ransom'
SELECT c.Collection_Name FROM Document_Objects do JOIN Documents_in_Collections dic ON do.Document_Object_ID = dic.Document_Object_ID JOIN Collections c ON dic.Collection_ID = c.Collection_ID WHERE do.Owner = 'Ransom'
placeholder
placeholder
SELECT Document_Object_ID, COUNT(*) AS Collection_Count FROM Documents_in_Collections GROUP BY Document_Object_ID
placeholder
SELECT COUNT(dioc.Document_Object_ID) FROM Documents_in_Collections dioc JOIN Collections c ON dioc.Collection_ID = c.Collection_ID WHERE c.Collection_Name = 'Best'
placeholder
placeholder
SELECT Document_Object_ID, COUNT(*) AS collection_count FROM Documents_in_Collections GROUP BY Document_Object_ID
SELECT COUNT(DOC.Document_Object_ID) FROM Documents_in_Collections DOC JOIN Collections COL ON DOC.Collection_ID = COL.Collection_ID WHERE COL.Collection_Name = 'Best'
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT COUNT(*) FROM songs WHERE name LIKE '%Love%'
placeholder
SELECT name FROM songs ORDER BY name
SELECT MAX( voice_sound_quality ), MIN( voice_sound_quality ) FROM performance_score
SELECT name, language FROM songs
placeholder
SELECT name , original_artist FROM songs WHERE english_translation = 'All the streets of love'
SELECT id , language , original_artist FROM songs WHERE name != 'Love'
SELECT DISTINCT p.stage_presence FROM performance_score p JOIN songs s ON p.songs_id = s.id WHERE s.language = 'English'
placeholder
placeholder
SELECT p.id, p.name FROM performance_score ps JOIN participants p ON ps.participant_id = p.id WHERE ps.voice_sound_quality = 5 OR ps.rhythm_tempo = 5
SELECT COUNT(*) FROM performance_score WHERE stage_presence < 7 OR stage_presence > 9
SELECT ps.voice_sound_quality FROM performance_score ps JOIN songs s ON ps.songs_id = s.id WHERE s.name = 'The Balkan Girls' AND s.language = 'English'
SELECT p.id, p.name FROM participants p JOIN performance_score ps ON p.id = ps.participant_id GROUP BY p.id, p.name HAVING COUNT(ps.songs_id) >= 2
SELECT s.language, AVG(ps.rhythm_tempo) AS average_rhythm_score FROM songs s JOIN performance_score ps ON s.id = ps.songs_id GROUP BY s.language
SELECT DISTINCT p.name FROM participants p JOIN performance_score ps ON p.id = ps.participant_id JOIN songs s ON ps.songs_id = s.id WHERE s.language = 'English'
SELECT name FROM songs WHERE name LIKE '%Is%'
SELECT COUNT(*) FROM City
placeholder
SELECT COUNT(*) FROM songs LEFT JOIN performance_score ON songs.id = performance_score.songs_id WHERE performance_score.songs_id IS NULL
placeholder
SELECT COUNT(*) FROM City
SELECT DISTINCT state FROM City
SELECT DISTINCT state FROM City
SELECT COUNT(DISTINCT country) FROM City
SELECT COUNT(DISTINCT country) FROM City
placeholder
SELECT city_name, city_code, state, country FROM City
SELECT DISTINCT s.original_artist FROM performance_score ps JOIN songs s ON ps.songs_id = s.id WHERE ps.rhythm_tempo > 5 ORDER BY ps.voice_sound_quality DESC
SELECT latitude, longitude FROM City WHERE city_name = 'Baltimore'
SELECT COUNT(*) FROM City WHERE country = 'Canada'
SELECT city_name FROM City WHERE state = 'PA'
SELECT COUNT(*) FROM City WHERE country = 'Canada'
SELECT city_name, city_code, state, country FROM City
SELECT city_name FROM City WHERE state = 'PA'
SELECT latitude, longitude FROM City WHERE city_name = 'Baltimore'
SELECT state, COUNT(*) AS number_of_cities FROM City GROUP BY state
SELECT city_name FROM City WHERE country = 'USA' ORDER BY latitude
SELECT COUNT(*) AS city_count, state FROM City GROUP BY state
SELECT COUNT(*) AS city_count, country FROM City GROUP BY country
SELECT city_name FROM City WHERE country = 'USA' ORDER BY latitude
SELECT country, COUNT(*) AS number_of_cities FROM City GROUP BY country
SELECT state FROM City GROUP BY state HAVING COUNT(*) >= 2
placeholder
SELECT state FROM City GROUP BY state ORDER BY COUNT(*) DESC LIMIT 1
SELECT state FROM City GROUP BY state HAVING COUNT(*) >= 2
SELECT country FROM City GROUP BY country ORDER BY COUNT(*) ASC LIMIT 1
SELECT state FROM City GROUP BY state ORDER BY COUNT(*) DESC LIMIT 1
SELECT S.Fname, S.Lname FROM Student S JOIN City C ON S.city_code = C.city_code WHERE C.state = 'MD'
SELECT S.Fname, S.Lname FROM Student S JOIN City C ON S.city_code = C.city_code WHERE C.state = 'MD'
SELECT COUNT(*) FROM Student JOIN City ON Student.city_code = City.city_code WHERE City.country = 'China'
SELECT s.Fname, s.Major FROM Student s JOIN City c ON s.city_code = c.city_code WHERE c.city_name = 'Baltimore'
SELECT COUNT(*) AS student_count, City.country FROM Student JOIN City ON Student.city_code = City.city_code GROUP BY City.country
SELECT S.Fname, S.Major FROM Student S JOIN City C ON S.city_code = C.city_code WHERE C.city_name = 'Baltimore'
SELECT country FROM City GROUP BY country ORDER BY COUNT(*) ASC LIMIT 1
SELECT COUNT(*) FROM Student JOIN City ON Student.city_code = City.city_code WHERE City.country = 'China'
SELECT COUNT(*) AS student_count, City.country FROM Student JOIN City ON Student.city_code = City.city_code GROUP BY City.country
SELECT c.state FROM Student s JOIN City c ON s.city_code = c.city_code GROUP BY c.state ORDER BY COUNT(s.StuID) DESC LIMIT 1
SELECT COUNT(*) AS student_count, City.city_name FROM Student JOIN City ON Student.city_code = City.city_code GROUP BY City.city_name
SELECT c.city_name FROM Student s JOIN City c ON s.city_code = c.city_code GROUP BY c.city_name HAVING COUNT(s.StuID) >= 3
SELECT c.country FROM Student s JOIN City c ON s.city_code = c.city_code GROUP BY c.country ORDER BY COUNT(*) ASC LIMIT 1
SELECT c.state FROM Student s JOIN City c ON s.city_code = c.city_code GROUP BY c.state ORDER BY COUNT(s.StuID) DESC LIMIT 1
SELECT c.city_name FROM City c JOIN Student s ON c.city_code = s.city_code GROUP BY c.city_name HAVING COUNT(s.StuID) >= 3
SELECT c.country FROM Student s JOIN City c ON s.city_code = c.city_code GROUP BY c.country ORDER BY COUNT(s.StuID) ASC LIMIT 1
SELECT s.StuID FROM Student s JOIN City c ON s.city_code = c.city_code WHERE c.country != 'USA'
SELECT c.state FROM Student s JOIN City c ON s.city_code = c.city_code GROUP BY c.state HAVING COUNT(s.StuID) > 5
SELECT S.StuID FROM Student S JOIN City C ON S.city_code = C.city_code WHERE S.Sex = 'F' AND C.state = 'PA'
SELECT c.state FROM Student s JOIN City c ON s.city_code = c.city_code GROUP BY c.state HAVING COUNT(s.StuID) > 5
SELECT s.StuID FROM Student s JOIN City c ON s.city_code = c.city_code WHERE c.country != 'USA'
SELECT S.StuID FROM Student S JOIN City C ON S.city_code = C.city_code WHERE S.Sex = 'F' AND C.state = 'PA'
SELECT s.StuID FROM Student s JOIN City c ON s.city_code = c.city_code WHERE s.Sex = 'M' AND c.country != 'USA'
SELECT s.StuID FROM Student s JOIN City c ON s.city_code = c.city_code WHERE s.Sex = 'M' AND c.country != 'USA'
SELECT distance FROM Direct_distance WHERE (city1_code = 'BAL' AND city2_code = 'CHI') OR (city1_code = 'CHI' AND city2_code = 'BAL')
SELECT AVG(distance) AS avg_distance, MIN(distance) AS min_distance, MAX(distance) AS max_distance FROM Direct_distance
SELECT distance FROM Direct_distance WHERE city1_code = 'BAL' AND city2_code = 'CHI' OR city1_code = 'CHI' AND city2_code = 'BAL'
SELECT AVG(distance) AS average_distance, MIN(distance) AS minimum_distance, MAX(distance) AS maximum_distance FROM Direct_distance
placeholder
SELECT city1_code, city2_code FROM Direct_distance ORDER BY distance DESC LIMIT 1
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT c.state FROM Student s JOIN City c ON s.city_code = c.city_code WHERE s.Fname = 'Linda'
placeholder
SELECT * FROM Sailors WHERE age > 30
SELECT name, age FROM Sailors WHERE age < 30
SELECT c.state FROM Student s JOIN City c ON s.city_code = c.city_code WHERE s.fname = 'Linda'
placeholder
SELECT sid, name, rating, age FROM Sailors WHERE age > 30
placeholder
SELECT name, age FROM Sailors WHERE age < 30
SELECT DISTINCT bid FROM Reserves WHERE sid = 1
placeholder
placeholder
SELECT DISTINCT bid FROM Reserves
SELECT S.name FROM Sailors AS S JOIN Reserves AS R ON S.sid = R.sid WHERE R.bid = 102
SELECT b.name, b.color FROM Reserves r JOIN Boats b ON r.bid = b.bid WHERE r.sid = 1
SELECT name FROM Sailors WHERE name LIKE '%e%'
SELECT name FROM Sailors WHERE name LIKE '%e%'
SELECT s.name FROM Sailors s JOIN Reserves r ON s.sid = r.sid WHERE r.bid = 102
SELECT DISTINCT bid FROM Reserves
SELECT S.name, S.sid FROM Sailors AS S JOIN Reserves AS R ON S.sid = R.sid
SELECT s.name FROM Sailors s JOIN Reserves r ON s.sid = r.sid GROUP BY s.name HAVING COUNT(r.bid) >= 2
SELECT r.sid FROM Reserves r JOIN Boats b ON r.bid = b.bid WHERE b.color = 'red' OR b.color = 'blue'
SELECT S.name, S.sid FROM Sailors S JOIN Reserves R ON S.sid = R.sid JOIN Boats B ON R.bid = B.bid WHERE B.color = 'red' OR B.color = 'blue'
placeholder
placeholder
SELECT r.sid FROM Reserves r JOIN Boats b ON r.bid = b.bid WHERE b.color = 'red' OR b.color = 'blue'
placeholder
placeholder
SELECT S.name, S.sid FROM Sailors S JOIN Reserves R ON S.sid = R.sid JOIN Boats B ON R.bid = B.bid WHERE B.color = 'red' OR B.color = 'blue'
placeholder
SELECT sid FROM Sailors WHERE sid NOT IN (SELECT sid FROM Reserves)
SELECT s.name, s.sid FROM Sailors s JOIN Reserves r ON s.sid = r.sid JOIN Boats b ON r.bid = b.bid WHERE b.color = 'red' OR b.color = 'blue'
placeholder
SELECT sid FROM Sailors EXCEPT SELECT sid FROM Reserves
SELECT s.sid, s.name FROM Sailors s WHERE NOT EXISTS ( SELECT 1 FROM Reserves r WHERE r.sid = s.sid )
SELECT S.name FROM Sailors AS S JOIN Reserves AS R ON S.sid = R.sid WHERE R.bid = 103
SELECT S.name, S.sid FROM Sailors AS S JOIN Reserves AS R ON S.sid = R.sid JOIN Boats AS B ON R.bid = B.bid WHERE B.color = 'red' OR B.color = 'blue'
SELECT S.name FROM Sailors AS S JOIN Reserves AS R ON S.sid = R.sid WHERE R.bid = 103
placeholder
placeholder
placeholder
SELECT sid FROM Sailors WHERE NOT EXISTS ( SELECT 1 FROM Reserves WHERE Reserves.sid = Sailors.sid )
placeholder
SELECT name FROM Sailors WHERE rating > (SELECT MAX(rating) FROM Sailors WHERE name = 'Luis')
SELECT name, age FROM Sailors ORDER BY age DESC LIMIT 1
SELECT name, age FROM Sailors ORDER BY age DESC LIMIT 1
SELECT COUNT(*) FROM Sailors
SELECT S.name, S.sid FROM Sailors AS S JOIN Reserves AS R ON S.sid = R.sid WHERE S.rating >= 3
placeholder
SELECT COUNT(*) FROM Sailors
placeholder
SELECT AVG(age) FROM Sailors WHERE rating = 7
SELECT AVG(age) FROM Sailors WHERE rating = 7
SELECT COUNT(*) FROM Sailors WHERE name LIKE 'D%'
SELECT AVG(rating), MAX(age) FROM Sailors
SELECT name FROM Sailors WHERE rating > (SELECT MAX(rating) FROM Sailors WHERE name = 'Luis')
SELECT COUNT(*) FROM Sailors WHERE name LIKE 'D%'
SELECT AVG(rating), MAX(age) FROM Sailors
SELECT S.name, S.sid FROM Sailors AS S JOIN Reserves AS R ON S.sid = R.sid WHERE S.rating > 2
SELECT COUNT(*) AS reservation_count, bid FROM Reserves WHERE bid > 50 GROUP BY bid
SELECT COUNT(*) AS reservation_count, bid FROM Reserves GROUP BY bid
SELECT COUNT(*) AS reservation_count, bid FROM Reserves GROUP BY bid HAVING COUNT(*) > 1
SELECT COUNT(*) AS reservation_count, bid FROM Reserves WHERE bid > 50 GROUP BY bid
SELECT COUNT(*) AS reservation_count, bid FROM Reserves GROUP BY bid HAVING COUNT(*) > 1
SELECT name, rating, age FROM Sailors ORDER BY rating, age
SELECT COUNT(*) AS reservation_count, bid FROM Reserves GROUP BY bid
SELECT name, rating, age FROM Sailors ORDER BY rating, age
SELECT COUNT(*) FROM Boats
SELECT COUNT(*) FROM Boats
SELECT COUNT(*) FROM Boats WHERE color = 'red'
SELECT COUNT(*) AS reservation_count, bid FROM Reserves WHERE sid > 1 GROUP BY bid
SELECT COUNT(*) FROM Boats WHERE color = 'red'
SELECT S.rating, AVG(S.age) AS average_age FROM Sailors AS S JOIN Reserves AS R ON S.sid = R.sid JOIN Boats AS B ON R.bid = B.bid WHERE B.color = 'red' GROUP BY S.rating
SELECT MAX(rating) FROM Sailors
SELECT Boats.name FROM Sailors JOIN Reserves ON Sailors.sid = Reserves.sid JOIN Boats ON Reserves.bid = Boats.bid WHERE Sailors.age BETWEEN 20 AND 30
SELECT MAX(rating) FROM Sailors
SELECT name, age FROM Sailors ORDER BY rating DESC
placeholder
placeholder
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1
SELECT S.name FROM Sailors S JOIN Reserves R ON S.sid = R.sid JOIN Boats B ON R.bid = B.bid WHERE B.name = 'Melon'
SELECT name, age FROM Sailors ORDER BY rating DESC
placeholder
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1
SELECT DISTINCT Model FROM headphone ORDER BY Model
SELECT DISTINCT Model FROM headphone ORDER BY Model
placeholder
SELECT Class FROM headphone GROUP BY Class ORDER BY COUNT(*) DESC LIMIT 1
SELECT S.name FROM Reserves R JOIN Boats B ON R.bid = B.bid JOIN Sailors S ON R.sid = S.sid WHERE B.name = 'Melon'
SELECT Class FROM headphone GROUP BY Class ORDER BY COUNT(*) DESC LIMIT 1
SELECT Class FROM headphone GROUP BY Class HAVING COUNT(*) > 2
placeholder
SELECT COUNT(*) AS number_of_headphones, Class FROM headphone WHERE Price > 200 GROUP BY Class
SELECT Class FROM headphone GROUP BY Class HAVING COUNT( Headphone_ID ) <= 2
SELECT COUNT(*) AS headphone_count, Class FROM headphone WHERE Price > 200 GROUP BY Class
SELECT Earpads FROM headphone GROUP BY Earpads ORDER BY COUNT(*) DESC LIMIT 2
SELECT COUNT(DISTINCT Earpads) FROM headphone
SELECT COUNT(DISTINCT Earpads) FROM headphone
SELECT Model , Class , Construction FROM headphone ORDER BY Price ASC LIMIT 1
SELECT Model , Class , Construction FROM headphone ORDER BY Price ASC LIMIT 1
SELECT AVG( Price ), Construction FROM headphone GROUP BY Construction
SELECT AVG( Price ) AS average_price, Construction FROM headphone GROUP BY Construction
SELECT Model FROM headphone WHERE Price < (SELECT AVG(Price) FROM headphone)
SELECT Model FROM headphone WHERE Price < (SELECT AVG( Price ) FROM headphone )
SELECT Name FROM store ORDER BY Date_Opened
SELECT Earpads FROM headphone GROUP BY Earpads ORDER BY COUNT(*) DESC LIMIT 2
SELECT Name FROM store ORDER BY Date_Opened
SELECT Name , Parking FROM store WHERE Neighborhood = 'Tarzana'
SELECT Name , Parking FROM store WHERE Neighborhood = Tarzana
SELECT COUNT(DISTINCT Neighborhood) FROM store
SELECT COUNT(DISTINCT Neighborhood) FROM store
SELECT COUNT(*) AS Store_Count, Neighborhood FROM store GROUP BY Neighborhood
SELECT COUNT(*) AS store_count, Neighborhood FROM store GROUP BY Neighborhood
SELECT Class FROM headphone WHERE Earpads = 'Bowls' INTERSECT SELECT Class FROM headphone WHERE Earpads = 'Comfort Pads'
placeholder
SELECT s.Name FROM store s WHERE NOT EXISTS ( SELECT 1 FROM stock st WHERE st.Store_ID = s.Store_ID )
placeholder
SELECT s.Name, SUM(st.Quantity) AS Total_Quantity FROM store s JOIN stock st ON s.Store_ID = st.Store_ID GROUP BY s.Store_ID
SELECT s.Name, SUM(st.Quantity) AS Total_Headphones_In_Stock FROM stock st JOIN store s ON st.Store_ID = s.Store_ID GROUP BY s.Name ORDER BY Total_Headphones_In_Stock DESC LIMIT 1
placeholder
SELECT h.Model FROM headphone h JOIN stock s ON h.Headphone_ID = s.Headphone_ID GROUP BY h.Model ORDER BY SUM(s.Quantity) DESC LIMIT 1
SELECT SUM(s.Quantity) FROM stock s JOIN store st ON s.Store_ID = st.Store_ID WHERE st.Name = 'Woodman'
SELECT SUM(s.Quantity) FROM stock s JOIN store st ON s.Store_ID = st.Store_ID WHERE st.Name = 'Woodman'
SELECT h.Model FROM headphone h JOIN stock s ON h.Headphone_ID = s.Headphone_ID GROUP BY h.Model ORDER BY SUM(s.Quantity) DESC LIMIT 1
SELECT COUNT(*) FROM Author
SELECT Model FROM headphone WHERE NOT EXISTS ( SELECT 1 FROM stock WHERE stock.Headphone_ID = headphone.Headphone_ID )
SELECT COUNT(*) FROM `Author`
placeholder
SELECT COUNT(*) FROM Paper
SELECT s.Neighborhood FROM store s LEFT JOIN stock st ON s.Store_ID = st.Store_ID WHERE st.Store_ID IS NULL
SELECT COUNT(*) FROM `Affiliation`
SELECT COUNT(*) FROM `Paper`
SELECT COUNT(*) FROM `Paper` WHERE `venue` = 'NAACL 2000'
SELECT COUNT(*) FROM Affiliation
SELECT COUNT(*) FROM `Paper` WHERE `venue` = 'NAACL 2000'
placeholder
SELECT name, address FROM Affiliation
SELECT venue, year FROM Paper ORDER BY year
SELECT name, address FROM Affiliation
SELECT DISTINCT venue FROM Paper ORDER BY year
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT venue, year FROM Paper GROUP BY venue, year ORDER BY COUNT(*) DESC LIMIT 1
SELECT venue, year FROM Paper GROUP BY venue, year ORDER BY COUNT(*) DESC LIMIT 1
SELECT a.name FROM Author a JOIN Author_list al ON a.author_id = al.author_id GROUP BY a.author_id HAVING COUNT(al.paper_id) = 1
SELECT venue FROM Paper GROUP BY venue ORDER BY COUNT(*) ASC LIMIT 1
SELECT venue FROM Paper GROUP BY venue ORDER BY COUNT(*) ASC LIMIT 1
SELECT a.name FROM Author a JOIN Author_list al ON a.author_id = al.author_id GROUP BY a.author_id, a.name HAVING COUNT(al.paper_id) = 1
placeholder
SELECT COUNT(*) FROM `Citation` WHERE `cited_paper_id` = 'A00-1002'
placeholder
SELECT COUNT(*) FROM `Citation` WHERE `paper_id` = 'D12-1027'
placeholder
placeholder
placeholder
SELECT p.title FROM Citation c JOIN Paper p ON c.paper_id = p.paper_id GROUP BY c.paper_id ORDER BY COUNT(c.cited_paper_id) DESC LIMIT 1
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT DISTINCT p.venue, p.year FROM Author_list al JOIN Affiliation a ON al.affiliation_id = a.affiliation_id JOIN Paper p ON al.paper_id = p.paper_id WHERE a.name = 'Columbia University'
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT a.name FROM Author_list al JOIN Paper p ON al.paper_id = p.paper_id JOIN Author a ON al.author_id = a.author_id WHERE p.year = 2009 GROUP BY a.author_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT p.title FROM `Paper` p JOIN `Author_list` al ON p.paper_id = al.paper_id GROUP BY p.paper_id ORDER BY COUNT(al.author_id) DESC LIMIT 1
placeholder
placeholder
SELECT paper_id FROM Paper WHERE title LIKE '%translation%'
SELECT paper_id FROM Paper WHERE title LIKE '%translation%'
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT COUNT(*) AS paper_count, venue, year FROM Paper GROUP BY venue, year
placeholder
SELECT COUNT(*) AS paper_count, venue, year FROM Paper GROUP BY venue, year
placeholder
placeholder
SELECT a.name FROM Affiliation a JOIN Author_list al ON a.affiliation_id = al.affiliation_id WHERE a.address LIKE '%China%' GROUP BY a.affiliation_id ORDER BY COUNT(al.paper_id) DESC LIMIT 1
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT COUNT(*) FROM conference
SELECT COUNT(*) FROM conference
placeholder
placeholder
placeholder
SELECT DISTINCT Conference_Name FROM conference
SELECT Conference_Name , Year , Location FROM conference
SELECT Conference_Name , Year , Location FROM conference
SELECT DISTINCT Conference_Name FROM conference
SELECT COUNT(*) AS occurrence_count, Conference_Name FROM conference GROUP BY Conference_Name
SELECT Year, COUNT(*) AS Number_of_Conferences FROM conference GROUP BY Year
SELECT Location FROM conference GROUP BY Location HAVING COUNT(*) >= 2
SELECT Year FROM conference GROUP BY Year ORDER BY COUNT(*) ASC LIMIT 1
SELECT Year FROM conference GROUP BY Year ORDER BY COUNT(*) ASC LIMIT 1
SELECT Location FROM conference GROUP BY Location HAVING COUNT(*) >= 2
SELECT Institution_Name , Location , Founded FROM institution
placeholder
SELECT Institution_Name , Location , Founded FROM institution
SELECT COUNT(*) FROM institution WHERE Founded BETWEEN 1850 AND 1900
placeholder
placeholder
SELECT COUNT(*) FROM institution WHERE Founded BETWEEN 1850 AND 1900
SELECT Institution_Name , Location FROM institution ORDER BY Founded DESC LIMIT 1
SELECT Institution_Name , Location FROM institution ORDER BY Founded DESC LIMIT 1
SELECT i.Institution_Name FROM institution i LEFT JOIN staff s ON i.Institution_ID = s.Institution_ID WHERE s.staff_ID IS NULL
placeholder
SELECT name FROM staff WHERE Age > (SELECT AVG(Age) FROM staff)
SELECT name FROM staff WHERE Age > (SELECT AVG(Age) FROM staff)
placeholder
SELECT MAX( Age ) AS maximum_age, MIN( Age ) AS minimum_age FROM staff
SELECT MAX(Age) AS max_age, MIN(Age) AS min_age FROM staff WHERE Nationality = 'United States'
placeholder
placeholder
placeholder
SELECT DISTINCT c.Conference_Name FROM conference c JOIN conference_participation cp ON c.Conference_ID = cp.Conference_ID JOIN staff s ON cp.staff_ID = s.staff_ID WHERE s.Nationality = 'Canada'
placeholder
SELECT DISTINCT s.name FROM staff s JOIN conference_participation cp ON s.staff_ID = cp.staff_ID JOIN conference c ON cp.Conference_ID = c.Conference_ID WHERE c.Year = 2003 OR c.Year = 2004
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT c.Conference_Name FROM conference c JOIN conference_participation cp ON c.Conference_ID = cp.Conference_ID GROUP BY c.Conference_Name ORDER BY COUNT(cp.staff_ID) DESC LIMIT 2
SELECT pilot_name FROM PilotSkills ORDER BY age DESC LIMIT 1
placeholder
placeholder
placeholder
SELECT pilot_name FROM PilotSkills ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM PilotSkills WHERE age < (SELECT AVG(age) FROM PilotSkills) ORDER BY age
SELECT pilot_name FROM PilotSkills WHERE age < (SELECT AVG(age) FROM PilotSkills) ORDER BY age ASC
placeholder
SELECT * FROM PilotSkills WHERE age < 30
SELECT * FROM PilotSkills WHERE age < 30
SELECT location FROM Hangar WHERE plane_name = 'F-14 Fighter'
SELECT COUNT(DISTINCT location) FROM Hangar
SELECT location FROM Hangar WHERE plane_name = 'F-14 Fighter'
placeholder
SELECT plane_name FROM PilotSkills WHERE pilot_name = 'Jones' AND age = 32
placeholder
SELECT COUNT(*) FROM PilotSkills WHERE age > 40
SELECT plane_name FROM PilotSkills WHERE pilot_name = 'Jones' AND age = 32
SELECT COUNT(*) FROM PilotSkills WHERE age > 40
SELECT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' AND age < 35
SELECT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' ORDER BY age ASC LIMIT 1
SELECT COUNT(*) FROM PilotSkills WHERE plane_name = 'B-52' AND age < 35
placeholder
SELECT plane_name FROM PilotSkills GROUP BY plane_name ORDER BY COUNT(*) DESC LIMIT 1
placeholder
SELECT plane_name FROM PilotSkills GROUP BY plane_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT plane_name FROM PilotSkills WHERE pilot_name = 'Smith' AND age = 41
SELECT plane_name FROM PilotSkills GROUP BY plane_name ORDER BY COUNT(*) ASC LIMIT 1
placeholder
SELECT plane_name FROM PilotSkills WHERE pilot_name = 'Smith' AND age = 41
placeholder
SELECT COUNT(DISTINCT plane_name) FROM PilotSkills
SELECT COUNT(DISTINCT ps.pilot_name) FROM PilotSkills ps JOIN Hangar h ON ps.plane_name = h.plane_name WHERE h.location = 'Chicago'
SELECT COUNT(DISTINCT plane_name) FROM PilotSkills
SELECT COUNT(*) FROM PilotSkills WHERE pilot_name = 'Smith'
SELECT pilot_name FROM PilotSkills WHERE age BETWEEN 30 AND 40 ORDER BY age ASC
placeholder
SELECT pilot_name FROM PilotSkills WHERE age BETWEEN 30 AND 40 ORDER BY age ASC
SELECT COUNT(*) FROM PilotSkills WHERE age > 40
SELECT COUNT(*) FROM PilotSkills WHERE age > 40
SELECT pilot_name FROM PilotSkills ORDER BY age DESC
SELECT COUNT(DISTINCT ps.pilot_name) FROM PilotSkills ps JOIN Hangar h ON ps.plane_name = h.plane_name WHERE h.location = 'Chicago'
SELECT pilot_name FROM PilotSkills ORDER BY age DESC
SELECT DISTINCT plane_name FROM Hangar ORDER BY plane_name
SELECT plane_name, location FROM Hangar ORDER BY plane_name
SELECT plane_name, location FROM Hangar ORDER BY plane_name
SELECT COUNT(*) FROM PilotSkills WHERE age > 40 OR age < 30
SELECT COUNT(DISTINCT pilot_name) FROM PilotSkills WHERE age > 40 OR age < 30
placeholder
placeholder
SELECT AVG(age) AS average_age, MIN(age) AS smallest_age FROM PilotSkills
SELECT AVG(age) AS average_age, MIN(age) AS minimum_age FROM PilotSkills
SELECT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' INTERSECT SELECT pilot_name FROM PilotSkills WHERE plane_name = 'B-52 Bomber'
SELECT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' INTERSECT SELECT pilot_name FROM PilotSkills WHERE plane_name = 'B-52 Bomber'
placeholder
placeholder
placeholder
SELECT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' OR plane_name = 'F-14 Fighter'
SELECT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' OR plane_name = 'F-14 Fighter'
placeholder
SELECT AVG(age) AS average_age, plane_name FROM PilotSkills GROUP BY plane_name
SELECT AVG(age) AS average_age, plane_name FROM PilotSkills GROUP BY plane_name
placeholder
placeholder
placeholder
SELECT pilot_name, MAX(age) AS max_age FROM PilotSkills GROUP BY pilot_name
SELECT MAX(age) FROM PilotSkills GROUP BY pilot_name
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT ps.pilot_name, ps.age FROM PilotSkills ps JOIN Hangar h ON ps.plane_name = h.plane_name WHERE h.location = 'Austin'
SELECT ps.pilot_name, ps.age FROM PilotSkills ps JOIN Hangar h ON ps.plane_name = h.plane_name WHERE h.location = 'Austin'
SELECT h.location FROM PilotSkills ps JOIN Hangar h ON ps.plane_name = h.plane_name ORDER BY ps.age ASC LIMIT 1
SELECT h.location FROM PilotSkills ps JOIN Hangar h ON ps.plane_name = h.plane_name ORDER BY ps.age ASC LIMIT 1
SELECT H.location, COUNT(P.pilot_name) AS pilot_count, AVG(P.age) AS average_age FROM PilotSkills P JOIN Hangar H ON P.plane_name = H.plane_name GROUP BY H.location
SELECT DISTINCT plane_name FROM Hangar WHERE plane_name LIKE '%Bomber%'
placeholder
SELECT DISTINCT plane_name FROM Hangar WHERE plane_name LIKE '%Bomber%'
placeholder
SELECT Name FROM district ORDER BY Area_km DESC LIMIT 1
placeholder
SELECT Area_km , Government_website FROM district ORDER BY Population ASC LIMIT 1
SELECT Name , Population FROM district WHERE Area_km > (SELECT AVG( Area_km ) FROM district )
placeholder
placeholder
placeholder
placeholder
SELECT District_ID , Name , Government_website FROM district ORDER BY Population
SELECT MAX( Area_km ) AS biggest_area, AVG( Area_km ) AS average_area FROM district
SELECT SUM( Population ) FROM district ORDER BY Area_km DESC LIMIT 3
SELECT Name , Speach_title FROM spokesman
SELECT Name FROM district WHERE Government_website LIKE '%.gov'
SELECT Name , Points FROM spokesman WHERE Age < 40
SELECT AVG(Points), AVG(Age) FROM spokesman WHERE Rank_position = 1
SELECT Name FROM spokesman WHERE Points < (SELECT AVG(Points) FROM spokesman)
SELECT Name FROM spokesman ORDER BY Age DESC LIMIT 1
placeholder
SELECT d.Name FROM district d JOIN spokesman_district sd ON d.District_ID = sd.District_ID GROUP BY d.Name ORDER BY COUNT(*) DESC LIMIT 1
placeholder
SELECT District_ID , Name FROM district WHERE Population > 4000 OR Area_km > 3000
SELECT title FROM Sculptures ORDER BY year DESC LIMIT 1
SELECT title FROM Sculptures ORDER BY year DESC LIMIT 1
SELECT title, location FROM Paintings ORDER BY year ASC LIMIT 1
SELECT Name FROM spokesman WHERE NOT EXISTS ( SELECT 1 FROM spokesman_district WHERE spokesman.Spokesman_ID = spokesman_district.Spokesman_ID )
SELECT title, location FROM Paintings ORDER BY year ASC LIMIT 1
SELECT title FROM Sculptures WHERE location = 'gallery 226'
placeholder
placeholder
placeholder
SELECT title FROM Sculptures WHERE location = '226'
SELECT d.Name FROM district d JOIN spokesman_district sd ON d.District_ID = sd.District_ID GROUP BY d.Name HAVING COUNT(sd.Spokesman_ID) > 1
SELECT title, location FROM Paintings
SELECT title, location FROM Sculptures
placeholder
SELECT title, location FROM Paintings
SELECT title, location FROM Sculptures
SELECT medium FROM Paintings WHERE paintingID = 80
placeholder
SELECT fname, lname FROM Artists WHERE birthYear > 1850
SELECT medium FROM Paintings WHERE paintingID = 80
SELECT fname, lname FROM Artists WHERE birthYear > 1850
SELECT title, year FROM Sculptures WHERE location != 'gallery 226'
SELECT DISTINCT a.fname, a.lname FROM Artists a JOIN Sculptures s ON a.artistID = s.sculptorID WHERE s.year < 1900
SELECT DISTINCT a.fname, a.lname FROM Artists a JOIN Sculptures s ON a.artistID = s.sculptorID WHERE s.year < 1900
SELECT DISTINCT a.birthYear FROM Artists a JOIN Sculptures s ON a.artistID = s.sculptorID WHERE s.year > 1920
SELECT fname, lname FROM Artists WHERE deathYear IS NOT NULL ORDER BY (deathYear - birthYear) DESC LIMIT 1
SELECT DISTINCT a.birthYear FROM Artists a JOIN Sculptures s ON a.artistID = s.sculptorID WHERE s.year > 1920
SELECT COUNT(*) FROM Paintings WHERE location = 'Gallery 240'
SELECT fname, (deathYear - birthYear) AS age FROM Artists ORDER BY (deathYear - birthYear) DESC LIMIT 1
SELECT fname, (deathYear - birthYear) AS age FROM Artists WHERE deathYear IS NOT NULL ORDER BY age DESC LIMIT 1
SELECT COUNT(*) FROM Paintings WHERE location = '240'
SELECT fname, lname FROM Artists WHERE deathYear IS NOT NULL ORDER BY (deathYear - birthYear) DESC LIMIT 1
SELECT p.title, p.year FROM Paintings p JOIN Artists a ON p.painterID = a.artistID WHERE a.fname = 'Mary'
SELECT p.width_mm FROM Paintings p JOIN Artists a ON p.painterID = a.artistID WHERE a.birthYear < 1850
placeholder
SELECT p.title, p.year, a.fname, a.lname FROM Paintings p JOIN Artists a ON p.painterID = a.artistID WHERE a.fname = 'Mary'
SELECT MIN(deathYear - birthYear) FROM Artists
SELECT p.location, p.medium FROM Paintings p JOIN Artists a ON p.painterID = a.artistID WHERE a.fname = 'Pablo'
SELECT p.location, p.medium FROM Paintings p JOIN Artists a ON p.painterID = a.artistID WHERE a.fname = 'Pablo'
SELECT MIN(deathYear - birthYear) FROM Artists WHERE birthYear IS NOT NULL AND deathYear IS NOT NULL
SELECT p.width_mm FROM Paintings p JOIN Artists a ON p.painterID = a.artistID WHERE a.birthYear < 1850
placeholder
placeholder
SELECT A.birthYear FROM Artists A JOIN Paintings P ON A.artistID = P.painterID WHERE P.year = 1884
placeholder
placeholder
placeholder
placeholder
SELECT AVG(height_mm) AS average_height, medium FROM Paintings GROUP BY medium
placeholder
SELECT AVG(height_mm) AS average_height, medium FROM Paintings GROUP BY medium
SELECT COUNT(*) AS painting_count, location FROM Paintings WHERE year < 1900 GROUP BY location
SELECT COUNT(*) AS painting_count, location FROM Paintings WHERE year < 1900 GROUP BY location
placeholder
SELECT title FROM Paintings WHERE year > 1910 AND medium = 'oil'
placeholder
placeholder
SELECT title FROM Paintings WHERE medium = 'oil' AND year > 1910
SELECT paintingID FROM Paintings ORDER BY year ASC LIMIT 1
placeholder
SELECT paintingID FROM Paintings ORDER BY year ASC LIMIT 1
SELECT A.fname, A.lname FROM Artists A JOIN Sculptures S ON A.artistID = S.sculptorID WHERE S.title LIKE '%female%'
SELECT a.fname, a.lname FROM Artists a JOIN Sculptures s ON a.artistID = s.sculptorID WHERE s.title LIKE '%female%'
placeholder
SELECT DISTINCT title FROM Paintings ORDER BY title
SELECT DISTINCT title FROM Paintings ORDER BY title
placeholder
placeholder
placeholder
SELECT DISTINCT title FROM Paintings ORDER BY height_mm ASC
placeholder
SELECT title FROM Paintings WHERE year BETWEEN 1900 AND 1950 UNION SELECT title FROM Sculptures WHERE year BETWEEN 1900 AND 1950
placeholder
SELECT A.fname FROM Artists AS A JOIN Sculptures AS S ON A.artistID = S.sculptorID GROUP BY A.fname ORDER BY COUNT(S.sculptureID) DESC LIMIT 1
SELECT painterID FROM Paintings WHERE year < 1900 GROUP BY painterID ORDER BY COUNT(*) DESC LIMIT 1
SELECT a.artistID FROM Artists a JOIN Paintings p ON a.artistID = p.painterID WHERE p.year < 1900 GROUP BY a.artistID ORDER BY COUNT(p.paintingID) DESC LIMIT 1
SELECT a.fname FROM Artists a JOIN Sculptures s ON a.artistID = s.sculptorID GROUP BY a.fname ORDER BY COUNT(s.sculptureID) DESC LIMIT 1
SELECT title FROM Paintings WHERE width_mm < 600 OR height_mm > 800
SELECT title FROM Paintings WHERE width_mm < 600 OR height_mm > 800
SELECT paintingID FROM Paintings WHERE height_mm > 500 AND height_mm < 2000
SELECT DISTINCT location FROM Paintings WHERE year < 1885 OR year > 1930
placeholder
SELECT paintingID FROM Paintings WHERE height_mm > 500 AND height_mm < 2000
placeholder
SELECT DISTINCT location FROM Paintings WHERE mediumOn = 'on panel' OR mediumOn = 'on canvas'
SELECT DISTINCT location FROM Paintings WHERE mediumOn = 'on panels' OR mediumOn = 'on canvas'
placeholder
placeholder
SELECT MAX(height_mm) AS max_height, MAX(width_mm) AS max_width, year FROM Paintings GROUP BY year
SELECT height_mm, paintingID FROM Paintings WHERE year < 1900 ORDER BY height_mm DESC LIMIT 1
SELECT MAX(height_mm) AS max_height, MAX(width_mm) AS max_width, year FROM Paintings GROUP BY year
SELECT location FROM Paintings WHERE year < 1885 AND year > 1930
SELECT AVG(height_mm), AVG(width_mm) FROM Paintings WHERE medium = 'oil' AND location = '241'
placeholder
placeholder
placeholder
SELECT height_mm, paintingID FROM Paintings WHERE year < 1900 ORDER BY height_mm DESC LIMIT 1
SELECT a.deathYear FROM Artists a JOIN Paintings p ON a.artistID = p.painterID GROUP BY a.artistID HAVING COUNT(p.paintingID) <= 3
SELECT A.deathYear FROM Artists A JOIN Paintings P ON A.artistID = P.painterID GROUP BY A.artistID HAVING COUNT(P.paintingID) < 4
SELECT A.fname, COUNT(P.paintingID) AS work_count FROM Artists A JOIN Paintings P ON A.artistID = P.painterID GROUP BY A.fname HAVING COUNT(P.paintingID) >= 2
SELECT paintingID, height_mm FROM Paintings WHERE location = '240' ORDER BY width_mm DESC LIMIT 1
SELECT a.deathYear FROM Artists a JOIN Sculptures s ON a.artistID = s.sculptorID GROUP BY a.artistID ORDER BY COUNT(s.sculptureID) ASC LIMIT 1
placeholder
placeholder
SELECT paintingID FROM Paintings WHERE height_mm > ( SELECT MAX(height_mm) FROM Paintings WHERE year > 1900 )
placeholder
SELECT paintingID FROM Paintings WHERE height_mm > (SELECT MAX(height_mm) FROM Paintings WHERE year > 1900)
SELECT paintingID, title, location FROM Paintings WHERE medium = 'oil' ORDER BY year
placeholder
SELECT a.fname, a.lname FROM Paintings p JOIN Artists a ON p.painterID = a.artistID WHERE p.medium = 'oil' GROUP BY a.fname, a.lname ORDER BY COUNT(p.paintingID) DESC
SELECT paintingID, title, location FROM Paintings WHERE medium = 'oil' ORDER BY year
placeholder
placeholder
SELECT year, location, title FROM Paintings WHERE height_mm > 1000 ORDER BY title
placeholder
SELECT COUNT(*) FROM race
placeholder
SELECT year, location, title FROM Paintings WHERE height_mm > 1000 ORDER BY title
SELECT COUNT(*) FROM race
SELECT Winning_driver , Winning_team FROM race ORDER BY Winning_team ASC
SELECT Winning_driver , Winning_team FROM race ORDER BY Winning_team ASC
SELECT Winning_driver FROM race WHERE Pole_Position != 'Junior Strous'
SELECT Constructor FROM driver ORDER BY Age ASC
SELECT DISTINCT Constructor FROM driver ORDER BY Age ASC
SELECT DISTINCT Entrant FROM driver WHERE Age >= 20
SELECT DISTINCT Entrant FROM driver WHERE Age >= 20
placeholder
placeholder
SELECT MAX( Age ) AS Maximum_Age , MIN( Age ) AS Minimum_Age FROM driver
placeholder
SELECT location FROM Paintings WHERE year < 1885 AND mediumOn != 'on canvas'
SELECT MAX(Age) AS Maximum_Age, MIN(Age) AS Minimum_Age FROM driver
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT COUNT(DISTINCT Engine) FROM driver WHERE Age > 30 OR Age < 20
SELECT driver.Driver_Name, race.Race_Name FROM driver JOIN race ON driver.Driver_ID = race.Driver_ID
SELECT d.Age FROM driver d JOIN race r ON d.Driver_ID = r.Driver_ID GROUP BY d.Driver_ID ORDER BY COUNT(r.Road) DESC LIMIT 1
SELECT d.Driver_Name, COUNT(r.Road) AS Race_Count FROM driver d JOIN race r ON d.Driver_ID = r.Driver_ID GROUP BY d.Driver_Name
SELECT Winning_driver FROM race WHERE Pole_Position != 'Junior Strous'
SELECT d.Driver_Name, d.Age FROM driver d JOIN race r ON d.Driver_ID = r.Driver_ID GROUP BY d.Driver_ID HAVING COUNT(r.Road) >= 2
SELECT d.Driver_Name, d.Age FROM driver d JOIN race r ON d.Driver_ID = r.Driver_ID GROUP BY d.Driver_Name, d.Age HAVING COUNT(r.Road) >= 2
SELECT COUNT(DISTINCT Engine) FROM driver WHERE Age > 30 OR Age < 20
SELECT r.Race_Name FROM race r JOIN driver d ON r.Driver_ID = d.Driver_ID WHERE d.Age >= 26
SELECT Driver_Name FROM driver WHERE Constructor != 'Bugatti'
SELECT Driver_Name FROM driver WHERE Constructor != 'Bugatti'
SELECT Constructor, COUNT(*) AS Driver_Count FROM driver GROUP BY Constructor
SELECT d.Driver_Name, r.Race_Name FROM driver d JOIN race r ON d.Driver_ID = r.Driver_ID
SELECT Engine FROM driver GROUP BY Engine ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) AS driver_count, Constructor FROM driver GROUP BY Constructor
SELECT Engine FROM driver GROUP BY Engine ORDER BY COUNT(*) DESC LIMIT 1
SELECT Engine FROM driver GROUP BY Engine HAVING COUNT(*) >= 2
SELECT d.Age FROM driver d JOIN race r ON d.Driver_ID = r.Driver_ID GROUP BY d.Driver_ID ORDER BY COUNT(r.Driver_ID) DESC LIMIT 1
SELECT Engine FROM driver GROUP BY Engine HAVING COUNT(*) >= 2
placeholder
placeholder
SELECT Winning_team FROM race GROUP BY Winning_team HAVING COUNT(Winning_team) > 1
SELECT Winning_team FROM race GROUP BY Winning_team HAVING COUNT(*) > 1
SELECT DISTINCT Constructor FROM driver WHERE Age < 20 INTERSECT SELECT DISTINCT Constructor FROM driver WHERE Age > 30
placeholder
SELECT COUNT(*) FROM languages
SELECT Constructor FROM driver WHERE Age < 20 INTERSECT SELECT Constructor FROM driver WHERE Age > 30
placeholder
placeholder
SELECT name FROM languages ORDER BY name
SELECT COUNT(*) FROM languages
SELECT name FROM languages ORDER BY name
placeholder
SELECT name FROM languages WHERE name LIKE '%ish%'
placeholder
SELECT name FROM languages WHERE name LIKE '%ish%'
SELECT name FROM countries ORDER BY overall_score DESC
placeholder
SELECT AVG(justice_score) FROM countries
SELECT name FROM countries ORDER BY overall_score DESC
SELECT AVG( justice_score ) FROM countries
SELECT MAX(health_score), MIN(health_score) FROM countries WHERE name != 'Norway'
SELECT COUNT(DISTINCT language_id) FROM official_languages
SELECT MAX(health_score), MIN(health_score) FROM countries WHERE name != 'Norway'
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT COUNT(DISTINCT language_id) FROM official_languages
SELECT c.name AS country_name, l.name AS language_name FROM countries c JOIN official_languages ol ON c.id = ol.country_id JOIN languages l ON ol.language_id = l.id
SELECT l.name AS language, COUNT(ol.country_id) AS number_of_countries FROM languages l JOIN official_languages ol ON l.id = ol.language_id GROUP BY l.id, l.name
SELECT l.name, COUNT(ol.country_id) AS country_count FROM languages l JOIN official_languages ol ON l.id = ol.language_id GROUP BY l.name
SELECT l.name FROM official_languages ol JOIN languages l ON ol.language_id = l.id GROUP BY l.id ORDER BY COUNT(ol.country_id) DESC LIMIT 1
SELECT c.name AS country_name, l.name AS language_name FROM countries c JOIN official_languages ol ON c.id = ol.country_id JOIN languages l ON ol.language_id = l.id
SELECT l.name FROM languages l JOIN official_languages ol ON l.id = ol.language_id GROUP BY l.id, l.name ORDER BY COUNT(ol.country_id) DESC LIMIT 3
SELECT l.name FROM languages l JOIN official_languages ol ON l.id = ol.language_id GROUP BY l.id HAVING COUNT(ol.country_id) >= 2
SELECT AVG(c.overall_score) FROM countries c JOIN official_languages ol ON c.id = ol.country_id JOIN languages l ON ol.language_id = l.id WHERE l.name = 'English'
SELECT l.name FROM languages l JOIN official_languages ol ON l.id = ol.language_id JOIN countries c ON ol.country_id = c.id GROUP BY l.id, l.name ORDER BY AVG(c.overall_score) DESC
SELECT c.name FROM countries c JOIN official_languages ol ON c.id = ol.country_id GROUP BY c.id, c.name ORDER BY COUNT(ol.language_id) DESC LIMIT 1
SELECT l.name FROM languages l JOIN official_languages ol ON l.id = ol.language_id GROUP BY l.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT l.name FROM languages l JOIN official_languages ol ON l.id = ol.language_id GROUP BY l.id HAVING COUNT(*) >= 2
SELECT c.name FROM countries c LEFT JOIN official_languages ol ON c.id = ol.country_id WHERE ol.country_id IS NULL
placeholder
placeholder
placeholder
SELECT l.name FROM languages l LEFT JOIN official_languages ol ON l.id = ol.language_id WHERE ol.language_id IS NULL
SELECT DISTINCT country, town_city FROM Addresses
placeholder
SELECT country, town_city FROM Addresses
SELECT l.name FROM languages l LEFT JOIN official_languages ol ON l.id = ol.language_id WHERE ol.language_id IS NULL
SELECT feature_description FROM `Features` WHERE feature_name = 'rooftop'
placeholder
SELECT feature_description FROM Features WHERE feature_name = 'rooftop'
placeholder
SELECT a.county_state_province FROM Properties p JOIN Addresses a ON p.property_address_id = a.address_id
SELECT a.county_state_province FROM Properties p JOIN Addresses a ON p.property_address_id = a.address_id
placeholder
SELECT `age_category_description` FROM `Ref_Age_Categories` WHERE `age_category_description` LIKE '%Mother%'
SELECT f.feature_name, f.feature_description FROM Property_Features pf JOIN Features f ON pf.feature_id = f.feature_id GROUP BY f.feature_name, f.feature_description ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM `Properties` WHERE `parking_lots` = 'Y' OR `garage_yn` = 'Y'
SELECT u.first_name FROM Users u JOIN Properties p ON u.user_id = p.owner_user_id GROUP BY u.user_id, u.first_name ORDER BY COUNT(p.property_id) DESC LIMIT 1
SELECT u.first_name FROM Users u JOIN Properties p ON u.user_id = p.owner_user_id GROUP BY u.user_id ORDER BY COUNT(p.property_id) DESC LIMIT 1
placeholder
SELECT MIN(CAST(room_count AS INTEGER)) FROM Properties
placeholder
placeholder
placeholder
placeholder
SELECT property_id, vendor_requested_price FROM Properties WHERE vendor_requested_price IS NOT NULL ORDER BY vendor_requested_price ASC LIMIT 1
placeholder
placeholder
placeholder
SELECT COUNT(DISTINCT room_size) FROM Rooms
SELECT search_datetime FROM User_Searches ORDER BY search_datetime DESC LIMIT 1
placeholder
SELECT search_datetime FROM User_Searches ORDER BY search_datetime DESC LIMIT 1
SELECT search_datetime, search_string FROM User_Searches ORDER BY search_string DESC
placeholder
placeholder
SELECT search_string, search_datetime FROM User_Searches ORDER BY search_string DESC
SELECT COUNT(DISTINCT room_size) FROM Rooms
SELECT u.user_id, u.user_category_code FROM Users u JOIN User_Searches us ON u.user_id = us.user_id GROUP BY u.user_id HAVING COUNT(*) = 1
placeholder
SELECT u.age_category_code FROM Users u JOIN User_Searches us ON u.user_id = us.user_id ORDER BY us.search_datetime ASC LIMIT 1
placeholder
SELECT COUNT(*) FROM `Users` u JOIN `User_Searches` us ON u.`user_id` = us.`user_id` WHERE u.`is_buyer` = '1'
SELECT COUNT(*) FROM `Users` u JOIN `User_Searches` us ON u.`user_id` = us.`user_id` WHERE u.`is_buyer` = '1'
SELECT date_registered FROM Users WHERE login_name = 'ratione'
SELECT date_registered FROM Users WHERE login_name = 'ratione'
placeholder
placeholder
placeholder
SELECT first_name, middle_name, last_name, login_name FROM Users WHERE is_seller = 'Y'
SELECT first_name, middle_name, last_name, login_name FROM Users WHERE is_seller = '1'
placeholder
SELECT COUNT(*) FROM ( SELECT property_id FROM Property_Features GROUP BY property_id HAVING COUNT(feature_id) >= 2 ) AS properties_with_two_or_more_features
SELECT property_id, COUNT(*) AS photo_count FROM Property_Photos GROUP BY property_id
SELECT property_id, COUNT(*) AS photo_count FROM Property_Photos GROUP BY property_id
placeholder
placeholder
SELECT u.user_id, COUNT(pp.photo_seq) AS photo_count FROM Users u INNER JOIN Properties p ON u.user_id = p.owner_user_id INNER JOIN Property_Photos pp ON p.property_id = pp.property_id GROUP BY u.user_id
placeholder
placeholder
placeholder
SELECT uph.datestamp, p.property_name FROM User_Property_History uph JOIN Properties p ON uph.property_id = p.property_id ORDER BY uph.datestamp
SELECT `age_category_description` FROM `Ref_Age_Categories` WHERE `age_category_code` = 'Over 60'
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = 'Over 60'
placeholder
SELECT r.property_type_description, r.property_type_code FROM Ref_Property_Types r JOIN Properties p ON r.property_type_code = p.property_type_code GROUP BY r.property_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT room_size, COUNT(*) FROM Rooms GROUP BY room_size
SELECT room_size, COUNT(*) AS room_size_count FROM Rooms GROUP BY room_size
SELECT SUM(p.price_max) FROM Properties p JOIN Users u ON p.owner_user_id = u.user_id JOIN Ref_User_Categories rc ON u.user_category_code = rc.user_category_code WHERE rc.user_category_description IN ('single mother', 'student')
placeholder
SELECT a.country FROM Users u JOIN Addresses a ON u.user_address_id = a.address_id WHERE u.first_name = 'Robbie'
placeholder
SELECT a.country FROM Users u JOIN Addresses a ON u.user_address_id = a.address_id WHERE u.first_name = 'Robbie'
SELECT COUNT(*) FROM bike WHERE weight > 780
SELECT product_name, weight FROM bike ORDER BY price ASC
placeholder
SELECT heat, name, nation FROM cyclist
SELECT MAX(weight) AS max_weight, MIN(weight) AS min_weight FROM bike
SELECT AVG(price) FROM bike WHERE material = 'Carbon CC'
SELECT name, result FROM cyclist WHERE nation != 'Russia'
placeholder
placeholder
SELECT DISTINCT b.id, b.product_name FROM cyclists_own_bikes cob JOIN bike b ON cob.bike_id = b.id WHERE cob.purchase_year > 2015
placeholder
placeholder
placeholder
SELECT COUNT(DISTINCT heat) FROM cyclist
placeholder
SELECT DISTINCT b.product_name FROM bike b JOIN cyclists_own_bikes cob ON b.id = cob.bike_id JOIN cyclist c ON cob.cyclist_id = c.id WHERE c.nation = 'Russia' OR c.nation = 'Great Britain'
SELECT product_name FROM bike WHERE material LIKE '%fiber%'
SELECT COUNT(*) AS bike_count, cyclist_id FROM cyclists_own_bikes GROUP BY cyclist_id ORDER BY cyclist_id
SELECT Flavor , Price FROM goods WHERE Food = 'cake' ORDER BY Price DESC LIMIT 1
SELECT Id, Flavor FROM goods WHERE Food = 'cake' ORDER BY Price DESC LIMIT 1
placeholder
placeholder
SELECT Id , Flavor FROM goods WHERE Food = 'cookie' ORDER BY Price ASC LIMIT 1
placeholder
placeholder
SELECT Id FROM goods WHERE Flavor = 'apple'
placeholder
SELECT Id FROM goods WHERE Price < 3.0
SELECT Id FROM goods WHERE Flavor = 'apple'
placeholder
SELECT Id FROM goods WHERE Price < 3.0
SELECT CustomerId FROM receipts GROUP BY CustomerId HAVING COUNT(*) >= 15
placeholder
SELECT c.LastName FROM customers c JOIN receipts r ON c.Id = r.CustomerId GROUP BY c.Id, c.LastName HAVING COUNT(r.ReceiptNumber) > 10
SELECT COUNT(*) FROM goods WHERE Food = 'Cake'
SELECT c.LastName FROM customers c JOIN receipts r ON c.Id = r.CustomerId GROUP BY c.LastName HAVING COUNT(r.ReceiptNumber) > 10
SELECT COUNT(*) FROM goods WHERE Food = 'cake'
SELECT Flavor FROM goods WHERE Food = 'Croissant'
SELECT Flavor FROM goods WHERE Food = 'croissant'
placeholder
SELECT customers.Id FROM receipts JOIN customers ON receipts.CustomerId = customers.Id GROUP BY customers.Id HAVING COUNT(*) >= 15
placeholder
SELECT AVG(Price) AS average_price, MIN(Price) AS minimum_price, MAX(Price) AS maximum_price, Food FROM goods GROUP BY Food
SELECT Food, AVG(Price) AS AveragePrice, MAX(Price) AS MaxPrice, MIN(Price) AS MinPrice FROM goods GROUP BY Food
placeholder
placeholder
SELECT r.ReceiptNumber, r.Date FROM items JOIN goods ON items.Item = goods.Id JOIN receipts r ON items.Receipt = r.ReceiptNumber ORDER BY goods.Price DESC LIMIT 1
placeholder
placeholder
SELECT COUNT(*) AS count_of_goods, Food FROM goods GROUP BY Food
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT COUNT(*) AS count, Food FROM goods GROUP BY Food
SELECT AVG(Price) AS average_price, Food FROM goods GROUP BY Food
SELECT Id FROM goods WHERE Flavor = 'Apricot' AND Price < 5.0
SELECT AVG(Price) AS AveragePrice, Food FROM goods GROUP BY Food
SELECT Id FROM goods WHERE Flavor = 'Apricot' AND Price < 5.0
SELECT Flavor FROM goods WHERE Food = 'Cake' AND Price > 10
SELECT DISTINCT Id, Price FROM goods WHERE Price < (SELECT AVG(Price) FROM goods)
SELECT Flavor FROM goods WHERE Food = 'cake' AND Price > 10
placeholder
placeholder
SELECT Id FROM goods WHERE Id LIKE '%APP%'
SELECT DISTINCT r.Date FROM receipts r JOIN items i ON r.ReceiptNumber = i.Receipt JOIN goods g ON i.Item = g.Id WHERE g.Price > 15
SELECT DISTINCT Id, Price FROM goods WHERE Price < (SELECT AVG(Price) FROM goods)
SELECT Id FROM goods WHERE Id LIKE '%APP%'
SELECT Id, Price FROM goods WHERE Id = '70'
SELECT Id , Price FROM goods WHERE Id = '70'
SELECT LastName FROM customers ORDER BY LastName
placeholder
SELECT Id FROM goods ORDER BY Id
placeholder
placeholder
SELECT DISTINCT Id FROM goods ORDER BY Id
SELECT LastName FROM customers ORDER BY LastName
SELECT ReceiptNumber, Date FROM receipts ORDER BY Date DESC LIMIT 1
placeholder
SELECT r.Date FROM receipts r JOIN items i ON r.ReceiptNumber = i.Receipt
SELECT Id FROM goods WHERE Flavor IN ('Cookie', 'Cake') AND Price BETWEEN 3 AND 7
SELECT c.FirstName, c.LastName FROM receipts r JOIN customers c ON r.CustomerId = c.Id ORDER BY r.Date ASC LIMIT 1
SELECT c.FirstName, c.LastName FROM receipts r JOIN customers c ON r.CustomerId = c.Id ORDER BY r.Date ASC LIMIT 1
SELECT AVG(Price) FROM goods WHERE Flavor = 'blackberry' OR Flavor = 'blueberry'
SELECT AVG(Price) FROM goods WHERE Flavor = 'blackberry' OR Flavor = 'blueberry'
SELECT Id FROM goods WHERE Flavor = 'Cookies' OR Flavor = 'Cakes' AND Price BETWEEN 3 AND 7
SELECT MIN(Price) FROM goods WHERE Flavor = 'cheese'
placeholder
SELECT Price FROM goods WHERE Flavor = 'cheese' ORDER BY Price ASC LIMIT 1
placeholder
placeholder
placeholder
placeholder
SELECT MAX(Price) AS HighestPrice, MIN(Price) AS LowestPrice, AVG(Price) AS AveragePrice, Flavor FROM goods GROUP BY Flavor ORDER BY Flavor
SELECT MAX(Price) AS MaxPrice, MIN(Price) AS MinPrice, AVG(Price) AS AveragePrice, Flavor FROM goods GROUP BY Flavor ORDER BY Flavor
SELECT MIN(Price) AS LowestPrice, MAX(Price) AS HighestPrice, Food FROM goods GROUP BY Food ORDER BY Food
SELECT Date FROM receipts GROUP BY Date ORDER BY COUNT(*) DESC LIMIT 3
SELECT MIN( Price ) AS MinPrice, MAX( Price ) AS MaxPrice, Food FROM goods GROUP BY Food ORDER BY Food
SELECT COUNT(DISTINCT CustomerId) AS distinct_customers, Date FROM receipts GROUP BY Date
SELECT Date FROM receipts GROUP BY Date ORDER BY COUNT(*) DESC LIMIT 3
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT Id FROM goods WHERE Price > 2 * (SELECT AVG( Price ) FROM goods )
placeholder
SELECT Id FROM goods WHERE Price > (2 * (SELECT AVG( Price ) FROM goods ))
SELECT Id, Flavor, Food FROM goods ORDER BY Price
SELECT Id , Flavor , Food FROM goods ORDER BY Price
SELECT Id FROM goods WHERE Food = 'Cake' AND Price >= (SELECT AVG(Price) FROM goods WHERE Food = 'Tart')
SELECT Id, Flavor FROM goods WHERE Flavor = 'Cake' ORDER BY Flavor
SELECT Id, Flavor FROM goods WHERE Food = 'Cake' ORDER BY Flavor
placeholder
SELECT g.Flavor, g.Food, COUNT(*) AS PurchaseCount FROM items i JOIN goods g ON i.Item = g.Id GROUP BY g.Id ORDER BY PurchaseCount DESC LIMIT 3
SELECT Flavor FROM goods WHERE Food = 'Cake' EXCEPT SELECT Flavor FROM goods WHERE Food = 'Tart'
placeholder
placeholder
placeholder
placeholder
SELECT COUNT(*) FROM `driver`
placeholder
SELECT COUNT(*) FROM driver
placeholder
SELECT AVG(Age) AS average_age, Make FROM driver GROUP BY Make
placeholder
SELECT AVG(Age) AS average_age, Make FROM driver GROUP BY Make
SELECT AVG(Laps) FROM driver WHERE Age < 20
SELECT AVG(Laps) FROM driver WHERE Age < 20
placeholder
SELECT Manager , Sponsor FROM `team` ORDER BY Car_Owner
SELECT Manager, Sponsor FROM team ORDER BY Car_Owner
SELECT COUNT(*) AS driver_count, Make FROM driver WHERE CAST(Points AS REAL) > 150 GROUP BY Make
SELECT Make FROM `team` GROUP BY Make HAVING COUNT(*) > 1
placeholder
placeholder
SELECT Make FROM team WHERE Car_Owner = Buddy Arrington
SELECT MAX(Points) AS Max_Points, MIN(Points) AS Min_Points FROM driver
SELECT Driver FROM driver ORDER BY Age ASC
SELECT Driver FROM driver ORDER BY Age ASC
SELECT Make, COUNT(*) AS driver_count FROM driver WHERE CAST(Points AS REAL) > 150 GROUP BY Make
SELECT Make FROM `team` GROUP BY Make HAVING COUNT(*) > 1
SELECT COUNT(*) FROM driver WHERE CAST(Points AS REAL) < 150
SELECT d.Driver, c.Country FROM driver d JOIN country c ON d.Country = c.Country_Id
SELECT d. Driver , c. Country FROM `driver` d JOIN `country` c ON d. Country = c. Country_Id
SELECT Driver FROM `driver` ORDER BY Points DESC
SELECT Make FROM `team` WHERE Car_Owner = 'Buddy Arrington'
SELECT AVG(d.Age) FROM driver d JOIN country c ON d.Country = c.Country_Id WHERE c.Official_native_language = 'English'
SELECT AVG(d.Age) FROM driver d JOIN country c ON d.Country = c.Country_Id WHERE c.Official_native_language = 'English'
placeholder
placeholder
SELECT Make , COUNT(*) AS driver_count FROM `driver` GROUP BY Make
placeholder
SELECT Make, COUNT(*) AS driver_count FROM driver GROUP BY Make
placeholder
placeholder
placeholder
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
placeholder
placeholder
placeholder
SELECT Make FROM driver GROUP BY Make HAVING COUNT(*) >= 3
SELECT Make FROM driver GROUP BY Make HAVING COUNT(*) >= 3
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT SUM(Points) AS Total_Points, AVG(Points) AS Average_Points FROM driver
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT COUNT(*) FROM institution
SELECT COUNT(*) FROM institution
SELECT Name FROM institution ORDER BY Name ASC
placeholder
SELECT t.Manager, t.Sponsor FROM team t JOIN team_driver td ON t.Team_ID = td.Team_ID GROUP BY t.Team_ID ORDER BY COUNT(td.Driver_ID) DESC LIMIT 1
SELECT t.Manager, t.Sponsor FROM team t JOIN team_driver td ON t.Team_ID = td.Team_ID GROUP BY t.Team_ID ORDER BY COUNT(td.Driver_ID) DESC LIMIT 1
SELECT Name FROM institution ORDER BY Founded
placeholder
SELECT City , Province FROM institution
SELECT Name FROM institution ORDER BY Founded
SELECT Name FROM institution ORDER BY Name
SELECT MAX( Enrollment ), MIN( Enrollment ) FROM institution
SELECT MAX( Enrollment ) AS Maximum_Enrollment , MIN( Enrollment ) AS Minimum_Enrollment FROM institution
SELECT Affiliation FROM institution WHERE City != 'Vancouver'
SELECT City , Province FROM institution
SELECT t.Manager, t.Car_Owner FROM `team_driver` td JOIN `team` t ON td.Team_ID = t.Team_ID GROUP BY td.Team_ID HAVING COUNT(*) >= 2
SELECT Affiliation FROM institution WHERE City != 'Vancouver'
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1
SELECT i.Name, c.Nickname FROM institution i JOIN Championship c ON i.Institution_ID = c.Institution_ID
SELECT c. Nickname FROM institution i JOIN Championship c ON i. Institution_ID = c. Institution_ID ORDER BY i. Enrollment ASC LIMIT 1
placeholder
SELECT i.Name FROM institution i JOIN Championship c ON i.Institution_ID = c.Institution_ID ORDER BY c.Number_of_Championships DESC
SELECT i.Name FROM institution i INNER JOIN Championship c ON i.Institution_ID = c.Institution_ID
SELECT i.Name FROM institution i JOIN Championship c ON i.Institution_ID = c.Institution_ID WHERE c.Number_of_Championships >= 1
SELECT SUM(c.Number_of_Championships) FROM institution i JOIN Championship c ON i.Institution_ID = c.Institution_ID WHERE i.Affiliation = 'public'
SELECT Affiliation, COUNT(*) AS Number_of_Institutions FROM institution GROUP BY Affiliation
SELECT COUNT(*) AS institution_count, Affiliation FROM institution GROUP BY Affiliation
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT founded FROM institution GROUP BY founded HAVING COUNT(*) > 1
SELECT c.Nickname FROM Championship c JOIN institution i ON c.Institution_ID = i.Institution_ID ORDER BY i.Capacity DESC
SELECT SUM( Enrollment ) FROM institution WHERE City = 'Vancouver' OR City = 'Calgary'
SELECT c. Nickname FROM Championship c JOIN institution i ON c. Institution_ID = i. Institution_ID ORDER BY i. Capacity DESC
placeholder
placeholder
placeholder
SELECT Enrollment FROM institution WHERE City = 'Vancouver' OR City = 'Calgary'
SELECT COUNT(DISTINCT Province) FROM institution
SELECT COUNT(DISTINCT Province) FROM institution
SELECT * FROM Warehouses
SELECT * FROM Warehouses
placeholder
SELECT DISTINCT b.Contents FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code WHERE w.Location = 'New York'
SELECT Contents FROM Boxes WHERE Value > 150
SELECT Contents FROM Boxes WHERE Value > 150.0
SELECT DISTINCT b.Contents FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code WHERE w.Location = 'New York'
SELECT AVG(Value) AS AverageValue, SUM(Value) AS TotalValue FROM Boxes
SELECT AVG(Value) AS AverageValue, SUM(Value) AS TotalValue FROM Boxes
SELECT w.Code, AVG(b.Value) AS AverageValue FROM Warehouses w JOIN Boxes b ON w.Code = b.Warehouse GROUP BY w.Code
SELECT AVG(Value) AS AverageValue, Warehouse FROM Boxes GROUP BY Warehouse
SELECT Province FROM institution WHERE Founded < 1920 INTERSECT SELECT Province FROM institution WHERE Founded > 1950
placeholder
SELECT AVG(Capacity) AS AverageCapacity, SUM(Capacity) AS TotalCapacity FROM Warehouses
SELECT AVG(Capacity) AS AverageCapacity, SUM(Capacity) AS TotalCapacity FROM Warehouses
SELECT AVG(Value) AS AverageValue, MAX(Value) AS MaximumValue, Contents FROM Boxes GROUP BY Contents
SELECT Contents FROM Boxes ORDER BY Value DESC LIMIT 1
SELECT AVG(Value) FROM Boxes
SELECT AVG(Value) AS AverageValue, MAX(Value) AS MaximumValue, Contents FROM Boxes GROUP BY Contents
SELECT Contents FROM Boxes GROUP BY Contents ORDER BY SUM(Value) DESC LIMIT 1
SELECT AVG(Value) FROM Boxes
SELECT DISTINCT Contents FROM Boxes
SELECT DISTINCT Location FROM Warehouses
SELECT COUNT(DISTINCT Contents) FROM Boxes
SELECT DISTINCT Location FROM Warehouses
SELECT DISTINCT Contents FROM Boxes
SELECT COUNT(DISTINCT Contents) FROM Boxes
placeholder
SELECT b.Code FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code WHERE w.Location = 'Chicago' OR w.Location = 'New York'
SELECT b.Code FROM Boxes AS b JOIN Warehouses AS w ON b.Warehouse = w.Code WHERE w.Location = 'Chicago' OR w.Location = 'New York'
SELECT SUM(b.Value) FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code WHERE w.Location = 'Chicago' OR w.Location = 'New York'
SELECT SUM(b.Value) FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code WHERE w.Location = 'Chicago' OR w.Location = 'New York'
SELECT DISTINCT Warehouse FROM Boxes WHERE Contents IN ('Rocks', 'Scissors')
SELECT W.Code, W.Location FROM Boxes B JOIN Warehouses W ON B.Warehouse = W.Code WHERE B.Contents = 'Rocks' OR B.Contents = 'Scissors'
placeholder
placeholder
SELECT DISTINCT w.Location FROM Warehouses w JOIN Boxes b ON w.Code = b.Warehouse WHERE b.Contents = 'Rocks' OR b.Contents = 'Scissors'
placeholder
placeholder
SELECT Code, Contents FROM Boxes ORDER BY Value
placeholder
SELECT Code, Contents FROM Boxes ORDER BY Value
placeholder
SELECT DISTINCT Contents FROM Boxes ORDER BY Contents
SELECT DISTINCT Contents FROM Boxes ORDER BY Contents ASC
SELECT Code, Contents FROM Boxes ORDER BY Value ASC LIMIT 1
SELECT DISTINCT Contents FROM Boxes WHERE Value > (SELECT AVG(Value) FROM Boxes)
SELECT Code, Contents FROM Boxes ORDER BY Value ASC LIMIT 1
SELECT DISTINCT Contents FROM Boxes WHERE Value > (SELECT AVG(Value) FROM Boxes)
placeholder
SELECT Warehouse, AVG(Value) AS AverageValue FROM Boxes GROUP BY Warehouse HAVING AVG(Value) > 150
placeholder
SELECT SUM(Value) AS TotalValue, COUNT(*) AS BoxCount, Contents FROM Boxes GROUP BY Contents
placeholder
SELECT AVG(b.Value) FROM Boxes b GROUP BY b.Warehouse HAVING AVG(b.Value) > 150
placeholder
placeholder
placeholder
SELECT Contents, SUM(Value) AS TotalValue, COUNT(*) AS NumberOfBoxes FROM Boxes GROUP BY Contents
placeholder
SELECT Location, SUM(Capacity) AS TotalCapacity, AVG(Capacity) AS AverageCapacity, MAX(Capacity) AS MaximumCapacity FROM Warehouses GROUP BY Location
SELECT SUM(Capacity) FROM Warehouses
SELECT SUM(Capacity) FROM Warehouses
SELECT W.Location, MAX(B.Value) AS MostExpensiveValue FROM Warehouses W JOIN Boxes B ON W.Code = B.Warehouse GROUP BY W.Location
SELECT SUM(Capacity) AS TotalCapacity, AVG(Capacity) AS AverageCapacity, MAX(Capacity) AS MaximumCapacity, Location FROM Warehouses GROUP BY Location
SELECT MAX(b.Value) FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code GROUP BY w.Location
SELECT COUNT(*) AS box_count, Warehouse FROM Boxes GROUP BY Warehouse
SELECT b.Code, w.Location FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code
SELECT W.Code, COUNT(B.Code) AS BoxCount FROM Warehouses W JOIN Boxes B ON W.Code = B.Warehouse GROUP BY W.Code
SELECT COUNT(*) FROM ( SELECT DISTINCT w.Location FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code WHERE b.Contents = 'Rocks' )
SELECT b.Code, w.Location FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code
SELECT COUNT(DISTINCT Warehouse) FROM Boxes WHERE Contents = 'Rocks'
SELECT b.Code FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code WHERE w.Location = 'Chicago'
SELECT b.Code FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code WHERE w.Location = 'Chicago'
SELECT COUNT(DISTINCT Contents) AS DifferentContentTypes, Warehouse FROM Boxes GROUP BY Warehouse
SELECT COUNT(*) AS box_count, Warehouse FROM Boxes GROUP BY Warehouse
SELECT COUNT(DISTINCT Contents) AS distinct_contents_count, Warehouse FROM Boxes GROUP BY Warehouse
SELECT COUNT(*) AS box_count, Warehouse FROM Boxes GROUP BY Warehouse
SELECT w.Code FROM Warehouses w JOIN Boxes b ON w.Code = b.Warehouse GROUP BY w.Code HAVING COUNT(b.Code) > w.Capacity
SELECT SUM(b.Value) FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code WHERE w.Location != 'Chicago'
SELECT University_Name , City , State FROM university ORDER BY University_Name ASC
SELECT University_Name , City , State FROM university ORDER BY University_Name
SELECT COUNT(*) FROM university WHERE State = 'Illinois' OR State = 'Ohio'
SELECT COUNT(*) FROM university WHERE State = 'Illinois' OR State = 'Ohio'
SELECT DISTINCT Home_Conference FROM university
SELECT MAX(Enrollment) AS maximum_enrollment, AVG(Enrollment) AS average_enrollment, MIN(Enrollment) AS minimum_enrollment FROM university
SELECT MAX(Enrollment) AS Max_Enrollment, AVG(Enrollment) AS Avg_Enrollment, MIN(Enrollment) AS Min_Enrollment FROM university
SELECT DISTINCT Home_Conference FROM university
SELECT State FROM university GROUP BY State ORDER BY COUNT(University_ID) DESC LIMIT 1
SELECT Home_Conference, COUNT(*) AS Number_of_Universities FROM university GROUP BY Home_Conference
SELECT State FROM university GROUP BY State ORDER BY COUNT(*) DESC LIMIT 1
SELECT Team_Name FROM university WHERE Enrollment > (SELECT AVG(Enrollment) FROM university)
SELECT Home_Conference FROM university GROUP BY Home_Conference HAVING AVG(Enrollment) > 2000
SELECT Home_Conference FROM university GROUP BY Home_Conference HAVING AVG(Enrollment) > 2000
SELECT Home_Conference FROM university GROUP BY Home_Conference ORDER BY SUM(Enrollment) ASC LIMIT 1
SELECT Major_Name , Major_Code FROM major ORDER BY Major_Code
SELECT Major_Name , Major_Code FROM major ORDER BY Major_Code
placeholder
SELECT COUNT(*) AS university_count, Home_Conference FROM university GROUP BY Home_Conference
placeholder
placeholder
SELECT Home_Conference FROM university GROUP BY Home_Conference ORDER BY SUM(Enrollment) ASC
SELECT u.University_Name, u.City, u.State FROM major_ranking mr JOIN major m ON mr.Major_ID = m.Major_ID JOIN university u ON mr.University_ID = u.University_ID WHERE m.Major_Name = 'Accounting' AND mr.Rank = 1
placeholder
placeholder
placeholder
SELECT u.University_Name FROM university u WHERE NOT EXISTS ( SELECT 1 FROM major_ranking mr WHERE mr.University_ID = u.University_ID AND mr.Rank = 1 )
placeholder
placeholder
SELECT u.University_Name, o.Rank FROM university u JOIN overall_ranking o ON u.University_ID = o.University_ID WHERE u.State = 'Wisconsin'
SELECT u.University_Name FROM university u JOIN overall_ranking o ON u.University_ID = o.University_ID ORDER BY o.Reputation_point ASC
SELECT u.University_Name FROM university u JOIN overall_ranking o ON u.University_ID = o.University_ID ORDER BY o.Research_point DESC LIMIT 1
SELECT u.University_Name FROM overall_ranking AS or_ranking JOIN university u ON or_ranking.University_ID = u.University_ID ORDER BY or_ranking.Research_point DESC LIMIT 1
SELECT u.University_Name FROM university u JOIN overall_ranking o ON u.University_ID = o.University_ID ORDER BY o.Reputation_point ASC
placeholder
placeholder
SELECT u.University_Name, o.Rank FROM university u JOIN overall_ranking o ON u.University_ID = o.University_ID WHERE u.State = 'Wisconsin'
SELECT SUM(u.Enrollment) FROM university u JOIN overall_ranking o ON u.University_ID = o.University_ID WHERE o.Rank <= 5
placeholder
SELECT u.University_Name FROM university u JOIN major_ranking mr ON u.University_ID = mr.University_ID JOIN major m ON mr.Major_ID = m.Major_ID WHERE m.Major_Name = 'Accounting' AND mr.Rank >= 3
SELECT State FROM university WHERE Enrollment < 3000 GROUP BY State HAVING COUNT(*) > 2
SELECT u.University_Name FROM university u JOIN major_ranking mr ON u.University_ID = mr.University_ID JOIN major m ON mr.Major_ID = m.Major_ID WHERE m.Major_Name = 'Accounting' AND mr.Rank >= 3
SELECT Title FROM Movies WHERE Rating IS NULL
SELECT State FROM university WHERE Enrollment < 3000 GROUP BY State HAVING COUNT(*) > 2
SELECT Title FROM Movies WHERE Rating IS NULL
SELECT u.University_Name, o.Citation_point FROM university u JOIN overall_ranking o ON u.University_ID = o.University_ID ORDER BY o.Reputation_point DESC LIMIT 3
SELECT Title FROM Movies WHERE Rating = 'G'
SELECT Title FROM Movies WHERE Rating = 'G'
SELECT M.Title FROM MovieTheaters MT JOIN Movies M ON MT.Movie = M.Code WHERE MT.Name = 'Odeon'
SELECT m.Title, mt.Name FROM Movies m JOIN MovieTheaters mt ON m.Code = mt.Movie
SELECT COUNT(*) FROM Movies WHERE Rating = 'G'
SELECT m.Title, mt.Name FROM Movies m JOIN MovieTheaters mt ON m.Code = mt.Movie
SELECT COUNT(*) FROM Movies WHERE Rating = 'G'
SELECT COUNT(DISTINCT Movie) FROM MovieTheaters
placeholder
SELECT COUNT(DISTINCT Name) FROM MovieTheaters
SELECT M.Title FROM Movies AS M JOIN MovieTheaters AS MT ON M.Code = MT.Movie WHERE MT.Name = 'Odeon'
SELECT COUNT(*) FROM MovieTheaters JOIN Movies ON MovieTheaters.Movie = Movies.Code
placeholder
SELECT COUNT(*) FROM MovieTheaters
SELECT Rating FROM Movies WHERE Title LIKE '%Citizen%'
SELECT mt.Name FROM MovieTheaters mt JOIN Movies m ON mt.Movie = m.Code WHERE m.Rating = 'G' OR m.Rating = 'PG'
SELECT m.Title FROM Movies m JOIN MovieTheaters mt ON m.Code = mt.Movie WHERE mt.Name = 'Odeon' OR mt.Name = 'Imperial'
SELECT Rating FROM Movies WHERE Title LIKE '%Citizen%'
SELECT MT.Name FROM MovieTheaters MT JOIN Movies M ON MT.Movie = M.Code WHERE M.Rating = 'G' OR M.Rating = 'PG'
SELECT m.Title FROM Movies m JOIN MovieTheaters mt ON m.Code = mt.Movie WHERE mt.Name = 'Odeon' OR mt.Name = 'Imperial'
SELECT Title FROM Movies ORDER BY Title
SELECT Title FROM Movies ORDER BY Title
placeholder
SELECT Title FROM Movies ORDER BY Rating
SELECT Title FROM Movies ORDER BY Rating
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT COUNT(*) AS movie_count, Rating FROM Movies GROUP BY Rating
SELECT COUNT(*) FROM Movies WHERE Rating IS NOT NULL
SELECT COUNT(*) FROM Movies WHERE Rating IS NOT NULL
SELECT m.Title FROM Movies m JOIN MovieTheaters mt ON m.Code = mt.Movie GROUP BY m.Title ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) AS movie_count, Rating FROM Movies GROUP BY Rating
SELECT Name FROM MovieTheaters
SELECT Name FROM MovieTheaters
SELECT Name FROM MovieTheaters WHERE Movie IS NULL
placeholder
SELECT MT.Name FROM MovieTheaters MT JOIN Movies M ON MT.Movie = M.Code WHERE M.Rating = 'G'
placeholder
SELECT Title FROM Movies
SELECT Title FROM Movies
SELECT MT.Name FROM MovieTheaters MT JOIN Movies M ON MT.Movie = M.Code WHERE M.Rating = 'G'
SELECT * FROM Movies WHERE Rating IS NULL
SELECT DISTINCT Rating FROM Movies
placeholder
SELECT * FROM Movies WHERE Rating IS NULL
SELECT DISTINCT Rating FROM Movies
SELECT SUM(p.Weight) FROM Package p JOIN Client c ON p.Sender = c.AccountNumber WHERE c.Name = 'Leo Wong'
SELECT Position FROM Employee WHERE Name = 'Amy Wong'
SELECT Position FROM Employee WHERE Name = 'Amy Wong'
SELECT Salary, Position FROM Employee WHERE Name = 'Turanga Leela'
SELECT C.Name FROM Package P JOIN Client C ON P.Recipient = C.AccountNumber ORDER BY P.Weight DESC LIMIT 1
SELECT Salary, Position FROM Employee WHERE Name = 'Turanga Leela'
SELECT mt.Name FROM MovieTheaters mt LEFT JOIN Movies m ON mt.Movie = m.Code WHERE m.Code IS NULL
SELECT AVG(Salary) FROM Employee WHERE Position = 'intern'
SELECT AVG(Salary) FROM Employee WHERE Position = 'Intern'
SELECT hc.Level FROM Employee e JOIN Has_Clearance hc ON e.EmployeeID = hc.Employee WHERE e.Position = 'Physician'
SELECT p.PackageNumber FROM Package p JOIN Client c ON p.Sender = c.AccountNumber WHERE c.Name = 'Leo Wong'
SELECT p.PackageNumber FROM Package p JOIN Client c ON p.Recipient = c.AccountNumber WHERE c.Name = 'Leo Wong'
placeholder
SELECT m.Title FROM Movies m LEFT JOIN MovieTheaters mt ON m.Code = mt.Movie WHERE mt.Movie IS NULL
SELECT p.PackageNumber FROM Package p JOIN Client c ON p.Recipient = c.AccountNumber WHERE c.Name = 'Leo Wong'
placeholder
SELECT SUM(p.Weight) FROM Package p JOIN Client c ON p.Sender = c.AccountNumber WHERE c.Name = 'Leo Wong'
SELECT COUNT(*) FROM Package JOIN Client AS SenderClient ON Package.Sender = SenderClient.AccountNumber JOIN Client AS RecipientClient ON Package.Recipient = RecipientClient.AccountNumber WHERE SenderClient.Name = 'Ogden Wernstrom' AND RecipientClient.Name = 'Leo Wong'
SELECT hc.Level FROM Employee e JOIN Has_Clearance hc ON e.EmployeeID = hc.Employee WHERE e.Position = 'Physician'
placeholder
SELECT p.PackageNumber, p.Weight FROM Package p JOIN Client c ON p.Sender = c.AccountNumber WHERE c.Name LIKE '%John%' ORDER BY p.Weight DESC LIMIT 1
SELECT PackageNumber, Weight FROM Package ORDER BY Weight ASC LIMIT 3
placeholder
placeholder
placeholder
SELECT PackageNumber, Weight FROM Package ORDER BY Weight ASC LIMIT 3
SELECT p.PackageNumber, p.Weight FROM Package p JOIN Client c ON p.Sender = c.AccountNumber WHERE c.Name LIKE '%John%' ORDER BY p.Weight DESC LIMIT 1
placeholder
placeholder
SELECT c.Name, COUNT(p.PackageNumber) AS PackageCount FROM Client c JOIN Package p ON c.AccountNumber = p.Recipient GROUP BY c.AccountNumber ORDER BY PackageCount ASC LIMIT 1
SELECT Coordinates FROM Planet WHERE Name = 'Mars'
SELECT Coordinates FROM Planet WHERE Name = 'Mars'
SELECT Name, Coordinates FROM Planet ORDER BY Name
SELECT Name, Coordinates FROM Planet ORDER BY Name
SELECT s.ShipmentID FROM Shipment s JOIN Employee e ON s.Manager = e.EmployeeID WHERE e.Name = 'Phillip J. Fry'
SELECT Date FROM Shipment
SELECT S.ShipmentID FROM Shipment S JOIN Employee E ON S.Manager = E.EmployeeID WHERE E.Name = 'Phillip J Fry'
SELECT Date FROM Shipment
SELECT S.ShipmentID FROM Shipment S JOIN Planet P ON S.Planet = P.PlanetID WHERE P.Name = 'Mars'
placeholder
SELECT S.ShipmentID FROM Shipment S JOIN Planet P ON S.Planet = P.PlanetID WHERE P.Name = 'Mars'
placeholder
placeholder
SELECT C.Name, COUNT(*) AS PackageCount FROM Package P JOIN Client C ON P.Sender = C.AccountNumber GROUP BY C.Name ORDER BY COUNT(*) DESC LIMIT 1
placeholder
SELECT p.Name FROM Shipment s JOIN Planet p ON s.Planet = p.PlanetID GROUP BY p.Name ORDER BY COUNT(s.ShipmentID) DESC LIMIT 1
SELECT p.Name FROM Shipment s JOIN Planet p ON s.Planet = p.PlanetID GROUP BY p.Name ORDER BY COUNT(s.ShipmentID) DESC LIMIT 1
SELECT S.ShipmentID FROM Shipment S JOIN Employee E ON S.Manager = E.EmployeeID JOIN Planet P ON S.Planet = P.PlanetID WHERE E.Name = 'Turanga Leela' AND P.Name = 'Mars'
SELECT e.Name, COUNT(*) AS NumberOfShipments FROM Shipment s JOIN Employee e ON s.Manager = e.EmployeeID GROUP BY e.Name
SELECT COUNT(s.ShipmentID) AS NumberOfShipments, e.Name AS ManagerName FROM Shipment s JOIN Employee e ON s.Manager = e.EmployeeID GROUP BY e.EmployeeID
SELECT SUM(p.Weight) AS TotalWeight FROM Package p JOIN Shipment s ON p.Shipment = s.ShipmentID JOIN Planet pl ON s.Planet = pl.PlanetID WHERE pl.Name = 'Mars'
placeholder
placeholder
placeholder
placeholder
SELECT Planet.Name, COUNT(*) AS shipment_count FROM Shipment JOIN Planet ON Shipment.Planet = Planet.PlanetID GROUP BY Planet.Name
SELECT SUM(p.Weight) AS TotalWeight, pl.Name AS PlanetName FROM Package p JOIN Shipment s ON p.Shipment = s.ShipmentID JOIN Planet pl ON s.Planet = pl.PlanetID GROUP BY pl.Name
SELECT SUM(p.Weight) FROM Package p JOIN Shipment s ON p.Shipment = s.ShipmentID JOIN Planet pl ON s.Planet = pl.PlanetID WHERE pl.Name = 'Mars'
SELECT PackageNumber, Weight FROM Package WHERE Weight BETWEEN 10 AND 30
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT DISTINCT e.Name FROM Employee e JOIN Has_Clearance hc ON e.EmployeeID = hc.Employee JOIN Planet p ON hc.Planet = p.PlanetID WHERE p.Name = 'Omega III'
SELECT Name FROM Employee WHERE Salary BETWEEN 5000 AND 10000
SELECT Name FROM Employee WHERE Salary BETWEEN 5000 AND 10000
SELECT DISTINCT e.Name FROM Employee e JOIN Has_Clearance hc ON e.EmployeeID = hc.Employee JOIN Planet p ON hc.Planet = p.PlanetID WHERE p.Name = 'Omega III'
placeholder
SELECT Name FROM Employee WHERE Salary > (SELECT AVG(Salary) FROM Employee) OR Salary > 5000
placeholder
SELECT Name FROM Employee WHERE Salary > (SELECT AVG(Salary) FROM Employee) OR Salary > 5000
placeholder
placeholder
SELECT COUNT(*) FROM game
SELECT COUNT(*) FROM game
SELECT Title , Developers FROM game ORDER BY Units_sold_Millions DESC
SELECT AVG(Units_sold_Millions) FROM game WHERE Developers != 'Nintendo'
SELECT AVG(Units_sold_Millions) FROM game WHERE Developers != 'Nintendo'
placeholder
SELECT Platform_name , Market_district FROM platform
SELECT Title , Developers FROM game ORDER BY Units_sold_Millions DESC
SELECT Platform_name , Market_district FROM platform
SELECT Platform_name , Platform_ID FROM platform WHERE Download_rank = 1
SELECT Platform_name , Platform_ID FROM platform WHERE Download_rank = 1
SELECT MAX( Rank_of_the_year ) AS max_rank, MIN( Rank_of_the_year ) AS min_rank FROM player
SELECT COUNT(*) FROM player WHERE Rank_of_the_year < 3
SELECT MAX( Rank_of_the_year ) AS max_rank, MIN( Rank_of_the_year ) AS min_rank FROM player
SELECT Player_name FROM player ORDER BY Player_name
SELECT Player_name FROM player ORDER BY Player_name ASC
SELECT COUNT(*) FROM player WHERE Rank_of_the_year <= 3
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC
placeholder
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC
placeholder
SELECT g.Title, p.Platform_name FROM game g JOIN platform p ON g.Platform_ID = p.Platform_ID
SELECT g.Title, p.Platform_name FROM game g JOIN platform p ON g.Platform_ID = p.Platform_ID
SELECT g.Title FROM game g JOIN platform p ON g.Platform_ID = p.Platform_ID WHERE p.Market_district = 'Asia' OR p.Market_district = 'USA'
SELECT AVG(g.Units_sold_Millions) FROM game g JOIN game_player gp ON g.Game_ID = gp.Game_ID JOIN player p ON gp.Player_ID = p.Player_ID WHERE p.Position = 'Guard'
SELECT COUNT(*) AS game_count, Franchise FROM game GROUP BY Franchise
SELECT Franchise, COUNT(*) AS number_of_games FROM game GROUP BY Franchise
placeholder
placeholder
SELECT Franchise FROM game GROUP BY Franchise ORDER BY COUNT(*) DESC LIMIT 1
SELECT Franchise FROM game GROUP BY Franchise ORDER BY COUNT(*) DESC LIMIT 1
placeholder
placeholder
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*) >= 2
placeholder
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*) >= 2
SELECT DISTINCT Franchise FROM game
SELECT g.Title FROM game g JOIN platform p ON g.Platform_ID = p.Platform_ID WHERE p.Market_district = 'Asia' OR p.Market_district = 'USA'
SELECT DISTINCT Franchise FROM game
SELECT Name FROM press ORDER BY Year_Profits_billion DESC
SELECT Name FROM press ORDER BY Year_Profits_billion DESC
SELECT Name FROM press WHERE Year_Profits_billion > 15 OR Month_Profits_billion > 1
placeholder
SELECT AVG(Year_Profits_billion) AS Average_Profit, MAX(Year_Profits_billion) AS Maximum_Profit FROM press
SELECT Name FROM press WHERE Year_Profits_billion > 15 OR Month_Profits_billion > 1
placeholder
placeholder
SELECT DISTINCT g.Title FROM game_player gp JOIN player p ON gp.Player_ID = p.Player_ID JOIN game g ON gp.Game_ID = g.Game_ID WHERE p.College = 'Oklahoma' OR p.College = 'Auburn'
SELECT Name FROM press ORDER BY Month_Profits_billion DESC LIMIT 1
SELECT AVG(Year_Profits_billion) AS Average_Yearly_Profit, MAX(Year_Profits_billion) AS Maximum_Yearly_Profit, Press_ID FROM press GROUP BY Press_ID
SELECT COUNT(*) FROM author WHERE Age < 30
placeholder
placeholder
SELECT COUNT(*) FROM author WHERE Age < 30
SELECT AVG(Age) AS Average_Age, Gender FROM author GROUP BY Gender
SELECT Gender, AVG(Age) AS Average_Age FROM author GROUP BY Gender
SELECT Name FROM press ORDER BY Month_Profits_billion DESC LIMIT 1
SELECT COUNT(*) AS author_count, Gender FROM author WHERE Age > 30 GROUP BY Gender
SELECT COUNT(*) AS number_of_authors, Gender FROM author WHERE Age > 30 GROUP BY Gender
SELECT Title FROM book ORDER BY Release_date DESC
SELECT Title FROM book ORDER BY Release_date DESC
SELECT COUNT(*) AS book_count, Book_Series FROM book GROUP BY Book_Series
SELECT COUNT(*) AS Book_Count, Book_Series FROM book GROUP BY Book_Series
placeholder
placeholder
SELECT a.Name, a.Age FROM author a LEFT JOIN book b ON a.Author_ID = b.Author_ID WHERE b.Author_ID IS NULL
placeholder
SELECT a.Name FROM author a JOIN book b ON a.Author_ID = b.Author_ID GROUP BY a.Name HAVING COUNT(b.Book_ID) > 1
placeholder
placeholder
SELECT a.Name FROM author a LEFT JOIN book b ON a.Author_ID = b.Author_ID WHERE b.Book_ID IS NULL
placeholder
placeholder
placeholder
SELECT a.Name FROM author a JOIN book b ON a.Author_ID = b.Author_ID GROUP BY a.Author_ID HAVING COUNT(*) > 1
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT a.Name, a.Gender FROM author a JOIN book b ON a.Author_ID = b.Author_ID GROUP BY a.Name, a.Gender ORDER BY COUNT(b.Book_ID) DESC LIMIT 1
placeholder
SELECT p.Name, p.Year_Profits_billion FROM book b JOIN press p ON b.Press_ID = p.Press_ID GROUP BY p.Press_ID HAVING COUNT(b.Book_ID) > 2
SELECT COUNT(*) FROM Authors
SELECT author_name FROM Authors
placeholder
SELECT author_name, other_details FROM Authors
SELECT other_details FROM Authors WHERE author_name = 'Addison Denesik'
SELECT COUNT(*) FROM Documents
SELECT author_name FROM Documents WHERE document_id = 4
SELECT author_name FROM Documents WHERE document_name = 'Travel to Brazil'
SELECT document_name, document_description FROM Documents
SELECT COUNT(*) FROM Documents WHERE author_name = 'Era Kerluke'
placeholder
SELECT document_id, document_name FROM Documents WHERE author_name = 'Bianka Cummings'
SELECT author_name, other_details FROM Documents WHERE document_name = 'Travel to China'
placeholder
placeholder
SELECT A.author_name, COUNT(D.document_id) AS document_count FROM Authors A JOIN Documents D ON A.author_name = D.author_name GROUP BY A.author_name
placeholder
SELECT a.author_name FROM Authors a JOIN Documents d ON a.author_name = d.author_name GROUP BY a.author_name ORDER BY COUNT(d.document_id) DESC LIMIT 1
SELECT COUNT(*) FROM Business_Processes
SELECT next_process_id, process_name, process_description FROM Business_Processes WHERE process_id = 9
SELECT author_name FROM Documents GROUP BY author_name HAVING COUNT(*) >= 2
SELECT COUNT(*) FROM Process_Outcomes
SELECT process_outcome_description FROM Process_Outcomes WHERE process_outcome_code = 'working'
SELECT process_outcome_code, process_outcome_description FROM Process_Outcomes
SELECT process_status_description FROM Process_Status WHERE process_status_code = 'ct'
SELECT COUNT(*) FROM Staff
SELECT process_status_code, process_status_description FROM Process_Status
SELECT staff_id, staff_details FROM Staff
SELECT staff_details FROM Staff WHERE staff_id = 100
SELECT staff_role_code, staff_role_description FROM Ref_Staff_Roles
SELECT COUNT(*) FROM Process_Status
SELECT staff_role_description FROM Ref_Staff_Roles WHERE staff_role_code = 'HR'
SELECT COUNT(*) FROM Ref_Staff_Roles
SELECT po.process_outcome_description, ps.process_status_description FROM Documents_Processes dp JOIN Process_Outcomes po ON dp.process_outcome_code = po.process_outcome_code JOIN Process_Status ps ON dp.process_status_code = ps.process_status_code WHERE dp.document_id = 0
SELECT bp.process_name FROM Documents d JOIN Documents_Processes dp ON d.document_id = dp.document_id JOIN Business_Processes bp ON dp.process_id = bp.process_id WHERE d.document_name = 'Travel to Brazil'
SELECT process_id, COUNT(*) AS document_count FROM Documents_Processes GROUP BY process_id
placeholder
placeholder
placeholder
SELECT COUNT(*) FROM `Agencies`
SELECT COUNT(*) FROM Agencies
SELECT COUNT(*) FROM Staff_in_Processes WHERE document_id = 0 AND process_id = 9
placeholder
placeholder
SELECT COUNT(*) FROM Clients
placeholder
SELECT agency_id, agency_details FROM Agencies
SELECT agency_id, agency_details FROM Agencies
SELECT COUNT(*) FROM Clients
SELECT client_id, client_details FROM Clients
SELECT client_id, client_details FROM Clients
SELECT COUNT(*) AS client_count, agency_id FROM Clients GROUP BY agency_id
placeholder
SELECT agency_id, COUNT(*) AS client_count FROM Clients GROUP BY agency_id
SELECT COUNT(DISTINCT staff_role_code) FROM Staff_in_Processes WHERE staff_id = 3
SELECT c.client_details, a.agency_details FROM Clients c JOIN Agencies a ON c.agency_id = a.agency_id
SELECT A.agency_details FROM Clients C JOIN Agencies A ON C.agency_id = A.agency_id WHERE C.client_details LIKE '%Mac%'
SELECT a.agency_id, a.agency_details FROM Agencies a JOIN ( SELECT agency_id FROM Clients GROUP BY agency_id ORDER BY COUNT(*) DESC LIMIT 1 ) c ON a.agency_id = c.agency_id
SELECT COUNT(*) AS client_count, sic_code FROM Clients GROUP BY sic_code
SELECT sic_code, COUNT(*) AS client_count FROM Clients GROUP BY sic_code
SELECT client_id, client_details FROM Clients WHERE sic_code = 'Bad'
SELECT client_details FROM Clients WHERE sic_code = 'Bad'
SELECT a.agency_id, a.agency_details FROM Agencies a INNER JOIN Clients c ON a.agency_id = c.agency_id
SELECT a.agency_id, a.agency_details FROM Agencies a JOIN Clients c ON a.agency_id = c.agency_id GROUP BY a.agency_id ORDER BY COUNT(c.client_id) DESC LIMIT 1
SELECT A.agency_details FROM Agencies A JOIN Clients C ON A.agency_id = C.agency_id WHERE C.client_details = 'Mac'
placeholder
SELECT COUNT(*) FROM Invoices
SELECT COUNT(*) FROM Invoices
placeholder
placeholder
SELECT invoice_id, invoice_status, invoice_details FROM Invoices
SELECT invoice_id, invoice_status, invoice_details FROM Invoices
SELECT COUNT(*) AS invoice_count, client_id FROM Invoices GROUP BY client_id
SELECT agency_id FROM Agencies WHERE NOT EXISTS ( SELECT 1 FROM Clients WHERE Clients.agency_id = Agencies.agency_id )
SELECT c.client_id, c.client_details FROM Clients c JOIN Invoices i ON c.client_id = i.client_id GROUP BY c.client_id ORDER BY COUNT(i.invoice_id) DESC LIMIT 1
SELECT c.client_id, c.client_details FROM Clients c JOIN Invoices i ON c.client_id = i.client_id GROUP BY c.client_id ORDER BY COUNT(i.invoice_id) DESC LIMIT 1
SELECT A.agency_id, A.agency_details FROM Agencies AS A INNER JOIN Clients AS C ON A.agency_id = C.agency_id
SELECT client_id FROM Invoices GROUP BY client_id HAVING COUNT(*) >= 2
SELECT invoice_status, COUNT(*) AS invoice_count FROM Invoices GROUP BY invoice_status
SELECT client_id FROM Invoices GROUP BY client_id HAVING COUNT(invoice_id) >= 2
SELECT invoice_status FROM Invoices GROUP BY invoice_status ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) AS invoice_count, invoice_status FROM Invoices GROUP BY invoice_status
SELECT invoice_status FROM Invoices GROUP BY invoice_status ORDER BY COUNT(invoice_id) DESC LIMIT 1
SELECT meeting_outcome, purpose_of_meeting FROM Meetings
SELECT meeting_type, other_details FROM Meetings
placeholder
SELECT meeting_outcome, purpose_of_meeting FROM Meetings
SELECT p.payment_id, p.payment_details FROM Payments p JOIN Invoices i ON p.invoice_id = i.invoice_id WHERE i.invoice_status = 'Working'
SELECT p.payment_id, p.payment_details FROM Payments p JOIN Invoices i ON p.invoice_id = i.invoice_id WHERE i.invoice_status = 'Working'
SELECT i.invoice_id, i.invoice_status FROM Invoices i LEFT JOIN Payments p ON i.invoice_id = p.invoice_id WHERE p.payment_id IS NULL
placeholder
SELECT COUNT(*) FROM `Payments`
SELECT COUNT(*) FROM Payments
placeholder
SELECT payment_id, invoice_id, payment_details FROM Payments
placeholder
placeholder
SELECT DISTINCT p.invoice_id, i.invoice_status FROM Payments p JOIN Invoices i ON p.invoice_id = i.invoice_id
SELECT i.invoice_id, COUNT(p.payment_id) AS payment_count FROM Invoices i JOIN Payments p ON i.invoice_id = p.invoice_id GROUP BY i.invoice_id
SELECT COUNT(*) AS payment_count, invoice_id FROM Payments GROUP BY invoice_id
SELECT COUNT(*) FROM `Staff`
SELECT DISTINCT p.invoice_id, i.invoice_status FROM Payments p JOIN Invoices i ON p.invoice_id = i.invoice_id
placeholder
SELECT agency_id, COUNT(*) AS number_of_staff FROM Staff GROUP BY agency_id
SELECT COUNT(*) FROM `Staff`
SELECT agency_id, COUNT(*) AS number_of_staff FROM Staff GROUP BY agency_id
SELECT a.agency_id, a.agency_details FROM Agencies a JOIN Staff s ON a.agency_id = s.agency_id GROUP BY a.agency_id ORDER BY COUNT(s.staff_id) DESC LIMIT 1
placeholder
SELECT meeting_outcome, COUNT(*) AS meeting_count FROM Meetings GROUP BY meeting_outcome
SELECT COUNT(*) AS meeting_count, client_id FROM Meetings GROUP BY client_id
SELECT client_id, COUNT(*) AS meeting_count FROM Meetings GROUP BY client_id
SELECT COUNT(*) AS meeting_count, meeting_outcome FROM Meetings GROUP BY meeting_outcome
SELECT meeting_type, COUNT(*) AS number_of_meetings FROM Meetings GROUP BY client_id, meeting_type
SELECT COUNT(*) AS meeting_count, meeting_type FROM Meetings GROUP BY meeting_type
placeholder
SELECT m.meeting_id, m.meeting_outcome, m.meeting_type, c.client_details FROM Meetings m JOIN Clients c ON m.client_id = c.client_id
placeholder
SELECT m.meeting_id, COUNT(sim.staff_id) AS number_of_staff FROM Meetings m JOIN Staff_in_Meetings sim ON m.meeting_id = sim.meeting_id GROUP BY m.meeting_id
SELECT a.agency_id, a.agency_details FROM Agencies a JOIN Staff s ON a.agency_id = s.agency_id GROUP BY a.agency_id ORDER BY COUNT(s.staff_id) DESC LIMIT 1
SELECT COUNT(DISTINCT staff_id) FROM `Staff_in_Meetings`
SELECT COUNT(DISTINCT staff_id) FROM `Staff_in_Meetings`
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
