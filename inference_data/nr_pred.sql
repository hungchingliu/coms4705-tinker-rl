SELECT Name FROM club ORDER BY Name
SELECT Name FROM club ORDER BY Name
SELECT Manager , Captain FROM club
SELECT Name FROM club WHERE Manufacturer != 'Nike'
SELECT COUNT(*) FROM club
SELECT COUNT(*) FROM club
SELECT Manager , Captain FROM club
SELECT Name FROM club WHERE Manufacturer != Nike
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT DISTINCT Country FROM player WHERE Earnings > 1200000
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT p.Name AS Player_Name, c.Name AS Club_Name FROM player p JOIN club c ON p.Club_ID = c.Club_ID
SELECT Country FROM player WHERE Wins_count > 2 ORDER BY Earnings DESC LIMIT 1
SELECT Country FROM player WHERE Wins_count > 2 ORDER BY Earnings DESC LIMIT 1
SELECT DISTINCT Country FROM player WHERE Earnings > 1200000
SELECT c.Name FROM club c JOIN player p ON c.Club_ID = p.Club_ID GROUP BY c.Club_ID ORDER BY AVG(p.Earnings) DESC
SELECT c.Name FROM club c JOIN player p ON c.Club_ID = p.Club_ID GROUP BY c.Club_ID ORDER BY AVG(p.Earnings) DESC
SELECT Manufacturer, COUNT(*) AS Club_Count FROM club GROUP BY Manufacturer
placeholder
SELECT COUNT(*) AS club_count, Manufacturer FROM club GROUP BY Manufacturer
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT p.Name AS Player_Name, c.Name AS Club_Name FROM player p JOIN club c ON p.Club_ID = c.Club_ID
placeholder
SELECT p.Name FROM player p JOIN club c ON p.Club_ID = c.Club_ID WHERE c.Manager = 'Sam Allardyce'
SELECT Country FROM player GROUP BY Country HAVING COUNT(*) > 1
SELECT Country FROM player GROUP BY Country HAVING COUNT(Player_ID) > 1
placeholder
SELECT Manufacturer FROM club GROUP BY Manufacturer HAVING COUNT(*) > 1
SELECT Manufacturer FROM club GROUP BY Manufacturer HAVING COUNT(*) > 1
SELECT COUNT(DISTINCT Country) FROM player
SELECT Earnings FROM player WHERE Country = 'Australia' OR Country = 'Zimbabwe'
SELECT COUNT(DISTINCT Country) FROM player
SELECT c.Name FROM club c LEFT JOIN player p ON c.Club_ID = p.Club_ID WHERE p.Player_ID IS NULL
SELECT Earnings FROM player WHERE Country = 'Australia' OR Country = 'Zimbabwe'
SELECT c.Name FROM club c LEFT JOIN player p ON c.Club_ID = p.Club_ID WHERE p.Player_ID IS NULL
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
SELECT o.order_id, o.date_order_placed FROM Orders o JOIN Order_Items oi ON o.order_id = oi.order_id GROUP BY o.order_id HAVING COUNT(*) >= 2
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT COUNT(*) AS order_count, c.gender_code FROM Customers c JOIN Orders o ON c.customer_id = o.customer_id GROUP BY c.gender_code
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
SELECT oi.order_item_status_code, s.shipment_tracking_number FROM Order_Items oi JOIN Shipment_Items si ON oi.order_item_id = si.order_item_id JOIN Shipments s ON si.shipment_id = s.shipment_id
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT COUNT(DISTINCT customer_id) FROM Orders
placeholder
SELECT COUNT(DISTINCT payment_method_code) FROM `Customer_Payment_Methods`
placeholder
SELECT COUNT(DISTINCT payment_method_code) FROM `Customer_Payment_Methods`
SELECT COUNT(DISTINCT order_item_status_code) FROM Order_Items
SELECT login_name, login_password FROM Customers WHERE phone_number LIKE '+12%'
SELECT login_name, login_password FROM Customers WHERE phone_number LIKE '+12%'
SELECT product_size FROM Products WHERE product_name LIKE '%Dell%'
placeholder
SELECT product_size FROM Products WHERE product_name LIKE '%Dell%'
SELECT product_price, product_size FROM Products WHERE product_price > (SELECT AVG(product_price) FROM Products)
SELECT product_price, product_size FROM Products WHERE product_price > (SELECT AVG(product_price) FROM Products)
placeholder
SELECT order_status_code, date_order_placed FROM Orders
SELECT order_status_code, date_order_placed FROM Orders
placeholder
SELECT address_line_1, town_city, county FROM Customers WHERE country = 'USA'
SELECT COUNT(*) FROM Customers LEFT JOIN Customer_Payment_Methods ON Customers.customer_id = Customer_Payment_Methods.customer_id WHERE Customer_Payment_Methods.payment_method_code IS NULL
SELECT address_line_1, town_city, county FROM Customers WHERE country = 'United States'
SELECT AVG(product_price) AS average_price FROM Products
placeholder
SELECT AVG(product_price) FROM Products
SELECT COUNT(*) FROM `Shipment_Items`
placeholder
placeholder
SELECT AVG(p.product_price) FROM Products p JOIN Order_Items oi ON p.product_id = oi.product_id
placeholder
placeholder
SELECT order_status_code FROM Orders GROUP BY order_status_code ORDER BY COUNT(*) ASC LIMIT 1
placeholder
SELECT order_status_code FROM Orders GROUP BY order_status_code ORDER BY COUNT(*) ASC LIMIT 1
placeholder
placeholder
placeholder
placeholder
SELECT shipment_tracking_number, shipment_date FROM Shipments
SELECT i.invoice_date, i.invoice_number FROM Invoices i JOIN Shipments s ON i.invoice_number = s.invoice_number GROUP BY i.invoice_number HAVING COUNT(s.shipment_id) >= 2
SELECT shipment_tracking_number, shipment_date FROM Shipments
SELECT product_color, product_description, product_size FROM Products WHERE product_price < (SELECT MAX(product_price) FROM Products)
placeholder
SELECT Name FROM director WHERE Age > (SELECT AVG( Age ) FROM director )
SELECT Name FROM director ORDER BY Age DESC LIMIT 1
SELECT i.invoice_date, i.invoice_number FROM Invoices i JOIN Shipments s ON i.invoice_number = s.invoice_number GROUP BY i.invoice_number, i.invoice_date HAVING COUNT(*) >= 2
placeholder
SELECT COUNT(DISTINCT Digital_terrestrial_channel) FROM channel
placeholder
SELECT Title FROM program ORDER BY Start_Year DESC
SELECT product_color, product_description, product_size FROM Products WHERE product_price < (SELECT MAX(product_price) FROM Products)
SELECT COUNT(*) FROM channel WHERE Internet LIKE '%bbc%'
SELECT Title FROM program ORDER BY Start_Year DESC LIMIT 1
SELECT d.Name FROM program p JOIN director d ON p.Director_ID = d.Director_ID WHERE p.Title = 'Dracula'
SELECT Name FROM director WHERE Age BETWEEN 30 AND 60
placeholder
placeholder
placeholder
SELECT COUNT(*) FROM radio
placeholder
placeholder
placeholder
SELECT Transmitter FROM radio ORDER BY ERP_kW ASC
SELECT tv_show_name, Original_Airdate FROM tv_show
SELECT Station_name FROM city_channel WHERE Affiliation != 'ABC'
SELECT Affiliation, COUNT(*) AS channel_count FROM city_channel GROUP BY Affiliation
placeholder
SELECT Affiliation FROM city_channel GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT City , Station_name FROM city_channel ORDER BY Station_name ASC
placeholder
SELECT AVG(ERP_kW) FROM radio
SELECT Affiliation FROM city_channel GROUP BY Affiliation HAVING COUNT(*) > 3
placeholder
SELECT Model FROM vehicle WHERE Power > 6000 ORDER BY Top_Speed DESC LIMIT 1
SELECT Name FROM driver WHERE Citizenship = 'United States'
SELECT Name FROM driver WHERE Citizenship = 'United States'
placeholder
placeholder
placeholder
SELECT MAX( Power ) AS Maximum_Power , AVG( Power ) AS Average_Power FROM vehicle WHERE Builder = 'Zhuzhou'
SELECT MAX( Power ) AS Max_Power, AVG( Power ) AS Avg_Power FROM vehicle WHERE Builder = 'Zhuzhou'
placeholder
placeholder
SELECT Vehicle_ID FROM vehicle_driver GROUP BY Vehicle_ID ORDER BY COUNT(*) ASC LIMIT 1
SELECT Build_Year , Model , Builder FROM vehicle
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = '1996'
SELECT Top_Speed , Power FROM vehicle WHERE Build_Year = '1996'
SELECT Vehicle_ID FROM vehicle_driver GROUP BY Vehicle_ID ORDER BY COUNT(*) ASC LIMIT 1
SELECT Build_Year , Model , Builder FROM vehicle
placeholder
SELECT COUNT(*) FROM driver WHERE Racing_Series = 'NASCAR'
SELECT AVG( Top_Speed ) FROM vehicle
SELECT COUNT(*) FROM driver WHERE Racing_Series = 'NASCAR'
SELECT AVG(Top_Speed) FROM vehicle
placeholder
placeholder
SELECT Model , Build_Year FROM vehicle WHERE Model LIKE '%DJ%'
SELECT Model , Build_Year FROM vehicle WHERE Model LIKE '%DJ%'
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT COUNT(*) FROM vehicle WHERE Top_Speed = (SELECT MAX( Top_Speed ) FROM vehicle )
SELECT v.Model FROM vehicle v LEFT JOIN vehicle_driver vd ON v.Vehicle_ID = vd.Vehicle_ID WHERE vd.Driver_ID IS NULL
SELECT Name FROM driver ORDER BY Name
SELECT COUNT(*) FROM vehicle WHERE Top_Speed = (SELECT MAX( Top_Speed ) FROM vehicle )
SELECT Name FROM driver ORDER BY Name
placeholder
SELECT COUNT(*) AS driver_count, Racing_Series FROM driver GROUP BY Racing_Series
SELECT COUNT(*) AS driver_count, Racing_Series FROM driver GROUP BY Racing_Series
placeholder
placeholder
placeholder
SELECT COUNT(*) FROM Exams
SELECT COUNT(*) FROM Exams
placeholder
SELECT DISTINCT Subject_Code FROM Exams ORDER BY Subject_Code ASC
SELECT DISTINCT Subject_Code FROM Exams ORDER BY Subject_Code
SELECT Exam_Date, Exam_Name FROM Exams WHERE Subject_Code != 'Database'
SELECT Exam_Name, Exam_Date FROM Exams WHERE Subject_Code != 'Database'
SELECT Exam_Date FROM Exams WHERE Subject_Code LIKE '%data%' ORDER BY Exam_Date DESC
SELECT Exam_Date FROM Exams WHERE Subject_Code LIKE '%data%' ORDER BY Exam_Date DESC
SELECT Type_of_Question_Code, COUNT(*) AS Count_Occurrence FROM Questions GROUP BY Type_of_Question_Code
placeholder
SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments = 'Normal'
placeholder
SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments = Normal
SELECT COUNT(DISTINCT Comments) FROM Student_Answers
placeholder
SELECT COUNT(*) FROM driver LEFT JOIN vehicle_driver ON driver.Driver_ID = vehicle_driver.Driver_ID WHERE vehicle_driver.Vehicle_ID IS NULL
SELECT s.First_Name, sa.Date_of_Answer FROM Students s JOIN Student_Answers sa ON s.Student_ID = sa.Student_ID
SELECT Student_Answer_Text FROM Student_Answers GROUP BY Student_Answer_Text ORDER BY COUNT(*) DESC
SELECT s.First_Name, sa.Date_of_Answer FROM Student_Answers sa JOIN Students s ON sa.Student_ID = s.Student_ID
SELECT Student_Answer_Text, COUNT(*) AS Answer_Count FROM Student_Answers GROUP BY Student_Answer_Text ORDER BY Answer_Count DESC
placeholder
SELECT s.Email_Adress, sa.Date_of_Answer FROM Student_Answers sa JOIN Students s ON sa.Student_ID = s.Student_ID ORDER BY sa.Date_of_Answer DESC
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY COUNT(*) ASC LIMIT 1
SELECT s.First_Name FROM Students s JOIN Student_Answers sa ON s.Student_ID = sa.Student_ID GROUP BY s.Student_ID HAVING COUNT(sa.Student_Answer_ID) >= 2
placeholder
placeholder
SELECT Last_Name FROM Students WHERE Gender_MFU != 'M'
SELECT Last_Name FROM Students WHERE Gender_MFU != 'M'
SELECT Valid_Answer_Text FROM Valid_Answers GROUP BY Valid_Answer_Text ORDER BY COUNT(Valid_Answer_Text) DESC LIMIT 1
SELECT Gender_MFU, COUNT(*) AS Number_of_Students FROM Students GROUP BY Gender_MFU
SELECT Gender_MFU, COUNT(*) AS Number_of_Students FROM Students GROUP BY Gender_MFU
SELECT Last_Name FROM Students WHERE Gender_MFU = 'F' OR Gender_MFU = 'M'
SELECT s.First_Name FROM Students s LEFT JOIN Student_Answers sa ON s.Student_ID = sa.Student_ID WHERE sa.Student_Answer_ID IS NULL
placeholder
SELECT Last_Name FROM Students WHERE Gender_MFU = 'F' OR Gender_MFU = 'M'
placeholder
SELECT Type_of_Question_Code FROM Questions GROUP BY Type_of_Question_Code HAVING COUNT(*) >= 3
SELECT * FROM Students
SELECT * FROM Students
SELECT COUNT(*) FROM Addresses
SELECT COUNT(*) FROM Addresses
SELECT address_id, address_details FROM Addresses
placeholder
SELECT address_id, address_details FROM Addresses
SELECT Type_of_Question_Code FROM Questions GROUP BY Type_of_Question_Code HAVING COUNT(*) >= 3
SELECT COUNT(*) FROM `Products`
SELECT COUNT(*) FROM `Products`
placeholder
SELECT product_id, product_type_code, product_name FROM Products
SELECT product_id, product_type_code, product_name FROM Products
SELECT product_price FROM Products WHERE product_name = 'Monitor'
SELECT MIN(product_price) AS min_price, AVG(product_price) AS avg_price, MAX(product_price) AS max_price FROM Products
SELECT product_price FROM Products WHERE product_name = 'Monitor'
SELECT MIN(product_price) AS min_price, AVG(product_price) AS avg_price, MAX(product_price) AS max_price FROM Products
placeholder
SELECT AVG(product_price) FROM Products WHERE product_type_code = 'Clothes'
SELECT AVG(product_price) FROM Products WHERE product_type_code = 'Clothes'
SELECT COUNT(*) FROM `Products` WHERE `product_type_code` = 'Hardware'
placeholder
SELECT COUNT(*) FROM `Products` WHERE `product_type_code` = 'hardware'
SELECT product_name FROM Products WHERE product_price > (SELECT AVG(product_price) FROM Products)
SELECT product_name FROM Products WHERE product_type_code = 'Clothes' ORDER BY product_price DESC LIMIT 1
SELECT product_id, product_name FROM Products WHERE product_type_code = 'Hardware' ORDER BY product_price ASC LIMIT 1
SELECT product_name FROM Products ORDER BY product_price DESC
SELECT product_name FROM Products ORDER BY product_price DESC
SELECT product_name FROM Products WHERE product_price > (SELECT AVG(product_price) FROM Products)
SELECT product_type_code, COUNT(*) AS product_count FROM Products GROUP BY product_type_code
SELECT product_name, product_price FROM Products WHERE product_type_code = 'hardware' ORDER BY product_price ASC
SELECT product_name FROM Products WHERE product_type_code = 'Hardware' ORDER BY product_price ASC
SELECT COUNT(*) AS product_count, product_type_code FROM Products GROUP BY product_type_code
SELECT product_type_code, AVG(product_price) AS average_price FROM Products GROUP BY product_type_code
SELECT AVG(product_price) AS average_price, product_type_code FROM Products GROUP BY product_type_code
SELECT product_type_code FROM Products GROUP BY product_type_code HAVING COUNT(product_id) >= 2
SELECT product_type_code FROM Products GROUP BY product_type_code HAVING COUNT(*) >= 2
SELECT product_type_code FROM Products GROUP BY product_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT product_type_code FROM Products GROUP BY product_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM `Customers`
SELECT product_name FROM Products WHERE product_type_code = 'Clothes' ORDER BY product_price DESC LIMIT 1
placeholder
SELECT COUNT(*) FROM Customers
SELECT customer_id, customer_name FROM Customers
placeholder
placeholder
SELECT customer_address, customer_phone, customer_email FROM Customers WHERE customer_name = 'Jeromy'
SELECT payment_method_code, COUNT(*) AS customer_count FROM Customers GROUP BY payment_method_code
SELECT customer_id, customer_name FROM Customers
SELECT payment_method_code FROM Customers GROUP BY payment_method_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT payment_method_code, customer_number FROM Customers WHERE customer_name = 'Jeromy'
SELECT `payment_method_code`, `customer_number` FROM `Customers` WHERE `customer_name` = 'Jeromy'
SELECT DISTINCT payment_method_code FROM Customers
SELECT product_id, product_type_code FROM Products ORDER BY product_name
SELECT DISTINCT payment_method_code FROM Customers
SELECT product_id, product_type_code FROM Products ORDER BY product_name
SELECT product_type_code FROM Products GROUP BY product_type_code ORDER BY COUNT(*) ASC LIMIT 1
SELECT COUNT(*) FROM `Customer_Orders`
SELECT COUNT(*) FROM `Customer_Orders`
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT order_status_code, COUNT(*) AS order_count FROM Customer_Orders GROUP BY order_status_code
placeholder
SELECT order_status_code, COUNT(*) AS order_count FROM `Customer_Orders` GROUP BY order_status_code
SELECT order_status_code FROM Customer_Orders GROUP BY order_status_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT order_status_code FROM Customer_Orders GROUP BY order_status_code ORDER BY COUNT(*) DESC LIMIT 1
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
SELECT COUNT(*) FROM building
SELECT COUNT(*) FROM building
SELECT COUNT(*) FROM Customers INNER JOIN Customer_Orders ON Customers.customer_id = Customer_Orders.customer_id
SELECT c.customer_id FROM Customers c LEFT JOIN Customer_Orders co ON c.customer_id = co.customer_id WHERE co.order_id IS NULL
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT MAX(Number_of_Stories) FROM building WHERE Completed_Year != 1980
SELECT c.customer_id FROM Customers c LEFT JOIN Customer_Orders co ON c.customer_id = co.customer_id WHERE co.customer_id IS NULL
SELECT AVG( Population ) FROM region
SELECT AVG( Population ) FROM region
SELECT MAX(Number_of_Stories) FROM building WHERE Completed_Year != 1980
SELECT Name FROM region ORDER BY Name ASC
placeholder
SELECT Name FROM region ORDER BY Name
SELECT Capital FROM region WHERE Area > 10000
SELECT Capital FROM region WHERE Area > 10000
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1
SELECT Name FROM region ORDER BY Area DESC LIMIT 5
placeholder
placeholder
SELECT b.Name, r.Name FROM building b JOIN region r ON b.Region_ID = r.Region_ID
SELECT Name FROM region ORDER BY Area DESC LIMIT 5
SELECT r.Name FROM region r JOIN building b ON r.Region_ID = b.Region_ID GROUP BY r.Name HAVING COUNT(b.Building_ID) > 1
SELECT b.Name, r.Name FROM building b JOIN region r ON b.Region_ID = r.Region_ID
SELECT b.Address, r.Capital FROM building b JOIN region r ON b.Region_ID = r.Region_ID
SELECT r.Capital FROM region r JOIN building b ON r.Region_ID = b.Region_ID GROUP BY r.Region_ID ORDER BY COUNT(b.Building_ID) DESC LIMIT 1
SELECT r.Capital FROM region r JOIN building b ON r. Region_ID = b. Region_ID GROUP BY r. Region_ID ORDER BY COUNT(b. Building_ID ) DESC LIMIT 1
SELECT r.Name FROM region r JOIN building b ON r.Region_ID = b.Region_ID GROUP BY r.Name HAVING COUNT(b.Building_ID) > 1
SELECT b.Address, r.Name FROM building b JOIN region r ON b.Region_ID = r.Region_ID
SELECT Completed_Year, COUNT(*) AS Number_of_Buildings FROM building GROUP BY Completed_Year
SELECT Completed_Year, COUNT(*) AS Number_of_Buildings FROM building GROUP BY Completed_Year
SELECT r.Name FROM region r LEFT JOIN building b ON r. Region_ID = b. Region_ID WHERE b. Region_ID IS NULL
SELECT b.Number_of_Stories FROM building AS b JOIN region AS r ON b.Region_ID = r.Region_ID WHERE r.Name = 'Abruzzo'
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT Address FROM building
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT Address FROM building
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT r.Name FROM region r LEFT JOIN building b ON r. Region_ID = b. Region_ID WHERE b. Region_ID IS NULL
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT Channel_Details FROM Channels ORDER BY Channel_Details
SELECT Channel_Details FROM Channels ORDER BY Channel_Details
SELECT COUNT(*) FROM Services
SELECT COUNT(*) FROM Services
SELECT Completed_Year FROM building WHERE Number_of_Stories > 20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories < 15
placeholder
placeholder
SELECT Analytical_Layer
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT COUNT(DISTINCT Customers_and_Services_Details) FROM Customers_and_Services
SELECT Customer_Details FROM Customers WHERE Customer_Details LIKE '%Kutch%'
placeholder
placeholder
SELECT Customer_Details FROM Customers WHERE Customer_Details LIKE '%Kutch%'
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
SELECT COUNT(*) FROM Integration_Platform WHERE Integration_Platform_Details = 'Success'
placeholder
placeholder
placeholder
SELECT s.Service_Details FROM Services s LEFT JOIN Customers_and_Services csa ON s.Service_ID = csa.Service_ID WHERE csa.Service_ID IS NULL
SELECT Analytical_Layer_Type_Code, COUNT(*) AS Usage_Count FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code
placeholder
SELECT Analytical_Layer_Type_Code, COUNT(*) AS Usage_Count FROM Analytical_Layer GROUP BY Analytical_Layer_Type_Code
SELECT s.Service_Details FROM Services s JOIN Customers_and_Services cas ON s.Service_ID = cas.Service_ID WHERE cas.Customers_and_Services_Details = 'unsatisfied'
SELECT COUNT(*) FROM Vehicles
SELECT COUNT(*) FROM Vehicles
placeholder
placeholder
SELECT name FROM Vehicles ORDER BY Model_year DESC
SELECT DISTINCT Type_of_powertrain FROM Vehicles
SELECT DISTINCT Type_of_powertrain FROM Vehicles
placeholder
SELECT name FROM Vehicles ORDER BY Model_year DESC
SELECT name , Type_of_powertrain , Annual_fuel_cost FROM Vehicles WHERE Model_year = 2013 OR Model_year = 2014
placeholder
SELECT Type_of_powertrain , COUNT(*) AS vehicle_count FROM Vehicles GROUP BY Type_of_powertrain
SELECT COUNT(*) AS vehicle_count, Type_of_powertrain FROM Vehicles GROUP BY Type_of_powertrain
SELECT Type_of_powertrain FROM Vehicles GROUP BY Type_of_powertrain ORDER BY COUNT(*) DESC LIMIT 1
SELECT MIN( Annual_fuel_cost ) AS min_annual_fuel_cost, MAX( Annual_fuel_cost ) AS max_annual_fuel_cost, AVG( Annual_fuel_cost ) AS avg_annual_fuel_cost FROM Vehicles
SELECT MIN( Annual_fuel_cost ) AS min_annual_fuel_cost, MAX( Annual_fuel_cost ) AS max_annual_fuel_cost, AVG( Annual_fuel_cost ) AS avg_annual_fuel_cost FROM Vehicles
SELECT Type_of_powertrain FROM Vehicles GROUP BY Type_of_powertrain ORDER BY COUNT(*) DESC LIMIT 1
SELECT name , Model_year FROM Vehicles WHERE City_fuel_economy_rate <= Highway_fuel_economy_rate
SELECT Type_of_powertrain, AVG(Annual_fuel_cost) AS average_annual_fuel_cost FROM Vehicles GROUP BY Type_of_powertrain HAVING COUNT(*) >= 2
SELECT name, age, membership_credit FROM Customers
SELECT name, age, membership_credit FROM Customers
SELECT name , Model_year FROM Vehicles WHERE City_fuel_economy_rate <= Highway_fuel_economy_rate
SELECT name , age FROM Customers ORDER BY membership_credit DESC LIMIT 1
placeholder
placeholder
SELECT name , age FROM Customers ORDER BY membership_credit DESC LIMIT 1
SELECT * FROM Discount
SELECT * FROM Discount
placeholder
SELECT V.name, SUM(R.total_hours) AS total_hours FROM Vehicles V JOIN Renting_history R ON V.id = R.vehicles_id GROUP BY V.name
SELECT V.name, SUM(RH.total_hours) AS total_rental_hours FROM Vehicles V JOIN Renting_history RH ON V.id = RH.vehicles_id GROUP BY V.name
SELECT c.name FROM Customers c JOIN Renting_history r ON c.id = r.customer_id GROUP BY c.name HAVING COUNT(r.id) >= 2
placeholder
SELECT c.name FROM Customers c JOIN Renting_history rh ON c.id = rh.customer_id GROUP BY c.name HAVING COUNT(*) >= 2
SELECT AVG(age) FROM Customers WHERE membership_credit > (SELECT AVG(membership_credit) FROM Customers)
SELECT v.name, v.Model_year FROM Renting_history rh JOIN Vehicles v ON rh.vehicles_id = v.id GROUP BY v.name, v.Model_year ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(age) FROM Customers WHERE membership_credit > (SELECT AVG(membership_credit) FROM Customers)
SELECT d.name FROM Renting_history rh JOIN Discount d ON rh.discount_id = d.id GROUP BY d.name ORDER BY COUNT(rh.id) DESC LIMIT 1
SELECT v.name FROM Vehicles v LEFT JOIN Renting_history rh ON v.id = rh.vehicles_id WHERE rh.vehicles_id IS NULL
placeholder
SELECT V.name, V. Type_of_powertrain FROM Vehicles AS V JOIN Renting_history AS R ON V.id = R.vehicles_id WHERE R.total_hours > 30
SELECT AVG( City_fuel_economy_rate ) AS average_city_fuel_economy, AVG( Highway_fuel_economy_rate ) AS average_highway_fuel_economy, Type_of_powertrain FROM Vehicles GROUP BY Type_of_powertrain
placeholder
SELECT AVG(amount_of_loan) AS average_loan_amount FROM Student_Loans
SELECT AVG(amount_of_loan) FROM Student_Loans
placeholder
SELECT AVG( City_fuel_economy_rate ) AS average_city_fuel_rate, AVG( Highway_fuel_economy_rate ) AS average_highway_fuel_rate, Type_of_powertrain FROM Vehicles GROUP BY Type_of_powertrain
SELECT d.name FROM Renting_history rh JOIN Discount d ON rh.discount_id = d.id GROUP BY d.name ORDER BY COUNT(*) DESC LIMIT 1
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT DISTINCT detention_summary FROM Detention
SELECT DISTINCT t.detention_type_description FROM Detention d JOIN Ref_Detention_Type t ON d.detention_type_code = t.detention_type_code
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT behaviour_monitoring_details, COUNT(*) AS count FROM Behaviour_Monitoring GROUP BY behaviour_monitoring_details ORDER BY count DESC LIMIT 1
placeholder
SELECT s.bio_data, se.event_date FROM Students s JOIN Student_Events se ON s.student_id = se.student_id
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT date_of_transcript, transcript_details FROM Transcripts
SELECT date_of_transcript, transcript_details FROM Transcripts
SELECT a.achievement_details, rat.achievement_type_description FROM Achievements a JOIN Ref_Achievement_Type rat ON a.achievement_type_code = rat.achievement_type_code
placeholder
SELECT datetime_detention_start, datetime_detention_end FROM Detention
SELECT achievement_type_code, achievement_details, date_achievement FROM Achievements
placeholder
SELECT `datetime_detention_start`, `datetime_detention_end` FROM Detention
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT bio_data FROM Students WHERE bio_data LIKE '%Suite%'
placeholder
placeholder
placeholder
SELECT achievement_type_code, achievement_details, date_achievement FROM Achievements
SELECT s.student_details, t.teacher_details FROM Classes c JOIN Students s ON c.student_id = s.student_id JOIN Teachers t ON c.teacher_id = t.teacher_id
SELECT teacher_id, COUNT(*) AS number_of_courses FROM Classes GROUP BY teacher_id ORDER BY number_of_courses DESC LIMIT 1
SELECT student_id, COUNT(*) AS number_of_courses FROM Classes GROUP BY student_id ORDER BY number_of_courses DESC LIMIT 1
placeholder
placeholder
placeholder
SELECT MIN(date_of_loan) FROM Student_Loans
SELECT MIN(date_of_loan) FROM Student_Loans
placeholder
placeholder
placeholder
placeholder
SELECT s.bio_data FROM Students s JOIN Student_Loans sl ON s.student_id = sl.student_id ORDER BY sl.amount_of_loan ASC LIMIT 1
placeholder
placeholder
SELECT student_id, SUM(amount_of_loan) AS total_loan_amount FROM Student_Loans GROUP BY student_id
SELECT t.date_of_transcript FROM Transcripts t JOIN Student_Loans sl ON t.student_id = sl.student_id ORDER BY sl.amount_of_loan DESC LIMIT 1
SELECT student_id, SUM(amount_of_loan) AS total_loan_amount FROM Student_Loans GROUP BY student_id
SELECT COUNT(*) AS student_count FROM Detention
placeholder
placeholder
SELECT COUNT(DISTINCT student_id) FROM Detention
placeholder
placeholder
placeholder
placeholder
SELECT datetime_detention_start FROM Detention
SELECT MIN(datetime_detention_start) FROM Detention
placeholder
SELECT Name FROM Author
SELECT Name FROM Author
SELECT Name, Address FROM Client
SELECT Name, Address FROM Client
placeholder
SELECT Title, ISBN, SalePrice FROM Book
placeholder
placeholder
SELECT Title, ISBN, SalePrice FROM Book
placeholder
SELECT COUNT(*) FROM Author
SELECT COUNT(*) FROM Book
placeholder
SELECT COUNT(*) FROM Author
SELECT COUNT(*) FROM Client
SELECT COUNT(*) FROM Client
SELECT Name, Address FROM Client ORDER BY Name
SELECT Name, Address FROM Client ORDER BY Name
SELECT COUNT(*) FROM Book
SELECT o.IdOrder, c.Name FROM Orders o JOIN Client c ON o.IdClient = c.IdClient
SELECT o.IdOrder, c.Name FROM Orders o JOIN Client c ON o.IdClient = c.IdClient
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT DISTINCT C.Name FROM Client C JOIN Orders O ON C.IdClient = O.IdClient
SELECT Book.Title FROM Book JOIN Books_Order ON Book.ISBN = Books_Order.ISBN
SELECT b.Title, b.PurchasePrice FROM Books_Order bo JOIN Book b ON bo.ISBN = b.ISBN GROUP BY b.ISBN ORDER BY SUM(bo.amount) DESC LIMIT 1
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
SELECT b.Title FROM Book b LEFT JOIN Books_Order bo ON b.ISBN = bo.ISBN WHERE bo.ISBN IS NULL
placeholder
SELECT MAX(SalePrice) AS MaxSalePrice, MIN(SalePrice) AS MinSalePrice FROM Book
placeholder
SELECT MAX(SalePrice) AS MaxSalePrice, MIN(SalePrice) AS MinSalePrice FROM Book
SELECT AVG(PurchasePrice) AS AveragePurchasePrice, AVG(SalePrice) AS AverageSalePrice FROM Book
SELECT MAX(SalePrice - PurchasePrice) AS MaxPriceDifference FROM Book
SELECT AVG(PurchasePrice) AS AveragePurchasePrice, AVG(SalePrice) AS AverageSalePrice FROM Book
placeholder
SELECT MAX(ABS(SalePrice - PurchasePrice)) FROM Book
placeholder
placeholder
placeholder
SELECT Title FROM Book WHERE SalePrice > (SELECT AVG(SalePrice) FROM Book)
SELECT Title FROM Book WHERE SalePrice = (SELECT MIN(SalePrice) FROM Book)
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT b.Title FROM Book b JOIN Author_Book ab ON b.ISBN = ab.ISBN JOIN Author a ON ab.Author = a.idAuthor WHERE a.Name = 'George Orwell' ORDER BY b.SalePrice ASC LIMIT 1
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT COUNT(*) FROM Book JOIN Books_Order ON Book.ISBN = Books_Order.ISBN WHERE Book.Title = 'Pride and Prejudice'
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
SELECT Title FROM book ORDER BY Title ASC
SELECT Title FROM book ORDER BY Pages DESC
SELECT COUNT(*) FROM book
placeholder
placeholder
SELECT Title FROM book WHERE Type != 'Poet'
SELECT Type , Release FROM book
SELECT AVG(Rating) FROM review
SELECT b.Title, r.Rating FROM book b JOIN review r ON b.Book_ID = r.Book_ID
SELECT Book_ID, MAX(Chapters) AS Max_Chapters, MIN(Chapters) AS Min_Chapters FROM book GROUP BY Book_ID
SELECT Type, COUNT(*) AS Number_of_Books FROM book GROUP BY Type
SELECT AVG(r.Readers_in_Million) FROM book b JOIN review r ON b.Book_ID = r.Book_ID WHERE b.Type = 'Novel'
SELECT Type FROM book GROUP BY Type ORDER BY COUNT(*) DESC LIMIT 1
SELECT Type FROM book GROUP BY Type HAVING COUNT(*) >= 3
SELECT b.Title FROM book b JOIN review r ON b.Book_ID = r.Book_ID ORDER BY r.Rating ASC
SELECT Rank FROM book ORDER BY Pages ASC LIMIT 1
SELECT b.Title FROM book b JOIN review r ON b.Book_ID = r.Book_ID ORDER BY r.Rank ASC LIMIT 1
placeholder
SELECT COUNT(*) FROM book LEFT JOIN review ON book.Book_ID = review.Book_ID WHERE review.Book_ID IS NULL
SELECT COUNT(DISTINCT Type ) FROM book
SELECT COUNT(*) FROM customer
SELECT COUNT(*) FROM customer
SELECT Name FROM customer ORDER BY Level_of_Membership ASC
SELECT Nationality , Card_Credit FROM customer
SELECT Name FROM customer ORDER BY Level_of_Membership
SELECT Nationality , Card_Credit FROM customer
placeholder
SELECT Name FROM customer WHERE Nationality = England OR Nationality = Australia
SELECT AVG( Card_Credit ) FROM customer WHERE Level_of_Membership > 1
SELECT Name FROM customer WHERE Nationality = 'England' OR Nationality = 'Australia'
SELECT Card_Credit FROM customer ORDER BY Level_of_Membership DESC LIMIT 1
SELECT Card_Credit FROM customer ORDER BY Level_of_Membership DESC LIMIT 1
SELECT AVG(Card_Credit) FROM customer WHERE Level_of_Membership > 1
SELECT Nationality , COUNT(*) AS Customer_Count FROM customer GROUP BY Nationality
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality, COUNT(*) AS Number_of_Customers FROM customer GROUP BY Nationality
placeholder
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
placeholder
placeholder
SELECT c.Name, SUM(co.Quantity) AS Total_Quantity FROM customer c JOIN customer_order co ON c.Customer_ID = co.Customer_ID GROUP BY c.Customer_ID
SELECT c.Name, co.Dish_Name FROM customer_order co JOIN customer c ON co.Customer_ID = c.Customer_ID
placeholder
placeholder
placeholder
SELECT DISTINCT Manager FROM branch
SELECT DISTINCT Manager FROM branch
placeholder
placeholder
SELECT Customer_ID FROM customer_order GROUP BY Customer_ID HAVING SUM(Quantity) > 1
placeholder
SELECT COUNT(*) FROM member
SELECT Name, Nationality FROM member
SELECT Name FROM member ORDER BY Age ASC
SELECT c.Name FROM customer c LEFT JOIN customer_order co ON c.Customer_ID = co.Customer_ID WHERE co.Customer_ID IS NULL
SELECT Name FROM member WHERE Age = 19 OR Age = 20
SELECT Name FROM member WHERE Nationality <> 'England'
SELECT Nationality, COUNT(*) AS Member_Count FROM member GROUP BY Nationality
SELECT Name FROM member ORDER BY Age DESC LIMIT 1
placeholder
SELECT Nationality FROM member GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM member GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
placeholder
placeholder
placeholder
SELECT Club_Name FROM club WHERE Club_Name LIKE '%state%'
placeholder
placeholder
placeholder
placeholder
SELECT Collection_Subset_Name FROM Collection_Subsets
placeholder
SELECT Collecrtion_Subset_Details FROM Collection_Subsets WHERE Collection_Subset_Name = 'Top collection'
SELECT Document_Subset_Name FROM Document_Subsets
SELECT Document_Subset_Details FROM Document_Subsets WHERE Document_Subset_Name = 'Best for 2000'
SELECT Document_Subset_Details FROM Document_Subsets WHERE Document_Subset_Name = 'Best for 2000'
SELECT Document_Object_ID FROM Document_Objects
SELECT Owner FROM Document_Objects WHERE Description = 'Braeden Collection'
SELECT Document_Object_ID FROM Document_Objects WHERE Owner = 'Marlin'
placeholder
placeholder
placeholder
placeholder
SELECT COUNT(*) FROM Document_Objects WHERE Owner = 'Marlin'
SELECT DISTINCT Description FROM Document_Objects WHERE Parent_Document_Object_ID IS NOT NULL
SELECT COUNT(*) FROM Document_Objects WHERE Owner = 'Marlin'
placeholder
placeholder
placeholder
placeholder
SELECT Document_Object_ID FROM Document_Objects WHERE Parent_Document_Object_ID IS NULL
SELECT Collection_Description FROM Collections WHERE Collection_Name = 'Best'
SELECT Collection_Name FROM Collections
SELECT Collection_Name FROM Collections
SELECT Collection_Description FROM Collections WHERE Collection_Name = 'Best'
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
SELECT Document_Object_ID, COUNT(*) FROM Documents_in_Collections GROUP BY Document_Object_ID
placeholder
placeholder
placeholder
placeholder
SELECT c.Collection_Name, c.Collection_ID, COUNT(di.Document_Object_ID) AS Document_Count FROM Collections c JOIN Documents_in_Collections di ON c.Collection_ID = di.Collection_ID WHERE c.Collection_Name = 'Best' GROUP BY c.Collection_ID, c.Collection_Name ORDER BY Document_Count DESC LIMIT 1
placeholder
placeholder
and end with
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT name FROM songs ORDER BY name
placeholder
SELECT COUNT(*) FROM songs WHERE name LIKE '%Love%'
placeholder
SELECT MAX( voice_sound_quality ), MIN( voice_sound_quality ) FROM performance_score
SELECT name, language FROM songs
SELECT id , language , original_artist FROM songs WHERE name != 'Love'
placeholder
SELECT name, original_artist FROM songs WHERE english_translation = 'All the streets of love'
placeholder
placeholder
placeholder
SELECT ps.voice_sound_quality FROM performance_score ps JOIN songs s ON ps.songs_id = s.id WHERE s.name = 'The Balkan Girls' AND s.language = 'English'
SELECT COUNT(*) FROM performance_score WHERE stage_presence < 7 OR stage_presence > 9
placeholder
SELECT DISTINCT p.stage_presence FROM performance_score AS p JOIN songs AS s ON p.songs_id = s.id WHERE s.language = 'English'
\nyour SQL QUERY HERE\n
placeholder
placeholder
SELECT DISTINCT p.name FROM participants p JOIN performance_score ps ON p.id = ps.participant_id JOIN songs s ON ps.songs_id = s.id WHERE s.language = 'English'
placeholder
SELECT COUNT(*) FROM City
SELECT name FROM songs WHERE name LIKE '%Is%'
placeholder
SELECT COUNT(*) FROM City
SELECT DISTINCT state FROM City
SELECT DISTINCT state FROM City
SELECT COUNT(DISTINCT country) FROM City
SELECT city_name, city_code, state, country FROM City
SELECT COUNT(DISTINCT country) FROM City
placeholder
SELECT latitude, longitude FROM City WHERE city_name = 'Baltimore'
SELECT city_name, city_code, state, country FROM City
SELECT latitude, longitude FROM City WHERE city_name = 'Baltimore'
SELECT city_name FROM City WHERE state = 'PA'
SELECT COUNT(*) FROM City WHERE country = 'Canada'
SELECT city_name FROM City WHERE state = 'PA'
SELECT city_name FROM City WHERE country = 'USA' ORDER BY latitude
SELECT COUNT(*) FROM City WHERE country = 'Canada'
SELECT state, COUNT(*) AS number_of_cities FROM City GROUP BY state
SELECT state, COUNT(*) AS city_count FROM City GROUP BY state
placeholder
SELECT city_name FROM City WHERE country = 'USA' ORDER BY latitude
SELECT country, COUNT(*) AS city_count FROM City GROUP BY country
SELECT state FROM City GROUP BY state HAVING COUNT(*) >= 2
SELECT COUNT(*) AS city_count, country FROM City GROUP BY country
placeholder
SELECT state FROM City GROUP BY state HAVING COUNT(*) >= 2
SELECT state FROM City GROUP BY state ORDER BY COUNT(*) DESC LIMIT 1
SELECT country FROM City GROUP BY country ORDER BY COUNT(*) ASC LIMIT 1
SELECT country FROM City GROUP BY country ORDER BY COUNT(*) ASC LIMIT 1
SELECT COUNT(*) FROM Student JOIN City ON Student.city_code = City.city_code WHERE City.country = 'China'
SELECT COUNT(*) FROM Student JOIN City ON Student.city_code = City.city_code WHERE City.country = 'China'
SELECT S.Fname, S.LName FROM Student S JOIN City C ON S.city_code = C.city_code WHERE C.state = 'MD'
SELECT S.Fname, S.Lname FROM Student S JOIN City C ON S.city_code = C.city_code WHERE C.state = 'MD'
SELECT S.Fname, S.Major FROM Student S JOIN City C ON S.city_code = C.city_code WHERE C.city_name = 'Baltimore'
SELECT state FROM City GROUP BY state ORDER BY COUNT(*) DESC LIMIT 1
SELECT S.Fname, S.Major FROM Student S JOIN City C ON S.city_code = C.city_code WHERE C.city_name = 'Baltimore'
SELECT COUNT(*) AS student_count, City.country FROM Student JOIN City ON Student.city_code = City.city_code GROUP BY City.country
SELECT COUNT(*) AS student_count, C.city_name FROM Student S JOIN City C ON S.city_code = C.city_code GROUP BY C.city_name
SELECT c.state FROM Student s JOIN City c ON s.city_code = c.city_code GROUP BY c.state ORDER BY COUNT(*) DESC LIMIT 1
SELECT c.country FROM Student s JOIN City c ON s.city_code = c.city_code GROUP BY c.country ORDER BY COUNT(*) ASC LIMIT 1
SELECT c.city_name FROM City c JOIN Student s ON c.city_code = s.city_code GROUP BY c.city_name HAVING COUNT(s.StuID) >= 3
SELECT c.country FROM Student s JOIN City c ON s.city_code = c.city_code GROUP BY c.country ORDER BY COUNT(s.StuID) ASC LIMIT 1
SELECT COUNT(*) AS student_count, c.city_name FROM Student s JOIN City c ON s.city_code = c.city_code GROUP BY c.city_name
SELECT c.state FROM Student s JOIN City c ON s.city_code = c.city_code GROUP BY c.state HAVING COUNT(s.StuID) > 5
SELECT S.StuID FROM Student AS S JOIN City AS C ON S.city_code = C.city_code WHERE S.Sex = 'F' AND C.state = 'PA'
SELECT S.StuID FROM Student AS S JOIN City AS C ON S.city_code = C.city_code WHERE S.Sex = 'F' AND C.state = 'PA'
SELECT s.StuID FROM Student s JOIN City c ON s.city_code = c.city_code WHERE c.country != 'USA'
placeholder
placeholder
SELECT s.StuID FROM Student s JOIN City c ON s.city_code = c.city_code WHERE s.Sex = 'M' AND c.country != 'USA'
SELECT C.city_name FROM Student S JOIN City C ON S.city_code = C.city_code GROUP BY C.city_name HAVING COUNT(*) >= 3
placeholder
SELECT AVG(distance) AS average_distance, MIN(distance) AS minimum_distance, MAX(distance) AS maximum_distance FROM Direct_distance
placeholder
SELECT AVG(distance) AS average_distance, MIN(distance) AS minimum_distance, MAX(distance) AS maximum_distance FROM Direct_distance
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT city1_code, city2_code FROM Direct_distance ORDER BY distance DESC LIMIT 1
placeholder
placeholder
placeholder
placeholder
SELECT city1_code FROM Direct_distance WHERE distance < 1000 UNION SELECT city2_code FROM Direct_distance WHERE distance < 1000
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
placeholder
SELECT c.state FROM Student s JOIN City c ON s.city_code = c.city_code WHERE s.Fname = 'Linda'
placeholder
SELECT * FROM Sailors WHERE age > 30
placeholder
placeholder
SELECT name, age FROM Sailors WHERE age < 30
SELECT name, age FROM Sailors WHERE age < 30
placeholder
placeholder
SELECT sid, name, rating, age FROM Sailors WHERE age > 30
SELECT DISTINCT bid FROM Reserves WHERE sid = 1
SELECT DISTINCT bid FROM Reserves
SELECT S.name FROM Sailors AS S JOIN Reserves AS R ON S.sid = R.sid WHERE R.bid = 102
placeholder
SELECT name FROM Sailors WHERE name LIKE '%e%'
SELECT name FROM Sailors WHERE name LIKE '%e%'
placeholder
SELECT DISTINCT bid FROM Reserves
placeholder
SELECT sid FROM Sailors WHERE age > (SELECT MIN(age) FROM Sailors)
placeholder
SELECT S.name, S.sid FROM Sailors AS S INNER JOIN Reserves AS R ON S.sid = R.sid
placeholder
placeholder
placeholder
SELECT S.name, S.sid FROM Sailors S JOIN Reserves R ON S.sid = R.sid JOIN Boats B ON R.bid = B.bid WHERE B.color = 'red' OR B.color = 'blue'
placeholder
SELECT S.name, S.sid FROM Reserves R JOIN Boats B ON R.bid = B.bid JOIN Sailors S ON R.sid = S.sid WHERE B.color = 'red' OR B.color = 'blue'
placeholder
SELECT r.sid FROM Reserves r JOIN Boats b ON r.bid = b.bid WHERE b.color = 'red' OR b.color = 'blue'
placeholder
SELECT sid FROM Sailors EXCEPT SELECT sid FROM Reserves
placeholder
placeholder
SELECT s.name, s.sid FROM Sailors s LEFT JOIN Reserves r ON s.sid = r.sid WHERE r.sid IS NULL
SELECT S.name FROM Sailors AS S JOIN Reserves AS R ON S.sid = R.sid WHERE R.bid = 103
SELECT S.name, S.sid FROM Sailors S JOIN Reserves R ON S.sid = R.sid JOIN Boats B ON R.bid = B.bid WHERE B.color = 'red' OR B.color = 'blue'
placeholder
SELECT S.name FROM Sailors AS S JOIN Reserves AS R ON S.sid = R.sid WHERE R.bid = 103
placeholder
placeholder
SELECT name FROM Sailors WHERE rating > (SELECT MAX(rating) FROM Sailors WHERE name = 'Luis')
placeholder
placeholder
SELECT name, age FROM Sailors ORDER BY age DESC LIMIT 1
SELECT S.name, S.sid FROM Sailors AS S JOIN Reserves AS R ON S.sid = R.sid WHERE S.rating >= 3
SELECT COUNT(*) FROM Sailors
SELECT name, age FROM Sailors ORDER BY age DESC LIMIT 1
SELECT COUNT(*) FROM Sailors
SELECT AVG(age) FROM Sailors WHERE rating = 7
placeholder
placeholder
SELECT AVG(age) FROM Sailors WHERE rating = 7
SELECT COUNT(*) FROM Sailors WHERE name LIKE 'D%'
SELECT COUNT(*) FROM Sailors WHERE name LIKE 'D%'
SELECT MAX(rating) FROM Sailors WHERE name = 'Luis'
SELECT AVG(rating) AS average_rating, MAX(age) AS max_age FROM Sailors
SELECT AVG(rating), MAX(age) FROM Sailors
SELECT COUNT(*) AS reservation_count, bid FROM Reserves GROUP BY bid
SELECT COUNT(*) AS reservation_count, bid FROM Reserves GROUP BY bid
placeholder
SELECT COUNT(*) AS reservation_count, bid FROM Reserves GROUP BY bid HAVING COUNT(*) > 1
SELECT name, rating, age FROM Sailors ORDER BY rating, age
SELECT COUNT(*) AS reservation_count, b.bid FROM Reserves r JOIN Boats b ON r.bid = b.bid WHERE r.sid > 1 GROUP BY b.bid
SELECT S.rating, AVG(S.age) FROM Sailors AS S JOIN Reserves AS R ON S.sid = R.sid JOIN Boats AS B ON R.bid = B.bid WHERE B.color = 'red' GROUP BY S.rating
SELECT name, rating, age FROM Sailors ORDER BY rating, age
SELECT COUNT(*) FROM Boats
SELECT COUNT(*) FROM Boats
SELECT COUNT(*) FROM Boats WHERE color = 'red'
placeholder
SELECT COUNT(*) FROM Boats WHERE color = 'red'
placeholder
placeholder
SELECT MAX(rating) FROM Sailors
placeholder
SELECT s.rating, AVG(s.age) FROM Sailors s JOIN Reserves r ON s.sid = r.sid JOIN Boats b ON r.bid = b.bid WHERE b.color = 'red' GROUP BY s.rating
SELECT MAX(rating) FROM Sailors
SELECT name, age FROM Sailors ORDER BY rating DESC
SELECT name, age FROM Sailors ORDER BY rating DESC
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1
SELECT Model FROM headphone ORDER BY Price DESC LIMIT 1
SELECT DISTINCT Model FROM headphone ORDER BY Model
SELECT DISTINCT Model FROM headphone ORDER BY Model ASC
placeholder
placeholder
SELECT Class FROM headphone GROUP BY Class ORDER BY COUNT(*) DESC LIMIT 1
placeholder
placeholder
placeholder
SELECT COUNT(*) AS number_of_headphones, Class FROM headphone WHERE Price > 200 GROUP BY Class
placeholder
SELECT COUNT(*) AS count, Class FROM headphone WHERE Price > 200 GROUP BY Class
SELECT Class FROM headphone GROUP BY Class ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT Earpads) FROM headphone
SELECT COUNT(DISTINCT Earpads) FROM headphone
SELECT Model , Class , Construction FROM headphone ORDER BY Price ASC LIMIT 1
SELECT Model , Class , Construction FROM headphone ORDER BY Price ASC LIMIT 1
SELECT AVG( Price ) AS average_price, Construction FROM headphone GROUP BY Construction
SELECT AVG( Price ) AS average_price, Construction FROM headphone GROUP BY Construction
SELECT Class FROM headphone GROUP BY Class HAVING COUNT(*) <= 2
SELECT Model FROM headphone WHERE Price < (SELECT AVG(Price) FROM headphone)
SELECT Earpads FROM headphone WHERE Earpads != 'plastic'
SELECT Model FROM headphone WHERE Price < (SELECT AVG(Price) FROM headphone)
placeholder
SELECT Name FROM store ORDER BY Date_Opened
placeholder
SELECT DISTINCT Earpads FROM headphone WHERE Earpads != 'plastic'
SELECT Name FROM store ORDER BY Date_Opened
placeholder
SELECT Name , Parking FROM store WHERE Neighborhood = Tarzana
SELECT COUNT(*) AS store_count, Neighborhood FROM store GROUP BY Neighborhood
SELECT COUNT(DISTINCT Neighborhood) FROM store
SELECT COUNT(DISTINCT Neighborhood) FROM store
SELECT Name , Parking FROM store WHERE Neighborhood = 'Tarzana'
SELECT COUNT(*) AS store_count, Neighborhood FROM store GROUP BY Neighborhood
placeholder
placeholder
SELECT s.Name FROM store s LEFT JOIN stock st ON s.Store_ID = st.Store_ID WHERE st.Store_ID IS NULL
SELECT h.Model FROM headphone h JOIN stock s ON h.Headphone_ID = s.Headphone_ID GROUP BY h.Model ORDER BY SUM(s.Quantity) DESC LIMIT 1
SELECT h.Model FROM headphone h JOIN stock s ON h.Headphone_ID = s.Headphone_ID GROUP BY h.Model ORDER BY SUM(s.Quantity) DESC LIMIT 1
SELECT store.Name, SUM(stock.Quantity) AS Total_Quantity FROM store JOIN stock ON store.Store_ID = stock.Store_ID GROUP BY store.Name
SELECT SUM(s.Quantity) FROM stock s JOIN store st ON s.Store_ID = st.Store_ID WHERE st.Name = 'Woodman'
SELECT COUNT(*) FROM Author
placeholder
SELECT SUM(s.Quantity) FROM store st JOIN stock s ON st.Store_ID = s.Store_ID WHERE st.Name = 'Woodman'
SELECT h.Model FROM headphone h LEFT JOIN stock s ON h.Headphone_ID = s.Headphone_ID WHERE s.Headphone_ID IS NULL
SELECT COUNT(*) FROM `Author`
placeholder
SELECT Neighborhood FROM store WHERE NOT EXISTS (SELECT 1 FROM stock WHERE stock.Store_ID = store.Store_ID)
SELECT COUNT(*) FROM `Paper`
SELECT COUNT(*) FROM `Paper`
placeholder
SELECT COUNT(*) FROM `Affiliation`
SELECT COUNT(*) FROM `Affiliation`
SELECT COUNT(*) FROM `Paper` WHERE `venue` = 'NAACL 2000'
SELECT COUNT(*) FROM `Paper` WHERE `venue` = 'NAACL' AND `year` = 2000
placeholder
SELECT name, address FROM Affiliation
SELECT venue, year FROM Paper ORDER BY year
SELECT DISTINCT venue FROM Paper ORDER BY year
SELECT name, address FROM Affiliation
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
SELECT a.name FROM Author a JOIN Author_list al ON a.author_id = al.author_id GROUP BY a.author_id HAVING COUNT(al.paper_id) > 50
placeholder
placeholder
SELECT venue, year FROM Paper GROUP BY venue, year ORDER BY COUNT(*) DESC LIMIT 1
SELECT venue, year FROM Paper GROUP BY venue, year ORDER BY COUNT(*) DESC LIMIT 1
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT COUNT(*) FROM `Citation` WHERE `cited_paper_id` = 'D12-1027'
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
SELECT p.venue, p.year FROM Author a JOIN Author_list al ON a.author_id = al.author_id JOIN Paper p ON al.paper_id = p.paper_id WHERE a.name = 'Mckeown, Kathleen'
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
SELECT paper_id FROM Paper WHERE title LIKE '%translation%'
placeholder
placeholder
SELECT paper_id FROM Paper WHERE title LIKE '%translation%'
SELECT COUNT(*) AS paper_count, venue, year FROM Paper GROUP BY venue, year
placeholder
SELECT venue, year, COUNT(*) AS paper_count FROM Paper GROUP BY venue, year
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT COUNT(*) FROM conference
SELECT COUNT(*) FROM conference
placeholder
SELECT DISTINCT Conference_Name FROM conference
SELECT DISTINCT Conference_Name FROM conference
placeholder
SELECT Conference_Name , Year , Location FROM conference
SELECT Conference_Name , Year , Location FROM conference
placeholder
placeholder
SELECT Year, COUNT(*) AS Number_of_Conferences FROM conference GROUP BY Year
SELECT COUNT(*) AS occurrence_count, Conference_Name FROM conference GROUP BY Conference_Name
SELECT Year FROM conference GROUP BY Year ORDER BY COUNT(*) ASC LIMIT 1
SELECT Location FROM conference GROUP BY Location HAVING COUNT(*) >= 2
SELECT Year FROM conference GROUP BY Year ORDER BY COUNT(*) ASC LIMIT 1
placeholder
placeholder
SELECT Location FROM conference GROUP BY Location HAVING COUNT(*) >= 2
SELECT COUNT(*) AS conference_count, Year FROM conference GROUP BY Year
SELECT Institution_Name , Location , Founded FROM institution
SELECT COUNT(*) FROM institution WHERE Founded BETWEEN 1850 AND 1900
SELECT Institution_Name , Location FROM institution ORDER BY Founded DESC LIMIT 1
SELECT Institution_Name , Location FROM institution ORDER BY Founded DESC LIMIT 1
SELECT Institution_Name , Location , Founded FROM institution
SELECT COUNT(*) FROM institution WHERE Founded BETWEEN 1850 AND 1900
SELECT name FROM staff WHERE Age > (SELECT AVG(Age) FROM staff)
SELECT name FROM staff WHERE Age > (SELECT AVG(Age) FROM staff)
SELECT MAX(Age) AS max_age, MIN(Age) AS min_age FROM staff WHERE Nationality = 'United States'
SELECT MAX( Age ) AS maximum_age, MIN( Age ) AS minimum_age FROM staff
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT c. Conference_Name FROM conference c JOIN conference_participation cp ON c. Conference_ID = cp. Conference_ID GROUP BY c. Conference_Name ORDER BY COUNT(cp. staff_ID ) DESC LIMIT 2
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT pilot_name FROM PilotSkills ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM PilotSkills ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM PilotSkills WHERE age < (SELECT AVG(age) FROM PilotSkills) ORDER BY age ASC
SELECT * FROM PilotSkills WHERE age < 30
SELECT * FROM PilotSkills WHERE age < 30
placeholder
SELECT location FROM Hangar WHERE plane_name = 'F-14 Fighter'
SELECT pilot_name FROM PilotSkills WHERE age < (SELECT AVG(age) FROM PilotSkills) ORDER BY age
SELECT location FROM Hangar WHERE plane_name = 'F-14 Fighter'
SELECT COUNT(DISTINCT location) FROM Hangar
SELECT pilot_name FROM PilotSkills WHERE age < 35 AND plane_name = 'Piper Cub'
SELECT COUNT(DISTINCT location) FROM Hangar
placeholder
placeholder
placeholder
SELECT COUNT(*) FROM PilotSkills WHERE age > 40
SELECT COUNT(*) FROM PilotSkills WHERE age > 40
placeholder
SELECT plane_name FROM PilotSkills WHERE pilot_name = 'Jones' AND age = 32
SELECT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' ORDER BY age ASC LIMIT 1
SELECT ps.pilot_name FROM PilotSkills ps JOIN Hangar h ON ps.plane_name = h.plane_name WHERE h.plane_name = 'Piper Cub' ORDER BY ps.age ASC LIMIT 1
placeholder
SELECT COUNT(*) FROM PilotSkills JOIN Hangar ON PilotSkills.plane_name = Hangar.plane_name WHERE Hangar.location = 'Chicago'
SELECT plane_name FROM PilotSkills GROUP BY plane_name ORDER BY COUNT(*) ASC LIMIT 1
placeholder
SELECT plane_name FROM PilotSkills GROUP BY plane_name ORDER BY COUNT(*) DESC LIMIT 1
placeholder
SELECT plane_name FROM PilotSkills WHERE pilot_name = 'Smith' AND age = 41
SELECT plane_name FROM PilotSkills WHERE pilot_name = 'Smith' AND age = 41
SELECT COUNT(DISTINCT plane_name) FROM PilotSkills
SELECT COUNT(DISTINCT plane_name) FROM PilotSkills
placeholder
SELECT COUNT(DISTINCT ps.pilot_name) FROM PilotSkills ps JOIN Hangar h ON ps.plane_name = h.plane_name WHERE h.location = 'Chicago'
SELECT COUNT(*) FROM PilotSkills WHERE pilot_name = 'Smith'
SELECT pilot_name FROM PilotSkills WHERE age BETWEEN 30 AND 40 ORDER BY age ASC
SELECT pilot_name FROM PilotSkills ORDER BY age DESC
SELECT pilot_name FROM PilotSkills WHERE age BETWEEN 30 AND 40 ORDER BY age ASC
SELECT pilot_name FROM PilotSkills ORDER BY age DESC
placeholder
SELECT location FROM Hangar ORDER BY plane_name
SELECT plane_name, location FROM Hangar ORDER BY plane_name
SELECT COUNT(*) FROM PilotSkills WHERE age > 40
SELECT COUNT(*) FROM PilotSkills WHERE age > 40 OR age < 30
SELECT DISTINCT plane_name FROM Hangar ORDER BY plane_name
SELECT COUNT(*) FROM PilotSkills WHERE age > 40 OR age < 30
SELECT COUNT(*) FROM PilotSkills WHERE age > 40
placeholder
SELECT AVG(age) AS average_age, MIN(age) AS smallest_age FROM PilotSkills
placeholder
SELECT AVG(age) AS average_age, MIN(age) AS minimum_age FROM PilotSkills
placeholder
placeholder
placeholder
SELECT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' OR plane_name = 'F-14 Fighter'
placeholder
placeholder
SELECT AVG(age) AS average_age, plane_name FROM PilotSkills GROUP BY plane_name
SELECT pilot_name FROM PilotSkills WHERE plane_name = 'Piper Cub' INTERSECT SELECT pilot_name FROM PilotSkills WHERE plane_name = 'B-52 Bomber'
SELECT AVG(age) AS average_age, plane_name FROM PilotSkills GROUP BY plane_name
SELECT COUNT(*) AS entry_count, plane_name FROM PilotSkills GROUP BY plane_name
placeholder
placeholder
placeholder
placeholder
SELECT pilot_name, MAX(age) AS max_age FROM PilotSkills GROUP BY pilot_name
SELECT MAX(age) AS max_age FROM PilotSkills GROUP BY pilot_name
placeholder
placeholder
placeholder
placeholder
SELECT H.location, COUNT(*) AS number_of_pilots, AVG(P.age) AS average_age FROM PilotSkills P JOIN Hangar H ON P.plane_name = H.plane_name GROUP BY H.location
SELECT ps.pilot_name, ps.age FROM PilotSkills ps JOIN Hangar h ON ps.plane_name = h.plane_name WHERE h.location = 'Austin'
SELECT ps.pilot_name, ps.age FROM PilotSkills ps JOIN Hangar h ON ps.plane_name = h.plane_name WHERE h.location = 'Austin'
placeholder
placeholder
placeholder
SELECT plane_name FROM Hangar WHERE plane_name LIKE '%Bomber%'
placeholder
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
SELECT Name FROM district WHERE Government_website LIKE '%.gov'
placeholder
SELECT AVG( Points ), AVG( Age ) FROM spokesman WHERE Rank_position = 1
placeholder
SELECT Name , Speach_title FROM spokesman
SELECT Name FROM spokesman ORDER BY Age DESC LIMIT 1
SELECT Name , Points FROM spokesman WHERE Age < 40
placeholder
SELECT Name FROM spokesman WHERE Points < (SELECT AVG( Points ) FROM spokesman )
SELECT District_ID , Name FROM district WHERE Population > 4000 OR Area_km > 3000
placeholder
placeholder
placeholder
placeholder
SELECT title FROM Sculptures ORDER BY year DESC LIMIT 1
placeholder
placeholder
SELECT title FROM Sculptures ORDER BY year DESC LIMIT 1
placeholder
SELECT title, location FROM Paintings ORDER BY year ASC LIMIT 1
SELECT title, location FROM Paintings
placeholder
SELECT title, location FROM Paintings
SELECT title FROM Sculptures WHERE location = 'gallery 226'
SELECT title, location FROM Paintings ORDER BY year ASC LIMIT 1
SELECT title, location FROM Sculptures
SELECT title, location FROM Sculptures
placeholder
SELECT medium FROM Paintings WHERE paintingID = 80
SELECT medium FROM Paintings WHERE paintingID = 80
SELECT fname, lname FROM Artists WHERE birthYear > 1850
SELECT fname, lname FROM Artists WHERE birthYear > 1850
SELECT title, year FROM Sculptures WHERE location != 'gallery 226'
SELECT title, year FROM Sculptures WHERE location != 'gallery 226'
SELECT DISTINCT A.birthYear FROM Artists A JOIN Sculptures S ON A.artistID = S.sculptorID WHERE S.year > 1920
SELECT DISTINCT a.fname, a.lname FROM Artists a JOIN Sculptures s ON a.artistID = s.sculptorID WHERE s.year < 1900
SELECT (deathYear - birthYear) AS lifespan FROM Artists WHERE deathYear IS NOT NULL ORDER BY lifespan ASC LIMIT 1
placeholder
SELECT fname, lname FROM Artists WHERE deathYear IS NOT NULL AND birthYear IS NOT NULL ORDER BY (deathYear - birthYear) DESC LIMIT 1
placeholder
SELECT (deathYear - birthYear) AS age FROM Artists WHERE deathYear IS NOT NULL ORDER BY (deathYear - birthYear) ASC LIMIT 1
placeholder
SELECT COUNT(*) FROM Paintings WHERE location = 'gallery 240'
placeholder
SELECT COUNT(*) FROM Paintings WHERE location = '240'
SELECT p.title, p.year FROM Paintings p JOIN Artists a ON p.painterID = a.artistID WHERE a.fname = 'Mary'
SELECT p.width_mm FROM Paintings p JOIN Artists a ON p.painterID = a.artistID WHERE a.birthYear < 1850
SELECT A.fname, A.lname, P.year FROM Artists A JOIN Paintings P ON A.artistID = P.painterID WHERE A.fname = 'Mary'
placeholder
SELECT p.location, p.medium FROM Paintings p JOIN Artists a ON p.painterID = a.artistID WHERE a.fname = 'Pablo'
placeholder
SELECT p.location, p.medium FROM Paintings p JOIN Artists a ON p.painterID = a.artistID WHERE a.fname = 'Pablo'
placeholder
placeholder
placeholder
SELECT a.birthYear FROM Paintings p JOIN Artists a ON p.painterID = a.artistID WHERE p.year = 1884
placeholder
placeholder
placeholder
SELECT AVG(height_mm) AS average_height, medium FROM Paintings GROUP BY medium
placeholder
placeholder
SELECT AVG(height_mm) AS average_height, medium FROM Paintings GROUP BY medium
SELECT DISTINCT A.fname FROM Artists AS A JOIN Paintings AS P ON A.artistID = P.painterID WHERE P.medium = 'oil' AND P.location = 'gallery 241'
SELECT COUNT(*) AS painting_count, location FROM Paintings WHERE year < 1900 GROUP BY location
SELECT COUNT(*) AS number_of_paintings, location FROM Paintings WHERE year < 1900 GROUP BY location
SELECT title FROM Paintings WHERE year > 1910 AND medium = 'oil'
SELECT title FROM Paintings WHERE medium = 'oil' AND year > 1910
placeholder
placeholder
SELECT DISTINCT painterID FROM Paintings WHERE medium = 'oil' AND location = 'gallery 240'
placeholder
SELECT paintingID FROM Paintings ORDER BY year ASC LIMIT 1
SELECT paintingID FROM Paintings ORDER BY year ASC LIMIT 1
SELECT DISTINCT title FROM Paintings ORDER BY title
placeholder
placeholder
placeholder
SELECT DISTINCT title FROM Paintings ORDER BY title ASC
placeholder
SELECT DISTINCT title FROM Paintings ORDER BY height_mm ASC
placeholder
placeholder
SELECT painterID FROM Paintings WHERE year < 1900 GROUP BY painterID ORDER BY COUNT(*) DESC LIMIT 1
...
placeholder
placeholder
placeholder
placeholder
SELECT painterID FROM Paintings WHERE year < 1900 GROUP BY painterID ORDER BY COUNT(*) DESC LIMIT 1
SELECT title FROM Paintings WHERE width_mm < 600 OR height_mm > 800
placeholder
SELECT title FROM Paintings WHERE width_mm < 600 OR height_mm > 800
SELECT DISTINCT location FROM Paintings WHERE year < 1885 OR year > 1930
SELECT paintingID FROM Paintings WHERE height_mm > 500 AND height_mm < 2000
SELECT paintingID FROM Paintings WHERE height_mm > 500 AND height_mm < 2000
SELECT DISTINCT location FROM Paintings WHERE mediumOn = 'on panels' OR mediumOn = 'on canvas'
placeholder
SELECT DISTINCT location FROM Paintings WHERE year < 1885 OR year > 1930
SELECT DISTINCT location FROM Paintings WHERE mediumOn = 'on panel' OR mediumOn = 'on canvas'
SELECT a.fname FROM Artists a JOIN Sculptures s ON a.artistID = s.sculptorID GROUP BY a.fname ORDER BY COUNT(*) DESC LIMIT 1
SELECT height_mm, paintingID FROM Paintings WHERE year < 1900 ORDER BY height_mm DESC LIMIT 1
SELECT MAX(height_mm) AS max_height, MAX(width_mm) AS max_width, year FROM Paintings GROUP BY year
SELECT MAX(height_mm) AS max_height_mm, MAX(width_mm) AS max_width_mm, year FROM Paintings GROUP BY year
SELECT A.fname, COUNT(P.paintingID) AS numberOfPaintings FROM Artists A JOIN Paintings P ON A.artistID = P.painterID GROUP BY A.fname HAVING COUNT(P.paintingID) >= 2
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT a.deathYear FROM Artists a JOIN Sculptures s ON a.artistID = s.sculptorID GROUP BY a.artistID ORDER BY COUNT(s.sculptureID) ASC LIMIT 1
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT paintingID, location, title FROM Paintings WHERE medium = 'oil' ORDER BY year
SELECT paintingID, title, location, year FROM Paintings WHERE medium = 'oil' ORDER BY year
placeholder
placeholder
placeholder
SELECT year, location, title FROM Paintings WHERE height_mm > 1000 ORDER BY title
placeholder
placeholder
SELECT COUNT(*) FROM race
placeholder
placeholder
SELECT Winning_driver , Winning_team FROM race ORDER BY Winning_team ASC
SELECT COUNT(*) FROM race
SELECT Winning_driver , Winning_team FROM race ORDER BY Winning_team ASC
placeholder
placeholder
placeholder
SELECT DISTINCT Constructor FROM driver ORDER BY Age ASC
placeholder
SELECT DISTINCT Entrant FROM driver WHERE Age >= 20
SELECT Constructor FROM driver ORDER BY Age ASC
SELECT DISTINCT Entrant FROM driver WHERE Age >= 20
SELECT MAX(Age) AS Maximum_Age, MIN(Age) AS Minimum_Age FROM driver
SELECT Winning_driver FROM race WHERE Pole_Position != 'Junior Strous'
placeholder
SELECT MAX(Age) AS Max_Age, MIN(Age) AS Min_Age FROM driver
SELECT COUNT(DISTINCT Engine) FROM driver WHERE Age > 30 OR Age < 20
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT d.Driver_Name, r.Race_Name FROM driver d JOIN race r ON d.Driver_ID = r.Driver_ID
SELECT d.Driver_Name, COUNT(r.Road) AS Number_of_Races FROM driver d JOIN race r ON d.Driver_ID = r.Driver_ID GROUP BY d.Driver_Name
placeholder
SELECT d.Age FROM driver d JOIN race r ON d.Driver_ID = r.Driver_ID GROUP BY d.Driver_ID ORDER BY COUNT(r.Road) DESC LIMIT 1
SELECT d.Driver_Name, r.Race_Name FROM driver d JOIN race r ON d.Driver_ID = r.Driver_ID
SELECT COUNT(*) AS race_count, Driver_ID FROM race GROUP BY Driver_ID
SELECT Driver_Name FROM driver WHERE Constructor != Bugatti
SELECT r.Race_Name FROM race r JOIN driver d ON r.Driver_ID = d.Driver_ID WHERE d.Age >= 26
SELECT Driver_Name FROM driver WHERE Constructor != 'Bugatti'
SELECT Constructor, COUNT(*) AS Number_of_Drivers FROM driver GROUP BY Constructor
placeholder
SELECT Engine FROM driver GROUP BY Engine ORDER BY COUNT(*) DESC LIMIT 1
placeholder
placeholder
SELECT Engine FROM driver GROUP BY Engine HAVING COUNT( Driver_ID ) >= 2
placeholder
placeholder
SELECT Engine FROM driver GROUP BY Engine HAVING COUNT(*) >= 2
SELECT Winning_team FROM race GROUP BY Winning_team HAVING COUNT(*) > 1
SELECT Winning_team FROM race GROUP BY Winning_team HAVING COUNT(*) > 1
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT COUNT(*) FROM languages
SELECT COUNT(*) FROM languages
SELECT name FROM languages ORDER BY name ASC
SELECT name FROM languages ORDER BY name ASC
SELECT name FROM languages WHERE name LIKE '%ish%'
placeholder
placeholder
SELECT name FROM languages WHERE name LIKE '%ish%'
placeholder
SELECT name FROM countries ORDER BY overall_score DESC
SELECT name FROM countries ORDER BY overall_score DESC
SELECT AVG( justice_score ) FROM countries
SELECT AVG(justice_score) FROM countries
SELECT MAX(health_score), MIN(health_score) FROM countries WHERE name != 'Norway'
placeholder
SELECT name FROM countries ORDER BY education_score DESC
SELECT MAX(health_score) AS max_health_score, MIN(health_score) AS min_health_score FROM countries WHERE name != 'Norway'
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT c.name AS country_name, l.name AS language_name FROM countries c JOIN official_languages ol ON c.id = ol.country_id JOIN languages l ON ol.language_id = l.id
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT l.name, COUNT(*) AS country_count FROM languages l JOIN official_languages ol ON l.id = ol.language_id GROUP BY l.name
SELECT l.name, COUNT(*) AS country_count FROM languages l JOIN official_languages ol ON l.id = ol.language_id GROUP BY l.name
SELECT COUNT(DISTINCT l.name) FROM official_languages ol JOIN languages l ON ol.language_id = l.id
SELECT AVG(c.overall_score) FROM countries c JOIN official_languages ol ON c.id = ol.country_id JOIN languages l ON ol.language_id = l.id WHERE l.name = 'English'
SELECT l.name FROM languages l JOIN official_languages ol ON l.id = ol.language_id GROUP BY l.id HAVING COUNT(ol.country_id) >= 2
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT c.name FROM countries c JOIN official_languages ol ON c.id = ol.country_id GROUP BY c.id ORDER BY COUNT(ol.language_id) DESC LIMIT 1
SELECT l.name FROM languages l JOIN official_languages ol ON l.id = ol.language_id GROUP BY l.name ORDER BY COUNT(*) DESC LIMIT 3
placeholder
placeholder
SELECT c.name FROM countries c LEFT JOIN official_languages ol ON c.id = ol.country_id WHERE ol.country_id IS NULL
placeholder
SELECT DISTINCT country, town_city FROM Addresses
SELECT country, town_city FROM Addresses
placeholder
placeholder
SELECT c.name FROM countries c LEFT JOIN official_languages ol ON c.id = ol.country_id
SELECT feature_description FROM `Features` WHERE feature_name = 'rooftop'
placeholder
SELECT feature_description FROM `Features` WHERE feature_name = 'rooftop'
placeholder
SELECT f.feature_name, f.feature_description FROM Features f JOIN Property_Features pf ON f.feature_id = pf.feature_id GROUP BY f.feature_name, f.feature_description ORDER BY COUNT(*) DESC LIMIT 1
SELECT MIN(room_count) FROM Properties
placeholder
SELECT p.property_id, a.county_state_province FROM Properties p JOIN Addresses a ON p.property_address_id = a.address_id
placeholder
SELECT COUNT(*) FROM `Properties` WHERE `parking_lots` = 'Y' OR `garage_yn` = 'Y'
SELECT `age_category_description` FROM `Ref_Age_Categories` WHERE `age_category_description` LIKE '%Mother%'
SELECT COUNT(*) FROM `Properties` WHERE `parking_lots` = '1' OR `garage_yn` = '1'
SELECT MIN(CAST(room_count AS INTEGER)) FROM Properties
placeholder
SELECT property_id, vendor_requested_price FROM Properties WHERE vendor_requested_price IS NOT NULL ORDER BY vendor_requested_price ASC LIMIT 1
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT COUNT(DISTINCT room_size) FROM Rooms
SELECT COUNT(DISTINCT room_size) FROM Rooms
SELECT MAX(search_datetime) FROM User_Searches
SELECT search_datetime FROM User_Searches ORDER BY search_datetime DESC LIMIT 1
SELECT search_datetime, search_string FROM User_Searches ORDER BY search_string DESC
SELECT search_string, search_datetime FROM User_Searches ORDER BY search_string DESC
placeholder
placeholder
SELECT AVG(CAST(room_count AS REAL)) FROM Properties
placeholder
placeholder
placeholder
SELECT u.age_category_code FROM User_Searches us JOIN Users u ON us.user_id = u.user_id ORDER BY us.search_datetime ASC LIMIT 1
placeholder
placeholder
placeholder
SELECT COUNT(*) FROM `Users` u JOIN `User_Searches` us ON u.user_id = us.user_id WHERE u.is_buyer = '1'
SELECT date_registered FROM Users WHERE login_name = 'ratione'
SELECT date_registered FROM Users WHERE login_name = 'ratione'
SELECT first_name, middle_name, last_name, login_name FROM Users WHERE is_seller = 'Y'
SELECT first_name, middle_name, last_name, login_name FROM Users WHERE is_seller = '1'
placeholder
SELECT COUNT(*) AS photo_count, property_id FROM `Property_Photos` GROUP BY property_id
placeholder
placeholder
SELECT property_id, COUNT(*) AS photo_count FROM Property_Photos GROUP BY property_id
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT age_category_description FROM `Ref_Age_Categories` WHERE age_category_code = 'Over 60'
placeholder
placeholder
SELECT `age_category_description` FROM `Ref_Age_Categories` WHERE `age_category_code` = 'Over 60'
SELECT room_size, COUNT(*) AS room_size_count FROM Rooms GROUP BY room_size
placeholder
SELECT a.country FROM Users u JOIN Addresses a ON u.user_address_id = a.address_id WHERE u.first_name = 'Robbie'
SELECT a.country FROM Users u JOIN Addresses a ON u.user_address_id = a.address_id WHERE u.first_name = 'Robbie'
placeholder
placeholder
placeholder
SELECT COUNT(*) FROM bike WHERE weight > 780
placeholder
SELECT product_name , weight FROM bike ORDER BY price ASC
placeholder
placeholder
placeholder
SELECT heat , name , nation FROM cyclist
SELECT MAX(weight) AS max_weight, MIN(weight) AS min_weight FROM bike
placeholder
SELECT AVG(price) FROM bike WHERE material = 'Carbon CC'
SELECT name, result FROM cyclist WHERE nation != 'Russia'
SELECT DISTINCT b.id, b.product_name FROM bike b JOIN cyclists_own_bikes cob ON b.id = cob.bike_id WHERE cob.purchase_year > 2015
placeholder
SELECT COUNT(DISTINCT heat) FROM cyclist
placeholder
SELECT product_name FROM bike WHERE material LIKE '%fiber%'
SELECT DISTINCT b.product_name FROM cyclist c JOIN cyclists_own_bikes cbo ON c.id = cbo.cyclist_id JOIN bike b ON cbo.bike_id = b.id WHERE c.nation IN ('Russia', 'Great Britain')
placeholder
placeholder
SELECT Flavor , Price FROM goods WHERE Food = 'Cake' ORDER BY Price DESC LIMIT 1
placeholder
placeholder
SELECT Id , Flavor FROM goods WHERE Food = 'cake' ORDER BY Price DESC LIMIT 1
SELECT Id FROM goods WHERE Flavor = 'apple'
placeholder
placeholder
SELECT Id FROM goods WHERE Price < 3.0
SELECT Id FROM goods WHERE Price < 3
placeholder
SELECT Id FROM goods WHERE Flavor = 'apple'
SELECT CustomerId FROM receipts GROUP BY CustomerId HAVING COUNT(*) >= 15
placeholder
placeholder
placeholder
SELECT COUNT(*) FROM goods WHERE Food = 'Cake'
placeholder
placeholder
placeholder
SELECT Flavor FROM goods WHERE Food = 'Croissant'
placeholder
SELECT Food, AVG(Price) AS AveragePrice, MAX(Price) AS MaximumPrice, MIN(Price) AS MinimumPrice FROM goods GROUP BY Food
SELECT COUNT(*) FROM goods WHERE Food = 'cake'
SELECT AVG(Price) AS AveragePrice, MIN(Price) AS MinimumPrice, MAX(Price) AS MaximumPrice, Food FROM goods GROUP BY Food
placeholder
SELECT DISTINCT Flavor FROM goods WHERE Food = 'croissant'
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT COUNT(*) AS goods_count, Food FROM goods GROUP BY Food
SELECT r.ReceiptNumber FROM customers c JOIN receipts r ON c.Id = r.CustomerId JOIN items i ON r.ReceiptNumber = i.Receipt JOIN goods g ON i.Item = g.Id WHERE c.LastName = 'Logan' AND g.Flavor = 'croissant'
SELECT COUNT(*) AS count_of_goods, Food FROM goods GROUP BY Food
SELECT AVG(Price) AS AveragePrice, Food FROM goods GROUP BY Food
placeholder
placeholder
SELECT Id FROM goods WHERE Flavor = 'Apricot' AND Price < 5.0
SELECT AVG(Price) AS average_price, Food FROM goods GROUP BY Food
SELECT Flavor FROM goods WHERE Food = 'Cake' AND Price > 10
SELECT Id FROM goods WHERE Flavor = 'Apricot' AND Price < 5.0
SELECT g.Flavor FROM goods g JOIN items i ON g.Id = i.Item GROUP BY g.Flavor ORDER BY COUNT(*) ASC LIMIT 1
SELECT DISTINCT Id, Price FROM goods WHERE Price < (SELECT AVG(Price) FROM goods)
placeholder
SELECT Flavor FROM goods WHERE Food = 'cake' AND Price > 10
SELECT Id FROM goods WHERE Id LIKE '%APP%'
SELECT DISTINCT Id, Price FROM goods WHERE Price < (SELECT AVG(Price) FROM goods)
SELECT Id FROM goods WHERE Id LIKE '%APP%'
placeholder
placeholder
placeholder
placeholder
SELECT Id , Price FROM goods WHERE Id = '70'
SELECT LastName FROM customers ORDER BY LastName
SELECT LastName FROM customers ORDER BY LastName
SELECT DISTINCT Id FROM goods ORDER BY Id
SELECT Id FROM goods ORDER BY Id
placeholder
SELECT ReceiptNumber , Date FROM receipts ORDER BY Date DESC LIMIT 1
placeholder
SELECT Id FROM goods WHERE Flavor IN ('Cookie', 'Cake') AND Price BETWEEN 3 AND 7
SELECT Id FROM goods WHERE Flavor IN ('Cookie', 'Cake') AND Price BETWEEN 3 AND 7
...
SELECT c.FirstName, c.LastName FROM receipts r JOIN customers c ON r.CustomerId = c.Id ORDER BY r.Date ASC LIMIT 1
SELECT AVG(Price) FROM goods WHERE Flavor = 'blackberry' OR Flavor = 'blueberry'
SELECT AVG(Price) FROM goods WHERE Flavor = 'blackberry' OR Flavor = 'blueberry'
placeholder
SELECT MIN(Price) FROM goods WHERE Flavor = 'cheese'
placeholder
placeholder
SELECT c.FirstName, c.LastName FROM customers c JOIN receipts r ON c.Id = r.CustomerId ORDER BY r.Date ASC LIMIT 1
placeholder
SELECT * FROM goods WHERE Flavor = 'cheese' ORDER BY Price ASC LIMIT 1
placeholder
SELECT MAX( Price ) AS max_price, MIN( Price ) AS min_price, AVG( Price ) AS avg_price, Flavor FROM goods GROUP BY Flavor ORDER BY Flavor
SELECT Date FROM receipts GROUP BY Date ORDER BY COUNT(*) DESC LIMIT 3
SELECT MIN( Price ) AS LowestPrice, MAX( Price ) AS HighestPrice, Food FROM goods
SELECT Date FROM receipts GROUP BY Date ORDER BY COUNT(*) DESC LIMIT 3
SELECT c.FirstName, c.LastName, COUNT(r.ReceiptNumber) AS ShopCount FROM customers c JOIN receipts r ON c.Id = r.CustomerId GROUP BY c.Id ORDER BY ShopCount DESC LIMIT 1
placeholder
SELECT MIN( Price ) AS MinPrice, MAX( Price ) AS MaxPrice, Food FROM goods GROUP BY Food ORDER BY Food
placeholder
placeholder
SELECT COUNT(DISTINCT CustomerId) AS distinct_customers, Date FROM receipts GROUP BY Date
SELECT Id FROM goods WHERE Price > 2 * (SELECT AVG( Price ) FROM goods )
placeholder
SELECT Id FROM goods WHERE Price > (2 * (SELECT AVG( Price ) FROM goods ))
placeholder
SELECT Id FROM goods WHERE Food = 'Cookie' AND Price < (SELECT MIN(Price) FROM goods WHERE Food = 'Croissant')
SELECT Id , Flavor , Food FROM goods ORDER BY Price
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT Flavor FROM goods WHERE Food = 'Cake' EXCEPT SELECT Flavor FROM goods WHERE Food = 'Tart'
placeholder
placeholder
placeholder
SELECT COUNT(*) FROM driver
placeholder
placeholder
SELECT COUNT(*) FROM `driver`
placeholder
placeholder
placeholder
SELECT AVG(Laps) FROM driver WHERE Age < 20
SELECT AVG(Laps) FROM driver WHERE Age < 20
placeholder
SELECT AVG( Age ) AS average_age, Make FROM driver GROUP BY Make
SELECT AVG(Age) AS average_age, Make FROM driver GROUP BY Make
placeholder
SELECT Make FROM `team` WHERE Car_Owner = Buddy Arrington
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT Driver FROM `driver` ORDER BY Age ASC
SELECT Driver FROM driver ORDER BY Age ASC
SELECT COUNT(*) FROM `driver` WHERE `Points` < 150
placeholder
SELECT d.Driver, c.Country FROM driver d JOIN country c ON d.Country = c.Country_Id
placeholder
SELECT Driver , Points FROM `driver` ORDER BY Points DESC
SELECT d.Driver, c.Country FROM `driver` d JOIN `country` c ON d.Country = c.Country_Id
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT Make, COUNT(*) AS driver_count FROM driver GROUP BY Make
placeholder
SELECT c.Capital FROM driver d JOIN country c ON d.Country = c.Country_Id ORDER BY CAST(d.Points AS REAL) DESC LIMIT 1
SELECT Make, COUNT(*) AS Number_of_Drivers FROM driver GROUP BY Make
SELECT t. Team FROM team t LEFT JOIN team_driver td ON t. Team_ID = td. Team_ID WHERE td. Team_ID IS NULL
SELECT Make FROM driver GROUP BY Make HAVING COUNT(*) >= 3
placeholder
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
placeholder
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
placeholder
SELECT Name FROM institution ORDER BY Name
SELECT Name FROM institution ORDER BY Founded ASC
placeholder
placeholder
SELECT Name FROM institution ORDER BY Founded
SELECT City , Province FROM institution
SELECT City , Province FROM institution
SELECT MAX( Enrollment ), MIN( Enrollment ) FROM institution
SELECT MAX( Enrollment ) AS Max_Enrollment , MIN( Enrollment ) AS Min_Enrollment FROM institution
placeholder
SELECT Affiliation FROM institution WHERE City != 'Vancouver'
placeholder
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT i.Name, c.Nickname FROM institution i JOIN Championship c ON i.Institution_ID = c.Institution_ID
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1
SELECT Affiliation FROM institution WHERE City != 'Vancouver'
SELECT i.Name FROM institution i JOIN Championship c ON i.Institution_ID = c.Institution_ID ORDER BY c.Number_of_Championships DESC
SELECT i. Name , c. Nickname FROM institution i JOIN Championship c ON i. Institution_ID = c. Institution_ID
SELECT i.Name FROM institution i JOIN Championship c ON i.Institution_ID = c.Institution_ID ORDER BY c.Number_of_Championships DESC
SELECT i.Name FROM institution i INNER JOIN Championship c ON i.Institution_ID = c.Institution_ID
SELECT SUM(c.Number_of_Championships) FROM institution i JOIN Championship c ON i.Institution_ID = c.Institution_ID WHERE i.Affiliation = 'public'
SELECT c. Nickname FROM institution i JOIN Championship c ON i. Institution_ID = c. Institution_ID ORDER BY i. Enrollment ASC LIMIT 1
SELECT COUNT(*) AS Institution_Count, Affiliation FROM institution GROUP BY Affiliation
SELECT Affiliation , COUNT(*) AS Number_of_Institutions FROM institution GROUP BY Affiliation
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT i.Name FROM institution i JOIN Championship c ON i.Institution_ID = c.Institution_ID WHERE c.Number_of_Championships >= 1
SELECT c. Nickname FROM Championship c JOIN institution i ON c. Institution_ID = i. Institution_ID ORDER BY i. Enrollment ASC LIMIT 1
SELECT c. Nickname FROM Championship c JOIN institution i ON c. Institution_ID = i. Institution_ID ORDER BY i. Capacity DESC
SELECT Enrollment FROM institution WHERE City = 'Vancouver' OR City = 'Calgary'
SELECT SUM(Enrollment) FROM institution WHERE City = 'Vancouver' OR City = 'Calgary'
SELECT COUNT(DISTINCT Province) FROM institution
SELECT COUNT(DISTINCT Province) FROM institution
SELECT * FROM Warehouses
SELECT * FROM Warehouses
placeholder
SELECT DISTINCT b.Contents FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code WHERE w.Location = 'New York'
SELECT Contents FROM Boxes WHERE Value > 150
placeholder
SELECT CAST(Founded AS INTEGER) AS Founded_Year FROM institution GROUP BY CAST(Founded AS INTEGER) HAVING COUNT(*) > 1
SELECT DISTINCT b.Contents FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code WHERE w.Location = 'New York'
SELECT Contents FROM Boxes WHERE Value > 150
placeholder
placeholder
SELECT AVG(Value) AS AverageValue, SUM(Value) AS TotalValue FROM Boxes
SELECT AVG(Capacity) AS AverageCapacity, SUM(Capacity) AS TotalCapacity FROM Warehouses
SELECT AVG(Value) AS AverageValue, SUM(Value) AS TotalValue FROM Boxes
SELECT AVG(Capacity) AS average_capacity, SUM(Capacity) AS total_capacity FROM Warehouses
placeholder
SELECT AVG(Value) FROM Boxes
SELECT Contents FROM Boxes ORDER BY Value DESC LIMIT 1
SELECT AVG(Value) AS AverageValue, MAX(Value) AS MaximumValue, Contents FROM Boxes GROUP BY Contents
SELECT AVG(Value) AS AverageValue, MAX(Value) AS MaximumValue, Contents FROM Boxes GROUP BY Contents
SELECT AVG(Value) AS AverageValue, Warehouse FROM Boxes GROUP BY Warehouse
SELECT AVG(Value) FROM Boxes
SELECT DISTINCT Contents FROM Boxes
SELECT DISTINCT Contents FROM Boxes
SELECT DISTINCT Location FROM Warehouses
SELECT COUNT(DISTINCT Contents) FROM Boxes
SELECT COUNT(DISTINCT Contents) FROM Boxes
SELECT DISTINCT Location FROM Warehouses
SELECT b.Code FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code WHERE w.Location = 'Chicago' OR w.Location = 'New York'
SELECT Contents FROM Boxes GROUP BY Contents ORDER BY SUM(Value) DESC LIMIT 1
SELECT SUM(b.Value) FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code WHERE w.Location = 'Chicago' OR w.Location = 'New York'
SELECT b.Code FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code WHERE w.Location = 'Chicago' OR w.Location = 'New York'
SELECT SUM(b.Value) FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code WHERE w.Location IN ('Chicago', 'New York')
placeholder
SELECT DISTINCT Warehouse FROM Boxes WHERE Contents = 'Rocks' OR Contents = 'Scissors'
SELECT DISTINCT b.Contents FROM Boxes AS b JOIN Warehouses AS w ON b.Warehouse = w.Code WHERE w.Location = 'Chicago' OR w.Location = 'New York'
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT Code, Contents FROM Boxes ORDER BY Value
SELECT Code, Contents FROM Boxes ORDER BY Value
SELECT Code, Contents FROM Boxes ORDER BY Value ASC LIMIT 1
SELECT DISTINCT Contents FROM Boxes WHERE Value > (SELECT AVG(Value) FROM Boxes)
placeholder
SELECT Code, Contents FROM Boxes ORDER BY Value ASC LIMIT 1
SELECT DISTINCT Contents FROM Boxes ORDER BY Contents
SELECT DISTINCT Contents FROM Boxes ORDER BY Contents
SELECT DISTINCT Contents FROM Boxes WHERE Value > (SELECT AVG(Value) FROM Boxes)
placeholder
SELECT Warehouse, AVG(Value) AS AvgValue FROM Boxes GROUP BY Warehouse HAVING AVG(Value) > 150
SELECT Code FROM Boxes WHERE Value > ANY (SELECT Value FROM Boxes WHERE Contents = 'Rocks')
placeholder
SELECT AVG(Value) AS AverageValue FROM Boxes GROUP BY Warehouse HAVING AVG(Value) > 150
placeholder
placeholder
SELECT SUM(Value) AS TotalValue, COUNT(*) AS NumberOfBoxes, Contents FROM Boxes GROUP BY Contents
placeholder
placeholder
SELECT Contents, SUM(Value) AS TotalValue, COUNT(*) AS NumberOfBoxes FROM Boxes GROUP BY Contents
SELECT SUM(Capacity) AS TotalCapacity, AVG(Capacity) AS AverageCapacity, MAX(Capacity) AS MaximumCapacity, Location FROM Warehouses GROUP BY Location
SELECT SUM(Capacity) FROM Warehouses
SELECT Location, SUM(Capacity) AS TotalCapacity, AVG(Capacity) AS AverageCapacity, MAX(Capacity) AS MaximumCapacity FROM Warehouses GROUP BY Location
SELECT SUM(Capacity) FROM Warehouses
SELECT W.Location, MAX(B.Value) AS MostExpensiveValue FROM Boxes B JOIN Warehouses W ON B.Warehouse = W.Code GROUP BY W.Location
SELECT COUNT(*) AS box_count, Warehouse FROM Boxes GROUP BY Warehouse
SELECT w.Code, COUNT(b.Code) AS BoxCount FROM Warehouses w JOIN Boxes b ON w.Code = b.Warehouse GROUP BY w.Code
SELECT b.Code, w.Location FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code
SELECT B.Code, W.Location FROM Boxes B JOIN Warehouses W ON B.Warehouse = W.Code
SELECT MAX(b.Value) FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code GROUP BY w.Location
SELECT COUNT(DISTINCT Warehouse) FROM Boxes WHERE Contents = 'Rocks'
SELECT b.Code FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code WHERE w.Location = 'Chicago'
SELECT COUNT(*) AS box_count, Warehouse FROM Boxes GROUP BY Warehouse
SELECT COUNT(*) AS box_count, Warehouse FROM Boxes GROUP BY Warehouse
SELECT COUNT(DISTINCT Contents) AS distinct_content_count, Warehouse FROM Boxes GROUP BY Warehouse
SELECT COUNT(DISTINCT W.Location) FROM Boxes B JOIN Warehouses W ON B.Warehouse = W.Code WHERE B.Contents = 'Rocks'
SELECT B.Code FROM Boxes AS B JOIN Warehouses AS W ON B.Warehouse = W.Code WHERE W.Location = 'Chicago'
SELECT University_Name , City , State FROM university ORDER BY University_Name
SELECT University_Name , City , State FROM university ORDER BY University_Name
SELECT SUM(b.Value) FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code WHERE w.Location != 'Chicago'
SELECT COUNT(*) FROM university WHERE State = 'Illinois' OR State = 'Ohio'
SELECT w.Code FROM Warehouses w JOIN Boxes b ON w.Code = b.Warehouse GROUP BY w.Code HAVING COUNT(*) > w.Capacity
SELECT COUNT(*) FROM university WHERE State = 'Illinois' OR State = 'Ohio'
SELECT MAX(Enrollment) AS max_enrollment, AVG(Enrollment) AS avg_enrollment, MIN(Enrollment) AS min_enrollment FROM university
SELECT MAX(Enrollment) AS Maximum_Enrollment, AVG(Enrollment) AS Average_Enrollment, MIN(Enrollment) AS Minimum_Enrollment FROM university
SELECT SUM(b.Value) FROM Boxes AS b JOIN Warehouses AS w ON b.Warehouse = w.Code WHERE w.Location != 'Chicago'
SELECT DISTINCT Home_Conference FROM university
SELECT DISTINCT Home_Conference FROM university
SELECT Home_Conference, COUNT(*) AS University_Count FROM university GROUP BY Home_Conference
SELECT COUNT(*) AS University_Count, Home_Conference FROM university GROUP BY Home_Conference
SELECT Team_Name FROM university WHERE Enrollment > (SELECT AVG(Enrollment) FROM university)
SELECT Team_Name FROM university WHERE Enrollment > (SELECT AVG( Enrollment ) FROM university )
placeholder
placeholder
SELECT Major_Name , Major_Code FROM major ORDER BY Major_Code
SELECT Home_Conference FROM university GROUP BY Home_Conference ORDER BY SUM(Enrollment) ASC LIMIT 1
SELECT Home_Conference FROM university GROUP BY Home_Conference HAVING AVG(Enrollment) > 2000
SELECT Major_Name , Major_Code FROM major ORDER BY Major_Code
SELECT Home_Conference FROM university GROUP BY Home_Conference HAVING AVG(Enrollment) > 2000
SELECT State FROM university GROUP BY State ORDER BY COUNT(*) DESC LIMIT 1
placeholder
SELECT mr.Rank, m.Major_Name FROM major_ranking mr JOIN university u ON mr.University_ID = u.University_ID JOIN major m ON mr.Major_ID = m.Major_ID WHERE u.University_Name = 'Augustana College'
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT u.University_Name FROM university u JOIN overall_ranking o ON u.University_ID = o.University_ID ORDER BY o.Research_point DESC LIMIT 1
SELECT u.University_Name FROM overall_ranking AS ranking JOIN university u ON ranking.University_ID = u.University_ID ORDER BY ranking.Research_point DESC LIMIT 1
placeholder
SELECT u.University_Name FROM university u JOIN overall_ranking o ON u.University_ID = o.University_ID ORDER BY o.Reputation_point ASC
placeholder
SELECT u.University_Name FROM university u JOIN overall_ranking o ON u.University_ID = o.University_ID ORDER BY o.Reputation_point ASC
SELECT u.University_Name, or.Rank FROM university u JOIN overall_ranking or ON u.University_ID = or.University_ID WHERE u.State = 'Wisconsin'
placeholder
placeholder
SELECT SUM(u.Enrollment) FROM overall_ranking o JOIN university u ON o.University_ID = u.University_ID WHERE o.Rank <= 5
placeholder
SELECT SUM(u.Enrollment) FROM university u JOIN overall_ranking o ON u.University_ID = o.University_ID WHERE o.Rank <= 5
SELECT State FROM university WHERE Enrollment < 3000 GROUP BY State HAVING COUNT(*) > 2
SELECT Title FROM Movies WHERE Rating IS NULL
SELECT Title FROM Movies WHERE Rating = 'G'
SELECT u.University_Name, o.Citation_point FROM university u JOIN overall_ranking o ON u.University_ID = o.University_ID ORDER BY o.Reputation_point DESC LIMIT 3
SELECT State FROM university WHERE Enrollment < 3000 GROUP BY State HAVING COUNT(*) > 2
SELECT Title FROM Movies WHERE Rating IS NULL
SELECT Title FROM Movies WHERE Rating = 'G'
placeholder
SELECT m.Title FROM Movies m JOIN MovieTheaters mt ON m.Code = mt.Movie WHERE mt.Name = 'Odeon'
SELECT m.Title FROM MovieTheaters mt JOIN Movies m ON mt.Movie = m.Code WHERE mt.Name = 'Odeon'
placeholder
SELECT COUNT(*) FROM Movies WHERE Rating = 'G'
SELECT COUNT(*) FROM Movies WHERE Rating = 'G'
placeholder
SELECT COUNT(DISTINCT Name) FROM MovieTheaters
SELECT COUNT(DISTINCT M.Code) FROM Movies M JOIN MovieTheaters MT ON M.Code = MT.Movie
SELECT COUNT(*) FROM MovieTheaters
SELECT Rating FROM Movies WHERE Title LIKE '%Citizen%'
SELECT Rating FROM Movies WHERE Title LIKE '%Citizen%'
SELECT M.Title, MT.Name FROM Movies AS M JOIN MovieTheaters AS MT ON M.Code = MT.Movie
SELECT mt.Name FROM MovieTheaters mt JOIN Movies m ON mt.Movie = m.Code WHERE m.Rating = 'G' OR m.Rating = 'PG'
SELECT M.Title, MT.Name FROM Movies AS M JOIN MovieTheaters AS MT ON M.Code = MT.Movie
SELECT m.Title FROM Movies m JOIN MovieTheaters mt ON m.Code = mt.Movie WHERE mt.Name = 'Odeon' OR mt.Name = 'Imperial'
placeholder
placeholder
placeholder
SELECT Title FROM Movies ORDER BY Title ASC
SELECT Title FROM Movies ORDER BY Rating
SELECT Title FROM Movies ORDER BY Title
placeholder
SELECT Title FROM Movies ORDER BY Rating
placeholder
placeholder
placeholder
placeholder
SELECT COUNT(*) AS movie_count, Rating FROM Movies GROUP BY Rating
SELECT m.Title FROM Movies m JOIN MovieTheaters mt ON m.Code = mt.Movie GROUP BY m.Title ORDER BY COUNT(*) DESC LIMIT 1
SELECT m.Title FROM Movies m JOIN MovieTheaters mt ON m.Code = mt.Movie GROUP BY m.Title ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM Movies WHERE Rating IS NOT NULL
SELECT COUNT(*) AS movie_count, Rating FROM Movies GROUP BY Rating
placeholder
SELECT COUNT(*) FROM Movies WHERE Rating IS NOT NULL
placeholder
SELECT Name FROM MovieTheaters WHERE Movie IS NULL
SELECT Title FROM Movies
SELECT mt.Name FROM MovieTheaters mt JOIN Movies m ON mt.Movie = m.Code WHERE m.Rating = 'G'
SELECT Name FROM MovieTheaters WHERE Movie IS NULL
SELECT mt.Name FROM MovieTheaters mt JOIN Movies m ON mt.Movie = m.Code WHERE m.Rating = 'G'
SELECT Title FROM Movies
SELECT DISTINCT Rating FROM Movies
SELECT DISTINCT Rating FROM Movies
placeholder
SELECT * FROM Movies WHERE Rating IS NULL
SELECT * FROM Movies WHERE Rating IS NULL
SELECT c.Name FROM Package p JOIN Client c ON p.Recipient = c.AccountNumber ORDER BY p.Weight DESC LIMIT 1
placeholder
SELECT SUM(p.Weight) FROM Package p JOIN Client c ON p.Sender = c.AccountNumber WHERE c.Name = 'Leo Wong'
placeholder
SELECT Salary, Position FROM Employee WHERE Name = 'Turanga Leela'
SELECT Salary, Position FROM Employee WHERE Name = 'Turanga Leela'
SELECT Position FROM Employee WHERE Name = 'Amy Wong'
SELECT Position FROM Employee WHERE Name = 'Amy Wong'
SELECT AVG(Salary) FROM Employee WHERE Position = 'Intern'
SELECT AVG(Salary) FROM Employee WHERE Position = 'intern'
placeholder
placeholder
placeholder
placeholder
SELECT p.PackageNumber FROM Package p JOIN Client c ON p.Recipient = c.AccountNumber WHERE c.Name = 'Leo Wong'
SELECT hc.Level FROM Employee e JOIN Has_Clearance hc ON e.EmployeeID = hc.Employee WHERE e.Position = 'Physician'
SELECT COUNT(*) FROM Package JOIN Client ON Package.Sender = Client.AccountNumber WHERE Client.Name = 'Leo Wong'
SELECT hc.Level FROM Employee e JOIN Has_Clearance hc ON e.EmployeeID = hc.Employee WHERE e.Position = 'Physician'
placeholder
placeholder
placeholder
SELECT p.PackageNumber, p.Weight FROM Package p JOIN Client c ON p.Sender = c.AccountNumber WHERE c.Name LIKE 'John%' ORDER BY p.Weight DESC LIMIT 1
SELECT p.Contents FROM Client c JOIN Package p ON c.AccountNumber = p.Sender WHERE c.Name = 'John Zoidfarb'
SELECT p.Contents FROM Package p JOIN Client c ON p.Sender = c.AccountNumber WHERE c.Name = 'John Zoidfarb'
SELECT PackageNumber, Weight FROM Package ORDER BY Weight ASC LIMIT 3
SELECT PackageNumber, Weight FROM Package ORDER BY Weight ASC LIMIT 3
placeholder
SELECT c.Name, COUNT(*) AS PackageCount FROM Package p JOIN Client c ON p.Sender = c.AccountNumber GROUP BY c.Name ORDER BY PackageCount DESC LIMIT 1
placeholder
placeholder
SELECT Coordinates FROM Planet WHERE Name = 'Mars'
SELECT c.Name FROM Client c JOIN Package p ON c.AccountNumber = p.Sender GROUP BY c.AccountNumber HAVING COUNT(p.PackageNumber) > 1
SELECT Coordinates FROM Planet WHERE Name = 'Mars'
SELECT Client.Name, COUNT(*) AS PackageCount FROM Package JOIN Client ON Package.Recipient = Client.AccountNumber GROUP BY Client.Name ORDER BY PackageCount ASC LIMIT 1
placeholder
SELECT Name, Coordinates FROM Planet ORDER BY Name
SELECT Name, Coordinates FROM Planet ORDER BY Name ASC
SELECT S.ShipmentID FROM Shipment S JOIN Employee E ON S.Manager = E.EmployeeID WHERE E.Name = 'Phillip J. Fry'
SELECT Date FROM Shipment
SELECT Date FROM Shipment
SELECT S.ShipmentID FROM Shipment S JOIN Employee E ON S.Manager = E.EmployeeID WHERE E.Name = 'Phillip J Fry'
placeholder
SELECT c.Name FROM Client c JOIN Package p ON c.AccountNumber = p.Recipient GROUP BY c.AccountNumber ORDER BY COUNT(*) ASC LIMIT 1
SELECT s.ShipmentID FROM Shipment s JOIN Planet p ON s.Planet = p.PlanetID WHERE p.Name = 'Mars'
SELECT S.ShipmentID FROM Shipment S JOIN Planet P ON S.Planet = P.PlanetID WHERE P.Name = 'Mars'
placeholder
SELECT P.Name AS PlanetName, COUNT(S.ShipmentID) AS TotalShipments FROM Shipment S JOIN Planet P ON S.Planet = P.PlanetID GROUP BY P.Name
SELECT p.Name FROM Shipment s JOIN Planet p ON s.Planet = p.PlanetID GROUP BY p.Name ORDER BY COUNT(s.ShipmentID) DESC LIMIT 1
SELECT p.Name FROM Shipment s JOIN Planet p ON s.Planet = p.PlanetID GROUP BY p.Name ORDER BY COUNT(s.ShipmentID) DESC LIMIT 1
SELECT e.Name, COUNT(s.ShipmentID) AS NumberOfShipments FROM Shipment s JOIN Employee e ON s.Manager = e.EmployeeID GROUP BY e.EmployeeID
SELECT COUNT(s.ShipmentID) AS shipment_count, e.Name AS manager_name FROM Shipment s JOIN Employee e ON s.Manager = e.EmployeeID GROUP BY e.EmployeeID, e.Name
placeholder
SELECT SUM(p.Weight) FROM Package p JOIN Shipment s ON p.Shipment = s.ShipmentID JOIN Planet pl ON s.Planet = pl.PlanetID WHERE pl.Name = 'Mars'
placeholder
placeholder
placeholder
SELECT SUM(p.Weight) FROM Package p JOIN Shipment s ON p.Shipment = s.ShipmentID JOIN Planet pl ON s.Planet = pl.PlanetID WHERE pl.Name = 'Mars'
SELECT P.Name AS PlanetName, SUM(pkg.Weight) AS TotalWeight FROM Package pkg JOIN Shipment s ON pkg.Shipment = s.ShipmentID JOIN Planet P ON s.Planet = P.PlanetID GROUP BY P.Name
placeholder
SELECT PackageNumber, Weight FROM Package WHERE Weight BETWEEN 10 AND 30
SELECT p.Name FROM Planet p JOIN Shipment s ON p.PlanetID = s.Planet JOIN Package pkg ON s.ShipmentID = pkg.Shipment GROUP BY p.Name HAVING SUM(pkg.Weight) > 30
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT Name FROM Employee WHERE Salary BETWEEN 5000 AND 10000
SELECT p.Name FROM Planet p JOIN Has_Clearance hc ON p.PlanetID = hc.Planet GROUP BY p.PlanetID HAVING COUNT(hc.Employee) = 1
placeholder
SELECT Name FROM Employee WHERE Salary BETWEEN 5000 AND 10000
placeholder
SELECT Name FROM Employee WHERE Salary > (SELECT AVG(Salary) FROM Employee) OR Salary > 5000
placeholder
placeholder
placeholder
SELECT COUNT(*) FROM game
SELECT COUNT(*) FROM game
SELECT Title , Developers FROM game ORDER BY Units_sold_Millions DESC
placeholder
SELECT Title , Developers FROM game ORDER BY Units_sold_Millions DESC
SELECT AVG(Units_sold_Millions) FROM game WHERE Developers != 'Nintendo'
SELECT Platform_name , Market_district FROM platform
SELECT Platform_name , Market_district FROM platform
SELECT AVG(Units_sold_Millions) FROM game WHERE Developers != 'Nintendo'
SELECT Platform_name , Platform_ID FROM platform WHERE Download_rank = 1
SELECT Platform_name , Platform_ID FROM platform WHERE Download_rank = 1
SELECT MAX( Rank_of_the_year ) AS max_rank, MIN( Rank_of_the_year ) AS min_rank FROM player
SELECT MAX( Rank_of_the_year ) AS max_rank, MIN( Rank_of_the_year ) AS min_rank FROM player
SELECT COUNT(*) FROM player WHERE Rank_of_the_year <= 3
SELECT COUNT(*) FROM player WHERE Rank_of_the_year < 3
SELECT Player_name FROM player ORDER BY Player_name
SELECT Player_name FROM player ORDER BY Player_name
placeholder
placeholder
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC
SELECT Player_name , College FROM player ORDER BY Rank_of_the_year DESC
placeholder
SELECT g.Title, p.Platform_name FROM game g JOIN platform p ON g.Platform_ID = p.Platform_ID
placeholder
placeholder
placeholder
placeholder
SELECT Franchise, COUNT(*) AS Number_of_Games FROM game GROUP BY Franchise
placeholder
placeholder
placeholder
SELECT COUNT(*) AS game_count, Franchise FROM game GROUP BY Franchise
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*) >= 2
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*) >= 2
SELECT g.Title FROM game g JOIN platform p ON g.Platform_ID = p.Platform_ID WHERE p.Market_district = 'Asia' OR p.Market_district = 'USA'
placeholder
SELECT DISTINCT Franchise FROM game
SELECT Franchise FROM game GROUP BY Franchise ORDER BY COUNT(*) DESC LIMIT 1
SELECT p. Player_name FROM player p LEFT JOIN game_player gp ON p. Player_ID = gp. Player_ID WHERE gp. Game_ID IS NULL
SELECT Name FROM press ORDER BY Year_Profits_billion DESC
SELECT p.Player_name FROM player p LEFT JOIN game_player gp ON p.Player_ID = gp.Player_ID WHERE gp.Player_ID IS NULL
SELECT DISTINCT Franchise FROM game
SELECT Name FROM press ORDER BY Year_Profits_billion DESC
placeholder
SELECT Name FROM press WHERE Year_Profits_billion > 15.0 OR Month_Profits_billion > 1.0
placeholder
SELECT AVG(Year_Profits_billion) AS average_profit_billion, MAX(Year_Profits_billion) AS maximum_profit_billion FROM press
placeholder
SELECT AVG(Year_Profits_billion) AS Average_Yearly_Profit, MAX(Year_Profits_billion) AS Maximum_Yearly_Profit, Press_ID FROM press GROUP BY Press_ID
SELECT Name FROM press ORDER BY Month_Profits_billion DESC LIMIT 1
SELECT Name FROM press ORDER BY Month_Profits_billion DESC LIMIT 1
SELECT COUNT(*) FROM author WHERE Age < 30
placeholder
SELECT COUNT(*) FROM author WHERE Age < 30
placeholder
SELECT AVG( Age ) AS Average_Age , Gender FROM author GROUP BY Gender
SELECT Gender, AVG(Age) AS Average_Age FROM author GROUP BY Gender
` but the content did not contain the actual SQL query body — instead, it contained a partially rendered reasoning section. 2. The key issue is that the reasoning block was mistakenly included inside the SQL query block, which caused parsing errors. In the final output format, only the SQL query should appear after the reasoning block, without any additional text or malformed structure. 3. Correcting this, I will now generate a clean, self-contained SQL query that: - Uses only the press table (as it contains publisher names, year profits, and monthly profits), - Filters publishers where either: - Year_Profits_billion > 15 - OR Month_Profits_billion > 1 - Returns only the Name of such publishers. 4. SQLite supports direct comparison with numeric values and logical OR. No joins are needed since all required data is in the press table. 5. The query is valid, simple, and adheres strictly to the schema and the question. 6. Final output must strictly have only the SQL query inside the
SELECT COUNT(*) AS author_count, Gender FROM author WHERE Age > 30 GROUP BY Gender
SELECT COUNT(*) AS author_count, Gender FROM author WHERE Age > 30 GROUP BY Gender
SELECT COUNT(*) AS book_count, Book_Series FROM book GROUP BY Book_Series
SELECT Title FROM book ORDER BY Release_date DESC
SELECT Title FROM book ORDER BY Release_date DESC
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT a.Name, a.Age FROM author a LEFT JOIN book b ON a.Author_ID = b.Author_ID WHERE b.Author_ID IS NULL
placeholder
placeholder
placeholder
placeholder
SELECT a.Name FROM author a JOIN book b ON a.Author_ID = b.Author_ID GROUP BY a.Name HAVING COUNT(b.Book_ID) > 1
SELECT a.Name FROM author a JOIN book b ON a.Author_ID = b.Author_ID GROUP BY a.Author_ID HAVING COUNT(b.Book_ID) > 1
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT a.Name, a.Gender FROM book b JOIN author a ON b.Author_ID = a.Author_ID GROUP BY a.Author_ID ORDER BY COUNT(b.Book_ID) DESC LIMIT 1
SELECT COUNT(*) FROM Authors
SELECT author_name, other_details FROM Authors
SELECT author_name FROM Authors
placeholder
SELECT COUNT(*) FROM Documents
SELECT other_details FROM Authors WHERE author_name = 'Addison Denesik'
SELECT author_name FROM Documents WHERE document_id = 4
SELECT author_name FROM Documents WHERE document_name = 'Travel to Brazil'
SELECT document_name, document_description FROM Documents
placeholder
SELECT COUNT(*) FROM Documents WHERE author_name = 'Era Kerluke'
placeholder
placeholder
SELECT a.author_name FROM Authors a JOIN Documents d ON a.author_name = d.author_name GROUP BY a.author_name ORDER BY COUNT(d.document_id) DESC LIMIT 1
SELECT A.author_name, COUNT(D.document_id) AS number_of_documents FROM Authors A JOIN Documents D ON A.author_name = D.author_name GROUP BY A.author_name
SELECT a.author_name FROM Authors a JOIN Documents d ON a.author_name = d.author_name GROUP BY a.author_name HAVING COUNT(d.document_id) >= 2
placeholder
SELECT COUNT(*) FROM Business_Processes
SELECT next_process_id, process_name, process_description FROM Business_Processes WHERE process_id = 9
SELECT COUNT(*) AS number_of_process_outcomes FROM Process_Outcomes
SELECT process_outcome_code, process_outcome_description FROM Process_Outcomes
SELECT COUNT(*) FROM Staff
SELECT COUNT(*) AS number_of_process_status FROM Process_Status
SELECT process_status_code, process_status_description FROM Process_Status
SELECT process_outcome_description FROM Process_Outcomes WHERE process_outcome_code = 'working'
SELECT process_status_description FROM Process_Status WHERE process_status_code = 'ct'
SELECT COUNT(*) AS number_of_staff_roles FROM Ref_Staff_Roles
SELECT staff_role_code, staff_role_description FROM Ref_Staff_Roles
SELECT staff_id, staff_details FROM Staff
SELECT staff_role_description FROM Ref_Staff_Roles WHERE staff_role_code = 'HR'
SELECT staff_details FROM Staff WHERE staff_id = 100
placeholder
SELECT document_id FROM Documents WHERE document_id NOT IN ( SELECT document_id FROM Documents_Processes )
placeholder
placeholder
placeholder
placeholder
SELECT staff_id, COUNT(*) FROM Staff_in_Processes GROUP BY staff_id
placeholder
placeholder
SELECT COUNT(*) FROM Agencies
SELECT process_id, COUNT(*) AS document_count FROM Documents_Processes GROUP BY process_id
SELECT COUNT(*) FROM Agencies
placeholder
placeholder
SELECT agency_id, agency_details FROM Agencies
SELECT COUNT(*) AS client_count FROM Clients
SELECT agency_id, agency_details FROM Agencies
SELECT client_id, client_details FROM Clients
SELECT COUNT(*) FROM Clients
SELECT client_id, client_details FROM Clients
SELECT agency_id, COUNT(*) AS client_count FROM Clients GROUP BY agency_id
SELECT a.agency_details FROM Clients c JOIN Agencies a ON c.agency_id = a.agency_id WHERE c.client_details = 'Mac'
placeholder
SELECT a.agency_details FROM Clients c JOIN Agencies a ON c.agency_id = a.agency_id WHERE c.client_details LIKE '%Mac%'
placeholder
SELECT sic_code, COUNT(*) AS client_count FROM Clients GROUP BY sic_code
placeholder
placeholder
placeholder
SELECT COUNT(*) AS client_count, sic_code FROM Clients GROUP BY sic_code
placeholder
SELECT a.agency_id, a.agency_details FROM Agencies a JOIN Clients c ON a.agency_id = c.agency_id
SELECT client_id, client_details FROM Clients WHERE sic_code = 'Bad'
SELECT client_details FROM Clients WHERE sic_code = 'Bad'
placeholder
placeholder
SELECT COUNT(*) FROM `Invoices`
SELECT COUNT(*) FROM `Invoices`
SELECT A.agency_id, A.agency_details FROM Agencies A JOIN Clients C ON A.agency_id = C.agency_id
SELECT invoice_id, invoice_status, invoice_details FROM Invoices
SELECT COUNT(*) AS invoice_count, client_id FROM Invoices GROUP BY client_id
SELECT c.client_id, c.client_details FROM Clients c JOIN Invoices i ON c.client_id = i.client_id GROUP BY c.client_id ORDER BY COUNT(i.invoice_id) DESC LIMIT 1
placeholder
SELECT client_id FROM Invoices GROUP BY client_id HAVING COUNT(*) >= 2
SELECT invoice_status, COUNT(*) AS invoice_count FROM Invoices GROUP BY invoice_status
SELECT COUNT(*) AS invoice_count, invoice_status FROM Invoices GROUP BY invoice_status
placeholder
SELECT invoice_status FROM Invoices GROUP BY invoice_status ORDER BY COUNT(*) DESC LIMIT 1
placeholder
placeholder
SELECT invoice_status FROM Invoices GROUP BY invoice_status ORDER BY COUNT(*) DESC LIMIT 1
SELECT meeting_type, other_details FROM Meetings
placeholder
SELECT meeting_type, other_details FROM Meetings
SELECT meeting_outcome, purpose_of_meeting FROM Meetings
SELECT meeting_outcome, purpose_of_meeting FROM Meetings
placeholder
SELECT p.payment_id, p.payment_details FROM Payments p JOIN Invoices i ON p.invoice_id = i.invoice_id WHERE i.invoice_status = 'Working'
SELECT p.payment_id, p.payment_details FROM Payments p JOIN Invoices i ON p.invoice_id = i.invoice_id WHERE i.invoice_status = 'Working'
SELECT i.invoice_id, i.invoice_status FROM Invoices i LEFT JOIN Payments p ON i.invoice_id = p.invoice_id WHERE p.payment_id IS NULL
SELECT COUNT(*) FROM Payments
SELECT COUNT(*) FROM `Payments`
placeholder
SELECT payment_id, invoice_id, payment_details FROM Payments
placeholder
SELECT DISTINCT p.invoice_id, i.invoice_status FROM `Payments` AS p JOIN `Invoices` AS i ON p.invoice_id = i.invoice_id
placeholder
SELECT COUNT(*) AS payment_count, invoice_id FROM Payments GROUP BY invoice_id
SELECT DISTINCT p.invoice_id, i.invoice_status FROM `Payments` p JOIN `Invoices` i ON p.invoice_id = i.invoice_id
SELECT COUNT(*) FROM `Staff`
SELECT COUNT(*) FROM `Staff`
placeholder
SELECT a.agency_id, a.agency_details FROM Agencies a JOIN Staff s ON a.agency_id = s.agency_id GROUP BY a.agency_id ORDER BY COUNT(s.staff_id) DESC LIMIT 1
SELECT A.agency_id, COUNT(S.staff_id) AS number_of_staff FROM Agencies A JOIN Staff S ON A.agency_id = S.agency_id GROUP BY A.agency_id
placeholder
SELECT meeting_outcome, COUNT(*) AS meeting_count FROM Meetings GROUP BY meeting_outcome
placeholder
SELECT meeting_outcome, COUNT(*) AS number_of_meetings FROM Meetings GROUP BY meeting_outcome
SELECT COUNT(*) AS meeting_count, client_id FROM Meetings GROUP BY client_id
SELECT COUNT(*) AS meeting_count, meeting_type FROM Meetings GROUP BY meeting_type
SELECT m.client_id, COUNT(*) AS meeting_count FROM Meetings m GROUP BY m.client_id
placeholder
SELECT meeting_type, COUNT(*) AS number_of_meetings FROM Meetings GROUP BY client_id, meeting_type
placeholder
placeholder
SELECT a.agency_id, a.agency_details FROM Agencies a JOIN Staff s ON a.agency_id = s.agency_id GROUP BY a.agency_id ORDER BY COUNT(s.staff_id) DESC LIMIT 1
SELECT m.meeting_id, COUNT(s.staff_id) AS staff_count FROM Meetings m JOIN Staff_in_Meetings s ON m.meeting_id
SELECT COUNT(DISTINCT staff_id) FROM `Staff_in_Meetings`
SELECT M.meeting_id, M.meeting_outcome, M.meeting_type, C.client_details FROM Meetings M JOIN Clients C ON M.client_id = C.client_id
SELECT COUNT(DISTINCT staff_id) FROM `Staff_in_Meetings`
SELECT COUNT(*) FROM Staff LEFT JOIN Staff_in_Meetings ON Staff.staff_id = Staff_in_Meetings.staff_id WHERE Staff_in_Meetings.meeting_id IS NULL
placeholder
placeholder
SELECT staff_id FROM `Staff_in_Meetings` GROUP BY staff_id HAVING COUNT(*) > 0 ORDER BY COUNT(*) ASC LIMIT 1
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
