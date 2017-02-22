﻿/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

print 'Inserting seed data'

INSERT INTO dbo.[Products] (Name, Description, AlwaysHsa) VALUES
	('Water Bottle', 'A Bottle for holding water', 0),
	('Tylinol', 'A headache cure', 1),
	('Flonaise', 'Symptom reduction for allergies', 1),
	('Banana', 'A delicious fruit', 0),
	('DayQuil', 'Daytime cold and flu relief', 1);

INSERT INTO dbo.[Stores] (Name, Location) VALUES
	('Wally World', geography::Point(38.951705, -92.334072, 4326)),
	('HighCee', geography::Point(61.218056, -149.900278, 4326)),
	('Roof Blues', geography::Point(40.123, 40.321, 4326)),
	('100 Cents Major', geography::Point(38.9595, -87.23432, 4326));

INSERT INTO dbo.[StoreProducts] (StoreId, ProductId) VALUES
	(1, 1), (1, 2), (1, 3), (1, 4), (1, 5),
	(2, 2), (2, 3), (2, 5),
	(3, 2), (3, 3), (3, 4), (3, 5),
	(4, 1), (4, 4);

INSERT INTO dbo.[Users] (Username, Password, FirstName, LastName, PrefName) VALUES
	('phutson', 'testpass', 'Pearse', 'Hutson', 'Pearse'),
	('soccermom86', '12345', 'Cynthia', 'Smith', 'Cindy');

