CREATE DATABASE QuanLyQuanCafe
GO

USE QuanLyQuanCafe
GO

-- Food
-- Table
-- FoodCategory
-- Account
-- Bill
-- BillInfo


        /**
        * Tạo bảng TableFood
        */
CREATE TABLE TableFood
(
    id INT IDENTITY PRIMARY KEY,
    name NVARCHAR(100) NOT NULL  DEFAULT N'Bàn chưa đặt tên',
    status NVARCHAR(100) NOT NULL  DEFAULT N'Trống' --Trống || Có người
)
GO
        /**
        * Tạo bảng Account
        */
CREATE TABLE Account
(   
    UserName NVARCHAR(100) NOT NULL PRIMARY KEY,
    DisplayName NVARCHAR(100) NOT NULL DEFAULT N'DucTien',
    PassWord NVARCHAR(200) NOT NULL DEFAULT 0,
    Type INT  NOT NULL DEFAULT 0 -- 1: admin && 0: staff
)
GO
        /**
        * Tạo bảng FoodCategory
        */
CREATE TABLE FoodCategory
(
    id INT IDENTITY PRIMARY KEY,
    name NVARCHAR(100) NOT NULL DEFAULT N'Chưa đặt tên',
)
GO
        /**
        * Tạo bảng Food
        */
CREATE TABLE Food
(
    id INT IDENTITY PRIMARY KEY,
    name NVARCHAR(100) NOT NULL DEFAULT N'Chưa đặt tên',
    idCategory INT NOT NULL,
    price FLOAT NOT NULL DEFAULT 0
    FOREIGN KEY (idCategory) REFERENCES dbo.FoodCategory(id)
)
GO
        /**
        * Tạo bảng Bill
        */
CREATE TABLE Bill
(
    id INT IDENTITY PRIMARY KEY,
    DateCheckIn DATE NOT NULL DEFAULT GETDATE(),
    DateCheckOut DATE,
    idTable INT NOT NULL,
    status INT NOT NULL DEFAULT 0 -- 1: đã thanh toán && 0: chưa thanh toán
    FOREIGN KEY (idTable) REFERENCES dbo.TableFood(id)
)
GO
        /**
        * Tạo bảng BillInfo
        */
CREATE TABLE BillInfo
(
    id INT IDENTITY PRIMARY KEY,
    idBill INT NOT NULL,
    idFood INT NOT NULL,
    count INT NOT NULL DEFAULT 0
    FOREIGN KEY (idBill) REFERENCES dbo.Bill(id),
    FOREIGN KEY (idFood) REFERENCES dbo.Food(id)
)
GO

USE QuanLyQuanCafe
        /**
        * Thêm dữ liệu vào bảng Account
        */
INSERT INTO dbo.Account
    (
    UserName,
    DisplayName,
    PassWord,
    Type
    )
VALUES (N'admin', N'Nguyễn Đức Tiến', N'123', 1);
VALUES (N'staff', N'Trần Thị Ngọc Trinh', N'123', 0);
GO
        /**
        * Tạo thủ tục USP_GetAccountByUserName
        */
CREATE PROC USP_GetAccountByUserName
@userName nvarchar(100)
AS
BEGIN
    SELECT * FROM dbo.Account WHERE UserName = @userName
END
GO

EXEC dbo.USP_GetAccountByUserName @userName = N'admin'
GO
        /**
        * Tạo thủ tục USP_Login
        */
CREATE PROC USP_Login
@userName nvarchar(100),
@passWord nvarchar(100)
AS
BEGIN
    SELECT * FROM dbo.Account WHERE UserName = @userName AND PassWord = @passWord
END
GO

USE QuanLyQuanCafe
DECLARE @i INT = 0
WHILE @I <= 10
BEGIN
    INSERT dbo.TableFood (name) VALUES (N'Bàn ' + CAST(@i AS nvarchar(100)))
    SET @i = @i + 1
END
GO

        /**
        * Tạo thủ tục USP_GetTableList
        */
CREATE PROC USP_GetTableList
AS SELECT * FROM dbo.TableFood
GO

EXEC DBO.USP_GetTableList
GO

        /**
        * Tạo thủ tục USP_InsertBill
        */
CREATE PROC USP_InsertBill
@idTable INT
AS
BEGIN
    INSERT dbo.Bill
            ( DateCheckIn,
            DateCheckOut,
            idTable,
            status,
            discount
            )
    VALUES ( GETDATE(),
            NULL,
            @idTable,
            0,
            0
            )
