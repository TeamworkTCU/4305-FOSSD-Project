--	De tai quan ly khach san - quan ly khach san Fairy bay

USE FairyBay_NhaTrang;
GO
--THEM DU LIEU CHO BANG SERVICES 

INSERT INTO Services (idService,Category,nameService,priceService) VALUES('SER0001','FOOD',N'BÁNH MỲ TRỨNG','30000');
INSERT INTO Services (idService,Category,nameService,priceService) VALUES('SER0002','FOOD',N'PHỞ BÒ TÁI','50000');
INSERT INTO Services (idService,Category,nameService,priceService) VALUES('SER0003','FOOD',N'PHỞ BÒ NẠM','50000');
INSERT INTO Services (idService,Category,nameService,priceService) VALUES('SER0004','FOOD',N'PHỞ BÒ GÂN','50000');
INSERT INTO Services (idService,Category,nameService,priceService) VALUES('SER0005','FOOD',N'MÌ TÔM TRỨNG','45000');
INSERT INTO Services (idService,Category,nameService,priceService) VALUES('SER0006','FOOD',N'BÚN CHẢ','40000');
INSERT INTO Services (idService,Category,nameService,priceService) VALUES('SER0007','FOOD',N'BÚN CÁ','40000');
INSERT INTO Services (idService,Category,nameService,priceService) VALUES('SER0008','FOOD',N'BÚN RIÊU','40000');
INSERT INTO Services (idService,Category,nameService,priceService) VALUES('SER0009','FOOD',N'BÚN BÒ','50000');
INSERT INTO Services (idService,Category,nameService,priceService) VALUES('SER0010','FOOD',N'BÚN HEO','50000');
INSERT INTO Services (idService,Category,nameService,priceService) VALUES('SER0011','FOOD',N'Sandtwich','65000');
INSERT INTO Services (idService,Category,nameService,priceService) VALUES('SER0012','FOOD',N'vegan1','45000');
INSERT INTO Services (idService,Category,nameService,priceService) VALUES('SER0013','FOOD',N'vegan2','65000');
INSERT INTO Services (idService,Category,nameService,priceService) VALUES('SER0014','MASSAGE',N'15Minutes','60000');
INSERT INTO Services (idService,Category,nameService,priceService) VALUES('SER0015','MASSAGE',N'30Minutes','90000');
INSERT INTO Services (idService,Category,nameService,priceService) VALUES('SER0016','MASSAGE',N'45Minutes','120000');
INSERT INTO Services (idService,Category,nameService,priceService) VALUES('SER0017','MASSAGE',N'60Minutes','150000');
INSERT INTO Services (idService,Category,nameService,priceService) VALUES('SER0018','Clean Room',N'Whole Room','200000');
INSERT INTO Services (idService,Category,nameService,priceService) VALUES('SER0019','Clean Room',N'BED','50000');
INSERT INTO Services (idService,Category,nameService,priceService) VALUES('SER0020','Clean Room',N'CLEAN DESK','70000');
INSERT INTO Services (idService,Category,nameService,priceService) VALUES('SER0021','DRINKS',N'COCA COLA','20000');
INSERT INTO Services (idService,Category,nameService,priceService) VALUES('SER0022','DRINKS',N'PEPSI','20000');
INSERT INTO Services (idService,Category,nameService,priceService) VALUES('SER0023','DRINKS',N'ORANGE JUICE','350000');
INSERT INTO Services (idService,Category,nameService,priceService) VALUES('SER0024','DRINKS',N'WHOLE COCONUT','30000');
INSERT INTO Services (idService,Category,nameService,priceService) VALUES('SER0025','DRINKS',N'KHOANG NGOT','15000');
INSERT INTO Services (idService,Category,nameService,priceService) VALUES('SER0026','DRINKS',N'BEER','22000');
INSERT INTO Services (idService,Category,nameService,priceService) VALUES('SER0027','DRINKS',N'RUM','850000');
INSERT INTO Services (idService,Category,nameService,priceService) VALUES('SER0028','DRINKS',N'SĂM Banh','1100000');
select * from Services

-- THEM DU LIEU CHO BANG NHANVIEN

INSERT INTO Account_Staff VALUES ('phuccoi96','123123','Trinh Dinh Phuc',1)
INSERT INTO Account_Staff VALUES ('user','123',N'user',0);
INSERT INTO Account_Staff VALUES ('hdphung','5949EFC8','Huynh Diep Phung',1)
INSERT INTO Account_Staff VALUES ('xinso','123123','xin van so',1)
INSERT INTO Account_Staff VALUES ('PKNHUNG','33333',N'PHẠM KIỀU NHUNG',0)
INSERT INTO Account_Staff VALUES ('TTPHUONG','6621515',N'TRẦN THANH PHƯƠNG',0);
INSERT INTO Account_Staff VALUES ('LTHTHUAN','a51fc5',N'LÊ THỊ HOÀI THUẬN',0);
INSERT INTO Account_Staff VALUES ('ADMIN','123456',N'ADMIN',1);
INSERT INTO Account_Staff VALUES ('TRANNAM','51sd51s5',N'TRẦN NAM',0);
INSERT INTO Account_Staff VALUES ('DMANH','5asc1a5',N'ĐỖ MAI ANH',0);
INSERT INTO Account_Staff VALUES ('LTMHOA','5c1a5s5asc',N'LÊ THỊ MINH HOA',0);
INSERT INTO Account_Staff VALUES ('TNNAM','5qac1wws',N'TRẦN NGỌC NAM',1);

