# PHÂN TÍCH VÀ THIẾT KẾ HỆ THỐNG

## Đặc tả hệ thống

Quản lý hoặc nhân viên có thể đăng nhập vào hệ thống, riêng quản lý sẽ truy cập được chức năng quản trị.
Chức năng cơ bản của phần mềm là thêm bàn, thêm món, thêm danh mục, chuyển bàn, giảm giá, thanh toán,…
Chức năng chuyên sâu về mặt quản lý là thống kê, tìm kiếm, thêm, sửa, xóa tài khoản, đổi mật khẩu, mã hóa mật khẩu,…
Do đó ta cần có các kho dữ liệu sau:

•	Account ( UserName, DisplayName, PassWord, Type) , để quản lý tài khoản đăng nhập sử dụng.


•	TableFood ( id, name, status ) , để quản lí tình trạng bàn, hỗ trợ chuyển bàn.


•	Food ( id, name, idCategory, price ) , để quản lý món ăn, đồ uống.


•	FoodCategory ( id, name ) ,  để quản lý danh mục các món.


•	Bill ( id, DateCheckIn, DateCheckOut , idTable, status ) , để quản lý thời gian vào ra của khách, bàn khách ngồi, tình trạng hóa đơn.


•	BillInfo ( id, idBill, idFood, count ) , để quản lý thông tin chi tiết của hóa đơn khi thanh toán.


## Sơ đồ phân cấp chức năng
![](http://i.imgur.com/KHOCOAq.jpg)

## Sơ đồ luồng dữ liệu
 ![](http://i.imgur.com/eszbAYa.jpg)
![](http://i.imgur.com/99Tu0wl.jpg)

## Sơ đồ thực thể - quan hệ
 ![](http://i.imgur.com/LsqdmtC.jpg)

## Thiết kế hệ thống
 ![](http://i.imgur.com/ofqOjYI.jpg)

Tài liệu này được tạo bởi [Nguyễn Đức Tiến], phiên bản 1.0.


Chi tiết liên hệ | 0948.278.451 | ductien96.vn@gmail.com 
