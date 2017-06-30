# 4305-FOSSD-Project
* **Đồ án môn học Phát triển phần mềm mã nguồn mở**

# Phần mềm quản lý quán cà phê Tôm Tít

Ngày nay, CNTT đã và đang đóng vai trò quan trọng trong đời sống kinh tế, xã hội của nhiều quốc gia trên thế giới, là một phần không thể thiếu trong xã hội năng động, ngày càng hiện đại hoá. Vì vậy, việc tin học hoá vào một số lĩnh vực là hoàn toàn có thể và phù hợp với xu hướng hiện nay.
Xuất phát từ nhu cầu thực tế đó, trong công việc kinh doanh, bán hàng của chủ quán cà phê Tôm Tít, việc quản lý hệ thống thông tin bán hàng là một việc không thể thiếu. Nhằm thay thế một số công việc mà trước đó phải thao tác bằng tay trên giấy tờ đạt hiệu quả không cao, mất nhiều thời gian. Vì vậy, chúng em đã chọn thực hiện xây dựng một phần mềm được viết bằng ngôn ngữ C# kết nối với hệ quản trị CSDL MS SQL Server với đề tài “Xây dựng phần mềm quản lý quán cà phê Tôm Tít”.



## Kiến thức áp dụng

* Sử dụng các control cơ bản và nâng cao trong Winform. 
* DataGridView, DataSet, DataTable, DataRow.
* Phân tích thiết kế hệ thống cơ sở dữ liệu.
* Phân tích thiết kế giao diện.
* Trigger SQL.
* Procedure, function SQL.
* Kết nối SQL server với ứng dụng winform dùng ADO.Net.
* Event và Event nâng cao.
* Chuyển data giữa các form.
* Phân quyền người dùng trên ứng dụng.
* DataBiding cơ bản và nâng cao.
* Thêm, xóa, sửa dữ liệu từ trang quản trị.

## Chuẩn Lập Trình
* Mục đích:

Đưa ra các quy ước khi coding với ngôn ngữ lập trình C#, với các quy tắc này giúp tiết kiệm thời gian rất lớn trong tiến trình phát triển phần mềm và cả trong quá trình bảo trì sản phẩm. Giúp sinh viên quen với làm việc theo nhóm.
Tài liệu này chủ yếu hướng dẫn sinh viên với ngôn ngữ lập trình C#, nhưng có rất nhiều quy tắc được sử dụng trong nhiều ngôn ngữ lập trình khác tích hợp trong bộ công cụ Visual Studio .NET.
Phạm vi áp dụng:

Những lập trình viên tham gia dự án phát triển bằng ngôn ngữ C# và công cụ Visual Studio .Net.

Định nghĩa và những từ viết tắt:

Ký pháp Hungarian là cách quy định đặt tên biến như sau: bắt đầu tên biến thì viết chữ thường và các chữ đầu thể hiện kiểu dữ liệu của biến, và được gọi là các tiền tố

* Tài liệu liên quan

https://msdn.microsoft.com/en-us/library/ff926074.aspx
http://www.dofactory.com/reference/csharp-coding-standards
http://se.inf.ethz.ch/old/teaching/ss2007/251-0290-00/project/CSharpCodingStandards.pdf
Các nội dung quy định:

*  Các kiểu quy ước viết hoa:

* Có 3 quy tắc viết hoa:

- Pascal Case

Chữ cái đầu tiên trong từ định danh và chữ cái đầu tiên của mỗi từ nối theo sau phải được viết hoa. Sử dụng Pascal Case để đặt tên cho một tên có từ 3 ký tự trở lên.

Ví dụ: BackColor

- Camel Case

Chữ cái đầu tiên trong từ định danh là chữ thường và chữ cái đầu tiên của mối từ nối theo sau phải được viết hoa.

Ví dụ: backColor

- Uppercase

Tất cả các ký tự trong từ định danh phải được viết hoa. Sử dụng quy tắc này đối với tên định danh có từ 2 ký tự trở xuống.

Ví dụ:

System.IO

System.Web.IO
### Một số lưu ý trong cách đặt tên cho các thành phần 
* (xem thêm tại [ChuanLapTrinh.md](https://github.com/TeamworkTCU/4305-FOSSD-Project/blob/Phuc/Chu%E1%BA%A9n%20L%E1%BA%ADp%20Tr%C3%ACnh) )
## Triển khai

Add additional notes about how to deploy this on a live system

## Nền tảng xây dựng

* [C# .NET](https://goo.gl/k4TNvU) - Nền tảng hệ thống phần mềm
* [MS SQL Server](https://goo.gl/UKLeUi) - Nền tảng cơ sở dữ liệu

## Đóng góp

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Phiên bản

Chúng em dùng [Git](https://git-scm.com/) để tổ chức quản lý phiên bản theo hướng phân tán  for versioning.

## Tác giả

* **Nguyễn Đức Tiến** - 0948.278.451 | ductien96.vn@gmail.com 
* **Trịnh Đình Phúc** - 016.888.900.93 | phuccoi996@gmail.com

## Giấy phép

Đồ án này được cấp phép theo giấy phép của General Public License - xem file [LICENSE.md](LICENSE.md) để biết thêm chi tiết.

## Lời cảm ơn

Để hoàn thành tốt đề tài này chúng em xin cảm ơn thầy Mai Cường Thọ – giảng viên khoa CNTT Trường Đại học Nha Trang cùng các thầy cô bộ môn Kỹ thuật phần mềm đã tạo điều kiện cho chúng em nghiên cứu và hoàn thành đề tài. Một lần nữa chúng em xin trân trọng cảm ơn thầy Mai Cường Thọ đã tận tình giúp đỡ, hướng dẫn chúng em trong suốt quá trình thực hiện đề tài.
