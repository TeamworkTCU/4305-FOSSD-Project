USE FairyBay_NhaTrang;
GO

--STORED PROCEDURE
--1. Them khach hang
GO
IF OBJECT_ID ( 'dbo.spThemKhachHang', 'P' ) IS NOT NULL 
		DROP PROCEDURE dbo.spThemKhachHang;
GO
CREATE PROCEDURE spThemKhachHang
	@MaKH INT,
	@TenKH NVARCHAR(50),
	@CMND NVARCHAR(50),
	@DiaChi NVARCHAR(50),
	@MaLK NVARCHAR(10)
AS
	BEGIN TRAN
		BEGIN
			INSERT INTO KHACH_HANG VALUES (@MaKH, @TenKH, @CMND, @DiaChi, @MaLK)
			IF @@ERROR <> 0
				BEGIN
					  IF @@TRANCOUNT <> 0
						ROLLBACK TRAN
					  GOTO Error
				END
		END
	COMMIT TRAN
Error:

GO
--2. Them phieu thue phong
IF OBJECT_ID ( 'dbo.spThemPhieuThue', 'P' ) IS NOT NULL 
		DROP PROCEDURE dbo.spThemPhieuThue;
GO
CREATE PROCEDURE spThemPhieuThue
	@MaPT INT,
	@NgayThue DATE,
	@MaPhong INT
AS
	BEGIN TRAN
		BEGIN
			INSERT INTO PHIEU_THUE_PHONG VALUES (@MaPT, @NgayThue, @MaPhong)
			IF @@ERROR<>0
				BEGIN
					  IF @@TRANCOUNT<>0
						ROLLBACK TRAN
					  GOTO Error
				END
		END
	COMMIT TRAN
Error:

GO
--3. Them chi tiet phieu thue phong
IF OBJECT_ID ( 'dbo.spThemCTPhieuThue', 'P' ) IS NOT NULL 
		DROP PROCEDURE dbo.spThemCTPhieuThue;
GO
CREATE PROCEDURE spThemCTPhieuThue
	@MaCTPT INT,
	@MaKH INT,
	@MaPT INT
AS
	BEGIN TRAN
		BEGIN
			INSERT INTO CHI_TIET_PHIEU_THUE VALUES (@MaCTPT, @MaKH, @MaPT)
			IF @@ERROR<>0
				BEGIN
					  IF @@TRANCOUNT<>0
						ROLLBACK TRAN
					  GOTO Error
				END
		END
	COMMIT TRAN
Error:

GO
--4. Cap nhat tinh trang phong
IF OBJECT_ID ( 'dbo.spCapNhatTinhTrangPhong', 'P' ) IS NOT NULL 
		DROP PROCEDURE dbo.spCapNhatTinhTrangPhong;
GO
CREATE PROCEDURE spCapNhatTinhTrangPhong
	@MaPhong INT
AS
	BEGIN TRAN
		BEGIN
			UPDATE PHONG SET TinhTrang = N'Đầy' WHERE MaPhong = @MaPhong
			IF @@ERROR<>0
				BEGIN
					  IF @@TRANCOUNT<>0
						ROLLBACK TRAN
					  GOTO Error
				END
		END
	COMMIT TRAN
Error:

----5. Them moi mot phong
--IF OBJECT_ID ( 'dbo.spThemPhong', 'P' ) IS NOT NULL 
--		DROP PROCEDURE dbo.spThemPhong;
--GO
--CREATE PROCEDURE spThemPhong
--	@TinhTrang NVARCHAR(10),
--	@MaLoaiPhong NVARCHAR(10),
--	@GhiChu NTEXT
--AS
--	BEGIN TRAN
--		BEGIN
--			DECLARE @MaPhong INT
--			SET @MaPhong = 1
--			WHILE((SELECT COUNT(*) FROM PHONG WHERE MaPhong = @MaPhong) != 0)
--			BEGIN
--				SET @MaPhong = @MaPhong + 1
--			END
--			INSERT INTO PHONG VALUES(@MaPhong, @TinhTrang, @MaLoaiPhong, @GhiChu)
--		END
--	COMMIT TRAN
--Error:

----execute spThemPhong N'Trống', 'LP001', N'giường đôi'
--GO
----6. Sua thong tin mot phong
--IF OBJECT_ID ( 'dbo.spSuaThongTinPhong', 'P' ) IS NOT NULL 
--		DROP PROCEDURE dbo.spSuaThongTinPhong;
--GO
--CREATE PROCEDURE spSuaThongTinPhong
--	@MaPhong INT,
--	@TinhTrang NVARCHAR(10),
--	@MaLoaiPhong NVARCHAR(10),
--	@GhiChu NTEXT
--AS
--	BEGIN TRAN
--		BEGIN
--			UPDATE PHONG SET TinhTrang = @TinhTrang, MaLoaiPhong = @MaLoaiPhong, GhiChu = @GhiChu WHERE MaPhong = @MaPhong
--		END
--	COMMIT TRAN
--Error:

----execute spSuaThongTinPhong 31, N'Trống', 'LP001', N'nhìn ra biển, giường đôi'

--GO
----7. Sua thong tin mot phong
--IF OBJECT_ID ( 'dbo.spXoaPhong', 'P' ) IS NOT NULL 
--		DROP PROCEDURE dbo.spXoaPhong;
--GO
--CREATE PROCEDURE spXoaPhong
--	@MaPhong INT
--AS
--	BEGIN TRAN
--		BEGIN
--			DELETE FROM PHONG WHERE MaPhong = @MaPhong
--		END
--	COMMIT TRAN
--Error:

----execute spXoaPhong 31

----Thu cau truy van
----Lay so luong loai khach hang
--select COUNT(*)
--from PHIEU_THUE_PHONG as pt, CHI_TIET_PHIEU_THUE as ct, KHACH_HANG as kh
--where pt.MaPhieuThue = ct.MaPhieuThue and kh.MaKhachHang = ct.MaKhachHang
--		and pt.MaPhong = 29 and kh.MaLoaiKhach = 'LK001'
		
--select NgayBatDauThue, DonGia
--from PHIEU_THUE_PHONG as pt, PHONG as p, LOAI_PHONG as lp
--where p.MaPhong = pt.MaPhong and p.MaLoaiPhong = lp.MaLoaiPhong and pt.MaPhong = 32

GO
IF OBJECT_ID ( 'dbo.spTruNgayThangNam', 'P' ) IS NOT NULL 
		DROP PROCEDURE dbo.spTruNgayThangNam;
GO
CREATE PROCEDURE spTruNgayThangNam
	@NgayBDThue DATE
AS
BEGIN
	DECLARE @NgayHienTai DATE
	DECLARE @SLNgayThue INT
	SET @NgayHienTai = GETDATE()
	SET @SLNgayThue = DATEDIFF (DAY, @NgayBDThue, @NgayHienTai)
	
	UPDATE THAM_SO SET SoNgayThue = @SLNgayThue
END

--EXECUTE spTruNgayThangNam '2013-12-29'

--select kh.MaKhachHang, kh.TenKhachHang, kh.CMND, kh.DiaChi, kh.MaLoaiKhach
--from KHACH_HANG as kh, PHIEU_THUE_PHONG as pt, CHI_TIET_PHIEU_THUE as ct
--where kh.MaKhachHang = ct.MaKhachHang and pt.MaPhieuThue = ct.MaPhieuThue
--		and pt.MaPhong = 29

--8. Them moi hoa don
GO
IF OBJECT_ID ( 'dbo.spThemHoaDon', 'P' ) IS NOT NULL 
		DROP PROCEDURE dbo.spThemHoaDon;
GO
CREATE PROCEDURE spThemHoaDon
	@MaHoaDon INT,
	@TenKhachHang NVARCHAR(50),
	@TriGia MONEY