END
GO
        /**
        * Tạo thủ tục USP_InsertBillInfo
        */
CREATE PROC USP_InsertBillInfo
@idBill INT, @idFood INT, @count INT
AS
BEGIN
    DECLARE @isExitsBillInfo INT;
    DECLARE @foodCount INT = 1;
    SELECT @isExitsBillInfo = id, @foodCount = b.count 
    FROM dbo.BillInfo AS b 
    WHERE idBill = @idBill AND idFood = @idFood
    IF (@isExitsBillInfo > 0)
    BEGIN
        DECLARE @newCount INT = @foodCount + @count
        IF (@newCount > 0)
            UPDATE dbo.BillInfo SET count = @foodCount + @count WHERE idFood = @idFood
        ELSE
            DELETE dbo.BillInfo WHERE idBill = @idBill AND idFood = @idFood
    END
    ELSE
    BEGIN
        INSERT dbo.BillInfo
            (idBill,
            idFood,
            count
            )
    VALUES ( @idBill,
            @idFood,
            @count
            )
    END
END
GO

USE QuanLyQuanCafe
        /**
        * Thêm dữ liệu vào bảng FoodCategory
        */
INSERT dbo.FoodCategory (name)  VALUES  ( N'Cà phê' )
INSERT dbo.FoodCategory (name)  VALUES  ( N'Nước ép trái cây' )
INSERT dbo.FoodCategory (name)  VALUES  ( N'Sinh tố' )
INSERT dbo.FoodCategory (name)  VALUES  ( N'Món ăn nhẹ' )

        /**
        * Thêm dữ liệu vào bảng Food - Cà phê
        */
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Cà phê đen nóng', 1, 10000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Cà phê đen đá', 1, 12000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Cà phê sữa nóng', 1, 12000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Cà phê sữa đá', 1, 14000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Bạc sỉu', 1, 20000)

        /**
        * Thêm dữ liệu vào bảng Food - Nước Ép
        */
        
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Dứa ép', 2, 20000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Dưa hấu ép', 2, 20000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Cam ép', 2, 25000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Cà chua ép', 2, 20000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Cà rốt ép', 2, 20000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Ổi ép', 2, 20000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Cóc ép', 2, 20000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Bưởi ép', 2, 25000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Cam + Nha đam', 2, 30000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Cam + Cà rốt', 2, 25000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Cam + Dứa', 2, 25000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Dừa tươi', 2, 25000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Nước sấu', 2, 20000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Nước mơ', 2, 20000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Nước chanh', 2, 20000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Yaourt đá', 2, 20000)

        /**
        * Thêm dữ liệu vào bảng Food - sinh tố
        */
        
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Sinh tố xoài', 3, 25000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Sinh tố bơ', 3, 30000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Sinh tố đu đủ', 3, 25000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Sinh tố chuối', 3, 25000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Sinh tố sầu riêng', 3, 30000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Sinh tố thập cẩm', 3, 25000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Sinh tố mít', 3, 25000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Sinh tố dừa', 3, 25000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Sinh tố thanh long', 3, 25000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Sinh tố dâu', 3, 25000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Sinh tố dừa + Sữa chua', 3, 25000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Sinh tố mẵng cầu', 3, 25000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Sinh tố chanh dây', 3, 25000)

        /**
        * Thêm dữ liệu vào bảng Food - FastFood
        */
        
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Hamburger gà', 4, 35000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Sandwich trứng + phomai', 4, 35000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Khoai tây chiên', 4, 20000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Hotdog', 4, 30000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Mì ý sốt bò bằm', 4, 45000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Mì hải sản', 4, 45000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Cánh gà rán', 4, 40000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Bánh tart trứng', 4, 10000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Puding chanh dây', 4, 15000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Bánh Tiramisu', 4, 40000)
INSERT dbo.Food ( name, idCategory, price ) VALUES  ( N'Bánh Lamington', 4, 40000)


        /**
        * Thêm dữ liệu vào bảng Bill 
        */
INSERT  dbo.Bill ( DateCheckIn , DateCheckOut , idTable , status ) VALUES  ( GETDATE() , NULL , 3 , 0 )
INSERT  dbo.Bill ( DateCheckIn , DateCheckOut , idTable , status ) VALUES  ( GETDATE() , NULL , 4 , 0 )
INSERT  dbo.Bill ( DateCheckIn , DateCheckOut , idTable , status ) VALUES  ( GETDATE() , NULL , 5 , 0 )