--THEM DU LIEU CHO BANG LOAI_KHACH_HANG
INSERT INTO LOAI_KHACH_HANG VALUES ('LK001', N'Nội Địa', N'')
INSERT INTO LOAI_KHACH_HANG VALUES ('LK002', N'Nước Ngoài', N'')

GO
--THEM DU LIEU CHO BANG KHACH_HANG
INSERT INTO KHACH_HANG VALUES (1, N'Trịnh Đình Phúc', '275649386', N'Vie', 'LK001')
INSERT INTO KHACH_HANG VALUES (2, N'Barack Obama', '234154687', N'The US', 'LK002')
INSERT INTO KHACH_HANG VALUES (3, N'Zang Zaung', '234987896', N'Chinese', 'LK002')
INSERT INTO KHACH_HANG VALUES (4, N'lung Zaung', '221115814', N'Chinese', 'LK002')
INSERT INTO KHACH_HANG VALUES (5, N'Lena', '251011011', N'Chile', 'LK002')
INSERT INTO KHACH_HANG VALUES (6, N'Trần Nam', '212322352', N'Vie', 'LK001')
INSERT INTO KHACH_HANG VALUES (7, N'Mai Phương Thúy', '254855624', N'Vie', 'LK001')
INSERT INTO KHACH_HANG VALUES (8, N'Linh Châu', '263524142', N'Vie', 'LK001')
INSERT INTO KHACH_HANG VALUES (9, N'JESSICA', '263522588', N'Russia', 'LK002')
INSERT INTO KHACH_HANG VALUES (10, N'Lucy', '255355899', N'Russia', 'LK002')
INSERT INTO KHACH_HANG VALUES (11, N'Candy', '266656565', N'The US', 'LK002')
INSERT INTO KHACH_HANG VALUES (12, N'David Guetta', '277747478', N'Mexico', 'LK002')
INSERT INTO KHACH_HANG VALUES (13, N'Messi', '211145875', N'Argentina', 'LK002')
INSERT INTO KHACH_HANG VALUES (14, N'Ronaldo Cristian', '275755757', N'Potuga', 'LK002')
DELETE FROM KHACH_HANG WHERE MaKhachHang=14
GO
--THEM DU LIEU CHO BANG LOAI_PHONG
INSERT INTO LOAI_PHONG VALUES ('LP001', N'LUXURY', 4500000)
INSERT INTO LOAI_PHONG VALUES ('LP002', N'VIP', 3000000)
INSERT INTO LOAI_PHONG VALUES ('LP003', N'NORMAL', 2600000)

GO
--THEM DU LIEU CHO BANG PHONG
INSERT INTO PHONG VALUES (1, N'Trống', 'LP002', N'nhìn ra biển, giường đôi')
INSERT INTO PHONG VALUES (2, N'Đầy', 'LP003', N'giường đơn')
INSERT INTO PHONG VALUES (3, N'Trống', 'LP001', N'giường đôi')
INSERT INTO PHONG VALUES (4, N'Đầy', 'LP001', N'nhìn ra biển, giường đơn')
INSERT INTO PHONG VALUES (5, N'Đầy', 'LP003', N'nhìn ra biển, giường đơn')
INSERT INTO PHONG VALUES (6, N'Sửa chữa', 'LP002', N'giường đôi')

INSERT INTO PHONG VALUES (7, N'Trống', 'LP002', N'nhìn ra biển, giường đôi')
INSERT INTO PHONG VALUES (8, N'Trống', 'LP002', N'nhìn ra biển, giường đơn')
INSERT INTO PHONG VALUES (9, N'Trống', 'LP001', N'nhìn ra biển, giường đôi')
INSERT INTO PHONG VALUES (10, N'Trống', 'LP003', N'nhìn ra biển, giường đơn')
INSERT INTO PHONG VALUES (11, N'Trống', 'LP003', N'giường đơn')
INSERT INTO PHONG VALUES (12, N'Trống', 'LP002', N'giường đơn')

INSERT INTO PHONG VALUES (13, N'Sửa chữa', 'LP001', N'nhìn ra biển, giường đơn')
INSERT INTO PHONG VALUES (14, N'Trống', 'LP001', N'giường đôi')
INSERT INTO PHONG VALUES (15, N'Trống', 'LP002', N'nhìn ra biển, giường đôi')
INSERT INTO PHONG VALUES (16, N'Trống', 'LP003', N'nhìn ra biển, giường đơn')
INSERT INTO PHONG VALUES (17, N'Trống', 'LP002', N'giường đôi')
INSERT INTO PHONG VALUES (18, N'Trống', 'LP003', N'giường đơn')
INSERT INTO PHONG VALUES (19, N'Trống', 'LP001', N'giường đơn')

