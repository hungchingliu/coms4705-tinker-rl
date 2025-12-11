SELECT COUNT(*) FROM club
SELECT COUNT(*) FROM club
SELECT Name FROM club WHERE Manufacturer != 'Nike'
SELECT Name FROM club ORDER BY Name
SELECT Manager , Captain FROM club
SELECT Name FROM club WHERE Manufacturer != 'Nike'
SELECT Name FROM club ORDER BY Name
SELECT Manager , Captain FROM club
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT DISTINCT Country FROM player WHERE Earnings > 1200000
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT Country FROM player WHERE Wins_count > 2 ORDER BY Earnings DESC LIMIT 1
SELECT DISTINCT Country FROM player WHERE Earnings > 1200000
SELECT Country FROM player WHERE Wins_count > 2 ORDER BY Earnings DESC LIMIT 1
SELECT p.Name AS Player_Name, c.Name AS Club_Name FROM player p JOIN club c ON p.Club_ID = c.Club_ID
SELECT p.Name, c.Name FROM player p JOIN club c ON p.Club_ID = c.Club_ID
SELECT DISTINCT c.Name FROM club c JOIN player p ON c.Club_ID = p.Club_ID WHERE p.Wins_count > 2
SELECT c.Name FROM club c JOIN player p ON c.Club_ID = p.Club_ID GROUP BY c.Club_ID ORDER BY AVG(p.Earnings) DESC
SELECT p.Name FROM player p JOIN club c ON p.Club_ID = c.Club_ID WHERE c.Manager = Sam Allardyce
SELECT p.Name FROM player p JOIN club c ON p.Club_ID = c.Club_ID WHERE c.Manager = 'Sam Allardyce'
SELECT DISTINCT c.Name FROM club c JOIN player p ON c.Club_ID = p.Club_ID WHERE p.Wins_count > 2
SELECT Manufacturer, COUNT(*) AS Club_Count FROM club GROUP BY Manufacturer
SELECT COUNT(*) AS club_count, Manufacturer FROM club GROUP BY Manufacturer
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT Manufacturer FROM club GROUP BY Manufacturer HAVING COUNT(*) > 1
SELECT c.Name FROM club c JOIN player p ON c.Club_ID = p.Club_ID GROUP BY c.Club_ID, c.Name ORDER BY AVG(p.Earnings) DESC
SELECT Manufacturer FROM club GROUP BY Manufacturer HAVING COUNT(*) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(Player_ID) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT COUNT(DISTINCT Country) FROM player
SELECT COUNT(DISTINCT Country) FROM player
SELECT c.Name FROM club c LEFT JOIN player p ON c.Club_ID = p.Club_ID WHERE p.Club_ID IS NULL
SELECT Earnings FROM player WHERE Country = Australia OR Country = Zimbabwe
SELECT Earnings FROM player WHERE Country = 'Australia' OR Country = 'Zimbabwe'
SELECT Name FROM club WHERE NOT EXISTS ( SELECT 1 FROM player WHERE player.Club_ID = club.Club_ID )
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT oi.order_id, o.order_status_code, COUNT(*) AS product_count FROM Order_Items oi JOIN Orders o ON oi.order_id = o.order_id GROUP BY oi.order_id, o.order_status_code
SELECT o.order_id, o.order_status_code, COUNT(*) AS product_count FROM Orders o JOIN Order_Items oi ON o.order_id = oi.order_id GROUP BY o.order_id, o.order_status_code
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
SELECT payment_method_code FROM `Customer_Payment_Methods` GROUP BY payment_method_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT payment_method_code FROM `Customer_Payment_Methods` GROUP BY payment_method_code ORDER BY COUNT(*) DESC LIMIT 1
placeholder
SELECT c.gender_code, COUNT(o.order_id) AS order_count FROM Customers c JOIN Orders o ON c.customer_id = o.customer_id GROUP BY c.gender_code
placeholder
SELECT c.customer_first_name, c.customer_middle_initial, c.customer_last_name, cpm.payment_method_code FROM Customers c JOIN Customer_Payment_Methods cpm ON c.customer_id = cpm.customer_id
SELECT COUNT(*) AS order_count, c.gender_code FROM Customers c JOIN Orders o ON c.customer_id = o.customer_id GROUP BY c.gender_code
placeholder
placeholder
SELECT p.product_name, sh.shipment_date FROM Products p JOIN Order_Items oi ON p.product_id = oi.product_id JOIN Shipments sh ON oi.order_id = sh.order_id
SELECT c.customer_first_name, c.customer_middle_initial, c.customer_last_name, cpm.payment_method_code FROM Customers c LEFT JOIN Customer_Payment_Methods cpm ON c.customer_id = cpm.customer_id
SELECT i.invoice_status_code, i.invoice_date, s.shipment_date FROM Invoices i JOIN Shipments s ON i.invoice_number = s.invoice_number
placeholder
SELECT c.gender_code, COUNT(oi.order_item_id) AS number_of_products FROM Customers c JOIN Orders o ON c.customer_id = o.customer_id JOIN Order_Items oi ON o.order_id = oi.order_id GROUP BY c.gender_code
placeholder
SELECT DISTINCT p.product_name, p.product_price, p.product_description FROM Products p JOIN Order_Items oi ON p.product_id = oi.product_id JOIN Orders o ON oi.order_id = o.order_id JOIN Customers c ON o.customer_id = c.customer_id WHERE c.gender_code = 'F'
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT COUNT(DISTINCT order_item_status_code) FROM Order_Items
SELECT COUNT(DISTINCT order_item_status_code) FROM Order_Items
SELECT COUNT(DISTINCT customer_id) FROM Orders
placeholder
SELECT COUNT(DISTINCT payment_method_code) FROM `Customer_Payment_Methods`
placeholder
SELECT login_name, login_password FROM Customers WHERE phone_number LIKE '+12%'
SELECT product_size FROM Products WHERE product_name LIKE '%Dell%'
placeholder
placeholder
SELECT COUNT(DISTINCT payment_method_code) FROM `Customer_Payment_Methods`
SELECT product_price, product_size FROM Products WHERE product_price > (SELECT AVG(product_price) FROM Products)
SELECT COUNT(DISTINCT customer_id) FROM Orders
SELECT login_name, login_password FROM Customers WHERE phone_number LIKE '+12%'
SELECT product_price, product_size FROM Products WHERE product_price > (SELECT AVG(product_price) FROM Products)
SELECT address_line_1, town_city, county FROM Customers WHERE country = 'USA'
SELECT order_status_code, date_order_placed FROM Orders
SELECT order_status_code, date_order_placed FROM Orders
SELECT DISTINCT product_size FROM Products WHERE product_name LIKE '%Dell%'
SELECT address_line_1, town_city, county FROM Customers WHERE country = 'United States'
SELECT COUNT(*) FROM Customers LEFT JOIN Customer_Payment_Methods ON Customers.customer_id = Customer_Payment_Methods.customer_id WHERE Customer_Payment_Methods.customer_id IS NULL
placeholder
SELECT AVG(product_price) FROM Products
placeholder
SELECT AVG(product_price) FROM Products
SELECT AVG(p.product_price) FROM Products p JOIN Order_Items oi ON p.product_id = oi.product_id
placeholder
placeholder
placeholder
SELECT COUNT(*) FROM `Shipment_Items`
placeholder
SELECT order_status_code FROM Orders GROUP BY order_status_code ORDER BY COUNT(*) ASC LIMIT 1
SELECT order_status_code FROM Orders GROUP BY order_status_code ORDER BY COUNT(*) ASC LIMIT 1
placeholder
placeholder
placeholder
placeholder
SELECT shipment_tracking_number, shipment_date FROM Shipments
placeholder
SELECT shipment_tracking_number, shipment_date FROM Shipments
SELECT i.invoice_date, i.invoice_number FROM Invoices i JOIN Shipments s ON i.invoice_number = s.invoice_number GROUP BY i.invoice_number HAVING COUNT(*) >= 2
SELECT Name FROM director WHERE Age > (SELECT AVG(Age) FROM director)
placeholder
SELECT Name FROM director ORDER BY Age DESC LIMIT 1
placeholder
SELECT COUNT(*) FROM channel WHERE LOWER( Internet ) LIKE '%bbc%'
SELECT COUNT(DISTINCT Digital_terrestrial_channel) FROM channel
placeholder
SELECT Title FROM program ORDER BY Start_Year DESC
SELECT product_color, product_description, product_size FROM Products WHERE product_price < (SELECT MAX(product_price) FROM Products)
SELECT Title FROM program ORDER BY Start_Year DESC LIMIT 1
SELECT d.Name FROM program p JOIN director d ON p.Director_ID = d.Director_ID WHERE p.Title = 'Dracula'
SELECT COUNT(p.Program_ID) AS Program_Count, c.Name FROM channel c JOIN program p ON c.Channel_ID = p.Channel_ID GROUP BY c.Name
SELECT Name FROM director WHERE Age BETWEEN 30 AND 60
SELECT d.Name, d.Age FROM director d JOIN program p ON d.Director_ID = p.Director_ID GROUP BY d.Director_ID ORDER BY COUNT(p.Program_ID) DESC LIMIT 1
placeholder
SELECT COUNT(*) FROM channel LEFT JOIN program ON channel.Channel_ID = program.Channel_ID WHERE program.Channel_ID IS NULL
SELECT COUNT(*) FROM radio
SELECT tv_show_name, Original_Airdate FROM tv_show
SELECT Station_name FROM city_channel WHERE Affiliation != 'ABC'
placeholder
placeholder
SELECT Affiliation, COUNT(*) AS channel_count FROM city_channel GROUP BY Affiliation
placeholder
placeholder
SELECT Affiliation FROM city_channel GROUP BY Affiliation HAVING COUNT(*) > 3
SELECT Affiliation FROM city_channel GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT Transmitter FROM radio ORDER BY CAST( ERP_kW AS REAL)
SELECT Transmitter FROM radio ORDER BY CAST(ERP_kW AS REAL) DESC LIMIT 1
placeholder
SELECT City , Station_name FROM city_channel ORDER BY Station_name ASC
SELECT r.Transmitter, cc.City FROM radio r JOIN city_channel_radio crc ON r.Radio_ID = crc.Radio_ID JOIN city_channel cc ON crc.City_channel_ID = cc.ID
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1
SELECT r.Transmitter, COUNT(ccr.City_channel_ID) AS number_of_city_channels FROM radio r JOIN city_channel_radio ccr ON r.Radio_ID = ccr.Radio_ID GROUP BY r.Transmitter
SELECT Name FROM driver WHERE Citizenship = 'United States'
SELECT Name FROM driver WHERE Citizenship = 'United States'
SELECT Driver_ID, COUNT(*) AS Vehicle_Count FROM vehicle_driver GROUP BY Driver_ID ORDER BY Vehicle_Count DESC LIMIT 1
placeholder
SELECT MAX(Power) AS Max_Power, AVG(Power) AS Avg_Power FROM vehicle WHERE Builder = 'Zhuzhou'
SELECT MAX( Power ) AS Max_Power, AVG( Power ) AS Avg_Power FROM vehicle WHERE Builder = 'Zhuzhou'
placeholder
SELECT COUNT(*) AS vehicle_count, Driver_ID FROM vehicle_driver GROUP BY Driver_ID ORDER BY vehicle_count DESC LIMIT 1
SELECT Build_Year , Model , Builder FROM vehicle
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = '1996'
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = '1996'
SELECT Build_Year , Model , Builder FROM vehicle
SELECT Vehicle_ID FROM vehicle_driver GROUP BY Vehicle_ID ORDER BY COUNT(*) ASC LIMIT 1
SELECT COUNT(DISTINCT v_driver.Driver_ID) FROM vehicle_driver AS v_driver JOIN vehicle AS v ON v_driver. Vehicle_ID = v. Vehicle_ID WHERE v. Build_Year = '2012'
placeholder
SELECT COUNT(*) FROM driver WHERE Racing_Series = 'NASCAR'
SELECT COUNT(*) FROM driver WHERE Racing_Series = 'NASCAR'
SELECT AVG(Top_Speed) FROM vehicle
placeholder
SELECT AVG(Top_Speed) FROM vehicle
SELECT DISTINCT d.Name FROM driver d JOIN vehicle_driver vd ON d.Driver_ID = vd.Driver_ID JOIN vehicle v ON vd.Vehicle_ID = v.Vehicle_ID WHERE v.Power > 5000
SELECT COUNT(DISTINCT vd.Driver_ID) FROM vehicle_driver vd JOIN vehicle v ON vd.Vehicle_ID = v.Vehicle_ID WHERE v.Build_Year = '2012'
SELECT d.Name FROM driver d JOIN vehicle_driver vd ON d.Driver_ID = vd.Driver_ID JOIN vehicle v ON vd.Vehicle_ID = v.Vehicle_ID WHERE v.Power > 5000
SELECT Model , Build_Year FROM vehicle WHERE Model LIKE '%DJ%'
SELECT Model , Build_Year FROM vehicle WHERE Model LIKE '%DJ%'
placeholder
SELECT v.Model FROM vehicle v WHERE NOT EXISTS ( SELECT 1 FROM vehicle_driver vd WHERE vd. Vehicle_ID = v. Vehicle_ID )
SELECT COUNT(*) FROM vehicle WHERE Top_Speed = (SELECT MAX(Top_Speed) FROM vehicle)
placeholder
SELECT Name FROM driver ORDER BY Name
placeholder
SELECT Name FROM driver ORDER BY Name
placeholder
SELECT COUNT(*) FROM vehicle WHERE Top_Speed = (SELECT MAX(Top_Speed) FROM vehicle)
SELECT COUNT(*) AS driver_count, Racing_Series FROM driver GROUP BY Racing_Series
placeholder
SELECT COUNT(*) AS driver_count, Racing_Series FROM driver GROUP BY Racing_Series
placeholder
placeholder
placeholder
SELECT DISTINCT Subject_Code FROM Exams ORDER BY Subject_Code ASC
SELECT COUNT(*) FROM Exams
SELECT COUNT(*) FROM Exams
SELECT Exam_Name, Exam_Date FROM Exams WHERE Subject_Code != 'Database'
SELECT DISTINCT Subject_Code FROM Exams ORDER BY Subject_Code
SELECT Exam_Date, Exam_Name FROM Exams WHERE Subject_Code != 'Database'
SELECT Exam_Date FROM Exams WHERE Subject_Code LIKE '%data%' ORDER BY Exam_Date DESC
SELECT Exam_Date FROM Exams WHERE Subject_Code LIKE '%data%' ORDER BY Exam_Date DESC
SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments = Normal
SELECT Type_of_Question_Code, COUNT(*) AS Question_Count FROM Questions GROUP BY Type_of_Question_Code
SELECT Type_of_Question_Code, COUNT(*) AS Count_of_Occurrence FROM Questions GROUP BY Type_of_Question_Code
SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments = 'Normal'
SELECT COUNT(*) FROM driver LEFT JOIN vehicle_driver ON driver.Driver_ID = vehicle_driver.Driver_ID WHERE vehicle_driver.Driver_ID IS NULL
SELECT COUNT(DISTINCT Comments) FROM Student_Answers
SELECT COUNT(DISTINCT Comments) FROM Student_Answers
placeholder
SELECT S.First_Name, SA.Date_of_Answer FROM Students S JOIN Student_Answers SA ON S.Student_ID = SA.Student_ID
placeholder
placeholder
SELECT Student_Answer_Text, COUNT(*) AS Frequency FROM Student_Answers GROUP BY Student_Answer_Text ORDER BY Frequency DESC
SELECT s.First_Name, sa.Date_of_Answer FROM Students s JOIN Student_Answers sa ON s.Student_ID = sa.Student_ID
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY COUNT(*) ASC LIMIT 1
SELECT s.First_Name FROM Students s JOIN Student_Answers sa ON s.Student_ID = sa.Student_ID GROUP BY s.First_Name HAVING COUNT(sa.Student_Answer_ID) >= 2
SELECT Student_Answer_Text, COUNT(*) AS Answer_Count FROM Student_Answers GROUP BY Student_Answer_Text ORDER BY Answer_Count DESC
SELECT Last_Name FROM Students WHERE Gender_MFU <> 'M'
SELECT s.First_Name FROM Students s JOIN Student_Answers sa ON s.Student_ID = sa.Student_ID GROUP BY s.Student_ID HAVING COUNT(sa.Student_Answer_ID) >= 2
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY COUNT(*) ASC LIMIT 1
SELECT Last_Name FROM Students WHERE Gender_MFU != 'M'
SELECT Gender_MFU, COUNT(*) AS Number_of_Students FROM Students GROUP BY Gender_MFU
SELECT s.Email_Adress, sa.Date_of_Answer FROM Students s JOIN Student_Answers sa ON s.Student_ID = sa.Student_ID ORDER BY sa.Date_of_Answer DESC
SELECT Gender_MFU, COUNT(*) AS Number_of_Students FROM Students GROUP BY Gender_MFU
SELECT Last_Name FROM Students WHERE Gender_MFU = 'F' OR Gender_MFU = 'M'
SELECT Valid_Answer_Text FROM Valid_Answers GROUP BY Valid_Answer_Text ORDER BY COUNT(*) DESC LIMIT 1
SELECT Last_Name FROM Students WHERE Gender_MFU = 'F' OR Gender_MFU = 'M'
SELECT First_Name FROM Students WHERE NOT EXISTS ( SELECT 1 FROM Student_Answers WHERE Student_Answers.Student_ID = Students.Student_ID )
SELECT Type_of_Question_Code FROM Questions GROUP BY Type_of_Question_Code HAVING COUNT(*) >= 3
placeholder
SELECT Type_of_Question_Code FROM Questions GROUP BY Type_of_Question_Code HAVING COUNT(Question_ID) >= 3
SELECT * FROM Students
placeholder
SELECT COUNT(*) FROM Addresses
SELECT COUNT(*) FROM Addresses
SELECT address_id, address_details FROM Addresses
SELECT address_id, address_details FROM Addresses
SELECT * FROM Students
SELECT COUNT(*) FROM `Products`
SELECT product_id, product_type_code, product_name FROM Products
SELECT product_id, product_type_code, product_name FROM Products
SELECT COUNT(*) FROM Products
SELECT product_price FROM Products WHERE product_name = 'Monitor'
placeholder
placeholder
SELECT AVG(product_price) FROM Products WHERE product_type_code = 'Clothes'
SELECT product_price FROM Products WHERE product_name = 'Monitor'
SELECT MIN(product_price) AS min_price, AVG(product_price) AS avg_price, MAX(product_price) AS max_price FROM Products
SELECT MIN(product_price) AS min_price, AVG(product_price) AS avg_price, MAX(product_price) AS max_price FROM Products
placeholder
SELECT COUNT(*) FROM `Products` WHERE `product_type_code` = 'Hardware'
SELECT AVG(product_price) FROM Products WHERE product_type_code = 'Clothes'
SELECT product_name FROM Products WHERE product_price > (SELECT AVG(product_price) FROM Products)
SELECT product_name FROM Products WHERE product_price > (SELECT AVG(product_price) FROM Products)
SELECT product_name FROM Products WHERE product_type_code = 'Clothes' ORDER BY product_price DESC LIMIT 1
SELECT product_id, product_name FROM Products WHERE product_type_code = 'Hardware' ORDER BY product_price ASC LIMIT 1
SELECT product_name FROM Products WHERE product_type_code = 'Clothes' ORDER BY product_price DESC LIMIT 1
SELECT product_name FROM Products ORDER BY product_price DESC
SELECT product_name FROM Products ORDER BY product_price DESC
SELECT product_id, product_name FROM Products WHERE product_type_code = 'Hardware' AND product_price IS NOT NULL ORDER BY product_price ASC LIMIT 1
SELECT product_type_code, COUNT(*) AS product_count FROM Products GROUP BY product_type_code
SELECT COUNT(*) AS product_count, product_type_code FROM Products GROUP BY product_type_code
SELECT product_type_code, AVG(product_price) AS average_price FROM Products GROUP BY product_type_code
SELECT product_name FROM Products WHERE product_type_code = 'Hardware' ORDER BY product_price ASC
SELECT AVG(product_price) AS average_price, product_type_code FROM Products GROUP BY product_type_code
SELECT * FROM Products WHERE product_type_code = 'HARDWARE' ORDER BY product_price ASC
SELECT product_type_code FROM Products GROUP BY product_type_code HAVING COUNT(*) >= 2
SELECT product_name FROM Products WHERE product_type_code = 'Hardware' AND product_price > (SELECT AVG(product_price) FROM Products WHERE product_type_code = 'Hardware')
SELECT product_type_code FROM Products GROUP BY product_type_code HAVING COUNT(*) >= 2
placeholder
SELECT product_type_code FROM Products GROUP BY product_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT product_type_code FROM Products GROUP BY product_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM Customers
placeholder
SELECT customer_id, customer_name FROM Customers
SELECT COUNT(*) FROM Customers
SELECT customer_id, customer_name FROM Customers
SELECT customer_address, customer_phone, customer_email FROM Customers WHERE customer_name = 'Jeromy'
SELECT payment_method_code, COUNT(*) AS customer_count FROM Customers GROUP BY payment_method_code
SELECT payment_method_code FROM Customers GROUP BY payment_method_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT payment_method_code FROM Customers GROUP BY payment_method_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) AS customer_count, payment_method_code FROM Customers GROUP BY payment_method_code
SELECT DISTINCT payment_method_code FROM Customers
SELECT payment_method_code, customer_number FROM Customers WHERE customer_name = 'Jeromy'
SELECT DISTINCT payment_method_code FROM Customers
SELECT payment_method_code, customer_number FROM Customers WHERE customer_name = 'Jeromy'
SELECT product_id, product_type_code FROM Products ORDER BY product_name
SELECT product_id, product_type_code FROM Products ORDER BY product_name
SELECT COUNT(*) FROM `Customer_Orders`
SELECT customer_address, customer_phone, customer_email FROM Customers WHERE customer_name = 'Jeromy'
SELECT COUNT(*) FROM `Customer_Orders`
SELECT product_type_code FROM Products GROUP BY product_type_code ORDER BY COUNT(*) ASC LIMIT 1
placeholder
SELECT co.order_id, co.order_date, co.order_status_code FROM Customer_Orders co JOIN Customers c ON co.customer_id = c.customer_id WHERE c.customer_name = 'Jeromy'
SELECT order_status_code, COUNT(*) AS order_count FROM Customer_Orders GROUP BY order_status_code
placeholder
placeholder
SELECT COUNT(*) AS order_count, order_status_code FROM Customer_Orders GROUP BY order_status_code
SELECT order_status_code FROM Customer_Orders GROUP BY order_status_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT order_status_code FROM Customer_Orders GROUP BY order_status_code ORDER BY COUNT(*) DESC LIMIT 1
placeholder
SELECT COUNT(*) FROM Customers LEFT JOIN Customer_Orders ON Customers.customer_id = Customer_Orders.customer_id WHERE Customer_Orders.customer_id IS NULL
placeholder
placeholder
placeholder
SELECT COUNT(*) FROM Customers LEFT JOIN Customer_Orders ON Customers.customer_id = Customer_Orders.customer_id WHERE Customer_Orders.order_id IS NULL
placeholder
SELECT COUNT(*) FROM `Order_Items` JOIN `Products` ON `Order_Items`.`product_id` = `Products`.`product_id` WHERE `Products`.`product_type_code` = 'Monitor'
SELECT COUNT(DISTINCT customer_id) FROM `Customer_Orders`
SELECT customer_id FROM Customers WHERE NOT EXISTS ( SELECT 1 FROM Customer_Orders WHERE Customer_Orders.customer_id = Customers.customer_id )
placeholder
SELECT p.product_name FROM Products p WHERE NOT EXISTS ( SELECT 1 FROM Order_Items oi WHERE oi.product_id = p.product_id )
SELECT product_name FROM Products WHERE NOT EXISTS (SELECT 1 FROM Order_Items WHERE Order_Items.product_id = Products.product_id)
placeholder
placeholder
placeholder
SELECT COUNT(*) FROM building
SELECT COUNT(*) FROM building
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT MAX(Number_of_Stories) FROM building WHERE Completed_Year != 1980
SELECT MAX( Number_of_Stories ) FROM building WHERE Completed_Year != 1980
SELECT AVG(Population) FROM region
SELECT Name FROM region ORDER BY Name
SELECT AVG(Population) FROM region
SELECT Name FROM region ORDER BY Name
SELECT Capital FROM region WHERE Area > 10000
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1
SELECT Capital FROM region WHERE Area > 10000
SELECT customer_id FROM Customers WHERE NOT EXISTS ( SELECT 1 FROM Customer_Orders WHERE Customer_Orders.customer_id = Customers.customer_id )
SELECT Name FROM region ORDER BY Area DESC LIMIT 5
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1
placeholder
SELECT b.Name AS Building_Name, r.Name AS Region_Name FROM building b JOIN region r ON b.Region_ID = r.Region_ID
SELECT b.Name AS Name , r.Name AS Region_Name FROM building AS b JOIN region AS r ON b.Region_ID = r.Region_ID
SELECT Name FROM region ORDER BY Area DESC LIMIT 5
SELECT r.Name FROM region r JOIN building b ON r.Region_ID = b.Region_ID GROUP BY r.Name HAVING COUNT(b.Building_ID) > 1
SELECT r.Name FROM region r JOIN building b ON r.Region_ID = b.Region_ID GROUP BY r.Region_ID, r.Name HAVING COUNT(b.Building_ID) > 1
placeholder
SELECT r.Capital FROM region r JOIN building b ON r.Region_ID = b.Region_ID GROUP BY r.Region_ID ORDER BY COUNT(b.Building_ID) DESC LIMIT 1
SELECT b.Number_of_Stories FROM building b JOIN region r ON b.Region_ID = r.Region_ID WHERE r.Name = 'Abruzzo'
SELECT b.Address, r.Name FROM building b JOIN region r ON b.Region_ID = r.Region_ID
SELECT b.Address, r.Capital FROM building b JOIN region r ON b.Region_ID = r.Region_ID
SELECT Completed_Year, COUNT(*) AS Number_of_Buildings FROM building GROUP BY Completed_Year
SELECT Completed_Year, COUNT(*) AS Number_of_Buildings FROM building GROUP BY Completed_Year
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1
SELECT b.Number_of_Stories FROM building b JOIN region r ON b.Region_ID = r.Region_ID WHERE r.Name = 'Abruzzo'
SELECT r.Name FROM region r LEFT JOIN building b ON r. Region_ID = b. Region_ID WHERE b. Region_ID IS NULL
SELECT DISTINCT Address FROM building
SELECT DISTINCT Address FROM building
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT Channel_Details FROM Channels ORDER BY Channel_Details
SELECT Channel_Details FROM Channels ORDER BY Channel_Details
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT COUNT(*) FROM Services
SELECT r.Name FROM region r LEFT JOIN building b ON r. Region_ID = b. Region_ID WHERE b. Region_ID IS NULL
placeholder
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT COUNT(*) FROM Services
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
SELECT s.Service_Details FROM Customers c JOIN Customers_and_Services cas ON c.Customer_ID = cas.Customer_ID JOIN Services s ON cas.Service_ID = s.Service_ID WHERE c.Customer_Details = 'Hardy Kutch'
SELECT Analytical_Layer_Type_Code FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT s.Service_Details FROM Services s JOIN Customer_Interactions ci ON s.Service_ID = ci.Service_ID GROUP BY s.Service_ID HAVING COUNT(*) > 3
placeholder
SELECT c.Customer_Details FROM Customers c JOIN Customers_and_Services cas ON c.Customer_ID = cas.Customer_ID GROUP BY c.Customer_ID ORDER BY COUNT(cas.Service_ID) DESC LIMIT 1
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT c.Customer_Details FROM Customers c WHERE NOT EXISTS ( SELECT 1 FROM Customers_and_Services cs WHERE cs.Customer_ID = c.Customer_ID )
SELECT c.Customer_Details FROM Customers c LEFT JOIN Customers_and_Services cas ON c.Customer_ID = cas.Customer_ID WHERE cas.Customer_ID IS NULL
SELECT Customer_Details FROM Customers WHERE Customer_Details LIKE '%Kutch%'
SELECT Customer_Details FROM Customers WHERE Customer_Details LIKE '%Kutch%'
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT COUNT(*) FROM Integration_Platform WHERE Integration_Platform_Details = 'Success'
placeholder
placeholder
placeholder
SELECT c.Customer_Details FROM Customer_Interactions ci JOIN Customers c ON ci.Customer_ID = c.Customer_ID WHERE ci.Status_Code = 'Stuck' AND ci.Services_and_Channels_Details = 'bad'
SELECT COUNT(*) FROM Integration_Platform JOIN Customer_Interactions ON Integration_Platform.Customer_Interaction_ID = Customer_Interactions.Customer_Interaction_ID WHERE Customer_Interactions.Status_Code = 'SUCCESS'
placeholder
placeholder
SELECT COUNT(*) FROM Vehicles
placeholder
SELECT COUNT(*) FROM Vehicles
SELECT s.Service_Details FROM Customers_and_Services cas JOIN Services s ON cas.Service_ID = s.Service_ID WHERE cas.Customers_and_Services_Details = 'unsatisfied'
SELECT Analytical_Layer_Type_Code, COUNT(*) AS Usage_Count FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code
SELECT name FROM Vehicles ORDER BY Model_year DESC
SELECT DISTINCT Type_of_powertrain FROM Vehicles
SELECT name FROM Vehicles ORDER BY Model_year DESC
SELECT s.Service_Details FROM Services s LEFT JOIN Customers_and_Services c ON s.Service_ID = c.Service_ID WHERE c.Customer_ID IS NULL
SELECT DISTINCT Type_of_powertrain FROM Vehicles
placeholder
SELECT name , Type_of_powertrain , Annual_fuel_cost FROM Vehicles WHERE Model_year = 2013 OR Model_year = 2014
SELECT Type_of_powertrain , COUNT(*) AS vehicle_count FROM Vehicles GROUP BY Type_of_powertrain
SELECT COUNT(*) AS vehicle_count, Type_of_powertrain FROM Vehicles GROUP BY Type_of_powertrain
SELECT Type_of_powertrain FROM Vehicles GROUP BY Type_of_powertrain ORDER BY COUNT(*) DESC LIMIT 1
placeholder
SELECT name, Type_of_powertrain, Annual_fuel_cost FROM Vehicles WHERE Model_year = 2013 OR Model_year = 2014
SELECT MIN(Annual_fuel_cost), MAX(Annual_fuel_cost), AVG(Annual_fuel_cost) FROM Vehicles
SELECT MIN( Annual_fuel_cost ) AS min_annual_fuel_cost, MAX( Annual_fuel_cost ) AS max_annual_fuel_cost, AVG( Annual_fuel_cost ) AS avg_annual_fuel_cost FROM Vehicles
SELECT name , Model_year FROM Vehicles WHERE City_fuel_economy_rate <= Highway_fuel_economy_rate
SELECT name , Model_year FROM Vehicles WHERE City_fuel_economy_rate <= Highway_fuel_economy_rate
SELECT Type_of_powertrain FROM Vehicles GROUP BY Type_of_powertrain ORDER BY COUNT(*) DESC LIMIT 1
SELECT Type_of_powertrain, AVG(Annual_fuel_cost) AS average_annual_fuel_cost FROM Vehicles GROUP BY Type_of_powertrain HAVING COUNT(*) >= 2
SELECT name , age , membership_credit FROM Customers
SELECT Type_of_powertrain , AVG( Annual_fuel_cost ) AS average_annual_fuel_cost FROM Vehicles GROUP BY Type_of_powertrain HAVING COUNT(*) >= 2
SELECT name , age , membership_credit FROM Customers
SELECT name, age FROM Customers ORDER BY membership_credit DESC LIMIT 1
SELECT name, age FROM Customers ORDER BY membership_credit DESC LIMIT 1
placeholder
SELECT * FROM Discount
SELECT AVG(age) FROM Customers WHERE membership_credit > (SELECT AVG(membership_credit) FROM Customers)
SELECT * FROM Discount
placeholder
SELECT c.name FROM Customers c JOIN Renting_history r ON c.id = r.customer_id GROUP BY c.name HAVING COUNT(r.id) >= 2
SELECT AVG(age) FROM Customers WHERE membership_credit > (SELECT AVG(membership_credit) FROM Customers)
SELECT c.name FROM Renting_history rh JOIN Customers c ON rh.customer_id = c.id GROUP BY c.name HAVING COUNT(rh.id) >= 2
SELECT v.name FROM Vehicles v WHERE NOT EXISTS ( SELECT 1 FROM Renting_history rh WHERE rh.vehicles_id = v.id )
SELECT v.name, v. Model_year FROM Renting_history rh JOIN Vehicles v ON rh. vehicles_id = v. id GROUP BY v.name, v. Model_year ORDER BY COUNT(rh. id ) DESC LIMIT 1
SELECT v.name FROM Vehicles v JOIN Renting_history r ON v.id = r.vehicles_id ORDER BY r.total_hours DESC
SELECT d.name FROM Renting_history rh JOIN Discount d ON rh.discount_id = d.id GROUP BY d.id, d.name ORDER BY COUNT(rh.id) DESC LIMIT 1
SELECT v.name, v.Model_year FROM Renting_history rh JOIN Vehicles v ON rh.vehicles_id = v.id GROUP BY v.name, v.Model_year ORDER BY COUNT(rh.id) DESC LIMIT 1
SELECT V.name, SUM(R.total_hours) AS total_hours FROM Vehicles V JOIN Renting_history R ON V.id = R.vehicles_id GROUP BY V.name
placeholder
SELECT AVG(City_fuel_economy_rate) AS average_city_fuel_rate, AVG(Highway_fuel_economy_rate) AS average_highway_fuel_rate, Type_of_powertrain FROM Vehicles GROUP BY Type_of_powertrain
SELECT d.name FROM Renting_history rh JOIN Discount d ON rh.discount_id = d.id GROUP BY d.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG( City_fuel_economy_rate ) AS average_city_fuel_economy_rate, AVG( Highway_fuel_economy_rate ) AS average_highway_fuel_economy_rate, Type_of_powertrain FROM Vehicles GROUP BY Type_of_powertrain
SELECT AVG(amount_of_loan) FROM Student_Loans
SELECT AVG(amount_of_loan) FROM Student_Loans
placeholder
placeholder
and then closed without a closing
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT DISTINCT detention_summary FROM Detention
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT behaviour_monitoring_details, COUNT(*) AS count FROM Behaviour_Monitoring GROUP BY behaviour_monitoring_details ORDER BY count DESC LIMIT 1
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT s.bio_data, se.event_date FROM Students s JOIN Student_Events se ON s.student_id = se.student_id
placeholder
placeholder
placeholder
placeholder
SELECT a.achievement_details, rat.achievement_type_description FROM Achievements a JOIN Ref_Achievement_Type rat ON a.achievement_type_code = rat.achievement_type_code
SELECT date_of_transcript, transcript_details FROM Transcripts
SELECT date_of_transcript, transcript_details FROM Transcripts
SELECT achievement_type_code, achievement_details, date_achievement FROM Achievements
SELECT datetime_detention_start, datetime_detention_end FROM Detention
placeholder
SELECT datetime_detention_start, datetime_detention_end FROM Detention
placeholder
placeholder
SELECT bio_data FROM Students WHERE bio_data LIKE '%Suite%'
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
placeholder
placeholder
SELECT s.student_details, t.teacher_details FROM Classes c JOIN Students s ON c.student_id = s.student_id JOIN Teachers t ON c.teacher_id = t.teacher_id
placeholder
SELECT teacher_id, COUNT(*) AS course_count FROM Classes GROUP BY teacher_id ORDER BY course_count DESC LIMIT 1
SELECT student_id, COUNT(*) AS course_count FROM Classes GROUP BY student_id ORDER BY course_count DESC LIMIT 1
placeholder
SELECT s.`student_id`, s.`student_details` FROM Students s JOIN Classes c ON s.`student_id` = c.`student_id` GROUP BY s.`student_id` HAVING COUNT(c.`class_id`) = 2
placeholder
placeholder
SELECT MIN(date_of_loan) FROM Student_Loans
SELECT MIN(date_of_loan) FROM Student_Loans
SELECT s.bio_data FROM Students s JOIN Student_Loans sl ON s.student_id = sl.student_id ORDER BY sl.amount_of_loan ASC LIMIT 1
SELECT s.bio_data FROM Students s JOIN Student_Loans sl ON s.student_id = sl.student_id ORDER BY sl.amount_of_loan ASC LIMIT 1
SELECT s.bio_data, s.student_details FROM Students s JOIN Student_Loans sl ON s.student_id = sl.student_id WHERE sl.amount_of_loan > (SELECT AVG(amount_of_loan) FROM Student_Loans)
placeholder
placeholder
placeholder
SELECT student_id, SUM(amount_of_loan) AS total_loan_amount FROM Student_Loans GROUP BY student_id
SELECT student_id, SUM(amount_of_loan) AS total_loan_amount FROM Student_Loans GROUP BY student_id
placeholder
SELECT COUNT(DISTINCT student_id) FROM Detention
placeholder
placeholder
SELECT t.address_type_code, t.address_type_description FROM Students_Addresses sa JOIN Ref_Address_Types t ON sa.address_type_code = t.address_type_code GROUP BY t.address_type_code, t.address_type_description ORDER BY COUNT(sa.student_id) DESC LIMIT 1
SELECT COUNT(DISTINCT student_id) FROM Detention
placeholder
placeholder
SELECT datetime_detention_start FROM Detention ORDER BY datetime_detention_start ASC LIMIT 1
placeholder
placeholder
SELECT datetime_detention_start FROM Detention
SELECT Name FROM Author
SELECT sa.date_from, sa.date_to FROM Students_Addresses sa JOIN ( SELECT student_id FROM Transcripts GROUP BY student_id HAVING COUNT(*) = 2 ) t ON sa.student_id = t.student_id
SELECT Name FROM Author
placeholder
SELECT Name, Address FROM Client
SELECT Title, ISBN, SalePrice FROM Book
SELECT sa.date_from, sa.date_to FROM Students_Addresses sa INNER JOIN ( SELECT t.student_id FROM Transcripts t GROUP BY t.student_id HAVING COUNT(t.transcript_id) = 2 ) AS filtered_students ON sa.student_id = filtered_students.student_id
SELECT Name, Address FROM Client
placeholder
SELECT Title, ISBN, SalePrice FROM Book
SELECT COUNT(*) FROM Book
SELECT COUNT(*) FROM Author
SELECT COUNT(*) FROM Author
SELECT COUNT(*) FROM Client
SELECT COUNT(*) FROM Book
SELECT Name, Address FROM Client ORDER BY Name
SELECT COUNT(*) FROM Client
placeholder
SELECT Name, Address FROM Client ORDER BY Name
SELECT b.Title, a.Name FROM Book b JOIN Author a ON b.Author = a.idAuthor
SELECT o.IdOrder, c.Name FROM Orders o JOIN Client c ON o.IdClient = c.IdClient
SELECT O.IdOrder, C.Name FROM Orders O JOIN Client C ON O.IdClient = C.IdClient
SELECT b.ISBN, COUNT(bo.IdOrder) AS NumberOfOrders FROM Book b JOIN Books_Order bo ON b.ISBN = bo.ISBN GROUP BY b.ISBN
SELECT ISBN, SUM(amount) AS total_amount_ordered FROM Books_Order GROUP BY ISBN
SELECT Book.Title, Author.Name FROM Book JOIN Author ON Book.Author = Author.idAuthor
SELECT b.ISBN, SUM(bo.amount) AS total_amount_ordered FROM Book b JOIN Books_Order bo ON b.ISBN = bo.ISBN GROUP BY b.ISBN
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT DISTINCT C.Name FROM Client C JOIN Orders O ON C.IdClient = O.IdClient
placeholder
SELECT DISTINCT c.Name FROM Client c JOIN Orders o ON c.IdClient = o.IdClient
placeholder
SELECT Client.Name, COUNT(Orders.IdOrder) AS NumberOfOrders FROM Client JOIN Orders ON Client.IdClient = Orders.IdClient GROUP BY Client.Name
SELECT c.Name FROM Client c JOIN Orders o ON c.IdClient = o.IdClient GROUP BY c.Name ORDER BY COUNT(o.IdOrder) DESC LIMIT 1
SELECT c.Name, COUNT(*) AS OrderCount FROM Client c JOIN Orders o ON c.IdClient = o.IdClient GROUP BY c.Name
placeholder
SELECT c.Name, SUM(bo.amount) AS total_books_ordered FROM Client c JOIN Orders o ON c.IdClient = o.IdClient JOIN Books_Order bo ON o.IdOrder = bo.IdOrder GROUP BY c.Name
placeholder
SELECT Title FROM Book WHERE NOT EXISTS (SELECT 1 FROM Books_Order WHERE Books_Order.ISBN = Book.ISBN)
placeholder
SELECT Title FROM Book LEFT JOIN Books_Order ON Book.ISBN = Books_Order.ISBN WHERE Books_Order.ISBN IS NULL
SELECT MAX(SalePrice) AS MaxSalePrice, MIN(SalePrice) AS MinSalePrice FROM Book
SELECT AVG(PurchasePrice) AS AveragePurchasePrice, AVG(SalePrice) AS AverageSalePrice FROM Book
placeholder
placeholder
SELECT MAX(SalePrice) AS MaxSalePrice, MIN(SalePrice) AS MinSalePrice FROM Book
SELECT AVG(PurchasePrice), AVG(SalePrice) FROM Book
placeholder
SELECT MAX(SalePrice - PurchasePrice) AS max_difference FROM Book
SELECT MAX(ABS(SalePrice - PurchasePrice)) FROM Book
SELECT c.Name FROM Client c LEFT JOIN Orders o ON c.IdClient = o.IdClient WHERE o.IdClient IS NULL
SELECT Title FROM Book WHERE SalePrice > (SELECT AVG(SalePrice) FROM Book)
SELECT Title FROM Book WHERE SalePrice > (SELECT AVG(SalePrice) FROM Book)
SELECT Title FROM Book WHERE SalePrice = (SELECT MIN(SalePrice) FROM Book)
SELECT Title FROM Book WHERE PurchasePrice = (SELECT MAX(PurchasePrice) FROM Book)
placeholder
SELECT Title FROM Book WHERE SalePrice = (SELECT MIN(SalePrice) FROM Book)
SELECT b.SalePrice FROM Book b JOIN Author a ON b.Author = a.idAuthor WHERE a.Name = 'Plato'
SELECT Title FROM Book WHERE PurchasePrice = (SELECT MAX(PurchasePrice) FROM Book)
placeholder
placeholder
placeholder
SELECT A.Name FROM Book B JOIN Author A ON B.Author = A.idAuthor WHERE B.Title = 'Pride and Prejudice'
placeholder
SELECT A.Name FROM Book B JOIN Author A ON B.Author = A.idAuthor WHERE B.Title = 'Pride and Prejudice'
SELECT AVG(Book.SalePrice) FROM Book JOIN Author ON Book.Author = Author.idAuthor WHERE Author.Name = 'George Orwell'
SELECT COUNT(*) FROM Book JOIN Books_Order ON Book.ISBN = Books_Order.ISBN WHERE Book.Title = 'Pride and Prejudice'
placeholder
SELECT b.Title FROM Book b JOIN Author a ON b.Author = a.idAuthor WHERE a.Name LIKE '%Plato%'
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT COUNT(*) FROM book
placeholder
placeholder
SELECT Title FROM book ORDER BY Pages DESC
SELECT Title FROM book ORDER BY Title
placeholder
placeholder
SELECT Type , Release FROM book
SELECT AVG(Rating) FROM review
SELECT MAX( Chapters ) AS Max_Chapters , MIN( Chapters ) AS Min_Chapters , Book_ID FROM book GROUP BY Book_ID
SELECT Title FROM book WHERE Type != 'Poet'
SELECT r.Rating FROM review r JOIN book b ON r.Book_ID = b.Book_ID ORDER BY b.Chapters DESC LIMIT 1
SELECT b.Title, r.Rating FROM book b JOIN review r ON b.Book_ID = r.Book_ID
SELECT AVG(r.Readers_in_Million) FROM book b JOIN review r ON b.Book_ID = r.Book_ID WHERE b.Type = 'Novel'
SELECT Type, COUNT(*) AS Number_of_Books FROM book GROUP BY Type
SELECT Type FROM book GROUP BY Type HAVING COUNT(*) >= 3
placeholder
SELECT b.Title FROM book b JOIN review r ON b.Book_ID = r.Book_ID ORDER BY r.Rating ASC
SELECT Type FROM book GROUP BY Type ORDER BY COUNT(*) DESC LIMIT 1
placeholder
SELECT COUNT(DISTINCT Type) FROM book
SELECT COUNT(*) FROM customer
SELECT Type, Title FROM book WHERE NOT EXISTS ( SELECT 1 FROM review WHERE review.Book_ID = book.Book_ID )
SELECT Name FROM customer ORDER BY Level_of_Membership ASC
SELECT COUNT(*) FROM customer
SELECT Name FROM customer ORDER BY Level_of_Membership
SELECT r.Rank FROM review r JOIN book b ON r.Book_ID = b.Book_ID ORDER BY b.Pages ASC LIMIT 1
SELECT Nationality , Card_Credit FROM customer
SELECT Nationality , Card_Credit FROM customer
SELECT Name FROM customer WHERE Nationality = 'England' OR Nationality = 'Australia'
SELECT Name FROM customer WHERE Nationality = England OR Nationality = Australia
placeholder
placeholder
SELECT AVG( Card_Credit ) FROM customer WHERE Level_of_Membership > 1
SELECT AVG(Card_Credit) FROM customer WHERE Level_of_Membership > 1
SELECT Card_Credit FROM customer ORDER BY Level_of_Membership DESC LIMIT 1
SELECT Nationality, COUNT(*) AS Number_of_Customers FROM customer GROUP BY Nationality
placeholder
placeholder
SELECT Card_Credit FROM customer ORDER BY Level_of_Membership DESC LIMIT 1
SELECT Nationality, COUNT(*) AS Number_of_Customers FROM customer GROUP BY Nationality
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT c.Name, co.Dish_Name FROM customer_order co JOIN customer c ON co.Customer_ID = c.Customer_ID
SELECT customer.Name, customer_order.Dish_Name FROM customer INNER JOIN customer_order ON customer.Customer_ID = customer_order.Customer_ID
SELECT c.Name, co.Dish_Name FROM customer_order co JOIN customer c ON co.Customer_ID = c.Customer_ID ORDER BY co.Quantity DESC
SELECT c.Name, SUM(co.Quantity) AS Total_Quantity FROM customer c JOIN customer_order co ON c.Customer_ID = co.Customer_ID GROUP BY c.Name
SELECT Customer_ID FROM customer_order GROUP BY Customer_ID HAVING SUM(Quantity) > 1
SELECT c.Name, SUM(co.Quantity) AS Total_Quantity FROM customer c JOIN customer_order co ON c.Customer_ID = co.Customer_ID GROUP BY c.Customer_ID
SELECT c.Name FROM customer c JOIN customer_order co ON c.Customer_ID = co.Customer_ID GROUP BY c.Customer_ID HAVING SUM(co.Quantity) > 1
SELECT DISTINCT Manager FROM branch
SELECT DISTINCT Manager FROM branch
SELECT c.Name FROM customer c LEFT JOIN customer_order co ON c.Customer_ID = co.Customer_ID WHERE co.Customer_ID IS NULL
SELECT Name FROM member ORDER BY Age ASC
SELECT COUNT(*) FROM member
SELECT Name FROM member WHERE Nationality != 'England'
SELECT Name, Nationality FROM member
SELECT Name FROM member WHERE Age = 19 OR Age = 20
SELECT Name FROM member ORDER BY Age DESC LIMIT 1
SELECT Nationality, COUNT(*) AS Member_Count FROM member GROUP BY Nationality
placeholder
SELECT Nationality FROM member GROUP BY Nationality HAVING COUNT(*) >= 2
placeholder
SELECT Nationality FROM member GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
placeholder
SELECT AVG(m.Age) FROM club_leader cl JOIN member m ON cl.Member_ID = m.Member_ID
placeholder
SELECT Club_Name FROM club WHERE Club_Name LIKE '%state%'
SELECT m.Name, c.Club_Name FROM club_leader cl JOIN member m ON cl.Member_ID = m.Member_ID JOIN club c ON cl.Club_ID = c.Club_ID
SELECT m.Name FROM club c JOIN club_leader cl ON c.Club_ID = cl.Club_ID JOIN member m ON cl.Member_ID = m.Member_ID WHERE c.Club_Name = 'Houston'
SELECT Nationality FROM member WHERE Age > 22 INTERSECT SELECT Nationality FROM member WHERE Age < 19
SELECT Collection_Subset_Name FROM Collection_Subsets
SELECT Collecrtion_Subset_Details FROM Collection_Subsets WHERE Collection_Subset_Name = 'Top collection'
SELECT m.Name FROM club_leader cl JOIN member m ON cl.Member_ID = m.Member_ID WHERE cl.Year_Join < '2018'
SELECT Document_Subset_Name FROM Document_Subsets
SELECT Document_Subset_Details FROM Document_Subsets WHERE Document_Subset_Name = 'Best for 2000'
SELECT Document_Subset_Details FROM Document_Subsets WHERE Document_Subset_Name = 'Best for 2000'
placeholder
SELECT cs.Collection_Subset_Name FROM Collection_Subset_Members csm JOIN Collection_Subsets cs ON csm.Collection_Subset_ID = cs.Collection_Subset_ID
placeholder
SELECT Document_Object_ID FROM Document_Objects
SELECT Parent_Document_Object_ID FROM Document_Objects WHERE Owner = 'Marlin'
SELECT Document_Object_ID FROM Document_Objects WHERE Owner = 'Marlin'
SELECT Document_Object_ID FROM Document_Objects
SELECT Owner FROM Document_Objects WHERE Description = 'Braeden Collection'
SELECT COUNT(*) FROM Document_Objects WHERE Owner = 'Marlin'
placeholder
SELECT COUNT(*) FROM Document_Objects WHERE Owner = 'Marlin'
placeholder
SELECT DISTINCT Description FROM Document_Objects WHERE Parent_Document_Object_ID IS NOT NULL
SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IS NULL
SELECT Collection_Name FROM Collections
placeholder
placeholder
placeholder
placeholder
SELECT Collection_Name FROM Collections
SELECT Collection_Description FROM Collections WHERE Collection_Name = 'Best'
SELECT Collection_Description FROM Collections WHERE Collection_Name = 'Best'
placeholder
placeholder
placeholder
SELECT c2.Collection_Name FROM Collections c1 JOIN Collections c2 ON c1.Parent_Collection_ID = c2.Collection_ID WHERE c1.Collection_Name = 'Nice'
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
SELECT Document_Object_ID FROM Documents_in_Collections GROUP BY Document_Object_ID ORDER BY COUNT(*) ASC LIMIT 1
placeholder
SELECT DISTINCT ds.Document_Subset_Name FROM Document_Objects do JOIN Document_Subset_Members dsm ON do.Document_Object_ID = dsm.Document_Object_ID JOIN Document_Subsets ds ON dsm.Document_Subset_ID = ds.Document_Subset_ID WHERE do.Owner = 'Braeden'
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
SELECT c.Collection_Name FROM Document_Objects do JOIN Documents_in_Collections dic ON do.Document_Object_ID = dic.Document_Object_ID JOIN Collections c ON dic.Collection_ID = c.Collection_ID WHERE do.Owner = 'Ransom'
placeholder
SELECT COUNT(dioc.Document_Object_ID) FROM Documents_in_Collections dioc JOIN Collections c ON dioc.Collection_ID = c.Collection_ID WHERE c.Collection_Name = 'Best'
SELECT Document_Object_ID, COUNT(*) FROM Documents_in_Collections GROUP BY Document_Object_ID
SELECT COUNT(*) AS collection_count, d.Document_Object_ID FROM Document_Objects d JOIN Documents_in_Collections dc ON d.Document_Object_ID = dc.Document_Object_ID GROUP BY d.Document_Object_ID
placeholder
SELECT d.Document_Object_ID FROM Documents_in_Collections d JOIN Collections c ON d.Collection_ID = c.Collection_ID WHERE c.Collection_Name = 'Best'
SELECT COUNT(*) FROM Documents_in_Collections JOIN Collections ON Documents_in_Collections.Collection_ID = Collections.Collection_ID WHERE Collections.Collection_Name = 'Best'
placeholder
SELECT COUNT(*) FROM Collections JOIN Documents_in_Collections ON Collections.Collection_ID = Documents_in_Collections.Collection_ID WHERE Collections.Collection_Name = 'Best'
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT COUNT(*) FROM songs WHERE name LIKE '%Love%'
SELECT name, language FROM songs
placeholder
SELECT name FROM songs ORDER BY name
placeholder
SELECT cs.Collection_Subset_Name FROM Collections c JOIN Collection_Subset_Members csm ON c.Collection_ID = csm.Collection_ID JOIN Collection_Subsets cs ON csm.Collection_Subset_ID = cs.Collection_Subset_ID WHERE c.Collection_Name = 'Best'
SELECT MAX( voice_sound_quality ), MIN( voice_sound_quality ) FROM performance_score
placeholder
SELECT id, language, original_artist FROM songs WHERE name != 'Love'
SELECT ps.voice_sound_quality, ps.rhythm_tempo, ps.stage_presence FROM performance_score ps JOIN participants p ON p.id = ps.participant_id WHERE p.name = 'Freeway'
SELECT name, original_artist FROM songs WHERE english_translation = 'All the streets of love'
SELECT DISTINCT ps.stage_presence FROM performance_score ps JOIN songs s ON ps.songs_id = s.id WHERE s.language = 'English'
placeholder
placeholder
SELECT COUNT(*) FROM performance_score WHERE stage_presence < 7 OR stage_presence > 9
SELECT p.id, p.name FROM participants p JOIN performance_score ps ON p.id = ps.participant_id WHERE ps.voice_sound_quality = 5 OR ps.rhythm_tempo = 5
SELECT s.language, AVG(ps.rhythm_tempo) AS average_rhythm_score FROM performance_score ps JOIN songs s ON ps.songs_id = s.id GROUP BY s.language
SELECT name FROM songs WHERE name LIKE '%Is%'
placeholder
SELECT DISTINCT p.name FROM participants p JOIN performance_score ps ON p.id = ps.participant_id JOIN songs s ON ps.songs_id = s.id WHERE s.language = 'English'
SELECT COUNT(*) FROM City
placeholder
placeholder
SELECT COUNT(*) FROM City
placeholder
SELECT COUNT(DISTINCT country) FROM City
SELECT DISTINCT state FROM City
placeholder
SELECT DISTINCT state FROM City
SELECT city_name, city_code, state, country FROM City
SELECT COUNT(DISTINCT country) FROM City
SELECT latitude, longitude FROM City WHERE city_name = 'Baltimore'
SELECT city_name, city_code, state, country FROM City
SELECT latitude, longitude FROM City WHERE city_name = 'Baltimore'
SELECT city_name FROM City WHERE state = 'PA'
SELECT COUNT(*) FROM City WHERE country = 'Canada'
SELECT COUNT(*) FROM City WHERE country = 'Canada'
SELECT city_name FROM City WHERE country = 'USA' ORDER BY latitude
SELECT city_name FROM City WHERE state = 'PA'
SELECT state, COUNT(*) AS city_count FROM City GROUP BY state
SELECT COUNT(*) AS city_count, state FROM City GROUP BY state
placeholder
SELECT country, COUNT(*) AS number_of_cities FROM City GROUP BY country
SELECT city_name FROM City WHERE country = 'USA' ORDER BY latitude
SELECT state FROM City GROUP BY state ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) AS city_count, country FROM City GROUP BY country
SELECT state FROM City GROUP BY state HAVING COUNT(*) >= 2
placeholder
SELECT state FROM City GROUP BY state HAVING COUNT(*) >= 2
SELECT country FROM City GROUP BY country ORDER BY COUNT(*) ASC LIMIT 1
SELECT state FROM City GROUP BY state ORDER BY COUNT(*) DESC LIMIT 1
SELECT S.Fname, S.Lname FROM Student S JOIN City C ON S.city_code = C.city_code WHERE C.state = 'MD'
SELECT country FROM City GROUP BY country ORDER BY COUNT(*) ASC LIMIT 1
SELECT COUNT(*) FROM Student JOIN City ON Student.city_code = City.city_code WHERE City.country = 'China'
SELECT S.Fname, S.Major FROM Student AS S JOIN City AS C ON S.city_code = C.city_code WHERE C.city_name = 'Baltimore'
SELECT COUNT(*) FROM Student JOIN City ON Student.city_code = City.city_code WHERE City.country = 'China'
SELECT S.Fname, S.Lname FROM Student S JOIN City C ON S.city_code = C.city_code WHERE C.state = 'MD'
SELECT S.Fname, S.Major FROM Student S JOIN City C ON S.city_code = C.city_code WHERE C.city_name = 'Baltimore'
SELECT COUNT(*) AS student_count, City.country FROM Student JOIN City ON Student.city_code = City.city_code GROUP BY City.country
SELECT c.state FROM Student s JOIN City c ON s.city_code = c.city_code GROUP BY c.state ORDER BY COUNT(s.StuID) DESC LIMIT 1
SELECT COUNT(*) AS student_count, c.country FROM Student s JOIN City c ON s.city_code = c.city_code GROUP BY c.country
SELECT c.state FROM Student s JOIN City c ON s.city_code = c.city_code GROUP BY c.state ORDER BY COUNT(s.StuID) DESC LIMIT 1
SELECT City.city_name, COUNT(*) AS student_count FROM Student JOIN City ON Student.city_code = City.city_code GROUP BY City.city_name
SELECT c.country FROM Student s JOIN City c ON s.city_code = c.city_code GROUP BY c.country ORDER BY COUNT(s.StuID) ASC LIMIT 1
SELECT c.state FROM Student s JOIN City c ON s.city_code = c.city_code GROUP BY c.state HAVING COUNT(s.StuID) > 5
SELECT c.state FROM Student s JOIN City c ON s.city_code = c.city_code GROUP BY c.state HAVING COUNT(*) > 5
SELECT S.StuID FROM Student S JOIN City C ON S.city_code = C.city_code WHERE C.country != 'USA'
SELECT c.city_name FROM Student s JOIN City c ON s.city_code = c.city_code GROUP BY c.city_name HAVING COUNT(s.StuID) >= 3
SELECT c.city_name FROM Student s JOIN City c ON s.city_code = c.city_code GROUP BY c.city_name HAVING COUNT(*) >= 3
SELECT S.StuID FROM Student S JOIN City C ON S.city_code = C.city_code WHERE C.country != 'USA'
SELECT S.StuID FROM Student S JOIN City C ON S.city_code = C.city_code WHERE S.Sex = 'F' AND C.state = 'PA'
SELECT S.StuID FROM Student S JOIN City C ON S.city_code = C.city_code WHERE S.Sex = 'F' AND C.state = 'PA'
SELECT s.StuID FROM Student s JOIN City c ON s.city_code = c.city_code WHERE s.Sex = 'M' AND c.country != 'USA'
SELECT AVG(distance) AS average_distance, MIN(distance) AS minimum_distance, MAX(distance) AS maximum_distance FROM Direct_distance
SELECT c.country FROM Student s JOIN City c ON s.city_code = c.city_code GROUP BY c.country ORDER BY COUNT(*) ASC LIMIT 1
SELECT distance FROM Direct_distance WHERE (city1_code = 'BAL' AND city2_code = 'CHI') OR (city1_code = 'CHI' AND city2_code = 'BAL')
SELECT AVG(distance) AS average_distance, MIN(distance) AS minimum_distance, MAX(distance) AS maximum_distance FROM Direct_distance
placeholder
SELECT distance FROM Direct_distance WHERE (city1_code = 'BAL' AND city2_code = 'CHI') OR (city1_code = 'CHI' AND city2_code = 'BAL')
SELECT S.StuID FROM Student S JOIN City C ON S.city_code = C.city_code WHERE S.Sex = 'M' AND C.country != 'USA'
placeholder
placeholder
SELECT city1_code, city2_code FROM Direct_distance WHERE distance = (SELECT MAX(distance) FROM Direct_distance)
SELECT city1_code, city2_code FROM Direct_distance WHERE distance < 1000
placeholder
placeholder
placeholder
SELECT SUM(distance) FROM Direct_distance WHERE city1_code = 'BAL' OR city2_code = 'BAL'
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT C.state FROM Student S JOIN City C ON S.city_code = C.city_code WHERE S.Fname = 'Linda'
SELECT c.state FROM Student s JOIN City c ON s.city_code = c.city_code WHERE s.Fname = 'Linda'
placeholder
SELECT * FROM Sailors WHERE age > 30
SELECT * FROM Sailors WHERE age > 30
placeholder
placeholder
SELECT name, age FROM Sailors WHERE age < 30
placeholder
SELECT name, age FROM Sailors WHERE age < 30
placeholder
placeholder
SELECT DISTINCT bid FROM Reserves WHERE sid = 1
SELECT DISTINCT bid FROM Reserves
SELECT S.name FROM Sailors AS S JOIN Reserves AS R ON S.sid = R.sid WHERE R.bid = 102
placeholder
SELECT name FROM Sailors WHERE name LIKE '%e%'
SELECT name FROM Sailors WHERE name LIKE '%e%'
SELECT sid FROM Sailors WHERE age > (SELECT MIN(age) FROM Sailors)
SELECT DISTINCT S.name FROM Reserves R JOIN Sailors S ON R.sid = S.sid WHERE R.bid = 102
SELECT DISTINCT bid FROM Reserves
SELECT S.name, S.sid FROM Sailors AS S JOIN Reserves AS R ON S.sid = R.sid
SELECT b.name, b.color FROM Reserves r JOIN Boats b ON r.bid = b.bid WHERE r.sid = 1
SELECT s.sid, s.name FROM Sailors s JOIN Reserves r ON s.sid = r.sid GROUP BY s.sid HAVING COUNT(r.bid) > 1
SELECT r.sid FROM Reserves r JOIN Boats b ON r.bid = b.bid WHERE b.color = 'red' OR b.color = 'blue'
placeholder
SELECT S.name, S.sid FROM Sailors S JOIN Reserves R ON S.sid = R.sid JOIN Boats B ON R.bid = B.bid WHERE B.color = 'red' OR B.color = 'blue'
placeholder
SELECT S.name, S.sid FROM Sailors S JOIN Reserves R ON S.sid = R.sid JOIN Boats B ON R.bid = B.bid WHERE B.color = 'red' OR B.color = 'blue'
placeholder
SELECT r.sid FROM Reserves r JOIN Boats b ON r.bid = b.bid WHERE b.color = 'red' OR b.color = 'blue'
SELECT s.name, s.sid FROM Sailors s JOIN Reserves r ON s.sid = r.sid
placeholder
SELECT S.name, S.sid FROM Boats AS B JOIN Reserves AS R ON B.bid = R.bid JOIN Sailors AS S ON R.sid = S.sid WHERE B.color = 'red' OR B.color = 'blue'
placeholder
SELECT s.sid FROM Sailors s LEFT JOIN Reserves r ON s.sid = r.sid WHERE r.sid IS NULL
placeholder
SELECT S.name FROM Sailors AS S JOIN Reserves AS R ON S.sid = R.sid WHERE R.bid = 103
SELECT S.name FROM Sailors AS S JOIN Reserves AS R ON S.sid = R.sid WHERE R.bid = 103
SELECT name, sid FROM Sailors WHERE NOT EXISTS (SELECT 1 FROM Reserves WHERE Reserves.sid = Sailors.sid)
placeholder
placeholder
placeholder
SELECT s.sid FROM Sailors s LEFT JOIN Reserves r ON s.sid = r.sid WHERE r.sid IS NULL
SELECT s.sid FROM Sailors s LEFT JOIN Reserves r ON s.sid = r.sid WHERE r.sid IS NULL
SELECT name, age FROM Sailors ORDER BY age DESC LIMIT 1
SELECT name, age FROM Sailors ORDER BY age DESC LIMIT 1
SELECT COUNT(*) FROM Sailors
SELECT S.name, S.sid FROM Sailors AS S JOIN Reserves AS R ON S.sid = R.sid WHERE S.rating >= 3
SELECT COUNT(*) FROM Sailors
SELECT S.name, S.sid FROM Sailors AS S JOIN Reserves AS R ON S.sid = R.sid WHERE S.rating > 2
SELECT AVG(age) FROM Sailors WHERE rating = 7
SELECT AVG(age) FROM Sailors WHERE rating = 7
placeholder
SELECT COUNT(*) FROM Sailors WHERE name LIKE 'D%'
SELECT name FROM Sailors WHERE rating > ANY (SELECT rating FROM Sailors WHERE name = 'Luis')
SELECT COUNT(*) FROM Sailors WHERE name LIKE 'D%'
SELECT AVG(rating), MAX(age) FROM Sailors
placeholder
placeholder
SELECT AVG(rating) AS average_rating, MAX(age) AS largest_age FROM Sailors
SELECT COUNT(*) AS reservation_count, bid FROM Reserves GROUP BY bid
SELECT COUNT(*) AS reservation_count, bid FROM Reserves GROUP BY bid
SELECT COUNT(*) AS reservation_count, bid FROM Reserves WHERE bid > 50 GROUP BY bid
SELECT COUNT(*) AS reservation_count, bid FROM Reserves GROUP BY bid HAVING COUNT(*) > 1
SELECT COUNT(*) AS reservation_count, bid FROM Reserves WHERE sid > 1 GROUP BY bid
SELECT COUNT(*) AS reservation_count, bid FROM Reserves GROUP BY bid HAVING COUNT(*) > 1
SELECT COUNT(*) AS reservation_count, r.bid FROM Reserves r JOIN Sailors s ON r.sid = s.sid WHERE s.sid > 1 GROUP BY r.bid
SELECT name, rating, age FROM Sailors ORDER BY rating, age
SELECT name, rating, age FROM Sailors ORDER BY rating, age
SELECT COUNT(*) FROM Boats
SELECT COUNT(*) AS reservation_count, bid FROM Reserves WHERE bid > 50 GROUP BY bid
SELECT COUNT(*) FROM Boats
SELECT COUNT(*) FROM Boats WHERE color = 'red'
SELECT MAX(rating) FROM Sailors
SELECT COUNT(*) FROM Boats WHERE color = 'red'
SELECT S.rating, AVG(S.age) FROM Sailors S JOIN Reserves R ON S.sid = R.sid JOIN Boats B ON R.bid = B.bid WHERE B.color = 'red' GROUP BY S.rating
SELECT s.rating, AVG(s.age) AS average_age FROM Sailors s JOIN Reserves r ON s.sid = r.sid JOIN Boats b ON r.bid = b.bid WHERE b.color = 'red' GROUP BY s.rating
SELECT MAX(rating) FROM Sailors
SELECT name, age FROM Sailors ORDER BY rating DESC
SELECT S.name FROM Sailors AS S JOIN Reserves AS R ON S.sid = R.sid JOIN Boats AS B ON R.bid = B.bid WHERE B.name = 'Melon'
SELECT name, age FROM Sailors ORDER BY rating DESC
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1
SELECT S.name FROM Sailors S JOIN Reserves R ON S.sid = R.sid JOIN Boats B ON R.bid = B.bid WHERE B.name = 'Melon'
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1
SELECT DISTINCT Model FROM headphone ORDER BY Model
SELECT DISTINCT Model FROM headphone ORDER BY Model
SELECT Class FROM headphone GROUP BY Class ORDER BY COUNT(*) DESC LIMIT 1
SELECT Class FROM headphone GROUP BY Class ORDER BY COUNT(*) DESC LIMIT 1
placeholder
placeholder
placeholder
SELECT COUNT(*) AS count, Class FROM headphone WHERE Price > 200 GROUP BY Class
SELECT COUNT(*) AS Number_of_Headphones , Class FROM headphone WHERE Price > 200 GROUP BY Class
SELECT Class FROM headphone GROUP BY Class HAVING COUNT(*) > 2
SELECT COUNT(DISTINCT Earpads) FROM headphone
SELECT COUNT(DISTINCT Earpads) FROM headphone
SELECT Model , Class , Construction FROM headphone ORDER BY Price ASC LIMIT 1
placeholder
SELECT Earpads, COUNT(*) AS headphone_count FROM headphone GROUP BY Earpads ORDER BY headphone_count DESC LIMIT 2
SELECT Model , Class , Construction FROM headphone ORDER BY Price ASC LIMIT 1
SELECT AVG( Price ) AS average_price, Construction FROM headphone GROUP BY Construction
SELECT AVG( Price ) AS average_cost, Construction FROM headphone GROUP BY Construction
SELECT Class FROM headphone GROUP BY Class HAVING COUNT(*) <= 2
SELECT Earpads FROM headphone WHERE Construction != 'plastic'
SELECT Model FROM headphone WHERE Price < (SELECT AVG(Price) FROM headphone)
SELECT Model FROM headphone WHERE Price < (SELECT AVG(Price) FROM headphone)
SELECT Name FROM store ORDER BY Date_Opened
SELECT Name , Parking FROM store WHERE Neighborhood = 'Tarzana'
SELECT Name FROM store ORDER BY Date_Opened
SELECT COUNT(DISTINCT Neighborhood) FROM store
SELECT COUNT(DISTINCT Neighborhood) FROM store
SELECT Name, Parking FROM store WHERE Neighborhood = 'Tarzana'
SELECT COUNT(*) AS Store_Count, Neighborhood FROM store GROUP BY Neighborhood
SELECT COUNT(*) AS store_count, Neighborhood FROM store GROUP BY Neighborhood
SELECT s.Name, SUM(st.Quantity) AS Total_Quantity FROM stock st JOIN store s ON st.Store_ID = s.Store_ID GROUP BY s.Name
placeholder
placeholder
placeholder
placeholder
SELECT h.Model FROM headphone h JOIN stock s ON h.Headphone_ID = s.Headphone_ID GROUP BY h.Model ORDER BY SUM(s.Quantity) DESC LIMIT 1
SELECT SUM(s.Quantity) FROM stock s JOIN store st ON s.Store_ID = st.Store_ID WHERE st.Name = 'Woodman'
SELECT SUM(s.Quantity) FROM stock s JOIN store st ON s.Store_ID = st.Store_ID WHERE st.Name = 'Woodman'
SELECT Name FROM store WHERE NOT EXISTS (SELECT 1 FROM stock WHERE stock.Store_ID = store.Store_ID)
placeholder
SELECT COUNT(*) FROM `Author`
placeholder
SELECT COUNT(*) FROM Author
SELECT h.Model FROM headphone h JOIN stock s ON h.Headphone_ID = s.Headphone_ID GROUP BY h.Model ORDER BY SUM(s.Quantity) DESC LIMIT 1
SELECT s.Neighborhood FROM store s LEFT JOIN stock st ON s.Store_ID = st.Store_ID WHERE st.Store_ID IS NULL
SELECT COUNT(*) FROM Paper
SELECT COUNT(*) FROM `Paper`
placeholder
SELECT COUNT(*) FROM Affiliation
placeholder
SELECT COUNT(*) FROM `Affiliation`
SELECT name, address FROM Affiliation
SELECT COUNT(*) FROM `Paper` WHERE `venue` = 'NAACL 2000'
SELECT COUNT(*) FROM `Paper` WHERE `venue` = 'NAACL 2000'
SELECT venue, year FROM Paper ORDER BY year
SELECT name, address FROM Affiliation
placeholder
SELECT DISTINCT venue FROM Paper ORDER BY year
SELECT COUNT(*) FROM Paper JOIN Author_list ON Paper.paper_id = Author_list.paper_id JOIN Affiliation ON Author_list.affiliation_id = Affiliation.affiliation_id WHERE Affiliation.name = 'Columbia University' AND Paper.year = 2009
SELECT p.paper_id, p.title FROM Paper p JOIN Author_list al ON p.paper_id = al.paper_id JOIN Author a ON al.author_id = a.author_id WHERE a.name = 'Mckeown'
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
SELECT a.name FROM Author a JOIN Author_list al ON a.author_id = al.author_id GROUP BY a.author_id HAVING COUNT(al.paper_id) > 50
SELECT venue, year FROM Paper GROUP BY venue, year ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM Citation WHERE cited_paper_id = 'A00-1002'
SELECT a.name FROM Author a JOIN Author_list al ON a.author_id = al.author_id GROUP BY a.author_id, a.name HAVING COUNT(al.paper_id) = 1
placeholder
placeholder
SELECT venue FROM Paper GROUP BY venue ORDER BY COUNT(*) ASC LIMIT 1
SELECT COUNT(*) FROM `Citation` WHERE `cited_paper_id` = 'D12-1027'
SELECT COUNT(*) FROM Citation WHERE cited_paper_id = 'A00-1002'
placeholder
SELECT venue FROM Paper GROUP BY venue ORDER BY COUNT(*) ASC LIMIT 1
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
SELECT DISTINCT p.venue, p.year FROM Author_list JOIN Affiliation ON Author_list.affiliation_id = Affiliation.affiliation_id JOIN Paper p ON Author_list.paper_id = p.paper_id WHERE Affiliation.name = 'Columbia University'
placeholder
placeholder
SELECT DISTINCT p.venue, p.year FROM Paper p JOIN Author_list al ON p.paper_id = al.paper_id JOIN Affiliation af ON al.affiliation_id = af.affiliation_id WHERE af.name = 'Columbia University'
placeholder
placeholder
placeholder
SELECT p.title FROM Paper p JOIN Author_list al ON p.paper_id = al.paper_id GROUP BY p.paper_id ORDER BY COUNT(al.author_id) DESC LIMIT 1
placeholder
placeholder
placeholder
placeholder
SELECT paper_id FROM Paper WHERE title LIKE '%translation%'
placeholder
SELECT paper_id FROM Paper WHERE title LIKE '%translation%'
placeholder
SELECT p.paper_id, p.title FROM Paper p LEFT JOIN Citation c ON p.paper_id = c.cited_paper_id WHERE c.cited_paper_id IS NULL
SELECT a.name FROM Affiliation a JOIN Author_list al ON a.affiliation_id = al.affiliation_id GROUP BY a.affiliation_id HAVING a.address LIKE '%China%' ORDER BY COUNT(al.paper_id) DESC LIMIT 1
placeholder
placeholder
placeholder
placeholder
SELECT COUNT(*) AS paper_count, venue, year FROM Paper GROUP BY venue, year
SELECT venue, year, COUNT(*) AS paper_count FROM Paper GROUP BY venue, year
placeholder
SELECT a.name FROM Affiliation a JOIN Author_list al ON a.affiliation_id = al.affiliation_id WHERE a.address LIKE '%China%' GROUP BY a.affiliation_id ORDER BY COUNT(al.paper_id) DESC LIMIT 1
SELECT p.title FROM Paper p JOIN Citation c ON p.paper_id = c.cited_paper_id GROUP BY c.cited_paper_id HAVING COUNT(c.cited_paper_id) > 50
placeholder
placeholder
SELECT COUNT(*) FROM conference
placeholder
placeholder
placeholder
SELECT DISTINCT Conference_Name FROM conference
SELECT DISTINCT Conference_Name FROM conference
placeholder
SELECT COUNT(*) FROM conference
SELECT Conference_Name , Year , Location FROM conference
SELECT Conference_Name , Year , Location FROM conference
placeholder
SELECT Year, COUNT(*) AS Number_of_Conferences FROM conference GROUP BY Year
SELECT COUNT(*) AS occurrence_count, Conference_Name FROM conference GROUP BY Conference_Name
placeholder
SELECT Year FROM conference GROUP BY Year ORDER BY COUNT(*) ASC LIMIT 1
SELECT Location FROM conference GROUP BY Location HAVING COUNT(*) >= 2
SELECT Year FROM conference GROUP BY Year ORDER BY COUNT(*) ASC LIMIT 1
SELECT Location FROM conference GROUP BY Location HAVING COUNT(*) >= 2
SELECT Institution_Name , Location , Founded FROM institution
SELECT Institution_Name , Location , Founded FROM institution
SELECT COUNT(*) FROM institution WHERE Founded BETWEEN 1850 AND 1900
SELECT COUNT(*) FROM institution WHERE Founded BETWEEN 1850 AND 1900
SELECT Institution_Name , Location FROM institution ORDER BY Founded DESC LIMIT 1
SELECT COUNT(*) AS conference_count, Year FROM conference GROUP BY Year
SELECT Institution_Name , Location FROM institution ORDER BY Founded DESC LIMIT 1
placeholder
SELECT name FROM staff WHERE Age > (SELECT AVG(Age) FROM staff)
SELECT name FROM staff WHERE Age > (SELECT AVG(Age) FROM staff)
SELECT MAX(Age) AS max_age, MIN(Age) AS min_age FROM staff WHERE Nationality = 'United States'
SELECT MAX( Age ) AS max_age, MIN( Age ) AS min_age FROM staff
placeholder
placeholder
placeholder
placeholder
SELECT DISTINCT c.Conference_Name FROM staff s JOIN conference_participation cp ON s.staff_ID = cp.staff_ID JOIN conference c ON cp.Conference_ID = c.Conference_ID WHERE s.Nationality = 'Canada'
placeholder
placeholder
placeholder
placeholder
SELECT DISTINCT s.name FROM staff s JOIN conference_participation cp ON s.staff_ID = cp.staff_ID JOIN conference c ON cp.Conference_ID = c.Conference_ID WHERE c.Year = 2003 OR c.Year = 2004
placeholder
placeholder
SELECT c.Conference_Name FROM conference c JOIN conference_participation cp ON c.Conference_ID = cp.Conference_ID GROUP BY c.Conference_ID ORDER BY COUNT(cp.staff_ID) DESC LIMIT 2
placeholder
SELECT c.Conference_Name, c.Year, COUNT(cp.staff_ID) AS Number_of_Participants FROM conference c JOIN conference_participation cp ON c.Conference_ID = cp.Conference_ID GROUP BY c.Conference_ID
placeholder
SELECT pilot_name FROM PilotSkills ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM PilotSkills ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM PilotSkills WHERE age < (SELECT AVG(age) FROM PilotSkills) ORDER BY age
SELECT pilot_name FROM PilotSkills WHERE age < (SELECT AVG(age) FROM PilotSkills) ORDER BY age ASC
placeholder
SELECT * FROM PilotSkills WHERE age < 30
placeholder
SELECT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' AND age < 35
SELECT * FROM PilotSkills WHERE age < 30
SELECT location FROM Hangar WHERE plane_name = 'F-14 Fighter'
SELECT location FROM Hangar WHERE plane_name = 'F-14 Fighter'
SELECT COUNT(DISTINCT location) FROM Hangar
SELECT COUNT(DISTINCT location) FROM Hangar
placeholder
SELECT plane_name FROM PilotSkills WHERE pilot_name = 'Jones' AND age = 32
SELECT COUNT(*) FROM PilotSkills WHERE age > 40
SELECT COUNT(*) FROM PilotSkills WHERE age > 40
placeholder
placeholder
SELECT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' ORDER BY age ASC LIMIT 1
SELECT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' ORDER BY age ASC LIMIT 1
SELECT plane_name FROM PilotSkills GROUP BY plane_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT ps.pilot_name) FROM PilotSkills ps JOIN Hangar h ON ps.plane_name = h.plane_name WHERE h.location = 'Chicago'
SELECT plane_name FROM PilotSkills WHERE pilot_name = 'Jones' AND age = 32
placeholder
SELECT plane_name FROM PilotSkills GROUP BY plane_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT plane_name FROM PilotSkills GROUP BY plane_name ORDER BY COUNT(pilot_name) ASC LIMIT 1
SELECT plane_name FROM PilotSkills WHERE pilot_name = 'Smith' AND age = 41
SELECT plane_name FROM PilotSkills GROUP BY plane_name ORDER BY COUNT(*) ASC LIMIT 1
placeholder
placeholder
SELECT COUNT(DISTINCT plane_name) FROM PilotSkills
SELECT COUNT(DISTINCT ps.pilot_name) FROM PilotSkills ps JOIN Hangar h ON ps.plane_name = h.plane_name WHERE h.location = 'Chicago'
SELECT plane_name FROM PilotSkills WHERE pilot_name = 'Smith' AND age = 41
SELECT COUNT(DISTINCT plane_name) FROM PilotSkills
SELECT COUNT(*) FROM PilotSkills WHERE age > 40
SELECT COUNT(*) FROM PilotSkills WHERE age > 40
SELECT pilot_name FROM PilotSkills WHERE age BETWEEN 30 AND 40 ORDER BY age ASC
SELECT pilot_name FROM PilotSkills WHERE age BETWEEN 30 AND 40 ORDER BY age ASC
SELECT pilot_name FROM PilotSkills ORDER BY age DESC
SELECT pilot_name FROM PilotSkills ORDER BY age DESC
SELECT location FROM Hangar ORDER BY plane_name
SELECT location FROM Hangar ORDER BY plane_name
SELECT COUNT(*) FROM PilotSkills WHERE age > 40 OR age < 30
SELECT COUNT(*) FROM PilotSkills WHERE age > 40 OR age < 30
SELECT DISTINCT plane_name FROM Hangar ORDER BY plane_name
SELECT DISTINCT plane_name FROM PilotSkills ORDER BY plane_name
placeholder
placeholder
SELECT AVG(age) AS average_age, MIN(age) AS smallest_age FROM PilotSkills
SELECT AVG(age) AS average_age, MIN(age) AS minimum_age FROM PilotSkills
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' OR plane_name = 'F-14 Fighter'
SELECT AVG(age) AS average_age, plane_name FROM PilotSkills GROUP BY plane_name
SELECT COUNT(*) AS number_of_planes, location FROM Hangar GROUP BY location
placeholder
placeholder
SELECT plane_name, COUNT(*) AS entry FROM PilotSkills GROUP BY plane_name
placeholder
SELECT AVG(age) AS average_age, plane_name FROM PilotSkills GROUP BY plane_name
SELECT MAX(age) AS max_age FROM PilotSkills GROUP BY pilot_name
SELECT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' OR plane_name = 'F-14 Fighter'
SELECT pilot_name, MAX(age) AS max_age FROM PilotSkills GROUP BY pilot_name
placeholder
SELECT H.location, COUNT(P.pilot_name) AS pilot_count, AVG(P.age) AS average_age FROM PilotSkills P JOIN Hangar H ON P.plane_name = H.plane_name GROUP BY H.location
SELECT h.location FROM PilotSkills ps JOIN Hangar h ON ps.plane_name = h.plane_name ORDER BY ps.age ASC LIMIT 1
SELECT ps.pilot_name, ps.age FROM PilotSkills ps JOIN Hangar h ON ps.plane_name = h.plane_name WHERE h.location = 'Austin'
placeholder
SELECT h.location FROM PilotSkills ps JOIN Hangar h ON ps.plane_name = h.plane_name ORDER BY ps.age ASC LIMIT 1
placeholder
SELECT ps.pilot_name, ps.age FROM PilotSkills ps JOIN Hangar h ON ps.plane_name = h.plane_name WHERE h.location = 'Austin'
placeholder
placeholder
SELECT plane_name FROM Hangar WHERE plane_name LIKE '%Bomber%'
placeholder
SELECT plane_name FROM Hangar WHERE plane_name LIKE '%Bomber%'
SELECT Name FROM district ORDER BY Area_km DESC LIMIT 1
SELECT Area_km , Government_website FROM district ORDER BY Population ASC LIMIT 1
SELECT Name , Population FROM district WHERE Area_km > (SELECT AVG( Area_km ) FROM district )
placeholder
placeholder
SELECT MAX( Area_km ) AS biggest_area, AVG( Area_km ) AS average_area FROM district
placeholder
SELECT District_ID , Name , Government_website FROM district ORDER BY Population
placeholder
SELECT District_ID , Name FROM district WHERE Population > 4000 OR Area_km > 3000
placeholder
SELECT AVG( Points ), AVG( Age ) FROM spokesman WHERE Rank_position = 1
placeholder
SELECT Name , Speach_title FROM spokesman
SELECT Name , Points FROM spokesman WHERE Age < 40
SELECT Name FROM spokesman ORDER BY Age DESC LIMIT 1
SELECT d.Name FROM district d JOIN spokesman_district sd ON d.District_ID = sd.District_ID GROUP BY d.Name ORDER BY COUNT(sd.Spokesman_ID) DESC LIMIT 1
SELECT Name FROM spokesman WHERE Points < (SELECT AVG(Points) FROM spokesman)
SELECT COUNT(*) FROM district WHERE District_ID NOT IN (SELECT District_ID FROM spokesman_district)
placeholder
SELECT Name FROM district WHERE LOWER(Government_website) LIKE '%gov%'
SELECT SUM(d.Population) AS total_population, AVG(d.Population) AS average_population FROM district d JOIN spokesman_district sd ON d.District_ID = sd.District_ID
SELECT title FROM Sculptures ORDER BY year DESC LIMIT 1
SELECT title FROM Sculptures ORDER BY year DESC LIMIT 1
SELECT title, location FROM Paintings ORDER BY year ASC LIMIT 1
SELECT title FROM Sculptures WHERE location = '226'
SELECT title, location FROM Paintings ORDER BY year ASC LIMIT 1
placeholder
placeholder
SELECT title, location FROM Paintings
SELECT title, location FROM Sculptures
placeholder
placeholder
SELECT title FROM Sculptures WHERE location = '226'
SELECT title, location FROM Sculptures
SELECT title, location FROM Paintings
SELECT medium FROM Paintings WHERE paintingID = 80
placeholder
SELECT medium FROM Paintings WHERE paintingID = 80
SELECT fname, lname FROM Artists WHERE birthYear > 1850
SELECT fname, lname FROM Artists WHERE birthYear > 1850
SELECT title, year FROM Sculptures WHERE location != 'gallery 226'
SELECT title, year FROM Sculptures WHERE location != 'gallery 226'
SELECT DISTINCT A.birthYear FROM Artists A JOIN Sculptures S ON A.artistID = S.sculptorID WHERE S.year > 1920
SELECT DISTINCT a.birthYear FROM Artists a JOIN Sculptures s ON a.artistID = s.sculptorID WHERE s.year > 1920
SELECT fname, lname FROM Artists WHERE deathYear IS NOT NULL ORDER BY (deathYear - birthYear) DESC LIMIT 1
SELECT (deathYear - birthYear) AS age FROM Artists WHERE deathYear IS NOT NULL ORDER BY (deathYear - birthYear) ASC LIMIT 1
SELECT COUNT(*) FROM Paintings WHERE location = '240'
SELECT DISTINCT a.fname, a.lname FROM Artists a JOIN Sculptures s ON a.artistID = s.sculptorID WHERE s.year < 1900
SELECT fname, (deathYear - birthYear) AS age FROM Artists WHERE deathYear IS NOT NULL ORDER BY (deathYear - birthYear) DESC LIMIT 1
SELECT fname, (deathYear - birthYear) AS age FROM Artists WHERE birthYear IS NOT NULL AND deathYear IS NOT NULL ORDER BY (deathYear - birthYear) DESC LIMIT 1
placeholder
SELECT p.title, p.year FROM Paintings p JOIN Artists a ON p.painterID = a.artistID WHERE a.fname = 'Mary'
SELECT p.title, p.year, a.fname, a.lname FROM Paintings p JOIN Artists a ON p.painterID = a.artistID WHERE a.fname = 'Mary'
placeholder
SELECT p.width_mm FROM Paintings p JOIN Artists a ON p.painterID = a.artistID WHERE a.birthYear < 1850
SELECT COUNT(*) FROM Paintings WHERE location = '240'
SELECT deathYear - birthYear FROM Artists WHERE deathYear IS NOT NULL ORDER BY (deathYear - birthYear) ASC LIMIT 1
SELECT p.location, p.medium FROM Paintings p JOIN Artists a ON p.painterID = a.artistID WHERE a.fname = 'Pablo'
SELECT p.width_mm FROM Paintings p JOIN Artists a ON p.painterID = a.artistID WHERE a.birthYear < 1850
SELECT A.birthYear FROM Paintings P JOIN Artists A ON P.painterID = A.artistID WHERE P.year = 1884 AND P.mediumOn = 'canvas'
SELECT p.location, p.mediumOn FROM Paintings p JOIN Artists a ON p.painterID = a.artistID WHERE a.fname = 'Pablo'
placeholder
placeholder
SELECT a.fname, a.lname FROM Artists a INNER JOIN Paintings p ON a.artistID = p.painterID INTERSECT SELECT a.fname, a.lname FROM Artists a INNER JOIN Sculptures s ON a.artistID = s.sculptorID
SELECT A.birthYear FROM Paintings P JOIN Artists A ON P.painterID = A.artistID WHERE P.year = 1884
SELECT DISTINCT A.fname FROM Artists A JOIN Paintings P ON A.artistID = P.painterID WHERE P.medium = 'oil' AND P.location = 'gallery 241'
placeholder
SELECT AVG(height_mm) AS average_height, medium FROM Paintings GROUP BY medium
placeholder
placeholder
SELECT AVG(height_mm) AS average_height, medium FROM Paintings GROUP BY medium
SELECT COUNT(*) AS painting_count, location FROM Paintings WHERE year < 1900 GROUP BY location
SELECT COUNT(*) AS painting_count, location FROM Paintings WHERE year < 1900 GROUP BY location
SELECT title FROM Paintings WHERE year > 1910 AND medium = 'oil'
SELECT title FROM Paintings WHERE medium = 'oil' AND year > 1910
SELECT COUNT(*) AS count, medium FROM ( SELECT medium FROM Paintings UNION ALL SELECT medium FROM Sculptures ) GROUP BY medium
placeholder
SELECT medium, COUNT(*) AS count FROM ( SELECT medium FROM Paintings UNION ALL SELECT medium FROM Sculptures ) GROUP BY medium
SELECT paintingID FROM Paintings ORDER BY year ASC LIMIT 1
SELECT paintingID FROM Paintings ORDER BY year ASC LIMIT 1
SELECT DISTINCT painterID FROM Paintings WHERE medium = 'oil' AND location = 'gallery 240'
SELECT A.fname, A.lname FROM Artists A JOIN Sculptures S ON A.artistID = S.sculptorID WHERE S.title LIKE '%female%'
SELECT DISTINCT title FROM Paintings ORDER BY title
placeholder
SELECT DISTINCT title FROM Paintings ORDER BY title
SELECT A.fname, A.lname FROM Artists A JOIN Sculptures S ON A.artistID = S.sculptorID WHERE S.title LIKE '%female%'
placeholder
placeholder
SELECT DISTINCT title FROM Paintings WHERE height_mm > ANY ( SELECT height_mm FROM Paintings WHERE medium = 'canvas' )
SELECT DISTINCT title FROM Paintings ORDER BY height_mm ASC
placeholder
SELECT painterID FROM Paintings WHERE year < 1900 GROUP BY painterID ORDER BY COUNT(*) DESC LIMIT 1
SELECT a.fname FROM Artists a JOIN Sculptures s ON a.artistID = s.sculptorID GROUP BY a.fname ORDER BY COUNT(s.sculptureID) DESC LIMIT 1
SELECT A.fname FROM Artists A JOIN Sculptures S ON A.artistID = S.sculptorID GROUP BY A.fname ORDER BY COUNT(S.sculptureID) DESC LIMIT 1
SELECT title FROM Paintings WHERE width_mm < 600 OR height_mm > 800
SELECT title FROM Paintings WHERE width_mm < 600 OR height_mm > 800
SELECT title FROM Paintings WHERE year BETWEEN 1900 AND 1950 UNION SELECT title FROM Sculptures WHERE year BETWEEN 1900 AND 1950
placeholder
placeholder
SELECT DISTINCT location FROM Paintings WHERE year < 1885 OR year > 1930
SELECT paintingID FROM Paintings WHERE height_mm > 500 AND height_mm < 2000
SELECT paintingID FROM Paintings WHERE height_mm > 500 AND height_mm < 2000
SELECT title FROM Paintings WHERE painterID = 222 UNION SELECT title FROM Sculptures WHERE sculptorID = 222
placeholder
placeholder
SELECT DISTINCT location FROM Paintings WHERE mediumOn = 'on panel' OR mediumOn = 'on canvas'
SELECT AVG(height_mm), AVG(width_mm) FROM Paintings WHERE medium = 'oil' AND location = 'gallery 241'
SELECT height_mm, paintingID FROM Paintings WHERE year < 1900 ORDER BY height_mm DESC LIMIT 1
SELECT DISTINCT location FROM Paintings WHERE mediumOn = 'on panels' OR mediumOn = 'on canvas'
SELECT year, MAX(height_mm) AS max_height, MAX(width_mm) AS max_width FROM Paintings GROUP BY year
SELECT year, MAX(height_mm) AS max_height, MAX(width_mm) AS max_width FROM Paintings GROUP BY year
SELECT height_mm, paintingID FROM Paintings WHERE year < 1900 ORDER BY height_mm DESC LIMIT 1
SELECT a.fname, COUNT(p.paintingID) AS painting_count FROM Artists a JOIN Paintings p ON a.artistID = p.painterID GROUP BY a.artistID HAVING COUNT(p.paintingID) >= 2
SELECT A.fname, COUNT(P.paintingID) AS painting_count FROM Artists A JOIN Paintings P ON A.artistID = P.painterID GROUP BY A.fname HAVING COUNT(P.paintingID) >= 2
SELECT location FROM Paintings WHERE year < 1885 AND year > 1930
placeholder
placeholder
placeholder
SELECT AVG(p.height_mm) AS avg_height, AVG(p.width_mm) AS avg_width, a.lname, a.fname FROM Paintings p JOIN Artists a ON p.painterID = a.artistID GROUP BY a.lname, a.fname ORDER BY a.lname, a.fname
SELECT a.deathYear FROM Artists a JOIN Sculptures s ON a.artistID = s.sculptorID GROUP BY a.artistID ORDER BY COUNT(*) ASC LIMIT 1
placeholder
placeholder
placeholder
placeholder
SELECT paintingID FROM Paintings WHERE height_mm > (SELECT MAX(height_mm) FROM Paintings WHERE year > 1900)
SELECT A.fname, A.lname FROM Artists A JOIN Paintings P ON A.artistID = P.painterID WHERE P.medium = 'oil' GROUP BY A.artistID ORDER BY COUNT(P.paintingID) DESC LIMIT 3
placeholder
SELECT paintingID, title, location FROM Paintings WHERE medium = 'oil' ORDER BY year
placeholder
SELECT paintingID, height_mm FROM Paintings WHERE location = '240' ORDER BY width_mm DESC LIMIT 1
SELECT paintingID, location, title FROM Paintings WHERE medium = 'oil' ORDER BY year
SELECT year, location, title FROM Paintings WHERE height_mm > 1000 ORDER BY title ASC
SELECT year, location, title FROM Paintings WHERE height_mm > 1000 ORDER BY title
placeholder
SELECT COUNT(*) FROM race
placeholder
SELECT COUNT(*) FROM race
placeholder
SELECT location FROM Paintings WHERE year < 1885 AND mediumOn != 'canvas'
SELECT Winning_driver , Winning_team FROM race ORDER BY Winning_team ASC
SELECT Winning_driver , Winning_team FROM race ORDER BY Winning_team
SELECT Constructor FROM driver ORDER BY Age ASC
SELECT DISTINCT Constructor FROM driver ORDER BY Age ASC
SELECT DISTINCT Entrant FROM driver WHERE Age >= 20
SELECT Winning_driver FROM race WHERE Pole_Position != 'Junior Strous'
placeholder
SELECT MAX( Age ) AS Maximum_Age , MIN( Age ) AS Minimum_Age FROM driver
SELECT DISTINCT Entrant FROM driver WHERE Age >= 20
SELECT MAX( Age ) AS Maximum_Age , MIN( Age ) AS Minimum_Age FROM driver
placeholder
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT COUNT(DISTINCT Engine) FROM driver WHERE Age > 30 OR Age < 20
placeholder
SELECT d.Driver_Name, r.Race_Name FROM driver d JOIN race r ON d.Driver_ID = r.Driver_ID
SELECT COUNT(DISTINCT Engine) FROM driver WHERE Age > 30 OR Age < 20
SELECT d.Driver_Name, COUNT(r.Road) AS Race_Count FROM driver d JOIN race r ON d.Driver_ID = r.Driver_ID GROUP BY d.Driver_Name
SELECT Winning_driver FROM race WHERE Pole_Position != 'Junior Strous'
SELECT d.Driver_Name, d.Age FROM driver d JOIN race r ON d.Driver_ID = r.Driver_ID GROUP BY d.Driver_Name, d.Age HAVING COUNT(r.Road) >= 2
SELECT r.Race_Name FROM race r JOIN driver d ON r.Driver_ID = d.Driver_ID WHERE d.Age >= 26
SELECT d.Driver_Name, d.Age FROM driver d JOIN race r ON d.Driver_ID = r.Driver_ID GROUP BY d.Driver_ID HAVING COUNT(r.Road) >= 2
SELECT Driver_Name FROM driver WHERE Constructor != 'Bugatti'
SELECT Driver_Name FROM driver WHERE Constructor != 'Bugatti'
SELECT Constructor, COUNT(*) AS Driver_Count FROM driver GROUP BY Constructor
SELECT COUNT(*) AS driver_count, Constructor FROM driver GROUP BY Constructor
SELECT d.Driver_Name, r.Race_Name FROM driver d JOIN race r ON d.Driver_ID = r.Driver_ID
SELECT Engine FROM driver GROUP BY Engine ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT r.Race_Name FROM race r JOIN driver d ON r.Driver_ID = d.Driver_ID WHERE d.Age >= 26
SELECT Engine FROM driver GROUP BY Engine HAVING COUNT(*) >= 2
SELECT d.Age FROM driver d JOIN race r ON d.Driver_ID = r.Driver_ID GROUP BY d.Driver_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Engine FROM driver GROUP BY Engine ORDER BY COUNT( Engine ) DESC LIMIT 1
SELECT d.Age FROM driver d JOIN race r ON d.Driver_ID = r.Driver_ID GROUP BY d.Driver_ID ORDER BY COUNT(r.Road) DESC LIMIT 1
SELECT d.Driver_Name FROM driver d LEFT JOIN race r ON d.Driver_ID = r.Driver_ID WHERE r.Driver_ID IS NULL
SELECT Winning_team FROM race GROUP BY Winning_team HAVING COUNT(Winning_team) > 1
placeholder
SELECT Winning_team FROM race GROUP BY Winning_team HAVING COUNT(*) > 1
SELECT Engine FROM driver GROUP BY Engine HAVING COUNT(*) >= 2
SELECT COUNT(*) FROM languages
SELECT Constructor FROM driver WHERE Age < 20 INTERSECT SELECT Constructor FROM driver WHERE Age > 30
SELECT d. Driver_Name FROM driver d LEFT JOIN race r ON d. Driver_ID = r. Driver_ID WHERE r. Driver_ID IS NULL
SELECT name FROM languages ORDER BY name ASC
SELECT COUNT(*) FROM languages
SELECT name FROM languages ORDER BY name
SELECT name FROM languages WHERE name LIKE '%ish%'
placeholder
SELECT name FROM countries ORDER BY overall_score DESC
SELECT name FROM languages WHERE name LIKE '%ish%'
SELECT name FROM countries ORDER BY overall_score DESC
SELECT AVG( justice_score ) FROM countries
SELECT AVG(justice_score) FROM countries
placeholder
placeholder
SELECT MAX(health_score), MIN(health_score) FROM countries WHERE name != 'Norway'
placeholder
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY education_score DESC
SELECT MAX( health_score ) AS max_health_score, MIN( health_score ) AS min_health_score FROM countries WHERE name != 'Norway'
SELECT COUNT(DISTINCT language_id) FROM official_languages
SELECT COUNT(DISTINCT language_id) FROM official_languages
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
placeholder
SELECT l.name AS language, COUNT(ol.country_id) AS number_of_countries FROM languages l JOIN official_languages ol ON l.id = ol.language_id GROUP BY l.name
SELECT l.name, COUNT(*) AS country_count FROM languages l JOIN official_languages ol ON l.id = ol.language_id GROUP BY l.name
SELECT l.name FROM languages l JOIN official_languages ol ON l.id = ol.language_id GROUP BY l.id, l.name HAVING COUNT(ol.country_id) >= 2
SELECT l.name FROM languages l JOIN official_languages ol ON l.id = ol.language_id GROUP BY l.id ORDER BY COUNT(ol.country_id) DESC LIMIT 1
SELECT AVG(c.overall_score) FROM countries c JOIN official_languages ol ON c.id = ol.country_id JOIN languages l ON ol.language_id = l.id WHERE l.name = 'English'
SELECT AVG(c.overall_score) FROM countries c JOIN official_languages ol ON c.id = ol.country_id JOIN languages l ON ol.language_id = l.id WHERE l.name = 'English'
SELECT c.name AS country_name, l.name AS official_language FROM countries c JOIN official_languages ol ON c.id = ol.country_id JOIN languages l ON ol.language_id = l.id
SELECT l.name FROM languages l JOIN official_languages ol ON l.id = ol.language_id GROUP BY l.id ORDER BY COUNT(ol.country_id) DESC LIMIT 3
SELECT l.name FROM languages l JOIN official_languages ol ON l.id = ol.language_id GROUP BY l.name HAVING COUNT(ol.country_id) >= 2
SELECT c.name FROM countries c JOIN official_languages ol ON c.id = ol.country_id GROUP BY c.id ORDER BY COUNT(ol.language_id) DESC LIMIT 1
SELECT l.name FROM languages l JOIN official_languages ol ON l.id = ol.language_id GROUP BY l.name ORDER BY COUNT(ol.country_id) DESC LIMIT 3
SELECT c.name AS country_name, l.name AS language_name FROM countries c JOIN official_languages ol ON c.id = ol.country_id JOIN languages l ON ol.language_id = l.id
SELECT l.name FROM languages l LEFT JOIN official_languages ol ON l.id = ol.language_id WHERE ol.language_id IS NULL
placeholder
SELECT c.name FROM countries c JOIN official_languages ol ON c.id = ol.country_id GROUP BY c.name ORDER BY COUNT(ol.language_id) DESC LIMIT 1
SELECT l.name FROM languages l JOIN official_languages ol ON l.id = ol.language_id JOIN countries c ON ol.country_id = c.id GROUP BY l.name ORDER BY AVG(c.overall_score) DESC
SELECT DISTINCT country, town_city FROM Addresses
SELECT country, town_city FROM Addresses
SELECT p.property_id, a.county_state_province FROM Properties p JOIN Addresses a ON p.property_address_id = a.address_id
SELECT DISTINCT a.county_state_province FROM Properties p JOIN Addresses a ON p.property_address_id = a.address_id
placeholder
placeholder
SELECT feature_description FROM `Features` WHERE feature_name = 'rooftop'
SELECT feature_description FROM `Features` WHERE feature_name = 'rooftop'
placeholder
SELECT f.feature_name, f.feature_description FROM Features f JOIN Property_Features pf ON f.feature_id = pf.feature_id GROUP BY f.feature_id, f.feature_name, f.feature_description ORDER BY COUNT(pf.property_id) DESC LIMIT 1
placeholder
placeholder
placeholder
SELECT MIN(room_count) FROM Properties
SELECT COUNT(*) FROM Properties WHERE parking_lots = '1' OR garage_yn = 'Y'
SELECT u.first_name FROM Users u JOIN Properties p ON u.user_id = p.owner_user_id GROUP BY u.user_id ORDER BY COUNT(p.property_id) DESC LIMIT 1
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT property_id, vendor_requested_price FROM Properties WHERE vendor_requested_price IS NOT NULL ORDER BY vendor_requested_price ASC LIMIT 1
SELECT COUNT(DISTINCT room_size) FROM Rooms
placeholder
placeholder
placeholder
SELECT MAX(search_datetime) FROM User_Searches
SELECT search_datetime FROM User_Searches ORDER BY search_datetime DESC LIMIT 1
SELECT search_string, search_datetime FROM User_Searches ORDER BY search_string DESC
SELECT user_id, search_string FROM User_Searches GROUP BY user_id HAVING COUNT(*) >= 2
placeholder
SELECT search_datetime, search_string FROM User_Searches ORDER BY search_string DESC
SELECT AVG(CAST(room_count AS REAL)) FROM Properties
placeholder
SELECT u.age_category_code FROM Users u JOIN User_Searches us ON u.user_id = us.user_id ORDER BY us.search_datetime ASC LIMIT 1
SELECT u.user_id, uc.user_category_code FROM Users u JOIN Ref_User_Categories uc ON u.user_category_code = uc.user_category_code JOIN User_Searches us ON u.user_id = us.user_id GROUP BY u.user_id, uc.user_category_code HAVING COUNT(us.search_seq) = 1
placeholder
SELECT u.user_category_code, u.user_id FROM Users u JOIN User_Searches us ON u.user_id = us.user_id GROUP BY u.user_id, u.user_category_code HAVING COUNT(*) = 1
SELECT date_registered FROM Users WHERE login_name = 'ratione'
SELECT COUNT(*) FROM `Users` u JOIN `User_Searches` us ON u.user_id = us.user_id WHERE u.is_buyer = 'Y'
SELECT u.login_name FROM Users u JOIN Ref_Age_Categories ac ON u.age_category_code = ac.age_category_code WHERE ac.age_category_description = 'senior' ORDER BY u.first_name
SELECT COUNT(*) FROM `Users` u JOIN `User_Searches` us ON u.`user_id` = us.`user_id` WHERE u.`is_buyer` = 'Y'
placeholder
SELECT u.login_name FROM Users u JOIN Ref_User_Categories uc ON u.user_category_code = uc.user_category_code WHERE uc.user_category_description = 'senior citizen' ORDER BY u.first_name
placeholder
SELECT date_registered FROM Users WHERE login_name = 'ratione'
SELECT first_name, middle_name, last_name, login_name FROM Users WHERE is_seller = '1'
SELECT first_name, middle_name, last_name, login_name FROM Users WHERE is_seller = '1'
SELECT property_id, COUNT(*) AS photo_count FROM Property_Photos GROUP BY property_id
placeholder
SELECT property_id, COUNT(*) AS photo_count FROM Property_Photos GROUP BY property_id
placeholder
placeholder
SELECT COUNT(*) FROM ( SELECT property_id FROM Property_Features GROUP BY property_id HAVING COUNT(*) >= 2 )
SELECT SUM(p.price_max) FROM Properties p JOIN Users u ON p.owner_user_id = u.user_id JOIN Ref_User_Categories ruc ON u.user_category_code = ruc.user_category_code WHERE ruc.user_category_description = 'single mother' OR ruc.user_category_description = 'student'
SELECT uh.datestamp, p.property_name FROM User_Property_History uh JOIN Properties p ON uh.property_id = p.property_id ORDER BY uh.datestamp
placeholder
placeholder
placeholder
SELECT uph.datestamp, p.property_name FROM User_Property_History uph JOIN Properties p ON uph.property_id = p.property_id ORDER BY uph.datestamp
placeholder
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = 'Over 60'
SELECT pt.property_type_description, pt.property_type_code FROM Ref_Property_Types AS pt JOIN Properties AS p ON pt.property_type_code = p.property_type_code GROUP BY pt.property_type_code ORDER BY COUNT(p.property_id) DESC LIMIT 1
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code = 'Over 60'
SELECT a.country FROM Users u JOIN Addresses a ON u.user_address_id = a.address_id WHERE u.first_name = 'Robbie'
SELECT a.country FROM Users u JOIN Addresses a ON u.user_address_id = a.address_id WHERE u.first_name = 'Robbie'
SELECT room_size, COUNT(*) AS count FROM Rooms GROUP BY room_size
SELECT rt.property_type_description FROM Properties p JOIN Ref_Property_Types rt ON p.property_type_code = rt.property_type_code GROUP BY rt.property_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM bike WHERE weight > 780
SELECT product_name , weight FROM bike ORDER BY price ASC
placeholder
placeholder
placeholder
SELECT heat, name, nation FROM cyclist
SELECT MAX(weight) AS max_weight, MIN(weight) AS min_weight FROM bike
SELECT AVG(price) FROM bike WHERE material = 'Carbon CC'
placeholder
SELECT name, result FROM cyclist WHERE nation != 'Russia'
placeholder
SELECT DISTINCT b.id, b.product_name FROM bike b JOIN cyclists_own_bikes cob ON b.id = cob.bike_id WHERE cob.purchase_year > 2015
SELECT COUNT(DISTINCT heat) FROM cyclist
placeholder
placeholder
SELECT DISTINCT b.product_name FROM cyclist c JOIN cyclists_own_bikes cob ON c.id = cob.cyclist_id JOIN bike b ON cob.bike_id = b.id WHERE c.nation = 'Russia' OR c.nation = 'Great Britain'
SELECT product_name FROM bike WHERE material LIKE '%fiber%'
SELECT COUNT(*) AS bike_count, cyclist_id FROM cyclists_own_bikes GROUP BY cyclist_id ORDER BY cyclist_id
SELECT Flavor , Price FROM goods WHERE Food = 'cake' ORDER BY Price DESC LIMIT 1
SELECT Id , Flavor FROM goods WHERE Food = 'cake' ORDER BY Price DESC LIMIT 1
placeholder
placeholder
SELECT Id, Flavor FROM goods WHERE Food = 'cookie' ORDER BY Price ASC LIMIT 1
SELECT Flavor FROM goods WHERE Food = 'cookie' ORDER BY Price ASC LIMIT 1
placeholder
SELECT Id FROM goods WHERE Flavor = 'apple'
placeholder
placeholder
SELECT Id FROM goods WHERE Price < 3
SELECT Id FROM goods WHERE Price < 3
SELECT Id FROM goods WHERE Flavor = 'apple'
placeholder
SELECT c.LastName FROM receipts r JOIN customers c ON r.CustomerId = c.Id GROUP BY c.LastName HAVING COUNT(r.ReceiptNumber) > 10
SELECT COUNT(*) FROM goods WHERE Food = 'Cake'
SELECT customerId FROM receipts GROUP BY customerId HAVING COUNT(*) >= 15
placeholder
SELECT COUNT(*) FROM goods WHERE Food = 'cake'
SELECT Flavor FROM goods WHERE Food = 'Croissant'
placeholder
placeholder
placeholder
placeholder
SELECT DISTINCT Flavor FROM goods WHERE Food = 'croissant'
SELECT Food, AVG(Price) AS AveragePrice, MAX(Price) AS MaximumPrice, MIN(Price) AS MinimumPrice FROM goods GROUP BY Food
SELECT AVG(Price) AS AveragePrice, MIN(Price) AS MinimumPrice, MAX(Price) AS MaximumPrice, Food FROM goods GROUP BY Food
placeholder
placeholder
placeholder
placeholder
SELECT r.ReceiptNumber, r.Date FROM items i JOIN goods g ON i.Item = g.Id JOIN receipts r ON i.Receipt = r.ReceiptNumber ORDER BY g.Price DESC LIMIT 1
placeholder
placeholder
placeholder
SELECT COUNT(*) AS count, Food FROM goods GROUP BY Food
placeholder
SELECT COUNT(*) AS Count , Food FROM goods GROUP BY Food
SELECT AVG(Price) AS AveragePrice, Food FROM goods GROUP BY Food
SELECT AVG(Price) AS average_price, Food FROM goods GROUP BY Food
SELECT Id FROM goods WHERE Flavor = 'Apricot' AND Price < 5
SELECT Id FROM goods WHERE Flavor = 'Apricot' AND Price < 5.0
SELECT Flavor FROM goods WHERE Food = 'cake' AND Price > 10
SELECT Flavor FROM goods WHERE Food = 'cake' AND Price > 10
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT Id FROM goods WHERE Id LIKE '%APP%'
placeholder
placeholder
SELECT Id FROM goods WHERE Id LIKE '%APP%'
SELECT LastName FROM customers ORDER BY LastName
SELECT LastName FROM customers ORDER BY LastName
SELECT Id , Price FROM goods WHERE Id = '70'
SELECT Id , Price FROM goods WHERE Id = '70'
SELECT Id FROM goods ORDER BY Id
SELECT DISTINCT Id FROM goods ORDER BY Id
SELECT ReceiptNumber , Date FROM receipts ORDER BY Date DESC LIMIT 1
placeholder
placeholder
SELECT Id FROM goods WHERE Flavor IN ('Cookie', 'Cake') AND Price BETWEEN 3 AND 7
SELECT ReceiptNumber, Date FROM receipts WHERE Date = (SELECT MAX(Date) FROM receipts)
SELECT c.FirstName, c.LastName FROM customers c JOIN receipts r ON c.Id = r.CustomerId ORDER BY r.Date LIMIT 1
SELECT c.FirstName, c.LastName FROM customers c JOIN receipts r ON c.Id = r.CustomerId ORDER BY r.Date ASC LIMIT 1
SELECT AVG(Price) FROM goods WHERE Flavor = 'blackberry' OR Flavor = 'blueberry'
SELECT AVG(Price) FROM goods WHERE Flavor = 'blackberry' OR Flavor = 'blueberry'
placeholder
SELECT MIN(Price) FROM goods WHERE Flavor = 'cheese'
SELECT MAX(Price) AS HighestPrice, MIN(Price) AS LowestPrice, AVG(Price) AS AveragePrice, Flavor FROM goods GROUP BY Flavor ORDER BY Flavor
SELECT MAX( Price ) AS MaxPrice, MIN( Price ) AS MinPrice, AVG( Price ) AS AvgPrice, Flavor FROM goods GROUP BY Flavor ORDER BY Flavor
placeholder
SELECT MIN( Price ) AS LowestPrice, MAX( Price ) AS HighestPrice, Food FROM goods GROUP BY Food ORDER BY Food
placeholder
SELECT MIN( Price ) AS min_price, MAX( Price ) AS max_price, Food FROM goods GROUP BY Food ORDER BY Food
placeholder
SELECT Date FROM receipts GROUP BY Date ORDER BY COUNT(*) DESC LIMIT 3
placeholder
SELECT COUNT(DISTINCT CustomerId) AS distinct_customers_count, Date FROM receipts GROUP BY Date
SELECT Date FROM receipts GROUP BY Date ORDER BY COUNT(*) DESC LIMIT 3
SELECT Price FROM goods WHERE Flavor = 'cheese' ORDER BY Price ASC LIMIT 1
SELECT COUNT(*) AS customer_count, Date FROM receipts GROUP BY Date
placeholder
placeholder
placeholder
SELECT Id FROM goods WHERE Price > 2 * (SELECT AVG( Price ) FROM goods )
placeholder
SELECT Id FROM goods WHERE Price > (2 * (SELECT AVG( Price ) FROM goods ))
placeholder
placeholder
SELECT Id , Flavor , Food FROM goods ORDER BY Price
SELECT Id FROM goods WHERE Flavor = 'Cake' AND Price >= (SELECT AVG(Price) FROM goods WHERE Food = 'Tart')
placeholder
SELECT Id , Flavor , Food FROM goods ORDER BY Price
SELECT g.Flavor, COUNT(*) AS purchase_count FROM goods g JOIN items i ON g.Id = i.Item WHERE g.Flavor = 'chocolate' GROUP BY g.Id, g.Flavor HAVING COUNT(*) <= 10
SELECT g.Flavor FROM items i JOIN goods g ON i.Item = g.Id GROUP BY g.Id ORDER BY COUNT(*) DESC LIMIT 3
SELECT Flavor FROM goods WHERE Food = 'Cake' EXCEPT SELECT Flavor FROM goods WHERE Food = 'Tart'
SELECT Id, Flavor FROM goods WHERE Food = 'Cake' ORDER BY Flavor
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT COUNT(*) FROM `driver`
SELECT COUNT(*) FROM `driver`
placeholder
placeholder
SELECT AVG( Age ) AS average_age, Make FROM `driver` GROUP BY Make
placeholder
SELECT AVG(Laps) FROM driver WHERE Age < 20
SELECT AVG(Age) AS average_age, Make FROM driver GROUP BY Make
SELECT AVG(Laps) FROM driver WHERE Age < 20
SELECT Make FROM team GROUP BY Make HAVING COUNT(*) > 1
SELECT Make FROM `team` WHERE Car_Owner = Buddy Arrington
placeholder
placeholder
SELECT Manager , Sponsor FROM `team` ORDER BY Car_Owner
SELECT Manager , Sponsor FROM `team` ORDER BY Car_Owner
placeholder
placeholder
SELECT Driver FROM driver ORDER BY Age ASC
SELECT MAX(CAST(Points AS REAL)) AS Highest_Points, MIN(CAST(Points AS REAL)) AS Lowest_Points FROM driver
SELECT Driver FROM `driver` ORDER BY Age ASC
SELECT COUNT(*) FROM `driver` WHERE Points < 150
SELECT Make FROM team GROUP BY Make HAVING COUNT(*) > 1
SELECT Make FROM `team` WHERE Car_Owner = 'Buddy Arrington'
SELECT d.Driver, c.Country FROM `driver` d JOIN `country` c ON d.Country = c.Country_Id
SELECT Driver FROM driver ORDER BY Points DESC
SELECT d.Driver, c.Country FROM `driver` d JOIN `country` c ON d.Country = c.Country_Id
SELECT AVG(d.Age) FROM driver d JOIN country c ON d.Country = c.Country_Id WHERE c.Official_native_language = 'English'
SELECT AVG(d.Age) FROM driver d JOIN country c ON d.Country = c.Country_Id WHERE c.Official_native_language = 'English'
SELECT Driver FROM driver ORDER BY CAST(Points AS REAL) DESC
placeholder
placeholder
SELECT Make , COUNT(*) AS driver_count FROM `driver` GROUP BY Make
SELECT c.Capital FROM driver d JOIN country c ON d.Country = c.Country_Id ORDER BY d.Points DESC LIMIT 1
SELECT Make , COUNT(*) AS driver_count FROM `driver` GROUP BY Make
placeholder
SELECT Make FROM driver GROUP BY Make HAVING COUNT(*) >= 3
SELECT Make FROM driver GROUP BY Make HAVING COUNT(*) >= 3
placeholder
placeholder
SELECT DISTINCT c.Country FROM driver d JOIN country c ON d.Country = c.Country_Id WHERE CAST(d.Points AS REAL) > 150
placeholder
SELECT SUM(CAST(Points AS REAL)) AS Total_Points, AVG(CAST(Points AS REAL)) AS Average_Points FROM driver
placeholder
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT COUNT(*) FROM institution
SELECT COUNT(*) FROM institution
placeholder
placeholder
SELECT Name FROM institution ORDER BY Name ASC
SELECT Name FROM institution ORDER BY Name
SELECT Name FROM institution ORDER BY Founded ASC
SELECT Name FROM institution ORDER BY Founded
placeholder
SELECT City , Province FROM institution
SELECT City , Province FROM institution
SELECT MAX( Enrollment ), MIN( Enrollment ) FROM institution
SELECT MAX( Enrollment ) AS Maximum_Enrollment , MIN( Enrollment ) AS Minimum_Enrollment FROM institution
SELECT Affiliation FROM institution WHERE City != 'Vancouver'
SELECT Affiliation FROM institution WHERE City != 'Vancouver'
SELECT Stadium FROM institution ORDER BY Capacity DESC
placeholder
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1
placeholder
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1
placeholder
SELECT i.Name, c.Nickname FROM institution i JOIN Championship c ON i.Institution_ID = c.Institution_ID
SELECT c. Nickname FROM Championship c JOIN institution i ON c. Institution_ID = i. Institution_ID ORDER BY i. Enrollment ASC LIMIT 1
SELECT i.Name, c.Nickname FROM institution i JOIN Championship c ON i.Institution_ID = c.Institution_ID
SELECT c. Nickname FROM institution i JOIN Championship c ON i. Institution_ID = c. Institution_ID ORDER BY i. Enrollment ASC LIMIT 1
SELECT i.Name FROM institution i INNER JOIN Championship c ON i.Institution_ID = c.Institution_ID
SELECT SUM(c.Number_of_Championships) FROM institution i JOIN Championship c ON i.Institution_ID = c.Institution_ID WHERE i.Affiliation = 'Public'
SELECT COUNT(*) AS institution_count, Affiliation FROM institution GROUP BY Affiliation
SELECT SUM(c.Number_of_Championships) FROM institution i JOIN Championship c ON i.Institution_ID = c.Institution_ID WHERE i.Affiliation = 'public'
SELECT Affiliation , COUNT(*) AS Number_of_Institutions FROM institution GROUP BY Affiliation
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT c. Nickname FROM Championship c JOIN institution i ON c. Institution_ID = i. Institution_ID ORDER BY i. Capacity DESC
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT c.Nickname FROM Championship c JOIN institution i ON c.Institution_ID = i.Institution_ID ORDER BY i.Capacity DESC
SELECT Enrollment FROM institution WHERE City = 'Vancouver' OR City = 'Calgary'
SELECT SUM( Enrollment ) FROM institution WHERE City = 'Vancouver' OR City = 'Calgary'
SELECT CAST(Founded AS INTEGER) AS Year, COUNT(*) AS Number_of_Institutions FROM institution GROUP BY CAST(Founded AS INTEGER) HAVING COUNT(*) > 1
placeholder
SELECT COUNT(DISTINCT Province) FROM institution
SELECT COUNT(DISTINCT Province) FROM institution
SELECT * FROM Warehouses
SELECT i.Name FROM institution AS i JOIN Championship AS c ON i.Institution_ID = c.Institution_ID ORDER BY c.Number_of_Championships DESC
SELECT * FROM Warehouses
SELECT Province FROM institution WHERE Founded < 1920 INTERSECT SELECT Province FROM institution WHERE Founded > 1950
placeholder
SELECT DISTINCT b.Contents FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code WHERE w.Location = 'New York'
SELECT Contents FROM Boxes WHERE Value > 150
SELECT DISTINCT b.Contents FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code WHERE w.Location = 'New York'
placeholder
SELECT Contents FROM Boxes WHERE Value > 150
SELECT AVG(Value) AS AverageValue, SUM(Value) AS TotalValue FROM Boxes
SELECT Warehouse, AVG(Value) AS AverageValue FROM Boxes GROUP BY Warehouse
SELECT AVG(Value) AS AverageValue, Warehouse FROM Boxes GROUP BY Warehouse
SELECT AVG(Capacity) AS AverageCapacity, SUM(Capacity) AS TotalCapacity FROM Warehouses
SELECT AVG(Value) AS AverageValue, SUM(Value) AS TotalValue FROM Boxes
SELECT AVG(Capacity) AS AverageCapacity, SUM(Capacity) AS TotalCapacity FROM Warehouses
SELECT AVG(Value) AS AverageValue, MAX(Value) AS MaximumValue, Contents FROM Boxes GROUP BY Contents
SELECT AVG(Value) AS AverageValue, MAX(Value) AS MaximumValue, Contents FROM Boxes GROUP BY Contents
SELECT AVG(Value) FROM Boxes
SELECT Contents FROM Boxes ORDER BY Value DESC LIMIT 1
SELECT AVG(Value) FROM Boxes
SELECT Contents FROM Boxes GROUP BY Contents ORDER BY SUM(Value) DESC LIMIT 1
SELECT DISTINCT Contents FROM Boxes
SELECT DISTINCT Contents FROM Boxes
SELECT DISTINCT Location FROM Warehouses
SELECT COUNT(DISTINCT Contents) FROM Boxes
SELECT DISTINCT Location FROM Warehouses
SELECT COUNT(DISTINCT Contents) FROM Boxes
placeholder
SELECT b.Code FROM Boxes AS b JOIN Warehouses AS w ON b.Warehouse = w.Code WHERE w.Location = 'Chicago' OR w.Location = 'New York'
SELECT b.Code FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code WHERE w.Location = 'Chicago' OR w.Location = 'New York'
SELECT SUM(b.Value) FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code WHERE w.Location = 'Chicago' OR w.Location = 'New York'
SELECT SUM(b.Value) FROM Boxes AS b JOIN Warehouses AS w ON b.Warehouse = w.Code WHERE w.Location = 'Chicago' OR w.Location = 'New York'
SELECT DISTINCT b.Contents FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code WHERE w.Location = 'Chicago' OR w.Location = 'New York'
SELECT DISTINCT w.Code FROM Warehouses w JOIN Boxes b ON w.Code = b.Warehouse WHERE b.Contents = 'Rocks' OR b.Contents = 'Scissors'
SELECT DISTINCT Warehouse FROM Boxes WHERE Contents = 'Rocks' OR Contents = 'Scissors'
SELECT DISTINCT w.Location FROM Warehouses w JOIN Boxes b ON w.Code = b.Warehouse WHERE b.Contents = 'Rocks' OR b.Contents = 'Scissors'
SELECT Code, Contents FROM Boxes ORDER BY Value
SELECT Code, Contents FROM Boxes ORDER BY Value
SELECT Code, Contents FROM Boxes ORDER BY Value ASC LIMIT 1
SELECT DISTINCT b.Contents FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code WHERE w.Location != 'New York'
SELECT Code, Contents FROM Boxes ORDER BY Value ASC LIMIT 1
SELECT DISTINCT Contents FROM Boxes WHERE Value > (SELECT AVG(Value) FROM Boxes)
SELECT DISTINCT Contents FROM Boxes WHERE Value > (SELECT AVG(Value) FROM Boxes)
SELECT DISTINCT w.Location FROM Warehouses w JOIN Boxes b ON w.Code = b.Warehouse WHERE b.Contents = 'Rocks' OR b.Contents = 'Scissors'
SELECT DISTINCT Contents FROM Boxes ORDER BY Contents
placeholder
placeholder
SELECT DISTINCT Contents FROM Boxes ORDER BY Contents
placeholder
placeholder
SELECT SUM(b.Value) FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code ORDER BY w.Capacity DESC LIMIT 1
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT SUM(Value) AS TotalValue, COUNT(*) AS NumberOfBoxes, Contents FROM Boxes GROUP BY Contents
SELECT SUM(Capacity) FROM Warehouses
SELECT SUM(Capacity) FROM Warehouses
SELECT Location, SUM(Capacity) AS TotalCapacity, AVG(Capacity) AS AverageCapacity, MAX(Capacity) AS MaximumCapacity FROM Warehouses GROUP BY Location
SELECT Location, SUM(Capacity) AS TotalCapacity, AVG(Capacity) AS AverageCapacity, MAX(Capacity) AS MaximumCapacity FROM Warehouses GROUP BY Location
placeholder
SELECT w.Location, MAX(b.Value) AS MostExpensiveBoxValue FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code GROUP BY w.Location
SELECT MAX(b.Value) FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code GROUP BY w.Location
SELECT Contents, SUM(Value) AS TotalValue, COUNT(*) AS NumberOfBoxes FROM Boxes GROUP BY Contents
SELECT COUNT(*) AS box_count, Warehouse FROM Boxes GROUP BY Warehouse
SELECT w.Code, COUNT(b.Code) AS BoxCount FROM Warehouses w JOIN Boxes b ON w.Code = b.Warehouse GROUP BY w.Code
SELECT COUNT(DISTINCT Warehouse) FROM Boxes WHERE Contents = 'Rocks'
SELECT b.Code FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code WHERE w.Location = 'Chicago'
SELECT b.Code, w.Location FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code
SELECT COUNT(DISTINCT w.Location) FROM Warehouses w JOIN Boxes b ON b.Warehouse = w.Code WHERE b.Contents = 'Rocks'
SELECT Boxes.Code FROM Boxes JOIN Warehouses ON Boxes.Warehouse = Warehouses.Code WHERE Warehouses.Location = 'Chicago'
SELECT COUNT(*) AS box_count, Warehouse FROM Boxes GROUP BY Warehouse
SELECT COUNT(*) AS box_count, Warehouse FROM Boxes GROUP BY Warehouse
SELECT b.Code, w.Location FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code
SELECT COUNT(DISTINCT Contents) AS distinct_content_types, Warehouse FROM Boxes GROUP BY Warehouse
SELECT COUNT(DISTINCT Contents) AS distinct_content_count, Warehouse FROM Boxes GROUP BY Warehouse
SELECT SUM(b.Value) FROM Boxes AS b JOIN Warehouses AS w ON b.Warehouse = w.Code WHERE w.Location != 'Chicago'
SELECT University_Name , City , State FROM university ORDER BY University_Name
SELECT University_Name, City, State FROM university ORDER BY University_Name ASC
SELECT COUNT(*) FROM university WHERE State = 'Illinois' OR State = 'Ohio'
SELECT COUNT(*) FROM university WHERE State = 'Illinois' OR State = 'Ohio'
SELECT w.Code FROM Warehouses w JOIN Boxes b ON w.Code = b.Warehouse GROUP BY w.Code HAVING COUNT(b.Code) > w.Capacity
SELECT MAX( Enrollment ) AS max_enrollment, AVG( Enrollment ) AS avg_enrollment, MIN( Enrollment ) AS min_enrollment FROM university
SELECT DISTINCT Home_Conference FROM university
SELECT SUM(b.Value) FROM Boxes AS b JOIN Warehouses AS w ON b.Warehouse = w.Code WHERE w.Location != 'Chicago'
SELECT DISTINCT Home_Conference FROM university
SELECT Home_Conference, COUNT(*) AS University_Count FROM university GROUP BY Home_Conference
SELECT MAX(Enrollment) AS max_enrollment, AVG(Enrollment) AS avg_enrollment, MIN(Enrollment) AS min_enrollment FROM university
SELECT Team_Name FROM university WHERE Enrollment > (SELECT AVG( Enrollment ) FROM university )
SELECT City FROM university GROUP BY City ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) AS university_count, Home_Conference FROM university GROUP BY Home_Conference
SELECT Team_Name FROM university WHERE Enrollment > (SELECT AVG( Enrollment ) FROM university )
SELECT State , COUNT(*) AS university_count FROM university GROUP BY State ORDER BY university_count DESC LIMIT 1
SELECT Home_Conference, AVG(Enrollment) AS Average_Enrollment FROM university GROUP BY Home_Conference HAVING AVG(Enrollment) > 2000
SELECT Home_Conference FROM university GROUP BY Home_Conference HAVING AVG(Enrollment) > 2000
placeholder
SELECT Home_Conference FROM university GROUP BY Home_Conference ORDER BY SUM(Enrollment) ASC
SELECT Major_Name , Major_Code FROM major ORDER BY Major_Code
SELECT Major_Name , Major_Code FROM major ORDER BY Major_Code
SELECT Home_Conference FROM university GROUP BY Home_Conference ORDER BY SUM(Enrollment) ASC LIMIT 1
SELECT u.University_Name FROM major_ranking mr JOIN university u ON mr.University_ID = u.University_ID WHERE mr.Rank = 1 GROUP BY u.University_ID ORDER BY COUNT(mr.Major_ID) DESC LIMIT 1
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT u.University_Name, o.Rank FROM university u JOIN overall_ranking o ON u.University_ID = o.University_ID WHERE u.State = 'Wisconsin'
SELECT u.University_Name FROM university u JOIN overall_ranking o ON u.University_ID = o.University_ID ORDER BY o.Research_point DESC LIMIT 1
SELECT u.University_Name FROM university u JOIN overall_ranking or1 ON u.University_ID = or1.University_ID ORDER BY or1.Reputation_point ASC
SELECT u.University_Name FROM overall_ranking o JOIN university u ON o.University_ID = u.University_ID ORDER BY o.Research_point DESC LIMIT 1
SELECT u.University_Name FROM university u JOIN overall_ranking o ON u.University_ID = o.University_ID ORDER BY o.Reputation_point
placeholder
SELECT SUM(u.Enrollment) FROM overall_ranking o JOIN university u ON o.University_ID = u.University_ID WHERE o.Rank <= 5
placeholder
SELECT State FROM university WHERE Enrollment < 3000 GROUP BY State HAVING COUNT(*) > 2
SELECT State FROM university WHERE Enrollment < 3000 GROUP BY State HAVING COUNT(*) > 2
SELECT Title FROM Movies WHERE Rating IS NULL
placeholder
SELECT Title FROM Movies WHERE Rating = 'G'
placeholder
SELECT Title FROM Movies WHERE Rating = 'G'
placeholder
SELECT m.Title FROM MovieTheaters mt JOIN Movies m ON mt.Movie = m.Code WHERE mt.Name = 'Odeon'
SELECT m.Title, mt.Name FROM Movies m JOIN MovieTheaters mt ON m.Code = mt.Movie
SELECT M.Title, MT.Name FROM Movies M JOIN MovieTheaters MT ON M.Code = MT.Movie
SELECT COUNT(*) FROM Movies WHERE Rating = 'G'
SELECT COUNT(*) FROM Movies WHERE Rating = 'G'
SELECT u.University_Name, o.Citation_point FROM university u JOIN overall_ranking o ON u.University_ID = o.University_ID ORDER BY o.Reputation_point DESC LIMIT 3
SELECT u.University_Name, o.Citation_point FROM university u JOIN overall_ranking o ON u.University_ID = o.University_ID ORDER BY o.Reputation_point DESC LIMIT 3
SELECT COUNT(DISTINCT Movie) FROM MovieTheaters
SELECT COUNT(DISTINCT Name) FROM MovieTheaters
SELECT m.Title FROM Movies m JOIN MovieTheaters mt ON m.Code = mt.Movie WHERE mt.Name = 'Odeon'
SELECT COUNT(DISTINCT Movie) FROM MovieTheaters
SELECT Title FROM Movies WHERE Rating IS NULL
SELECT COUNT(*) FROM MovieTheaters
SELECT Rating FROM Movies WHERE Title LIKE '%Citizen%'
SELECT m.Title FROM Movies m JOIN MovieTheaters mt ON m.Code = mt.Movie WHERE mt.Name = 'Odeon' OR mt.Name = 'Imperial'
SELECT MT.Name FROM MovieTheaters MT JOIN Movies M ON MT.Movie = M.Code WHERE M.Rating = 'G' OR M.Rating = 'PG'
SELECT Rating FROM Movies WHERE Title LIKE '%Citizen%'
SELECT MT.Name FROM MovieTheaters MT JOIN Movies M ON MT.Movie = M.Code WHERE M.Rating = 'G' OR M.Rating = 'PG'
SELECT Title FROM Movies ORDER BY Title
SELECT m.Title FROM Movies m JOIN MovieTheaters mt ON m.Code = mt.Movie WHERE mt.Name = 'Odeon' OR mt.Name = 'Imperial'
SELECT Title FROM Movies ORDER BY Title
SELECT Title FROM Movies ORDER BY Rating
SELECT COUNT(DISTINCT Movie) FROM MovieTheaters
placeholder
SELECT Title FROM Movies ORDER BY Rating
SELECT m.Title FROM Movies m JOIN MovieTheaters mt ON m.Code = mt.Movie GROUP BY m.Title ORDER BY COUNT(mt.Code) DESC LIMIT 1
placeholder
SELECT Name FROM MovieTheaters GROUP BY Name ORDER BY COUNT(*) DESC LIMIT 1
placeholder
placeholder
placeholder
SELECT COUNT(*) AS movie_count, Rating FROM Movies GROUP BY Rating
SELECT COUNT(*) AS movie_count, Rating FROM Movies GROUP BY Rating
SELECT COUNT(*) FROM Movies WHERE Rating IS NOT NULL
SELECT COUNT(*) FROM Movies WHERE Rating IS NOT NULL
SELECT Name FROM MovieTheaters WHERE Movie IS NULL
SELECT Name FROM MovieTheaters WHERE Movie IS NULL
SELECT Name FROM MovieTheaters
SELECT Title FROM Movies
SELECT MT.Name FROM MovieTheaters MT JOIN Movies M ON MT.Movie = M.Code WHERE M.Rating = 'G'
SELECT mt.Name FROM MovieTheaters mt JOIN Movies m ON mt.Movie = m.Code WHERE m.Rating = 'G'
SELECT m.Title FROM Movies m JOIN MovieTheaters mt ON m.Code = mt.Movie GROUP BY m.Title ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT Rating FROM Movies
placeholder
SELECT DISTINCT Rating FROM Movies
SELECT Title FROM Movies
SELECT * FROM Movies WHERE Rating IS NULL
SELECT * FROM Movies WHERE Rating IS NULL
SELECT Title FROM Movies WHERE NOT EXISTS (SELECT 1 FROM MovieTheaters WHERE MovieTheaters.Movie = Movies.Code)
SELECT c.Name FROM Package p JOIN Client c ON p.Recipient = c.AccountNumber ORDER BY p.Weight DESC LIMIT 1
SELECT SUM(p.Weight) FROM Package p JOIN Client c ON p.Sender = c.AccountNumber WHERE c.Name = 'Leo Wong'
SELECT c.Name FROM Package p JOIN Client c ON p.Recipient = c.AccountNumber ORDER BY p.Weight DESC LIMIT 1
SELECT Position FROM Employee WHERE Name = 'Amy Wong'
SELECT Position FROM Employee WHERE Name = 'Amy Wong'
SELECT Position, Salary FROM Employee WHERE Name = 'Turanga Leela'
SELECT Salary, Position FROM Employee WHERE Name = 'Turanga Leela'
placeholder
SELECT Title FROM Movies WHERE NOT EXISTS ( SELECT 1 FROM MovieTheaters WHERE MovieTheaters.Movie = Movies.Code )
SELECT AVG(Salary) FROM Employee WHERE Position = 'Intern'
SELECT AVG(Salary) FROM Employee WHERE Position = 'Intern'
SELECT hc.Level FROM Employee e JOIN Has_Clearance hc ON e.EmployeeID = hc.Employee WHERE e.Position = 'Physician'
SELECT SUM(p.Weight) FROM Package p JOIN Client c ON p.Sender = c.AccountNumber WHERE c.Name = 'Leo Wong'
SELECT p.PackageNumber FROM Package p JOIN Client c ON p.Recipient = c.AccountNumber WHERE c.Name = 'Leo Wong'
SELECT p.PackageNumber FROM Client c JOIN Package p ON c.AccountNumber = p.Recipient WHERE c.Name = 'Leo Wong'
SELECT COUNT(*) FROM Package JOIN Client AS SenderClient ON Package.Sender = SenderClient.AccountNumber JOIN Client AS RecipientClient ON Package.Recipient = RecipientClient.AccountNumber WHERE SenderClient.Name = 'Ogden Wernstrom' AND RecipientClient.Name = 'Leo Wong'
SELECT p.Contents FROM Package p JOIN Client c ON p.Sender = c.AccountNumber WHERE c.Name = 'John Zoidfarb'
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT PackageNumber, Weight FROM Package ORDER BY Weight ASC LIMIT 3
SELECT PackageNumber, Weight FROM Package ORDER BY Weight ASC LIMIT 3
placeholder
SELECT p.Contents FROM Package p JOIN Client c ON p.Sender = c.AccountNumber WHERE c.Name = 'John Zoidfarb'
SELECT c.Name, COUNT(p.PackageNumber) AS PackageCount FROM Package p JOIN Client c ON p.Recipient = c.AccountNumber GROUP BY c.Name ORDER BY PackageCount ASC LIMIT 1
SELECT c.Name, COUNT(p.PackageNumber) AS PackageCount FROM Package p JOIN Client c ON p.Sender = c.AccountNumber GROUP BY c.Name ORDER BY PackageCount DESC LIMIT 1
SELECT c.Name FROM Package p JOIN Client c ON p.Sender = c.AccountNumber GROUP BY c.Name HAVING COUNT(p.PackageNumber) > 1
SELECT Coordinates FROM Planet WHERE Name = 'Mars'
SELECT Name, Coordinates FROM Planet ORDER BY Name
SELECT Coordinates FROM Planet WHERE Name = 'Mars'
SELECT Name, Coordinates FROM Planet ORDER BY Name ASC
SELECT S.ShipmentID FROM Shipment S JOIN Employee E ON S.Manager = E.EmployeeID WHERE E.Name = 'Phillip J. Fry'
SELECT Date FROM Shipment
SELECT S.ShipmentID FROM Shipment S JOIN Employee E ON S.Manager = E.EmployeeID WHERE E.Name = 'Phillip J Fry'
placeholder
placeholder
SELECT Date FROM Shipment
SELECT S.ShipmentID FROM Shipment S JOIN Planet P ON S.Planet = P.PlanetID WHERE P.Name = 'Mars'
SELECT S.ShipmentID FROM Shipment S JOIN Planet P ON S.Planet = P.PlanetID WHERE P.Name = 'Mars'
placeholder
placeholder
placeholder
SELECT COUNT(*) AS shipment_count, Planet FROM Shipment GROUP BY Planet
SELECT s.ShipmentID FROM Shipment s JOIN Planet p ON s.Planet = p.PlanetID JOIN Employee e ON s.Manager = e.EmployeeID WHERE p.Name = 'Mars' AND e.Name = 'Turanga Leela'
SELECT p.Name FROM Shipment s JOIN Planet p ON s.Planet = p.PlanetID GROUP BY p.Name ORDER BY COUNT(s.ShipmentID) DESC LIMIT 1
SELECT e.Name, COUNT(s.ShipmentID) AS NumberOfShipments FROM Shipment s JOIN Employee e ON s.Manager = e.EmployeeID GROUP BY e.EmployeeID, e.Name
SELECT COUNT(s.ShipmentID) AS NumberOfShipments, e.Name AS ManagerName FROM Shipment s JOIN Employee e ON s.Manager = e.EmployeeID GROUP BY e.Name
SELECT SUM(p.Weight) FROM Package p JOIN Shipment s ON p.Shipment = s.ShipmentID JOIN Planet pl ON s.Planet = pl.PlanetID WHERE pl.Name = 'Mars'
placeholder
placeholder
SELECT s.ShipmentID FROM Shipment s JOIN Employee e ON s.Manager = e.EmployeeID JOIN Planet p ON s.Planet = p.PlanetID WHERE e.Name = 'Turanga Leela' AND p.Name = 'Mars'
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT PackageNumber, Weight FROM Package WHERE Weight BETWEEN 10 AND 30
placeholder
placeholder
placeholder
SELECT PackageNumber, Weight FROM Package WHERE Weight BETWEEN 10 AND 30
placeholder
placeholder
SELECT e.Name FROM Has_Clearance hc JOIN Planet p ON hc.Planet = p.PlanetID JOIN Employee e ON hc.Employee = e.EmployeeID WHERE p.Name = 'Omega III'
SELECT Name FROM Employee WHERE Salary BETWEEN 5000 AND 10000
SELECT Name FROM Employee WHERE Salary BETWEEN 5000 AND 10000
SELECT DISTINCT e.Name FROM Employee e JOIN Has_Clearance hc ON e.EmployeeID = hc.Employee JOIN Planet p ON hc.Planet = p.PlanetID WHERE p.Name = 'Omega III'
placeholder
SELECT e.Name FROM Employee e EXCEPT SELECT e.Name FROM Employee e JOIN Has_Clearance hc ON e.EmployeeID = hc.Employee JOIN Planet p ON hc.Planet = p.PlanetID WHERE p.Name = 'Mars'
SELECT COUNT(*) FROM game
placeholder
SELECT Name FROM Employee WHERE Salary > (SELECT AVG(Salary) FROM Employee) OR Salary > 5000
SELECT p.Name FROM Planet p JOIN Has_Clearance hc ON p.PlanetID = hc.Planet GROUP BY p.Name HAVING COUNT(hc.Employee) = 1
SELECT COUNT(*) FROM game
SELECT Title , Developers FROM game ORDER BY Units_sold_Millions DESC
SELECT Name FROM Employee WHERE Salary > (SELECT AVG(Salary) FROM Employee) OR Salary > 5000
placeholder
SELECT Title , Developers FROM game ORDER BY Units_sold_Millions DESC
SELECT Platform_name , Market_district FROM platform
SELECT AVG(Units_sold_Millions) FROM game WHERE Developers != 'Nintendo'
SELECT Platform_name , Platform_ID FROM platform WHERE Download_rank = 1
SELECT Platform_name , Market_district FROM platform
SELECT Platform_name , Platform_ID FROM platform WHERE Download_rank = 1
SELECT AVG(Units_sold_Millions) FROM game WHERE Developers != 'Nintendo'
SELECT COUNT(*) FROM player WHERE Rank_of_the_year < 3
SELECT MAX( Rank_of_the_year ) AS max_rank, MIN( Rank_of_the_year ) AS min_rank FROM player
SELECT MAX( Rank_of_the_year ), MIN( Rank_of_the_year ) FROM player
SELECT COUNT(*) FROM player WHERE Rank_of_the_year <= 3
SELECT Player_name FROM player ORDER BY Player_name ASC
placeholder
SELECT Player_name FROM player ORDER BY Player_name
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC
placeholder
SELECT g.Title, p.Platform_name FROM game AS g JOIN platform AS p ON g.Platform_ID = p.Platform_ID
SELECT g.Title, p.Platform_name FROM game g JOIN platform p ON g.Platform_ID = p.Platform_ID
SELECT DISTINCT g.Developers FROM player p JOIN game_player gp ON p.Player_ID = gp.Player_ID JOIN game g ON gp.Game_ID = g.Game_ID WHERE p.College = 'Auburn'
SELECT Franchise, COUNT(*) AS Number_of_Games FROM game GROUP BY Franchise
SELECT g.Title FROM game g JOIN platform p ON g.Platform_ID = p.Platform_ID WHERE p.Market_district = 'Asia' OR p.Market_district = 'USA'
SELECT COUNT(*) AS game_count, Franchise FROM game GROUP BY Franchise
placeholder
placeholder
SELECT Franchise FROM game GROUP BY Franchise ORDER BY COUNT(*) DESC LIMIT 1
placeholder
placeholder
SELECT g.Title FROM game g JOIN platform p ON g.Platform_ID = p.Platform_ID WHERE p.Market_district = 'Asia' OR p.Market_district = 'USA'
placeholder
SELECT Franchise FROM game GROUP BY Franchise ORDER BY COUNT(*) DESC LIMIT 1
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(Game_ID) >= 2
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*) >= 2
SELECT DISTINCT Franchise FROM game
SELECT DISTINCT Franchise FROM game
SELECT p. Player_name FROM player p LEFT JOIN game_player gp ON p. Player_ID = gp. Player_ID WHERE gp. Game_ID IS NULL
SELECT Name FROM press ORDER BY Year_Profits_billion DESC
SELECT Name FROM press ORDER BY Year_Profits_billion DESC
SELECT DISTINCT g.Title FROM game g JOIN game_player gp ON g.Game_ID = gp.Game_ID JOIN player p ON gp.Player_ID = p.Player_ID WHERE p.College = 'Oklahoma' OR p.College = 'Auburn'
SELECT Name FROM press WHERE Year_Profits_billion > 15 OR Month_Profits_billion > 1
SELECT AVG(Year_Profits_billion) AS average_profit, MAX(Year_Profits_billion) AS maximum_profit FROM press
SELECT Name FROM press ORDER BY Month_Profits_billion DESC LIMIT 1
SELECT Name FROM press ORDER BY Month_Profits_billion DESC LIMIT 1
placeholder
SELECT AVG( Year_Profits_billion ) AS average_yearly_profit, MAX( Year_Profits_billion ) AS maximum_yearly_profit FROM press GROUP BY Press_ID
placeholder
SELECT COUNT(*) FROM author WHERE Age < 30
placeholder
placeholder
SELECT COUNT(*) FROM author WHERE Age < 30
SELECT AVG(Age) AS Average_Age, Gender FROM author GROUP BY Gender
SELECT AVG(Age) AS Average_Age, Gender FROM author GROUP BY Gender
placeholder
SELECT COUNT(*) AS author_count, Gender FROM author WHERE Age > 30 GROUP BY Gender
SELECT COUNT(*) AS number_of_authors, Gender FROM author WHERE Age > 30 GROUP BY Gender
SELECT Title FROM book ORDER BY Release_date DESC
SELECT COUNT(*) AS Number_of_Books, Book_Series FROM book GROUP BY Book_Series
SELECT Title FROM book ORDER BY Release_date DESC
SELECT COUNT(*) AS count, Book_Series FROM book GROUP BY Book_Series
placeholder
SELECT Title, Release_date FROM book ORDER BY CAST(Sale_Amount AS REAL) DESC LIMIT 5
SELECT Name FROM press ORDER BY Month_Profits_billion DESC LIMIT 1 UNION SELECT Name FROM press ORDER BY Month_Profits_billion ASC LIMIT 1
SELECT a.Name FROM author a JOIN book b ON a.Author_ID = b.Author_ID GROUP BY a.Author_ID, a.Name HAVING COUNT(b.Book_ID) > 1
placeholder
placeholder
SELECT a.Name FROM author a LEFT JOIN book b ON a.Author_ID = b.Author_ID WHERE b.Author_ID IS NULL
placeholder
SELECT a.Name FROM author a JOIN book b ON a.Author_ID = b.Author_ID GROUP BY a.Author_ID, a.Name HAVING COUNT(b.Book_ID) > 1
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT p.Name, COUNT(*) AS Book_Count FROM press p JOIN book b ON p.Press_ID = b.Press_ID WHERE CAST(b.Sale_Amount AS REAL) > 1000 GROUP BY p.Name
placeholder
placeholder
placeholder
SELECT a.Name, a.Gender FROM book b JOIN author a ON b.Author_ID = a.Author_ID GROUP BY a.Name, a.Gender ORDER BY COUNT(b.Book_ID) DESC LIMIT 1
placeholder
SELECT COUNT(*) FROM Authors
SELECT a.Name, a.Gender FROM author a JOIN book b ON a.Author_ID = b.Author_ID GROUP BY a.Author_ID ORDER BY COUNT(*) DESC LIMIT 1
placeholder
SELECT author_name FROM Authors
SELECT author_name, other_details FROM Authors
SELECT other_details FROM Authors WHERE author_name = 'Addison Denesik'
SELECT p.Name, p.Year_Profits_billion FROM press p JOIN book b ON p.Press_ID = b.Press_ID GROUP BY p.Press_ID HAVING COUNT(b.Book_ID) > 2
SELECT p.Name, p.Year_Profits_billion FROM book b JOIN press p ON b.Press_ID = p.Press_ID GROUP BY p.Press_ID HAVING COUNT(b.Book_ID) > 2
SELECT author_name FROM Documents WHERE document_id = 4
SELECT COUNT(*) FROM Documents
SELECT author_name FROM Documents WHERE document_name = 'Travel to Brazil'
SELECT COUNT(*) FROM Documents WHERE author_name = 'Era Kerluke'
SELECT document_name, document_description FROM Documents
SELECT document_id, document_name FROM Documents WHERE author_name = 'Bianka Cummings'
SELECT author_name, other_details FROM Documents WHERE document_name = 'Travel to China'
SELECT A.author_name, COUNT(D.document_id) AS document_count FROM Authors A JOIN Documents D ON A.author_name = D.author_name GROUP BY A.author_name
placeholder
SELECT next_process_id, process_name, process_description FROM Business_Processes WHERE process_id = 9
SELECT a.author_name FROM Authors a JOIN Documents d ON a.author_name = d.author_name GROUP BY a.author_name HAVING COUNT(d.document_id) >= 2
SELECT COUNT(*) FROM Business_Processes
SELECT process_outcome_code, process_outcome_description FROM Process_Outcomes
placeholder
SELECT COUNT(*) AS number_of_process_outcomes FROM Process_Outcomes
SELECT process_outcome_description FROM Process_Outcomes WHERE process_outcome_code = 'working'
SELECT COUNT(*) AS number_of_process_status FROM Process_Status
SELECT process_status_description FROM Process_Status WHERE process_status_code = 'ct'
SELECT process_status_code, process_status_description FROM Process_Status
SELECT staff_details FROM Staff WHERE staff_id = 100
SELECT COUNT(*) FROM Staff
SELECT staff_id, staff_details FROM Staff
SELECT staff_role_code, staff_role_description FROM Ref_Staff_Roles
SELECT staff_role_description FROM Ref_Staff_Roles WHERE staff_role_code = 'HR'
SELECT COUNT(*) FROM Ref_Staff_Roles
placeholder
SELECT COUNT(DISTINCT document_id) FROM Documents_Processes
SELECT document_id FROM Documents WHERE NOT EXISTS ( SELECT 1 FROM Documents_Processes WHERE Documents_Processes.document_id = Documents.document_id )
SELECT process_id, COUNT(*) AS document_count FROM Documents_Processes GROUP BY process_id
placeholder
SELECT process_id FROM Business_Processes EXCEPT SELECT process_id FROM Documents_Processes
SELECT staff_id, COUNT(*) AS number_of_document_processes FROM Staff_in_Processes GROUP BY staff_id
SELECT bp.process_name FROM Documents d JOIN Documents_Processes dp ON d.document_id = dp.document_id JOIN Business_Processes bp ON dp.process_id = bp.process_id WHERE d.document_name = 'Travel to Brazil'
SELECT COUNT(*) FROM Agencies
SELECT COUNT(*) FROM Agencies
SELECT agency_id, agency_details FROM Agencies
placeholder
placeholder
SELECT agency_id, agency_details FROM Agencies
SELECT COUNT(*) FROM Clients
SELECT COUNT(*) FROM `Clients`
SELECT client_id, client_details FROM Clients
SELECT client_id, client_details FROM Clients
SELECT COUNT(*) AS client_count, agency_id FROM Clients GROUP BY agency_id
placeholder
SELECT agency_id, COUNT(*) AS number_of_clients FROM Clients GROUP BY agency_id
SELECT A.agency_id, A.agency_details FROM Agencies AS A JOIN Clients AS C ON A.agency_id = C.agency_id GROUP BY A.agency_id ORDER BY COUNT(C.client_id) DESC LIMIT 1
placeholder
SELECT a.agency_details FROM Clients c JOIN Agencies a ON c.agency_id = a.agency_id WHERE c.client_details LIKE '%Mac%'
SELECT a.agency_details FROM Agencies a JOIN Clients c ON a.agency_id = c.agency_id WHERE c.client_details = 'Mac'
placeholder
SELECT c.client_details, a.agency_details FROM Clients c JOIN Agencies a ON c.agency_id = a.agency_id
SELECT a.agency_id, a.agency_details FROM Agencies a JOIN Clients c ON a.agency_id = c.agency_id GROUP BY a.agency_id ORDER BY COUNT(c.client_id) DESC LIMIT 1
SELECT C.client_details, A.agency_details FROM Clients C JOIN Agencies A ON C.agency_id = A.agency_id
SELECT sic_code, COUNT(*) AS client_count FROM Clients GROUP BY sic_code
SELECT a.agency_id, a.agency_details FROM Agencies a JOIN Clients c ON a.agency_id = c.agency_id GROUP BY a.agency_id HAVING COUNT(*) >= 2
SELECT COUNT(*) AS client_count, sic_code FROM Clients GROUP BY sic_code
SELECT client_id, client_details FROM Clients WHERE sic_code = 'Bad'
SELECT client_details FROM Clients WHERE sic_code = 'Bad'
SELECT a.agency_id, a.agency_details FROM Agencies a INNER JOIN Clients c ON a.agency_id = c.agency_id
SELECT A.agency_id, A.agency_details FROM Agencies A INNER JOIN Clients C ON A.agency_id = C.agency_id
SELECT COUNT(*) FROM `Invoices`
SELECT COUNT(*) FROM `Invoices`
SELECT invoice_id, invoice_status, invoice_details FROM Invoices
SELECT COUNT(*) AS invoice_count, client_id FROM Invoices GROUP BY client_id
SELECT c.client_id, COUNT(i.invoice_id) AS invoice_count FROM Clients c JOIN Invoices i ON c.client_id = i.client_id GROUP BY c.client_id
SELECT c.client_id, c.client_details FROM Clients c JOIN Invoices i ON c.client_id = i.client_id GROUP BY c.client_id, c.client_details ORDER BY COUNT(i.invoice_id) DESC LIMIT 1
SELECT invoice_id, invoice_status, invoice_details FROM Invoices
SELECT client_id FROM Invoices GROUP BY client_id HAVING COUNT(*) >= 2
SELECT invoice_status, COUNT(*) AS invoice_count FROM Invoices GROUP BY invoice_status
placeholder
SELECT c.client_id FROM Clients c JOIN Invoices i ON c.client_id = i.client_id GROUP BY c.client_id HAVING COUNT(i.invoice_id) >= 2
SELECT c.client_id, c.client_details FROM Clients c JOIN Invoices i ON c.client_id = i.client_id GROUP BY c.client_id ORDER BY COUNT(i.invoice_id) DESC LIMIT 1
SELECT COUNT(*) AS invoice_count, invoice_status FROM Invoices GROUP BY invoice_status
SELECT invoice_status FROM Invoices GROUP BY invoice_status ORDER BY COUNT(*) DESC LIMIT 1
SELECT invoice_status FROM Invoices GROUP BY invoice_status ORDER BY COUNT(*) DESC LIMIT 1
SELECT meeting_type, other_details FROM Meetings
placeholder
SELECT meeting_outcome, purpose_of_meeting FROM Meetings
SELECT meeting_outcome, purpose_of_meeting FROM Meetings
placeholder
SELECT COUNT(*) FROM `Payments`
SELECT meeting_type, purpose_of_meeting FROM Meetings
SELECT p.payment_id, p.payment_details FROM Payments p JOIN Invoices i ON p.invoice_id = i.invoice_id WHERE i.invoice_status = 'Working'
placeholder
SELECT p.payment_id, p.invoice_id, i.invoice_details FROM Payments p JOIN Invoices i ON p.invoice_id = i.invoice_id
SELECT COUNT(*) FROM Payments
SELECT i.invoice_id, i.invoice_status FROM Invoices i LEFT JOIN Payments p ON i.invoice_id = p.invoice_id WHERE p.invoice_id IS NULL
placeholder
SELECT DISTINCT p.invoice_id, i.invoice_status FROM Payments p JOIN Invoices i ON p.invoice_id = i.invoice_id
SELECT payment_id, invoice_id, payment_details FROM Payments
SELECT COUNT(*) AS payment_count, invoice_id FROM Payments GROUP BY invoice_id
SELECT COUNT(*) FROM `Staff`
SELECT p.payment_id, p.payment_details FROM Payments p JOIN Invoices i ON p.invoice_id = i.invoice_id WHERE i.invoice_status = 'Working'
placeholder
SELECT COUNT(*) FROM `Staff`
SELECT agency_id, COUNT(*) AS number_of_staff FROM Staff GROUP BY agency_id
SELECT agency_id, COUNT(*) AS number_of_staff FROM Staff GROUP BY agency_id
SELECT meeting_outcome, COUNT(*) AS meeting_count FROM Meetings GROUP BY meeting_outcome
SELECT COUNT(*) AS meeting_count, meeting_outcome FROM Meetings GROUP BY meeting_outcome
placeholder
SELECT COUNT(*) AS meeting_count, client_id FROM Meetings GROUP BY client_id
SELECT client_id, COUNT(*) AS number_of_meetings FROM Meetings GROUP BY client_id
placeholder
SELECT COUNT(*) AS meeting_count, meeting_type FROM Meetings GROUP BY meeting_type
placeholder
SELECT a.agency_id, a.agency_details FROM Agencies a JOIN Staff s ON a.agency_id = s.agency_id GROUP BY a.agency_id ORDER BY COUNT(s.staff_id) DESC LIMIT 1
placeholder
SELECT m.meeting_id, m.meeting_outcome, m.meeting_type, c.client_details FROM Meetings m JOIN Clients c ON m.client_id = c.client_id
SELECT meeting_id, COUNT(*) AS staff_count FROM Staff_in_Meetings GROUP BY meeting_id
SELECT M.meeting_id, M.meeting_outcome, M.meeting_type, C.client_details FROM Meetings M JOIN Clients C ON M.client_id = C.client_id
SELECT m.meeting_id, COUNT(sim.staff_id) AS number_of_staff FROM Meetings m JOIN Staff_in_Meetings sim ON m.meeting_id = sim.meeting_id GROUP BY m.meeting_id
placeholder
SELECT COUNT(*) FROM `Staff` WHERE NOT EXISTS ( SELECT 1 FROM `Staff_in_Meetings` WHERE `Staff_in_Meetings`.`staff_id` = `Staff`.`staff_id` )
placeholder
SELECT COUNT(DISTINCT staff_id) FROM `Staff_in_Meetings`
SELECT meeting_type, COUNT(*) AS meeting_count FROM Meetings GROUP BY client_id, meeting_type
SELECT COUNT(DISTINCT staff_id) FROM `Staff_in_Meetings`
placeholder
placeholder
placeholder
placeholder
placeholder
...
placeholder
placeholder
placeholder
placeholder