GO

USE QuanLyQuanCafe

        /**
        * Thêm dữ liệu vào bảng BillInfo 
        */
INSERT  dbo.BillInfo ( idBill, idFood, count ) VALUES  ( 1, 1, 2 )
INSERT  dbo.BillInfo ( idBill, idFood, count ) VALUES  ( 1, 3, 4 )
INSERT  dbo.BillInfo ( idBill, idFood, count ) VALUES  ( 1, 5, 1 )
INSERT  dbo.BillInfo ( idBill, idFood, count ) VALUES  ( 1, 1, 2 )
INSERT  dbo.BillInfo ( idBill, idFood, count ) VALUES  ( 3, 6, 2 )
INSERT  dbo.BillInfo ( idBill, idFood, count ) VALUES  ( 3, 5, 2 )

GO

UPDATE dbo.Bill SET status = 1 WHERE id = 1

USE QuanLyQuanCafe
GO

        /**
        * Tạo Trigger UTG_UpdateBillInfo
        */
CREATE TRIGGER UTG_UpdateBillInfo
ON dbo.BillInfo FOR INSERT, UPDATE
AS
BEGIN
    DECLARE @idBill INT
    
    SELECT @idBill = idBill FROM Inserted
    
    DECLARE @idTable INT
    
    SELECT @idTable = idTable FROM dbo.Bill WHERE id = @idBill AND status = 0   
    
    DECLARE @count INT
    SELECT @count = COUNT(*) FROM dbo.BillInfo WHERE idBill = @idBill
    
    IF (@count > 0)
    BEGIN
    
        PRINT @idTable
        PRINT @idBill
        PRINT @count
        
        UPDATE dbo.TableFood SET status = N'Có người' WHERE id = @idTable       
        
    END     
    ELSE
    BEGIN
    PRINT @idTable
        PRINT @idBill
        PRINT @count
    UPDATE dbo.TableFood SET status = N'Trống' WHERE id = @idTable  
    end
    
END
GO


USE QuanLyQuanCafe
GO
        /**
        * Tạo Trigger UTG_UpdateBillInfo
        */
CREATE TRIGGER UTG_UpdateBill
ON dbo.Bill FOR UPDATE
AS
BEGIN
    DECLARE @idBill INT
    
    SELECT @idBill = id FROM Inserted   
    
    DECLARE @idTable INT
    
    SELECT @idTable = idTable FROM dbo.Bill WHERE id = @idBill
    
    DECLARE @count int = 0
    
    SELECT @count = COUNT(*) FROM dbo.Bill WHERE idTable = @idTable AND status = 0
    
    IF (@count = 0)
        UPDATE dbo.TableFood SET status = N'Trống' WHERE id = @idTable
END
GO

USE QuanLyQuanCafe
        /**
        * Thêm discount vào bảng BILL
        */
CREATE TABLE dbo.Bill
ADD discount INT


UPDATE dbo.Bill SET discount = 0
GO
        /**
        * Tạo Thủ tục USP_SwitchTabel
        */
