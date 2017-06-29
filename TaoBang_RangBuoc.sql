--	De tai quan ly khach san - quan ly khach san Fairy bay
CREATE DATABASE FairyBay_NhaTrang
Go
USE FairyBay_NhaTrang
GO
--1.Table LOAI_KHACH_HANG
CREATE TABLE LOAI_KHACH_HANG (
	MaLoaiKhach NVARCHAR(10) NOT NULL,
	TenLoaiKhach NVARCHAR(50) NOT NULL,
	GhiChu NTEXT DEFAULT '',
)
GO
--1 KHOA CHINH CHO BANG LOAI_KHACH_HANG
ALTER TABLE LOAI_KHACH_HANG ADD CONSTRAINT P_LOAI_KHACH_HANG PRIMARY KEY (MaLoaiKhach)

----------------------------------------------------------------------------------------------
--2.Table KHACH_HANG
CREATE TABLE KHACH_HANG (
	MaKhachHang INT NOT NULL,
	TenKhachHang NVARCHAR(50) NOT NULL,
	CMND NVARCHAR(15) NOT NULL,
	DiaChi NVARCHAR(50) NOT NULL,
	MaLoaiKhach NVARCHAR(10) NOT NULL,
)
GO
--2 KHOA CHINH CHO BANG KHACH_HANG
ALTER TABLE KHACH_HANG ADD CONSTRAINT P_KHACH_HANG PRIMARY KEY (MaKhachHang)
GO

----------------------------------------------------------------------------------------------
--3.BANG LOAI_PHONG
CREATE TABLE LOAI_PHONG (
	MaLoaiPhong NVARCHAR(10) NOT NULL,
	TenLoaiPhong NVARCHAR(50) NOT NULL,
	DonGia MONEY DEFAULT 0,
)
GO
--3 KHOA CHINH CHO BANG LOAI_PHONG
ALTER TABLE LOAI_PHONG ADD CONSTRAINT P_LOAI_PHONG PRIMARY KEY (MaLoaiPhong)
----------------------------------------------------------------------------------------------

--4.Table PHONG
CREATE TABLE PHONG (
	MaPhong INT NOT NULL,
	TinhTrang NVARCHAR(10) NOT NULL,
	MaLoaiPhong NVARCHAR(10) NOT NULL,
	GhiChu NTEXT DEFAULT '',
)
GO
--4 KHOA CHINH CHO BANG PHONG
ALTER TABLE PHONG ADD CONSTRAINT P_PHONG PRIMARY KEY (MaPhong)
----------------------------------------------------------------------------------------------

--5.BANG PHIEU_THUE_PHONG
CREATE TABLE PHIEU_THUE_PHONG (
	MaPhieuThue INT NOT NULL,
	NgayBatDauThue DATE NOT NULL,
	MaPhong INT NOT NULL,
)
GO

--5 KHOA CHINH CHO BANG PHIEU_THUE_PHONG
ALTER TABLE PHIEU_THUE_PHONG ADD CONSTRAINT P_PHIEU_THUE_PHONG PRIMARY KEY (MaPhieuThue)

----------------------------------------------------------------------------------------------

--6.BANG CHI_TIET_PHIEU_THUE
CREATE TABLE CHI_TIET_PHIEU_THUE (
	MaChiTietPT INT NOT NULL,
	MaKhachHang INT NOT NULL,
	MaPhieuThue INT NOT NULL,
)
GO
--6 KHOA CHINH CHO BANG CHI_TIET_PHIEU_THUE
ALTER TABLE CHI_TIET_PHIEU_THUE ADD CONSTRAINT P_CHI_TIET_PHIEU_THUE PRIMARY KEY (MaChiTietPT, MaKhachHang)

----------------------------------------------------------------------------------------------
--7.BANG HOA_DON
CREATE TABLE HOA_DON (
	MaHoaDon INT NOT NULL,
	TenKhachHang NVARCHAR(50) NOT NULL,
	TriGia MONEY DEFAULT 0,
)
GO