INSERT INTO dbo.[Receipts] (StoreId, DateTime, UserObjectId, ImageId, IsScanned) VALUES
	(4, '2016-05-02 08:58:13', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', '53627fc8bae14b45b55a84f324d9592crec.jpg', 0),
	(2, '2017-02-10 18:27:20', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(4, '2016-08-27 18:07:42', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(4, '2016-07-14 08:07:17', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(2, '2017-01-22 11:18:49', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(3, '2016-06-15 14:53:33', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(2, '2016-09-25 20:55:16', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(1, '2016-07-13 23:46:46', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(1, '2016-10-20 04:20:36', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(1, '2016-03-29 10:12:22', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(1, '2016-10-31 22:36:24', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(4, '2017-01-02 21:18:10', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(4, '2016-11-29 00:39:19', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(2, '2016-10-27 16:41:51', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(4, '2017-02-03 05:56:49', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(4, '2016-08-02 18:48:26', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(4, '2016-07-11 07:48:52', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(2, '2016-08-01 01:06:25', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(1, '2016-06-10 02:25:09', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(1, '2016-09-19 20:32:48', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(2, '2016-09-03 22:31:46', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(4, '2016-06-25 06:10:13', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(2, '2016-10-11 10:30:09', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(4, '2016-03-27 16:51:43', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(4, '2016-09-19 12:58:45', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(1, '2016-11-02 21:45:42', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(4, '2016-10-29 06:15:03', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(4, '2016-12-30 12:47:27', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(3, '2016-07-17 01:00:55', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(2, '2016-06-11 09:09:51', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(4, '2016-08-27 21:30:49', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(2, '2016-04-03 13:01:29', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(1, '2016-06-04 11:25:13', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(3, '2016-06-16 23:26:53', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(3, '2016-03-02 17:01:12', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(2, '2017-01-10 04:35:11', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(4, '2017-01-30 09:54:14', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(1, '2016-03-22 09:48:57', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(4, '2016-08-17 01:10:43', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(2, '2016-11-21 04:00:41', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(3, '2016-04-08 12:08:25', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(1, '2016-04-14 14:57:07', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(2, '2016-12-25 05:07:26', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(3, '2016-10-11 21:43:54', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(3, '2016-09-30 07:22:22', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(2, '2017-02-19 19:34:38', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(3, '2016-07-03 01:34:07', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(2, '2016-12-03 15:42:50', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(2, '2016-04-06 02:39:58', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(4, '2016-12-03 21:46:14', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(4, '2016-04-07 11:27:49', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(1, '2016-04-27 21:01:20', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(2, '2016-07-17 09:25:08', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(3, '2016-08-12 19:48:13', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(1, '2016-03-03 13:35:15', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(3, '2016-06-05 21:19:17', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(3, '2016-12-30 22:29:17', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(4, '2016-05-16 04:10:28', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(3, '2016-12-03 16:33:01', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(4, '2016-06-02 08:08:41', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(4, '2016-12-28 20:26:15', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(2, '2016-12-30 14:16:03', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(3, '2016-06-07 22:28:10', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(2, '2017-01-22 15:39:35', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(3, '2016-09-07 09:01:34', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(1, '2016-11-03 08:10:50', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(2, '2016-06-09 12:02:57', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(3, '2016-07-20 14:31:28', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(4, '2016-03-13 15:57:21', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(3, '2016-03-09 08:47:45', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(3, '2016-07-07 08:49:17', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(2, '2016-05-07 08:16:50', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(2, '2017-01-03 13:08:40', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(1, '2016-10-30 18:51:31', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(1, '2016-04-01 06:17:33', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(3, '2016-09-19 04:35:50', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(3, '2016-03-18 09:28:36', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(2, '2016-10-21 22:17:51', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(3, '2016-08-13 06:01:36', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(4, '2016-07-15 20:16:52', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(1, '2016-12-29 07:12:36', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(4, '2016-07-23 10:18:10', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(4, '2016-07-18 09:41:45', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(2, '2016-09-05 11:51:38', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(4, '2016-07-17 00:28:26', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(1, '2016-03-16 02:02:58', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(3, '2017-01-03 15:22:08', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(1, '2016-11-06 11:58:05', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(3, '2016-11-24 16:32:21', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(3, '2016-11-22 07:15:04', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(2, '2016-12-22 17:29:49', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(1, '2016-09-17 02:24:02', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(1, '2016-10-22 10:00:41', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(3, '2016-09-30 20:01:15', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(4, '2016-10-13 23:54:20', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(1, '2016-09-09 19:09:30', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(1, '2016-05-23 22:25:51', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1),
	(3, '2016-05-07 21:11:46', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(1, '2016-12-02 17:33:35', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 0),
	(1, '2016-03-30 11:26:45', 'c85d417c-c7e6-4117-9d7a-27ae6f57f975', null, 1);

INSERT INTO dbo.[LineItems] (ProductId, ReceiptId, Price, Quantity) VALUES
	(2, 83, 0.62, 20),
	(4, 78, 0.9, 130),
	(3, 14, 0.36, 143),
	(5, 35, 0.05, 44),
	(4, 37, 0.45, 87),
	(2, 96, 0.98, 98),
	(3, 80, 0.01, 92),
	(4, 50, 0.42, 57),
	(5, 81, 0.08, 148),
	(3, 57, 0.18, 88),
	(3, 65, 0.61, 82),
	(1, 32, 0.49, 88),
	(4, 23, 0.58, 145),
	(1, 69, 0.18, 66),
	(2, 50, 0.68, 35),
	(2, 22, 0.89, 91),
	(5, 32, 0.11, 139),
	(2, 6, 0.39, 63),
	(4, 32, 0.87, 44),
	(1, 4, 0.43, 6),
	(4, 53, 0.48, 105),
	(2, 97, 0.67, 41),
	(3, 87, 0.3, 19),
	(3, 71, 0.46, 95),
	(3, 96, 0.7, 137),
	(1, 81, 0.2, 86),
	(4, 56, 0.7, 83),
	(4, 58, 0.63, 19),
	(1, 17, 0.94, 77),
	(4, 86, 0.81, 19),
	(4, 97, 0.68, 99),
	(5, 64, 0.2, 128),
	(5, 81, 0.6, 87),
	(1, 54, 0.38, 116),
	(1, 88, 0.69, 43),
	(5, 89, 0.74, 40),
	(2, 76, 0.66, 74),
	(4, 57, 0.02, 35),
	(1, 51, 0.63, 23),
	(2, 30, 0.7, 62),
	(2, 69, 0.69, 62),
	(1, 7, 0.14, 19),
	(3, 6, 0.12, 15),
	(2, 21, 0.09, 111),
	(2, 52, 0.44, 114),
	(3, 37, 0.88, 63),
	(1, 91, 0.33, 88),
	(1, 37, 0.19, 119),
	(1, 96, 0.91, 93),
	(5, 70, 0.34, 134),
	(4, 3, 0.88, 20),
	(1, 63, 0.33, 22),
	(5, 46, 0.99, 52),
	(2, 65, 0.85, 124),
	(2, 88, 0.29, 148),
	(5, 76, 0.87, 70),
	(3, 14, 0.65, 73),
	(3, 26, 0.31, 71),
	(3, 47, 0.93, 29),
	(2, 21, 0.26, 81),
	(3, 89, 0.38, 13),
	(4, 7, 0.29, 68),
	(1, 29, 0.15, 127),
	(1, 71, 0.86, 55),
	(2, 5, 0.22, 149),
	(4, 67, 0.69, 68),
	(4, 66, 0.32, 71),
	(1, 99, 0.05, 118),
	(1, 11, 0.4, 149),
	(1, 35, 0.13, 104),
	(3, 96, 0.15, 97),
	(2, 93, 0.38, 7),
	(4, 3, 0.17, 18),
	(4, 94, 0.71, 61),
	(1, 68, 0.63, 24),
	(1, 61, 0.02, 43),
	(5, 52, 0.45, 105),
	(2, 87, 0.94, 48),
	(4, 13, 0.73, 101),
	(2, 26, 0.61, 33),
	(1, 66, 0.92, 54),
	(1, 2, 0.67, 58),
	(2, 47, 0.82, 115),
	(1, 89, 0.36, 146),
	(4, 34, 0.5, 57),
	(4, 17, 0.6, 141),
	(3, 33, 0.13, 39),
	(4, 40, 0.59, 90),
	(5, 6, 0.2, 133),
	(5, 58, 0.51, 79),
	(1, 90, 0.07, 121),
	(1, 5, 0.72, 89),
	(4, 96, 0.34, 6),
	(2, 27, 0.52, 82),
	(2, 86, 0.4, 122),
	(3, 11, 0.95, 14),
	(1, 77, 0.87, 55),
	(4, 31, 0.33, 85),
	(3, 100, 0.9, 59),
	(3, 41, 0.07, 97),
	(3, 90, 0.27, 45),
	(4, 20, 0.3, 36),
	(2, 98, 0.71, 112),
	(2, 74, 0.61, 84),
	(2, 55, 0.23, 58),
	(4, 97, 0.21, 39),
	(4, 39, 0.15, 77),
	(3, 38, 0.48, 104),
	(5, 87, 0.52, 12),
	(5, 38, 0.24, 70),
	(3, 60, 0.91, 15),
	(5, 24, 0.74, 110),
	(1, 15, 0.42, 14),
	(4, 51, 0.48, 137),
	(1, 97, 0.72, 4),
	(5, 32, 0.5, 44),
	(4, 75, 0.89, 83),
	(5, 47, 0.58, 119),
	(2, 79, 0.53, 71),
	(2, 78, 0.38, 107),
	(3, 39, 0.77, 136),
	(3, 5, 0.68, 78),
	(2, 54, 0.24, 117),
	(3, 37, 1.0, 146),
	(4, 41, 0.08, 87),
	(3, 6, 0.07, 145),
	(4, 4, 0.93, 104),
	(3, 39, 0.39, 137),
	(5, 19, 0.22, 16),
	(1, 86, 0.96, 75),
	(4, 62, 0.97, 147),
	(5, 38, 0.89, 92),
	(1, 82, 0.41, 58),
	(1, 92, 0.88, 125),
	(4, 52, 0.33, 82),
	(3, 23, 0.65, 127),
	(4, 69, 0.16, 103),
	(4, 70, 0.28, 13),
	(5, 56, 0.64, 104),
	(5, 97, 0.6, 102),
	(5, 71, 0.42, 33),
	(3, 74, 0.09, 55),
	(2, 61, 0.8, 135),
	(4, 4, 0.7, 49),
	(2, 60, 0.53, 123),
	(5, 75, 0.25, 108),
	(3, 85, 0.69, 24),
	(5, 48, 0.97, 43),
	(4, 68, 0.3, 125),
	(3, 75, 0.84, 58),
	(3, 29, 0.57, 22),
	(1, 33, 0.28, 98),
	(4, 77, 0.54, 97),
	(4, 91, 0.25, 96),
	(2, 65, 0.14, 122),
	(5, 57, 0.35, 2),
	(5, 39, 0.54, 29),
	(3, 27, 0.51, 17),
	(2, 83, 0.24, 41),
	(2, 26, 0.95, 62),
	(3, 65, 0.32, 67),
	(5, 65, 0.25, 21),
	(2, 47, 0.68, 91),
	(4, 53, 0.65, 150),
	(5, 94, 0.99, 125),
	(4, 5, 0.42, 125),
	(4, 81, 0.98, 118),
	(3, 100, 0.47, 54),
	(2, 29, 0.74, 25),
	(3, 25, 0.02, 52),
	(5, 92, 0.32, 73),
	(5, 82, 0.93, 90),
	(4, 16, 0.49, 39),
	(4, 9, 0.34, 47),
	(4, 82, 0.81, 46),
	(4, 60, 0.64, 55),
	(3, 80, 0.16, 92),
	(3, 63, 0.48, 12),
	(3, 67, 0.29, 137),
	(3, 47, 0.5, 53),
	(5, 57, 0.64, 79),
	(1, 91, 0.97, 52),
	(4, 52, 0.26, 118),
	(3, 25, 0.4, 95),
	(4, 45, 0.07, 78),
	(4, 51, 0.59, 14),
	(3, 97, 0.11, 112),
	(3, 96, 0.71, 82),
	(2, 66, 0.29, 135),
	(3, 99, 0.65, 89),
	(4, 22, 0.53, 81),
	(2, 38, 0.82, 107),
	(4, 66, 0.52, 27),
	(1, 77, 0.15, 11),
	(2, 1, 0.4, 10),
	(5, 87, 0.13, 45),
	(3, 73, 0.28, 149),
	(1, 45, 0.71, 87),
	(3, 71, 0.77, 27),
	(5, 18, 0.71, 73),
	(4, 16, 0.57, 143),
	(2, 67, 0.4, 75),
	(3, 80, 0.16, 7),
	(5, 39, 0.69, 132),
	(3, 78, 0.53, 114),
	(2, 37, 0.65, 125),
	(1, 93, 0.97, 12),
	(2, 48, 0.03, 73),
	(5, 6, 0.16, 3),
	(2, 78, 0.06, 115),
	(5, 57, 0.54, 35),
	(1, 19, 0.87, 143),
	(3, 32, 0.81, 146),
	(2, 46, 0.53, 91),
	(1, 24, 0.04, 94),
	(4, 59, 0.85, 85),
	(5, 48, 0.45, 73),
	(3, 85, 0.39, 110),
	(4, 67, 0.46, 84),
	(1, 38, 0.88, 122),
	(1, 80, 0.63, 147),
	(5, 50, 0.13, 55),
	(4, 57, 0.13, 1),
	(4, 99, 0.03, 112),
	(5, 68, 0.78, 84),
	(4, 75, 0.48, 60),
	(5, 33, 0.12, 137),
	(4, 13, 0.63, 143),
	(1, 49, 0.5, 121),
	(2, 49, 0.9, 84),
	(3, 32, 0.77, 3),
	(2, 98, 0.51, 122),
	(4, 69, 0.49, 25),
	(2, 59, 0.84, 111),
	(4, 12, 0.89, 147),
	(4, 77, 0.69, 61),
	(1, 47, 0.21, 28),
	(4, 28, 0.98, 58),
	(2, 38, 0.24, 108),
	(5, 52, 0.53, 99),
	(1, 7, 0.58, 89),
	(1, 33, 0.43, 26),
	(4, 22, 0.29, 38),
	(1, 67, 0.23, 150),
	(4, 2, 0.4, 47),
	(1, 60, 0.26, 129),
	(4, 76, 0.63, 38),
	(1, 45, 0.66, 120),
	(1, 26, 0.35, 129),
	(4, 22, 0.36, 37),
	(4, 33, 0.38, 112),
	(5, 67, 0.79, 15),
	(3, 11, 0.71, 108),
	(1, 17, 0.16, 33),
	(3, 35, 0.45, 138),
	(2, 2, 0.19, 82),
	(4, 57, 0.89, 134),
	(5, 22, 0.21, 13),
	(1, 18, 0.89, 51),
	(1, 6, 0.63, 135),
	(1, 8, 0.9, 94),
	(1, 93, 0.43, 110),
	(2, 14, 0.07, 23),
	(3, 59, 0.42, 69),
	(3, 95, 0.98, 148),
	(1, 24, 0.13, 143),
	(5, 12, 0.06, 107),
	(3, 67, 0.11, 118),
	(4, 6, 0.83, 111),
	(1, 10, 0.45, 24),
	(1, 52, 0.07, 26),
	(3, 94, 0.23, 74),
	(2, 85, 0.06, 78),
	(3, 71, 0.31, 27),
	(5, 37, 0.86, 93),
	(1, 28, 0.69, 114),
	(3, 27, 0.17, 109),
	(2, 78, 0.79, 95),
	(1, 72, 0.65, 124),
	(4, 83, 0.22, 141),
	(3, 90, 0.6, 89),
	(3, 19, 0.77, 94),
	(1, 81, 0.51, 3),
	(1, 49, 0.12, 115),
	(2, 67, 0.93, 55),
	(5, 10, 0.41, 34),
	(5, 60, 0.45, 24),
	(2, 26, 0.15, 2),
	(5, 7, 0.83, 32),
	(5, 27, 0.29, 127),
	(2, 24, 0.63, 145),
	(3, 10, 0.19, 146),
	(1, 87, 0.2, 131),
	(2, 51, 0.61, 108),
	(3, 33, 0.36, 83),
	(4, 8, 0.81, 92),
	(1, 49, 0.72, 66),
	(1, 42, 0.77, 54),
	(1, 7, 0.19, 121),
	(2, 87, 0.99, 10),
	(2, 40, 0.78, 49),
	(4, 44, 0.4, 138),
	(1, 57, 0.34, 35),
	(4, 73, 0.05, 32),
	(2, 50, 0.29, 138),
	(3, 50, 0.31, 98),
	(1, 62, 0.62, 86),
	(4, 87, 0.08, 68),
	(2, 91, 0.47, 66),
	(1, 14, 0.83, 55),
	(1, 73, 0.25, 32),
	(3, 25, 0.54, 17),
	(4, 92, 0.35, 68),
	(5, 90, 0.09, 6),
	(2, 12, 0.42, 40),
	(3, 62, 0.48, 119),
	(4, 50, 0.18, 83),
	(4, 68, 0.79, 99),
	(2, 19, 0.33, 91),
	(4, 41, 0.93, 73),
	(2, 59, 0.13, 114),
	(5, 95, 0.81, 16),
	(5, 59, 0.77, 22),
	(2, 41, 0.13, 37),
	(1, 48, 0.67, 99),
	(5, 26, 0.82, 89),
	(3, 92, 0.52, 86),
	(1, 83, 0.29, 88),
	(4, 91, 0.6, 92),
	(1, 1, 0.83, 133),
	(4, 53, 0.06, 34),
	(1, 78, 0.14, 133),
	(2, 75, 0.18, 149),
	(5, 74, 0.7, 100),
	(4, 14, 0.02, 143),
	(3, 65, 0.93, 116),
	(4, 11, 0.25, 8),
	(1, 77, 0.07, 93),
	(4, 81, 0.86, 129),
	(4, 62, 0.85, 102),
	(5, 23, 0.78, 66),
	(1, 51, 0.78, 15),
	(2, 88, 0.83, 123),
	(1, 52, 0.07, 129),
	(3, 34, 0.75, 85),
	(1, 33, 0.17, 4),
	(5, 73, 0.17, 87),
	(5, 23, 0.02, 91),
	(2, 41, 0.37, 145),
	(5, 39, 0.74, 47),
	(5, 19, 0.06, 150),
	(2, 99, 0.99, 122),
	(3, 48, 0.12, 11),
	(3, 9, 0.31, 97),
	(3, 49, 0.5, 10),
	(3, 62, 0.56, 13),
	(2, 9, 0.61, 136),
	(2, 9, 0.19, 38),
	(4, 47, 0.87, 34),
	(3, 71, 0.12, 76),
	(1, 87, 0.75, 28),
	(4, 1, 0.23, 97),
	(2, 91, 0.44, 32),
	(3, 55, 0.89, 24),
	(1, 13, 0.69, 72),
	(3, 78, 0.5, 134),
	(4, 33, 0.48, 109),
	(2, 53, 0.97, 140),
	(5, 72, 0.3, 131),
	(4, 64, 0.5, 60),
	(5, 47, 0.47, 71),
	(5, 21, 0.21, 67),
	(3, 70, 0.76, 106),
	(5, 48, 0.23, 25),
	(3, 2, 0.86, 14),
	(4, 72, 0.9, 110),
	(1, 86, 0.83, 49),
	(3, 8, 0.73, 8),
	(3, 64, 0.84, 26),
	(5, 50, 0.73, 64),
	(1, 28, 0.9, 30),
	(4, 55, 0.64, 71),
	(1, 63, 0.67, 112),
	(5, 7, 0.42, 122),
	(5, 10, 0.61, 122),
	(1, 17, 0.56, 125),
	(1, 71, 0.17, 81),
	(3, 78, 0.64, 47),
	(3, 2, 0.64, 52),
	(2, 98, 0.46, 149),
	(5, 75, 0.39, 147),
	(4, 38, 0.23, 139),
	(1, 37, 0.85, 56),
	(4, 6, 0.76, 121),
	(2, 69, 0.58, 12),
	(1, 6, 0.91, 29),
	(2, 66, 0.31, 81),
	(1, 73, 0.68, 79),
	(1, 24, 0.66, 18),
	(1, 26, 0.89, 80);