CREATE PROC USP_SwitchTabel
@idTable1 INT, @idTable2 int
AS BEGIN

    DECLARE @idFirstBill int
    DECLARE @idSeconrdBill INT
    
    DECLARE @isFirstTablEmty INT = 1
    DECLARE @isSecondTablEmty INT = 1
    
    
    SELECT @idSeconrdBill = id FROM dbo.Bill WHERE idTable = @idTable2 AND status = 0
    SELECT @idFirstBill = id FROM dbo.Bill WHERE idTable = @idTable1 AND status = 0
    
    PRINT @idFirstBill
    PRINT @idSeconrdBill
    PRINT '-----------'
    
    IF (@idFirstBill IS NULL)
    BEGIN
        PRINT '0000001'
        INSERT dbo.Bill
                ( DateCheckIn ,
                  DateCheckOut ,
                  idTable ,
                  status
                )
        VALUES  ( GETDATE() , -- DateCheckIn - date
                  NULL , -- DateCheckOut - date
                  @idTable1 , -- idTable - int
                  0  -- status - int
                )
                
        SELECT @idFirstBill = MAX(id) FROM dbo.Bill WHERE idTable = @idTable1 AND status = 0
        
    END
    
    SELECT @isFirstTablEmty = COUNT(*) FROM dbo.BillInfo WHERE idBill = @idFirstBill
    
    PRINT @idFirstBill
    PRINT @idSeconrdBill
    PRINT '-----------'
    
    IF (@idSeconrdBill IS NULL)
    BEGIN
        PRINT '0000002'
        INSERT dbo.Bill
                ( DateCheckIn ,
                  DateCheckOut ,
                  idTable ,
                  status
                )
        VALUES  ( GETDATE() , -- DateCheckIn - date
                  NULL , -- DateCheckOut - date
                  @idTable2 , -- idTable - int
                  0  -- status - int
                )
        SELECT @idSeconrdBill = MAX(id) FROM dbo.Bill WHERE idTable = @idTable2 AND status = 0
        
    END
    
    SELECT @isSecondTablEmty = COUNT(*) FROM dbo.BillInfo WHERE idBill = @idSeconrdBill
    
    PRINT @idFirstBill
    PRINT @idSeconrdBill
    PRINT '-----------'

    SELECT id INTO IDBillInfoTable FROM dbo.BillInfo WHERE idBill = @idSeconrdBill
    
    UPDATE dbo.BillInfo SET idBill = @idSeconrdBill WHERE idBill = @idFirstBill
    
    UPDATE dbo.BillInfo SET idBill = @idFirstBill WHERE id IN (SELECT * FROM IDBillInfoTable)
    
    DROP TABLE IDBillInfoTable
    
    IF (@isFirstTablEmty = 0)
        UPDATE dbo.TableFood SET status = N'Trống' WHERE id = @idTable2
        
    IF (@isSecondTablEmty= 0)
        UPDATE dbo.TableFood SET status = N'Trống' WHERE id = @idTable1
END
GO

        /**
        * Tạo Thủ tục USP_GetListBillByDate
        */
        
CREATE PROC USP_GetListBillByDate
@checkIn date, @checkOut date
AS
BEGIN
    SELECT t.name AS [Tên bàn], b.totalPrice AS [Tổng tiền], DateCheckIn AS [Ngày vào], DateCheckOut AS [Ngày ra], discount AS [Giảm giá]
    FROM dbo.Bill AS b, dbo.TableFood AS t, dbo.BillInfo AS bi, dbo.Food AS f
    WHERE DateCheckIn >= @checkIn AND DateCheckOut <= @checkOut AND b.status = 1
    AND t.id = b.idTable
END
GO

        /**
        * Tạo Thủ tục USP_UpdateAccount
        */
CREATE PROC USP_UpdateAccount
@userName NVARCHAR(100), @displayName NVARCHAR(100), @password NVARCHAR(100), @newPassword NVARCHAR(100)
AS
BEGIN
    DECLARE @isRightPass INT = 0
    
    SELECT @isRightPass = COUNT(*) FROM dbo.Account WHERE USERName = @userName AND PassWord = @password
    
    IF (@isRightPass = 1)
    BEGIN
        IF (@newPassword = NULL OR @newPassword = '')
        BEGIN
            UPDATE dbo.Account SET DisplayName = @displayName WHERE UserName = @userName
        END     
        ELSE
            UPDATE dbo.Account SET DisplayName = @displayName, PassWord = @newPassword WHERE UserName = @userName
    end
END
GO

USE QuanLyQuanCafe
GO
        /**
        * Tạo Trigger UTG_DeleteBillInfo
        */
CREATE TRIGGER UTG_DeleteBillInfo
ON dbo.BillInfo FOR DELETE
AS 
BEGIN
    DECLARE @idBillInfo INT
    DECLARE @idBill INT
    SELECT @idBillInfo = id, @idBill = Deleted.idBill FROM Deleted
    
    DECLARE @idTable INT
    SELECT @idTable = idTable FROM dbo.Bill WHERE id = @idBill
    
    DECLARE @count INT = 0
    
    SELECT @count = COUNT(*) FROM dbo.BillInfo AS bi, dbo.Bill AS b WHERE b.id = bi.idBill AND b.id = @idBill AND b.status = 0
    
    IF (@count = 0)
        UPDATE dbo.TableFood SET status = N'Trống' WHERE id = @idTable
END
GO