--7 KHOA CHINH CHO BANG HOA_DON
ALTER TABLE HOA_DON ADD CONSTRAINT P_HOA_DON PRIMARY KEY (MaHoaDon)

----------------------------------------------------------------------------------------------
--8.BANG CHI_TIET_HOA_DON
CREATE TABLE CHI_TIET_HOA_DON (
	MaChiTietHD INT NOT NULL,
	MaHoaDon INT NOT NULL,
	SoNgayThue INT NOT NULL,
	DonGia MONEY DEFAULT 0,
	ThanhTien MONEY DEFAULT 0,
	NgayThanhToan DATE,
	MaPhong INT NOT NULL,
)
GO
--8 KHOA CHINH CHO BANG CHI_TIET_HOA_DON
ALTER TABLE CHI_TIET_HOA_DON ADD CONSTRAINT P_CHI_TIET_HOA_DON PRIMARY KEY (MaChiTietHD)

----------------------------------------------------------------------------------------------
--9.BANG THAM_SO
CREATE TABLE THAM_SO (
	SoKhachToiDa INT NOT NULL,
	PhuThu FLOAT NOT NULL,
	HeSo FLOAT NOT NULL,
	SoNgayThue INT,
	PhuThuKhachThu INT,
	SLKhachNuocNgoai INT
)
GO
-------------------------------------------------------------------------------------------------
--10.BANG BAOCAO_DOANHTHUTHEOLOAIPHONG
CREATE TABLE BAOCAO_DOANHTHUTHEOLOAIPHONG (
	MaBCDoanhThu INT NOT NULL,
	ThangBaoCao INT NOT NULL,
)
GO
--10 KHOA CHINH CHO BANG BAOCAO_DOANHTHUTHEOLOAIPHONG
ALTER TABLE BAOCAO_DOANHTHUTHEOLOAIPHONG ADD CONSTRAINT P_BAOCAO_DOANHTHUTHEOLOAIPHONG PRIMARY KEY (MaBCDoanhThu)
-------------------------------------------------------------------------------------------------

--11. BANG CHITIET_BAOCAODOANHTHU
CREATE TABLE CHITIET_BAOCAODOANHTHU (
	MaBCCTDoanhThu INT NOT NULL,
	MaLoaiPhong NVARCHAR(10) NOT NULL,
	MaBCDoanhThu INT NOT NULL,
	DoanhThuThang MONEY,
	TiLe CHAR(10),
)
GO
--11 KHOA CHINH CHO BANG CHITIET_BAOCAODOANHTHU
ALTER TABLE CHITIET_BAOCAODOANHTHU ADD CONSTRAINT P_CHITIET_BAOCAODOANHTHU PRIMARY KEY (MaBCCTDoanhThu, MaLoaiPhong)
-------------------------------------------------------------------------------------------------

--12. BANG BAOCAO_MATDOSUDUNGPHONG
CREATE TABLE BAOCAO_MATDOSUDUNGPHONG (
	MaBCMatDoSuDung INT NOT NULL,
	ThangBaoCao INT NOT NULL,
)
GO

--12 KHOA CHINH CHO BANG BAOCAO_MATDOSUDUNGPHONG
ALTER TABLE BAOCAO_MATDOSUDUNGPHONG ADD CONSTRAINT P_BAOCAO_MATDOSUDUNGPHONG PRIMARY KEY (MaBCMatDoSuDung)
-------------------------------------------------------------------------------------------------

--13. BANG CHITIET_BAOCAOMATDOSUDUNG
CREATE TABLE CHITIET_BAOCAOMATDOSUDUNG (
	MaBCCTMatDoSuDung INT NOT NULL,
	MaPhong INT NOT NULL,
	MaBCMatDoSuDung INT NOT NULL,
	SoNgayThue INT,
	TiLe CHAR(10),
)
GO
--13 KHOA CHINH CHO BANG CHITIET_BAOCAOMATDOSUDUNG
ALTER TABLE CHITIET_BAOCAOMATDOSUDUNG ADD CONSTRAINT P_CHITIET_BAOCAOMATDOSUDUNG PRIMARY KEY (MaBCCTMatDoSuDung, MaPhong)
----------------------------------------------------------------------------------------------------
-- TAO BANG SERCIVES
CREATE Table Services(
	idService varchar(20) primary key,
	Category nvarchar(30),
	nameService NVARCHAR(100) ,
	priceService int
)
go
----------------------------------------------------------------------------------------------------
--TAO BANG NHANVIEN
CREATE Table Account_Staff
(
	UserName VARCHAR(30) NOT NULL PRIMARY KEY,
	Pass VARCHAR(20) ,
	RealName NVARCHAR(50), 
	typeAccount INT DEFAULT 0
)
go
-------------------------------------------------------------------------------------------------
--TAO BANG ROOM