INSERT INTO PHONG VALUES (20, N'Trống', 'LP003', N'giường đơn')
INSERT INTO PHONG VALUES (21, N'Sửa chữa', 'LP003', N'giường đôi')
INSERT INTO PHONG VALUES (22, N'Trống', 'LP002', N'giường đôi')
INSERT INTO PHONG VALUES (23, N'Trống', 'LP001', N'nhìn ra biển, giường đôi')
INSERT INTO PHONG VALUES (24, N'Trống', 'LP001', N'nhìn ra biển, giường đơn')
INSERT INTO PHONG VALUES (25, N'Trống', 'LP001', N'giường đơn')

INSERT INTO PHONG VALUES (26, N'Trống', 'LP003', N'giường đơn')
INSERT INTO PHONG VALUES (27, N'Sửa chữa', 'LP003', N'giường đơn')
INSERT INTO PHONG VALUES (28, N'Trống', 'LP003', N'nhìn ra biển, giường đơn')
INSERT INTO PHONG VALUES (29, N'Trống', 'LP001', N'giường đôi')
INSERT INTO PHONG VALUES (30, N'Trống', 'LP002', N'nhìn ra biển, giường đôi')
GO


--THEM DU LIEU CHO BANG PHIEU_THUE_PHONG
INSERT INTO PHIEU_THUE_PHONG VALUES (1, '2017-05-23', 1)
INSERT INTO PHIEU_THUE_PHONG VALUES (2, '2017-05-24', 14)
INSERT INTO PHIEU_THUE_PHONG VALUES (3, '2017-05-25', 15)
INSERT INTO PHIEU_THUE_PHONG VALUES (4, '2017-05-25', 16)
INSERT INTO PHIEU_THUE_PHONG VALUES (5, '2017-05-26', 18)

INSERT INTO PHIEU_THUE_PHONG VALUES (6, '2017-05-28', 2)
INSERT INTO PHIEU_THUE_PHONG VALUES (7, '2017-05-30', 7)
INSERT INTO PHIEU_THUE_PHONG VALUES (8, '2017-06-1', 8)
INSERT INTO PHIEU_THUE_PHONG VALUES (9, '2017-06-2', 9)
INSERT INTO PHIEU_THUE_PHONG VALUES (10, '2017-06-4', 10)

INSERT INTO PHIEU_THUE_PHONG VALUES (11, '2017-06-5', 28)
INSERT INTO PHIEU_THUE_PHONG VALUES (12, '2017-06-5', 27)
INSERT INTO PHIEU_THUE_PHONG VALUES (13, '2017-06-6', 18)
INSERT INTO PHIEU_THUE_PHONG VALUES (14, '2017-06-7', 26)
INSERT INTO PHIEU_THUE_PHONG VALUES (15, '2017-06-8', 30)

GO
--THEM DU LIEU CHO BANG CHI_TIET_PHIEU_THUE
INSERT INTO CHI_TIET_PHIEU_THUE VALUES (1, 1, 1)
INSERT INTO CHI_TIET_PHIEU_THUE VALUES (2, 2, 12)
INSERT INTO CHI_TIET_PHIEU_THUE VALUES (3, 3, 13)
INSERT INTO CHI_TIET_PHIEU_THUE VALUES (4, 4, 14)
INSERT INTO CHI_TIET_PHIEU_THUE VALUES (5, 5, 15)
INSERT INTO CHI_TIET_PHIEU_THUE VALUES (6, 6, 3)

INSERT INTO CHI_TIET_PHIEU_THUE VALUES (7, 7, 4)
INSERT INTO CHI_TIET_PHIEU_THUE VALUES (8, 8, 5)
INSERT INTO CHI_TIET_PHIEU_THUE VALUES (9, 9, 6)
INSERT INTO CHI_TIET_PHIEU_THUE VALUES (10, 10,7)
INSERT INTO CHI_TIET_PHIEU_THUE VALUES (11, 11, 8)
INSERT INTO CHI_TIET_PHIEU_THUE VALUES (12, 12, 9)
INSERT INTO CHI_TIET_PHIEU_THUE VALUES (13, 13, 10)
GO


----THEM DU LIEU CHO BANG HOA_DON
--INSERT INTO HOA_DON VALUES ('HD001', N'Phan Văn A', '')

--GO
----THEM DU LIEU CHO BANG CHI_TIET_HOA_DON
--INSERT INTO CHI_TIET_HOA_DON VALUES ('CTHD001', 'HD001', 10, '')

--THEM DU LIEU CHO BANG THAM_SO
INSERT INTO THAM_SO VALUES (3, 0.25, 1.5, 0, 3, 1)