CREATE FUNCTION [dbo].[fuConvertToUnsign1] ( @strInput NVARCHAR(4000) ) RETURNS NVARCHAR(4000) AS BEGIN IF @strInput IS NULL RETURN @strInput IF @strInput = '' RETURN @strInput DECLARE @RT NVARCHAR(4000) DECLARE @SIGN_CHARS NCHAR(136) DECLARE @UNSIGN_CHARS NCHAR (136) SET @SIGN_CHARS = N'ăâđêôơưàảãạáằẳẵặắầẩẫậấèẻẽẹéềểễệế ìỉĩịíòỏõọóồổỗộốờởỡợớùủũụúừửữựứỳỷỹỵý ĂÂĐÊÔƠƯÀẢÃẠÁẰẲẴẶẮẦẨẪẬẤÈẺẼẸÉỀỂỄỆẾÌỈĨỊÍ ÒỎÕỌÓỒỔỖỘỐỜỞỠỢỚÙỦŨỤÚỪỬỮỰỨỲỶỸỴÝ' +NCHAR(272)+ NCHAR(208) SET @UNSIGN_CHARS = N'aadeoouaaaaaaaaaaaaaaaeeeeeeeeee iiiiiooooooooooooooouuuuuuuuuuyyyyy AADEOOUAAAAAAAAAAAAAAAEEEEEEEEEEIIIII OOOOOOOOOOOOOOOUUUUUUUUUUYYYYYDD' DECLARE @COUNTER int DECLARE @COUNTER1 int SET @COUNTER = 1 WHILE (@COUNTER <=LEN(@strInput)) BEGIN SET @COUNTER1 = 1 WHILE (@COUNTER1 <=LEN(@SIGN_CHARS)+1) BEGIN IF UNICODE(SUBSTRING(@SIGN_CHARS, @COUNTER1,1)) = UNICODE(SUBSTRING(@strInput,@COUNTER ,1) ) BEGIN IF @COUNTER=1 SET @strInput = SUBSTRING(@UNSIGN_CHARS, @COUNTER1,1) + SUBSTRING(@strInput, @COUNTER+1,LEN(@strInput)-1) ELSE SET @strInput = SUBSTRING(@strInput, 1, @COUNTER-1) +SUBSTRING(@UNSIGN_CHARS, @COUNTER1,1) + SUBSTRING(@strInput, @COUNTER+1,LEN(@strInput)- @COUNTER) BREAK END SET @COUNTER1 = @COUNTER1 +1 END SET @COUNTER = @COUNTER +1 END SET @strInput = replace(@strInput,' ','-') RETURN @strInput END
GO

USE QuanLyQuanCafe
GO
        /**
        * Tạo thủ tục USP_GetListBillByDateAndPage
        */
CREATE PROC USP_GetListBillByDateAndPage
@checkIn date, @checkOut date, @page int
AS 
BEGIN
    DECLARE @pageRows INT = 10
    DECLARE @selectRows INT = @pageRows
    DECLARE @exceptRows INT = (@page - 1) * @pageRows
    
    ;WITH BillShow AS( SELECT b.ID, t.name AS [Tên bàn], b.totalPrice AS [Tổng tiền], DateCheckIn AS [Ngày vào], DateCheckOut AS [Ngày ra], discount AS [Giảm giá]
    FROM dbo.Bill AS b,dbo.TableFood AS t
    WHERE DateCheckIn >= @checkIn AND DateCheckOut <= @checkOut AND b.status = 1
    AND t.id = b.idTable)
    
    SELECT TOP (@selectRows) * FROM BillShow WHERE id NOT IN (SELECT TOP (@exceptRows) id FROM BillShow)    
END
GO

USE QuanLyQuanCafe
GO
        /**
        * Tạo thủ tục USP_GetNumBillByDate
        */
CREATE PROC USP_GetNumBillByDate
@checkIn date, @checkOut date
AS 
BEGIN
    SELECT COUNT(*)
    FROM dbo.Bill AS b,dbo.TableFood AS t
    WHERE DateCheckIn >= @checkIn AND DateCheckOut <= @checkOut AND b.status = 1
    AND t.id = b.idTable
END
GO
        /**
        * Tạo thủ tục USP_GetListBillByDateForReport
        */
CREATE PROC USP_GetListBillByDateForReport
@checkIn date, @checkOut date
AS 
BEGIN
    SELECT t.name, b.totalPrice, DateCheckIn, DateCheckOut, discount
    FROM dbo.Bill AS b,dbo.TableFood AS t
    WHERE DateCheckIn >= @checkIn AND DateCheckOut <= @checkOut AND b.status = 1
    AND t.id = b.idTable
END
GO