CREATE TABLE Room(
	idR INT IDENTITY PRIMARY KEY,
	idTypeRoom Varchar(15) NOT NULL,
	nameR nvarchar(20),
	PriceR INT)
go
--RANG BUOC 2 BANG 
ALTER TABLE Room ADD CONSTRAINT fk_Room_TypeRoom FOREIGN KEY(idTypeRoom) REFERENCES TypeRoom(idTypeRoom);
-----------------------------------------------------------------------------------------------
--TAO BANG TYPE ROOM

CREATE TABLE TypeRoom(
	idTypeRoom Varchar(15)  PRIMARY KEY,
	describe NVARCHAR(150),
	statusTR NVARCHAR(20))
go
--------------------------------------------KHOA NGOAI-----------------------------------------
--1 KHOA NGOAI CHO BANG KHACH_HANG
ALTER TABLE KHACH_HANG ADD CONSTRAINT F_KHACH_HANG FOREIGN KEY (MaLoaiKhach) REFERENCES LOAI_KHACH_HANG

--2 KHOA NGOAI CHO BANG PHONG
ALTER TABLE PHONG ADD CONSTRAINT F_PHONG FOREIGN KEY (MaLoaiPhong) REFERENCES LOAI_PHONG

--3 KHOA NGOAI CHO BANG PHIEU_THUE_PHONG
ALTER TABLE PHIEU_THUE_PHONG ADD CONSTRAINT F_PHIEU_THUE_PHONG FOREIGN KEY (MaPhong) REFERENCES PHONG

--4 KHOA NGOAI CHO BANG CHI_TIET_PHIEU_THUE
ALTER TABLE CHI_TIET_PHIEU_THUE ADD CONSTRAINT F_CHI_TIET_PHIEU_THUE_1 FOREIGN KEY (MaKhachHang) REFERENCES KHACH_HANG

ALTER TABLE CHI_TIET_PHIEU_THUE ADD CONSTRAINT F_CHI_TIET_PHIEU_THUE_2 FOREIGN KEY (MaPhieuThue) REFERENCES PHIEU_THUE_PHONG

--5 KHOA NGOAI CHO BANG CHI_TIET_HOA_DON
ALTER TABLE CHI_TIET_HOA_DON ADD CONSTRAINT F_CHI_TIET_HOA_DON_1 FOREIGN KEY (MaHoaDon) REFERENCES HOA_DON

ALTER TABLE CHI_TIET_HOA_DON ADD CONSTRAINT F_CHI_TIET_HOA_DON_2 FOREIGN KEY (MaPhong) REFERENCES PHONG

--6 KHOA NGOAI CHO BANG CHITIET_BAOCAODOANHTHU
ALTER TABLE CHITIET_BAOCAODOANHTHU ADD CONSTRAINT F_CHITIET_BAOCAODOANHTHU FOREIGN KEY (MaBCDoanhThu) REFERENCES BAOCAO_DOANHTHUTHEOLOAIPHONG

--7 KHOA NGOAI CHO BANG CHITIET_BAOCAOMATDOSUDUNG
ALTER TABLE CHITIET_BAOCAOMATDOSUDUNG ADD CONSTRAINT F_CHITIET_BAOCAOMATDOSUDUNG FOREIGN KEY (MaBCMatDoSuDung) REFERENCES BAOCAO_MATDOSUDUNGPHONG

GO
SET DATEFORMAT dmy; --Set kieu ngay/thang/nam

