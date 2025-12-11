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
placeholder
placeholder
placeholder
SELECT c.Name FROM club c JOIN player p ON c.Club_ID = p.Club_ID GROUP BY c.Club_ID ORDER BY AVG(p.Earnings) DESC
SELECT c.Name FROM club c JOIN player p ON c.Club_ID = p.Club_ID GROUP BY c.Club_ID ORDER BY AVG(p.Earnings) DESC
SELECT Manufacturer, COUNT(*) AS Club_Count FROM club GROUP BY Manufacturer
placeholder
SELECT COUNT(*) AS club_count, Manufacturer FROM club GROUP BY Manufacturer
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
placeholder
placeholder
placeholder
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
placeholder
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
placeholder
SELECT product_price, product_size FROM Products WHERE product_price > (SELECT AVG(product_price) FROM Products)
placeholder
placeholder
SELECT order_status_code, date_order_placed FROM Orders
SELECT order_status_code, date_order_placed FROM Orders
placeholder
SELECT address_line_1, town_city, county FROM Customers WHERE country = 'USA'
placeholder
SELECT address_line_1, town_city, county FROM Customers WHERE country = 'United States'
SELECT AVG(product_price) AS average_price FROM Products
placeholder
SELECT AVG(product_price) FROM Products
placeholder
placeholder
placeholder
placeholder
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
placeholder
SELECT shipment_tracking_number, shipment_date FROM Shipments
SELECT product_color, product_description, product_size FROM Products WHERE product_price < (SELECT MAX(product_price) FROM Products)
placeholder
SELECT Name FROM director WHERE Age > (SELECT AVG( Age ) FROM director )
SELECT Name FROM director ORDER BY Age DESC LIMIT 1
placeholder
placeholder
SELECT COUNT(DISTINCT Digital_terrestrial_channel) FROM channel
placeholder
SELECT Title FROM program ORDER BY Start_Year DESC
placeholder
placeholder
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
placeholder
placeholder
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
placeholder
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
placeholder
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
placeholder
SELECT s.First_Name, sa.Date_of_Answer FROM Students s JOIN Student_Answers sa ON s.Student_ID = sa.Student_ID
SELECT Student_Answer_Text FROM Student_Answers GROUP BY Student_Answer_Text ORDER BY COUNT(*) DESC
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT Last_Name FROM Students WHERE Gender_MFU != 'M'
SELECT Last_Name FROM Students WHERE Gender_MFU != 'M'
placeholder
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
placeholder
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
placeholder
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
placeholder
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
placeholder
placeholder
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT MAX(Number_of_Stories) FROM building WHERE Completed_Year != 1980
placeholder
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
placeholder
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT Address FROM building
placeholder
SELECT DISTINCT Address FROM building
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
placeholder
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT Channel_Details FROM Channels ORDER BY Channel_Details
SELECT Channel_Details FROM Channels ORDER BY Channel_Details
SELECT COUNT(*) FROM Services
SELECT COUNT(*) FROM Services
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
placeholder
placeholder
placeholder
placeholder
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
placeholder
SELECT name , Model_year FROM Vehicles WHERE City_fuel_economy_rate <= Highway_fuel_economy_rate
SELECT Type_of_powertrain, AVG(Annual_fuel_cost) AS average_annual_fuel_cost FROM Vehicles GROUP BY Type_of_powertrain HAVING COUNT(*) >= 2
SELECT name, age, membership_credit FROM Customers
SELECT name, age, membership_credit FROM Customers
placeholder
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
placeholder
placeholder
placeholder
placeholder
SELECT d.name FROM Renting_history rh JOIN Discount d ON rh.discount_id = d.id GROUP BY d.name ORDER BY COUNT(rh.id) DESC LIMIT 1
placeholder
placeholder
placeholder
SELECT AVG( City_fuel_economy_rate ) AS average_city_fuel_economy, AVG( Highway_fuel_economy_rate ) AS average_highway_fuel_economy, Type_of_powertrain FROM Vehicles GROUP BY Type_of_powertrain
placeholder
SELECT AVG(amount_of_loan) AS average_loan_amount FROM Student_Loans
SELECT AVG(amount_of_loan) FROM Student_Loans
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
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT date_of_transcript, transcript_details FROM Transcripts
SELECT date_of_transcript, transcript_details FROM Transcripts
placeholder
placeholder
SELECT datetime_detention_start, datetime_detention_end FROM Detention
placeholder
placeholder
SELECT `datetime_detention_start`, `datetime_detention_end` FROM Detention
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT bio_data FROM Students WHERE bio_data LIKE '%Suite%'
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
placeholder
SELECT student_id, SUM(amount_of_loan) AS total_loan_amount FROM Student_Loans GROUP BY student_id
SELECT COUNT(*) AS student_count FROM Detention
placeholder
placeholder
placeholder
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
placeholder
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
placeholder
placeholder
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
placeholder
placeholder
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
placeholder
placeholder
placeholder
placeholder
SELECT DISTINCT Manager FROM branch
SELECT DISTINCT Manager FROM branch
placeholder
placeholder
placeholder
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
placeholder
placeholder
placeholder
placeholder
placeholder
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
placeholder
SELECT S.Fname, S.Major FROM Student S JOIN City C ON S.city_code = C.city_code WHERE C.city_name = 'Baltimore'
SELECT COUNT(*) AS student_count, City.country FROM Student JOIN City ON Student.city_code = City.city_code GROUP BY City.country
SELECT COUNT(*) AS student_count, C.city_name FROM Student S JOIN City C ON S.city_code = C.city_code GROUP BY C.city_name
SELECT c.state FROM Student s JOIN City c ON s.city_code = c.city_code GROUP BY c.state ORDER BY COUNT(*) DESC LIMIT 1
SELECT c.country FROM Student s JOIN City c ON s.city_code = c.city_code GROUP BY c.country ORDER BY COUNT(*) ASC LIMIT 1
SELECT c.city_name FROM City c JOIN Student s ON c.city_code = s.city_code GROUP BY c.city_name HAVING COUNT(s.StuID) >= 3
SELECT c.country FROM Student s JOIN City c ON s.city_code = c.city_code GROUP BY c.country ORDER BY COUNT(s.StuID) ASC LIMIT 1
placeholder
SELECT c.state FROM Student s JOIN City c ON s.city_code = c.city_code GROUP BY c.state HAVING COUNT(s.StuID) > 5
SELECT S.StuID FROM Student AS S JOIN City AS C ON S.city_code = C.city_code WHERE S.Sex = 'F' AND C.state = 'PA'
SELECT S.StuID FROM Student AS S JOIN City AS C ON S.city_code = C.city_code WHERE S.Sex = 'F' AND C.state = 'PA'
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT AVG(distance) AS average_distance, MIN(distance) AS minimum_distance, MAX(distance) AS maximum_distance FROM Direct_distance
placeholder
SELECT AVG(distance) AS average_distance, MIN(distance) AS minimum_distance, MAX(distance) AS maximum_distance FROM Direct_distance
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
SELECT S.name FROM Sailors AS S JOIN Reserves AS R ON S.sid = R.sid WHERE R.bid = 103
placeholder
placeholder
SELECT S.name FROM Sailors AS S JOIN Reserves AS R ON S.sid = R.sid WHERE R.bid = 103
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT name, age FROM Sailors ORDER BY age DESC LIMIT 1
placeholder
SELECT COUNT(*) FROM Sailors
SELECT name, age FROM Sailors ORDER BY age DESC LIMIT 1
SELECT COUNT(*) FROM Sailors
SELECT AVG(age) FROM Sailors WHERE rating = 7
placeholder
placeholder
SELECT AVG(age) FROM Sailors WHERE rating = 7
SELECT COUNT(*) FROM Sailors WHERE name LIKE 'D%'
SELECT COUNT(*) FROM Sailors WHERE name LIKE 'D%'
placeholder
SELECT AVG(rating) AS average_rating, MAX(age) AS max_age FROM Sailors
SELECT AVG(rating), MAX(age) FROM Sailors
SELECT COUNT(*) AS reservation_count, bid FROM Reserves GROUP BY bid
SELECT COUNT(*) AS reservation_count, bid FROM Reserves GROUP BY bid
placeholder
SELECT COUNT(*) AS reservation_count, bid FROM Reserves GROUP BY bid HAVING COUNT(*) > 1
SELECT name, rating, age FROM Sailors ORDER BY rating, age
placeholder
placeholder
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
placeholder
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
placeholder
SELECT COUNT(DISTINCT Earpads) FROM headphone
SELECT COUNT(DISTINCT Earpads) FROM headphone
SELECT Model , Class , Construction FROM headphone ORDER BY Price ASC LIMIT 1
SELECT Model , Class , Construction FROM headphone ORDER BY Price ASC LIMIT 1
SELECT AVG( Price ) AS average_price, Construction FROM headphone GROUP BY Construction
SELECT AVG( Price ) AS average_price, Construction FROM headphone GROUP BY Construction
placeholder
SELECT Model FROM headphone WHERE Price < (SELECT AVG(Price) FROM headphone)
SELECT Earpads FROM headphone WHERE Earpads != 'plastic'
SELECT Model FROM headphone WHERE Price < (SELECT AVG(Price) FROM headphone)
placeholder
SELECT Name FROM store ORDER BY Date_Opened
placeholder
placeholder
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
placeholder
SELECT SUM(s.Quantity) FROM stock s JOIN store st ON s.Store_ID = st.Store_ID WHERE st.Name = 'Woodman'
SELECT COUNT(*) FROM Author
placeholder
placeholder
placeholder
SELECT COUNT(*) FROM `Author`
placeholder
placeholder
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
placeholder
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
placeholder
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
placeholder
SELECT location FROM Hangar WHERE plane_name = 'F-14 Fighter'
SELECT COUNT(DISTINCT location) FROM Hangar
placeholder
SELECT COUNT(DISTINCT location) FROM Hangar
placeholder
placeholder
placeholder
SELECT COUNT(*) FROM PilotSkills WHERE age > 40
SELECT COUNT(*) FROM PilotSkills WHERE age > 40
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT COUNT(*) FROM PilotSkills JOIN Hangar ON PilotSkills.plane_name = Hangar.plane_name WHERE Hangar.location = 'Chicago'
SELECT plane_name FROM PilotSkills GROUP BY plane_name ORDER BY COUNT(*) ASC LIMIT 1
placeholder
placeholder
placeholder
SELECT plane_name FROM PilotSkills WHERE pilot_name = 'Smith' AND age = 41
SELECT plane_name FROM PilotSkills WHERE pilot_name = 'Smith' AND age = 41
SELECT COUNT(DISTINCT plane_name) FROM PilotSkills
SELECT COUNT(DISTINCT plane_name) FROM PilotSkills
placeholder
placeholder
SELECT COUNT(*) FROM PilotSkills WHERE pilot_name = 'Smith'
SELECT pilot_name FROM PilotSkills WHERE age BETWEEN 30 AND 40 ORDER BY age ASC
SELECT pilot_name FROM PilotSkills ORDER BY age DESC
SELECT pilot_name FROM PilotSkills WHERE age BETWEEN 30 AND 40 ORDER BY age ASC
SELECT pilot_name FROM PilotSkills ORDER BY age DESC
placeholder
SELECT location FROM Hangar ORDER BY plane_name
SELECT plane_name, location FROM Hangar ORDER BY plane_name
placeholder
SELECT COUNT(*) FROM PilotSkills WHERE age > 40 OR age < 30
SELECT DISTINCT plane_name FROM Hangar ORDER BY plane_name
SELECT COUNT(*) FROM PilotSkills WHERE age > 40 OR age < 30
placeholder
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
placeholder
SELECT AVG(age) AS average_age, plane_name FROM PilotSkills GROUP BY plane_name
placeholder
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
placeholder
placeholder
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
placeholder
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
placeholder
SELECT (deathYear - birthYear) AS lifespan FROM Artists WHERE deathYear IS NOT NULL ORDER BY lifespan ASC LIMIT 1
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT p.title, p.year FROM Paintings p JOIN Artists a ON p.painterID = a.artistID WHERE a.fname = 'Mary'
SELECT p.width_mm FROM Paintings p JOIN Artists a ON p.painterID = a.artistID WHERE a.birthYear < 1850
SELECT A.fname, A.lname, P.year FROM Artists A JOIN Paintings P ON A.artistID = P.painterID WHERE A.fname = 'Mary'
placeholder
SELECT p.location, p.medium FROM Paintings p JOIN Artists a ON p.painterID = a.artistID WHERE a.fname = 'Pablo'
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT AVG(height_mm) AS average_height, medium FROM Paintings GROUP BY medium
placeholder
placeholder
SELECT AVG(height_mm) AS average_height, medium FROM Paintings GROUP BY medium
placeholder
SELECT COUNT(*) AS painting_count, location FROM Paintings WHERE year < 1900 GROUP BY location
SELECT COUNT(*) AS number_of_paintings, location FROM Paintings WHERE year < 1900 GROUP BY location
SELECT title FROM Paintings WHERE year > 1910 AND medium = 'oil'
SELECT title FROM Paintings WHERE medium = 'oil' AND year > 1910
placeholder
placeholder
placeholder
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
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT title FROM Paintings WHERE width_mm < 600 OR height_mm > 800
placeholder
SELECT title FROM Paintings WHERE width_mm < 600 OR height_mm > 800
SELECT DISTINCT location FROM Paintings WHERE year < 1885 OR year > 1930
SELECT paintingID FROM Paintings WHERE height_mm > 500 AND height_mm < 2000
SELECT paintingID FROM Paintings WHERE height_mm > 500 AND height_mm < 2000
SELECT DISTINCT location FROM Paintings WHERE mediumOn = 'on panels' OR mediumOn = 'on canvas'
placeholder
placeholder
placeholder
placeholder
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
placeholder
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
placeholder
SELECT DISTINCT Entrant FROM driver WHERE Age >= 20
SELECT MAX(Age) AS Maximum_Age, MIN(Age) AS Minimum_Age FROM driver
placeholder
placeholder
SELECT MAX(Age) AS Max_Age, MIN(Age) AS Min_Age FROM driver
SELECT COUNT(DISTINCT Engine) FROM driver WHERE Age > 30 OR Age < 20
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT d.Driver_Name, r.Race_Name FROM driver d JOIN race r ON d.Driver_ID = r.Driver_ID
SELECT d.Driver_Name, COUNT(r.Road) AS Number_of_Races FROM driver d JOIN race r ON d.Driver_ID = r.Driver_ID GROUP BY d.Driver_Name
placeholder
SELECT d.Age FROM driver d JOIN race r ON d.Driver_ID = r.Driver_ID GROUP BY d.Driver_ID ORDER BY COUNT(r.Road) DESC LIMIT 1
placeholder
placeholder
SELECT Driver_Name FROM driver WHERE Constructor != Bugatti
placeholder
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
placeholder
SELECT AVG(c.overall_score) FROM countries c JOIN official_languages ol ON c.id = ol.country_id JOIN languages l ON ol.language_id = l.id WHERE l.name = 'English'
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT c.name FROM countries c JOIN official_languages ol ON c.id = ol.country_id GROUP BY c.id ORDER BY COUNT(ol.language_id) DESC LIMIT 1
placeholder
placeholder
placeholder
SELECT c.name FROM countries c LEFT JOIN official_languages ol ON c.id = ol.country_id WHERE ol.country_id IS NULL
placeholder
SELECT DISTINCT country, town_city FROM Addresses
SELECT country, town_city FROM Addresses
placeholder
placeholder
placeholder
SELECT feature_description FROM `Features` WHERE feature_name = 'rooftop'
placeholder
SELECT feature_description FROM `Features` WHERE feature_name = 'rooftop'
placeholder
SELECT f.feature_name, f.feature_description FROM Features f JOIN Property_Features pf ON f.feature_id = pf.feature_id GROUP BY f.feature_name, f.feature_description ORDER BY COUNT(*) DESC LIMIT 1
SELECT MIN(room_count) FROM Properties
placeholder
placeholder
placeholder
placeholder
SELECT `age_category_description` FROM `Ref_Age_Categories` WHERE `age_category_description` LIKE '%Mother%'
placeholder
placeholder
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
placeholder
placeholder
placeholder
placeholder
placeholder
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
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT Id , Flavor FROM goods WHERE Food = 'cake' ORDER BY Price DESC LIMIT 1
SELECT Id FROM goods WHERE Flavor = 'apple'
placeholder
placeholder
SELECT Id FROM goods WHERE Price < 3.0
SELECT Id FROM goods WHERE Price < 3
placeholder
placeholder
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
placeholder
SELECT AVG(Price) AS AveragePrice, MIN(Price) AS MinimumPrice, MAX(Price) AS MaximumPrice, Food FROM goods GROUP BY Food
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT COUNT(*) AS goods_count, Food FROM goods GROUP BY Food
placeholder
SELECT COUNT(*) AS count_of_goods, Food FROM goods GROUP BY Food
SELECT AVG(Price) AS AveragePrice, Food FROM goods GROUP BY Food
placeholder
placeholder
SELECT Id FROM goods WHERE Flavor = 'Apricot' AND Price < 5.0
SELECT AVG(Price) AS average_price, Food FROM goods GROUP BY Food
SELECT Flavor FROM goods WHERE Food = 'Cake' AND Price > 10
SELECT Id FROM goods WHERE Flavor = 'Apricot' AND Price < 5.0
placeholder
SELECT DISTINCT Id, Price FROM goods WHERE Price < (SELECT AVG(Price) FROM goods)
placeholder
placeholder
SELECT Id FROM goods WHERE Id LIKE '%APP%'
placeholder
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
placeholder
SELECT c.FirstName, c.LastName FROM receipts r JOIN customers c ON r.CustomerId = c.Id ORDER BY r.Date ASC LIMIT 1
SELECT AVG(Price) FROM goods WHERE Flavor = 'blackberry' OR Flavor = 'blueberry'
SELECT AVG(Price) FROM goods WHERE Flavor = 'blackberry' OR Flavor = 'blueberry'
placeholder
SELECT MIN(Price) FROM goods WHERE Flavor = 'cheese'
placeholder
placeholder
placeholder
placeholder
SELECT * FROM goods WHERE Flavor = 'cheese' ORDER BY Price ASC LIMIT 1
placeholder
SELECT MAX( Price ) AS max_price, MIN( Price ) AS min_price, AVG( Price ) AS avg_price, Flavor FROM goods GROUP BY Flavor ORDER BY Flavor
SELECT Date FROM receipts GROUP BY Date ORDER BY COUNT(*) DESC LIMIT 3
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT Id FROM goods WHERE Price > 2 * (SELECT AVG( Price ) FROM goods )
placeholder
SELECT Id FROM goods WHERE Price > (2 * (SELECT AVG( Price ) FROM goods ))
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
placeholder
placeholder
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
placeholder
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
placeholder
SELECT Make, COUNT(*) AS Number_of_Drivers FROM driver GROUP BY Make
SELECT t. Team FROM team t LEFT JOIN team_driver td ON t. Team_ID = td. Team_ID WHERE td. Team_ID IS NULL
SELECT Make FROM driver GROUP BY Make HAVING COUNT(*) >= 3
placeholder
placeholder
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
placeholder
SELECT i.Name FROM institution i JOIN Championship c ON i.Institution_ID = c.Institution_ID ORDER BY c.Number_of_Championships DESC
placeholder
SELECT i.Name FROM institution i JOIN Championship c ON i.Institution_ID = c.Institution_ID ORDER BY c.Number_of_Championships DESC
SELECT i.Name FROM institution i INNER JOIN Championship c ON i.Institution_ID = c.Institution_ID
SELECT SUM(c.Number_of_Championships) FROM institution i JOIN Championship c ON i.Institution_ID = c.Institution_ID WHERE i.Affiliation = 'public'
placeholder
SELECT COUNT(*) AS Institution_Count, Affiliation FROM institution GROUP BY Affiliation
SELECT Affiliation , COUNT(*) AS Number_of_Institutions FROM institution GROUP BY Affiliation
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
placeholder
placeholder
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
placeholder
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
placeholder
SELECT AVG(Value) FROM Boxes
SELECT DISTINCT Contents FROM Boxes
SELECT DISTINCT Contents FROM Boxes
SELECT DISTINCT Location FROM Warehouses
SELECT COUNT(DISTINCT Contents) FROM Boxes
SELECT COUNT(DISTINCT Contents) FROM Boxes
SELECT DISTINCT Location FROM Warehouses
SELECT b.Code FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code WHERE w.Location = 'Chicago' OR w.Location = 'New York'
placeholder
SELECT SUM(b.Value) FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code WHERE w.Location = 'Chicago' OR w.Location = 'New York'
SELECT b.Code FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code WHERE w.Location = 'Chicago' OR w.Location = 'New York'
SELECT SUM(b.Value) FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code WHERE w.Location IN ('Chicago', 'New York')
placeholder
SELECT DISTINCT Warehouse FROM Boxes WHERE Contents = 'Rocks' OR Contents = 'Scissors'
placeholder
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
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
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
placeholder
placeholder
SELECT b.Code FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code WHERE w.Location = 'Chicago'
SELECT COUNT(*) AS box_count, Warehouse FROM Boxes GROUP BY Warehouse
SELECT COUNT(*) AS box_count, Warehouse FROM Boxes GROUP BY Warehouse
SELECT COUNT(DISTINCT Contents) AS distinct_content_count, Warehouse FROM Boxes GROUP BY Warehouse
placeholder
placeholder
SELECT University_Name , City , State FROM university ORDER BY University_Name
SELECT University_Name , City , State FROM university ORDER BY University_Name
SELECT SUM(b.Value) FROM Boxes b JOIN Warehouses w ON b.Warehouse = w.Code WHERE w.Location != 'Chicago'
SELECT COUNT(*) FROM university WHERE State = 'Illinois' OR State = 'Ohio'
placeholder
SELECT COUNT(*) FROM university WHERE State = 'Illinois' OR State = 'Ohio'
SELECT MAX(Enrollment) AS max_enrollment, AVG(Enrollment) AS avg_enrollment, MIN(Enrollment) AS min_enrollment FROM university
SELECT MAX(Enrollment) AS Maximum_Enrollment, AVG(Enrollment) AS Average_Enrollment, MIN(Enrollment) AS Minimum_Enrollment FROM university
placeholder
SELECT DISTINCT Home_Conference FROM university
SELECT DISTINCT Home_Conference FROM university
SELECT Home_Conference, COUNT(*) AS University_Count FROM university GROUP BY Home_Conference
SELECT COUNT(*) AS University_Count, Home_Conference FROM university GROUP BY Home_Conference
placeholder
placeholder
placeholder
placeholder
SELECT Major_Name , Major_Code FROM major ORDER BY Major_Code
SELECT Home_Conference FROM university GROUP BY Home_Conference ORDER BY SUM(Enrollment) ASC LIMIT 1
SELECT Home_Conference FROM university GROUP BY Home_Conference HAVING AVG(Enrollment) > 2000
SELECT Major_Name , Major_Code FROM major ORDER BY Major_Code
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
SELECT u.University_Name FROM university u JOIN overall_ranking o ON u.University_ID = o.University_ID ORDER BY o.Research_point DESC LIMIT 1
SELECT u.University_Name FROM overall_ranking OR JOIN university u ON OR.University_ID = u.University_ID ORDER BY OR.Research_point DESC LIMIT 1
placeholder
SELECT u.University_Name FROM university u JOIN overall_ranking o ON u.University_ID = o.University_ID ORDER BY o.Reputation_point ASC
placeholder
SELECT u.University_Name FROM university u JOIN overall_ranking o ON u.University_ID = o.University_ID ORDER BY o.Reputation_point ASC
placeholder
placeholder
placeholder
SELECT SUM(u.Enrollment) FROM overall_ranking o JOIN university u ON o.University_ID = u.University_ID WHERE o.Rank <= 5
placeholder
placeholder
SELECT State FROM university WHERE Enrollment < 3000 GROUP BY State HAVING COUNT(*) > 2
SELECT Title FROM Movies WHERE Rating IS NULL
SELECT Title FROM Movies WHERE Rating = 'G'
placeholder
placeholder
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
placeholder
SELECT mt.Name FROM MovieTheaters mt JOIN Movies m ON mt.Movie = m.Code WHERE m.Rating = 'G' OR m.Rating = 'PG'
placeholder
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
placeholder
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
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT p.PackageNumber, p.Weight FROM Package p JOIN Client c ON p.Sender = c.AccountNumber WHERE c.Name LIKE 'John%' ORDER BY p.Weight DESC LIMIT 1
placeholder
placeholder
SELECT PackageNumber, Weight FROM Package ORDER BY Weight ASC LIMIT 3
SELECT PackageNumber, Weight FROM Package ORDER BY Weight ASC LIMIT 3
placeholder
SELECT c.Name, COUNT(*) AS PackageCount FROM Package p JOIN Client c ON p.Sender = c.AccountNumber GROUP BY c.Name ORDER BY PackageCount DESC LIMIT 1
placeholder
placeholder
SELECT Coordinates FROM Planet WHERE Name = 'Mars'
SELECT c.Name FROM Client c JOIN Package p ON c.AccountNumber = p.Sender GROUP BY c.AccountNumber HAVING COUNT(p.PackageNumber) > 1
SELECT Coordinates FROM Planet WHERE Name = 'Mars'
placeholder
placeholder
SELECT Name, Coordinates FROM Planet ORDER BY Name
SELECT Name, Coordinates FROM Planet ORDER BY Name ASC
SELECT S.ShipmentID FROM Shipment S JOIN Employee E ON S.Manager = E.EmployeeID WHERE E.Name = 'Phillip J. Fry'
SELECT Date FROM Shipment
SELECT Date FROM Shipment
SELECT S.ShipmentID FROM Shipment S JOIN Employee E ON S.Manager = E.EmployeeID WHERE E.Name = 'Phillip J Fry'
placeholder
placeholder
SELECT s.ShipmentID FROM Shipment s JOIN Planet p ON s.Planet = p.PlanetID WHERE p.Name = 'Mars'
SELECT S.ShipmentID FROM Shipment S JOIN Planet P ON S.Planet = P.PlanetID WHERE P.Name = 'Mars'
placeholder
SELECT P.Name AS PlanetName, COUNT(S.ShipmentID) AS TotalShipments FROM Shipment S JOIN Planet P ON S.Planet = P.PlanetID GROUP BY P.Name
SELECT p.Name FROM Shipment s JOIN Planet p ON s.Planet = p.PlanetID GROUP BY p.Name ORDER BY COUNT(s.ShipmentID) DESC LIMIT 1
SELECT p.Name FROM Shipment s JOIN Planet p ON s.Planet = p.PlanetID GROUP BY p.Name ORDER BY COUNT(s.ShipmentID) DESC LIMIT 1
SELECT e.Name, COUNT(s.ShipmentID) AS NumberOfShipments FROM Shipment s JOIN Employee e ON s.Manager = e.EmployeeID GROUP BY e.EmployeeID
SELECT COUNT(s.ShipmentID) AS shipment_count, e.Name AS manager_name FROM Shipment s JOIN Employee e ON s.Manager = e.EmployeeID GROUP BY e.EmployeeID, e.Name
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT PackageNumber, Weight FROM Package WHERE Weight BETWEEN 10 AND 30
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
placeholder
SELECT Name FROM Employee WHERE Salary BETWEEN 5000 AND 10000
placeholder
placeholder
SELECT Name FROM Employee WHERE Salary BETWEEN 5000 AND 10000
placeholder
placeholder
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
placeholder
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
placeholder
placeholder
SELECT DISTINCT Franchise FROM game
placeholder
placeholder
SELECT Name FROM press ORDER BY Year_Profits_billion DESC
placeholder
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
placeholder
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
placeholder
placeholder
placeholder
SELECT COUNT(*) FROM Agencies
placeholder
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
placeholder
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
placeholder
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
placeholder
placeholder
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
placeholder
placeholder