AS
	BEGIN TRAN
		BEGIN
			INSERT INTO HOA_DON VALUES(@MaHoaDon, @TenKhachHang, @TriGia)
		END
	COMMIT TRAN
Error:

--9. Them moi chi tiet hoa don
GO
IF OBJECT_ID ( 'dbo.spThemChiTietHD', 'P' ) IS NOT NULL 
		DROP PROCEDURE dbo.spThemChiTietHD;
GO
CREATE PROCEDURE spThemChiTietHD
	@MaHoaDon INT,
	@SoNgayThue INT,
	@DonGia MONEY,
	@ThanhTien MONEY,
	@NgayThanhToan DATE,
	@MaPhong INT
AS
	BEGIN TRAN
		BEGIN
			DECLARE @MaChiTietHD INT
			SET @MaChiTietHD = 1
			WHILE((SELECT COUNT(*) FROM CHI_TIET_HOA_DON WHERE MaChiTietHD = @MaChiTietHD) != 0)
				BEGIN
					SET @MaChiTietHD = @MaChiTietHD + 1
				END
			INSERT INTO CHI_TIET_HOA_DON VALUES(@MaChiTietHD, @MaHoaDon, @SoNgayThue, @DonGia, @ThanhTien, @NgayThanhToan, @MaPhong)
		END
	COMMIT TRAN
Error:


--10. Xoa khach hang
GO
IF OBJECT_ID ( 'dbo.spXoaKhachHang', 'P' ) IS NOT NULL 
		DROP PROCEDURE dbo.spXoaKhachHang;
GO
CREATE PROCEDURE spXoaKhachHang
	@MaKhacHang INT
AS
	BEGIN TRAN
		BEGIN
			DELETE FROM KHACH_HANG WHERE MaKhachHang = @MaKhacHang
		END
	COMMIT TRAN
Error:

--execute spXoaKhachHang 15

--11. Xoa chi tiet phieu thue
GO
IF OBJECT_ID ( 'dbo.spXoaCTPhieuThue', 'P' ) IS NOT NULL 
		DROP PROCEDURE dbo.spXoaCTPhieuThue;
GO
CREATE PROCEDURE spXoaCTPhieuThue
	@MaPhieuThue INT
AS
	BEGIN TRAN
		BEGIN
			DELETE FROM CHI_TIET_PHIEU_THUE WHERE MaPhieuThue = @MaPhieuThue
		END
	COMMIT TRAN
Error:

--12. Xoa phieu thue
GO
IF OBJECT_ID ( 'dbo.spXoaPhieuThue', 'P' ) IS NOT NULL 
		DROP PROCEDURE dbo.spXoaPhieuThue;
GO
CREATE PROCEDURE spXoaPhieuThue
	@MaPhieuThue INT
AS
	BEGIN TRAN
		BEGIN
			DELETE FROM PHIEU_THUE_PHONG WHERE MaPhieuThue = @MaPhieuThue
		END
	COMMIT TRAN
Error:

GO
--13. Thiet lap lai tinh trang phong ban dau
IF OBJECT_ID ( 'dbo.spThietLapTTrangPhongBanDau', 'P' ) IS NOT NULL 
		DROP PROCEDURE dbo.spThietLapTTrangPhongBanDau;
GO
CREATE PROCEDURE spThietLapTTrangPhongBanDau
	@MaPhong INT
AS
	BEGIN TRAN
		BEGIN
			UPDATE PHONG SET TinhTrang = N'Trống' WHERE MaPhong = @MaPhong
			IF @@ERROR<>0
				BEGIN
					  IF @@TRANCOUNT<>0
						ROLLBACK TRAN
					  GOTO Error
				END
		END
	COMMIT TRAN
Error:

GO
----14. Cap nhat tham so so luong khach toi da
--IF OBJECT_ID ( 'dbo.spCapNhatTSSoKhachToiDa', 'P' ) IS NOT NULL 
--		DROP PROCEDURE dbo.spCapNhatTSSoKhachToiDa;
--GO
--CREATE PROCEDURE spCapNhatTSSoKhachToiDa
--	@SoKhachToiDa INT
--AS
--	BEGIN TRAN
--		BEGIN
--			UPDATE THAM_SO SET SoKhachToiDa = @SoKhachToiDa
--			IF @@ERROR<>0
--				BEGIN
--					  IF @@TRANCOUNT<>0
--						ROLLBACK TRAN
--					  GOTO Error
--				END
--		END
--	COMMIT TRAN
--Error:

--GO
----15. Cap nhat tham so he so
--IF OBJECT_ID ( 'dbo.spCapNhatTSHeSo', 'P' ) IS NOT NULL 
--		DROP PROCEDURE dbo.spCapNhatTSHeSo;
--GO
--CREATE PROCEDURE spCapNhatTSHeSo
--	@HeSo FLOAT
--AS
--	BEGIN TRAN
--		BEGIN
--			UPDATE THAM_SO SET HeSo = @HeSo
--			IF @@ERROR<>0
--				BEGIN
--					  IF @@TRANCOUNT<>0
--						ROLLBACK TRAN
--					  GOTO Error
--				END
--		END
--	COMMIT TRAN
--Error:

--GO
----16. Cap nhat tham so phu thu
--IF OBJECT_ID ( 'dbo.spCapNhatTSPhuThu', 'P' ) IS NOT NULL 
--		DROP PROCEDURE dbo.spCapNhatTSPhuThu;
--GO
--CREATE PROCEDURE spCapNhatTSPhuThu
--	@PhuThu FLOAT
--AS
--	BEGIN TRAN
--		BEGIN
--			UPDATE THAM_SO SET PhuThu = @PhuThu
--			IF @@ERROR<>0
--				BEGIN
--					  IF @@TRANCOUNT<>0
--						ROLLBACK TRAN
--					  GOTO Error
--				END
--		END
--	COMMIT TRAN
--Error:

--GO
--17. Tong doanh thu theo loai phong cua tat ca cac thang
IF OBJECT_ID ( 'dbo.spDoanhThuTheoLoaiPhong', 'P' ) IS NOT NULL 
		DROP PROCEDURE dbo.spDoanhThuTheoLoaiPhong;
GO
CREATE PROCEDURE spDoanhThuTheoLoaiPhong
AS
BEGIN TRAN
		BEGIN
			SELECT p.MaLoaiPhong, SUM(hd.TriGia) AS DoanhThu
			FROM PHONG AS p, HOA_DON AS hd, CHI_TIET_HOA_DON AS ct
			WHERE p.MaPhong = ct.MaPhong and ct.MaHoaDon = hd.MaHoaDon
			GROUP BY p.MaLoaiPhong
			IF @@ERROR<>0
				BEGIN
					  IF @@TRANCOUNT<>0
						ROLLBACK TRAN
					  GOTO Error
				END
		END
	COMMIT TRAN
Error:

GO
--18. Tong doanh thu theo loai phong theo thang nam da chon
IF OBJECT_ID ( 'dbo.spDoanhThuTheoLoaiPhongTheoThang', 'P' ) IS NOT NULL 
		DROP PROCEDURE dbo.spDoanhThuTheoLoaiPhongTheoThang;
GO
CREATE PROCEDURE spDoanhThuTheoLoaiPhongTheoThang
	@Thang INT,
	@Nam INT
AS
BEGIN TRAN
		BEGIN
			SELECT p.MaLoaiPhong, SUM(hd.TriGia) AS DoanhThu
			FROM PHONG AS p, HOA_DON AS hd, CHI_TIET_HOA_DON AS ct
			WHERE p.MaPhong = ct.MaPhong AND ct.MaHoaDon = hd.MaHoaDon
			AND MONTH(ct.NgayThanhToan) = @Thang AND YEAR(ct.NgayThanhToan) = @Nam
			GROUP BY p.MaLoaiPhong
			IF @@ERROR<>0
				BEGIN
					  IF @@TRANCOUNT<>0
						ROLLBACK TRAN
					  GOTO Error
				END
		END
	COMMIT TRAN
