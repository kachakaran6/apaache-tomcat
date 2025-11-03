CREATE DATABASE train_master;
GO
USE train_master;
GO

CREATE TABLE train_info (
    train_id INT IDENTITY(1,1) PRIMARY KEY,
    train_name NVARCHAR(100),
    train_type NVARCHAR(50),
    arrival_time TIME,
    departure_time TIME,
    start_location NVARCHAR(100),
    end_location NVARCHAR(100)
);
GO

-- Insert Stored Procedure
CREATE PROC sp_InsertTrain
 @train_name NVARCHAR(100), @train_type NVARCHAR(50),
 @arrival_time TIME, @departure_time TIME,
 @start_location NVARCHAR(100), @end_location NVARCHAR(100)
AS
INSERT INTO train_info VALUES(@train_name,@train_type,@arrival_time,@departure_time,@start_location,@end_location);
GO

-- Update Stored Procedure
CREATE PROC sp_UpdateTrain
 @train_id INT, @train_name NVARCHAR(100), @train_type NVARCHAR(50),
 @arrival_time TIME, @departure_time TIME,
 @start_location NVARCHAR(100), @end_location NVARCHAR(100)
AS
UPDATE train_info SET train_name=@train_name, train_type=@train_type,
 arrival_time=@arrival_time, departure_time=@departure_time,
 start_location=@start_location, end_location=@end_location
WHERE train_id=@train_id;
GO

-- Delete Stored Procedure
CREATE PROC sp_DeleteTrain @train_id INT
AS DELETE FROM train_info WHERE train_id=@train_id;
GO

-- View All Stored Procedure
CREATE PROC sp_GetTrains AS SELECT * FROM train_info;
GO

-- Search Stored Procedure
CREATE PROC sp_SearchTrain @keyword NVARCHAR(100)
AS
SELECT * FROM train_info 
WHERE train_name LIKE '%'+@keyword+'%' OR train_type LIKE '%'+@keyword+'%';
GO