Error:

GO
--19. Them bao cao doanh thu
IF OBJECT_ID ( 'dbo.spThemBCDoanhThuTheoLoaiPhongTheoThang', 'P' ) IS NOT NULL 
		DROP PROCEDURE dbo.spThemBCDoanhThuTheoLoaiPhongTheoThang;
GO
CREATE PROCEDURE spThemBCDoanhThuTheoLoaiPhongTheoThang
	@MaBCDoanhThu INT,
	@Thang INT
AS
BEGIN TRAN
		BEGIN
			INSERT INTO BAOCAO_DOANHTHUTHEOLOAIPHONG VALUES (@MaBCDoanhThu, @Thang)
			IF @@ERROR<>0
				BEGIN
					  IF @@TRANCOUNT<>0
						ROLLBACK TRAN
					  GOTO Error
				END
		END
	COMMIT TRAN
Error:

GO
--20. Them chi tiet bao cao doanh thu
IF OBJECT_ID ( 'dbo.spThemBCCTDTTheoLoaiPhongTheoThang', 'P' ) IS NOT NULL 
		DROP PROCEDURE dbo.spThemBCCTDTTheoLoaiPhongTheoThang;
GO
CREATE PROCEDURE spThemBCCTDTTheoLoaiPhongTheoThang
	@MaBCCTDoanhThu INT,
	@MaLoaiPhong NVARCHAR(10),
	@MaBCDoanhThu INT,
	@DoanhThuThang MONEY,
	@TiLe CHAR(10)
AS
BEGIN TRAN
		BEGIN
			INSERT INTO CHITIET_BAOCAODOANHTHU VALUES (@MaBCCTDoanhThu, @MaLoaiPhong, @MaBCDoanhThu, @DoanhThuThang, @TiLe)
			IF @@ERROR<>0
				BEGIN
					  IF @@TRANCOUNT<>0
						ROLLBACK TRAN
					  GOTO Error
				END
		END
	COMMIT TRAN
Error:

GO
--21. Them bao cao mat do
IF OBJECT_ID ( 'dbo.spThemBCMatDoSuDungPhongTheoThang', 'P' ) IS NOT NULL 
		DROP PROCEDURE dbo.spThemBCMatDoSuDungPhongTheoThang;
GO
CREATE PROCEDURE spThemBCMatDoSuDungPhongTheoThang
	@MaBCCTMatDo INT,
	@Thang INT
AS
BEGIN TRAN
		BEGIN
			INSERT INTO BAOCAO_MATDOSUDUNGPHONG VALUES (@MaBCCTMatDo, @Thang)
			IF @@ERROR<>0
				BEGIN
					  IF @@TRANCOUNT<>0
						ROLLBACK TRAN
					  GOTO Error
				END
		END
	COMMIT TRAN
Error:

GO
--22. Them chi tiet bao cao mat do
IF OBJECT_ID ( 'dbo.spThemBCCTMDTheoPhongTheoThang', 'P' ) IS NOT NULL 
		DROP PROCEDURE dbo.spThemBCCTMDTheoPhongTheoThang;
GO
CREATE PROCEDURE spThemBCCTMDTheoPhongTheoThang
	@MaBCCTMatDo INT,
	@MaPhong NVARCHAR(10),
	@MaBCMatDo INT,
	@SoNgayThue INT,
	@TiLe CHAR(10)
AS
BEGIN TRAN
		BEGIN
			INSERT INTO CHITIET_BAOCAOMATDOSUDUNG VALUES (@MaBCCTMatDo, @MaPhong, @MaBCMatDo, @SoNgayThue, @TiLe)
			IF @@ERROR<>0
				BEGIN
					  IF @@TRANCOUNT<>0
						ROLLBACK TRAN
					  GOTO Error
				END
		END
	COMMIT TRAN
Error:
GO