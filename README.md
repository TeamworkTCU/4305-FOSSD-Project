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

### Một số lưu ý trong cách đặt tên cho các thành phần 
* (xem thêm tại [ChuanLapTrinh.md](https://github.com/TeamworkTCU/4305-FOSSD-Project/blob/master/Chuan%20Lap%20Trinh.md) )
## Triển khai

Đề Tài Cafe Tôm Tít được triển khai theo mô hình 3 lớp (Presentation - Bussiness Logic - Data Access)
Khi bạn làm việc với các ứng dụng, nếu với những dự án nhỏ thì việc tạo một ứng dụng theo ý của chúng ta rất dễ dàng, tuy nhiên khi bạn làm với những dự án lớn hơn, cần nhiều người cùng làm hơn thì việc lập trình trở nên phức tạp hơn, vậy nên đễ dễ dàng hơn trong việc quản lý các thành phần của hệ thống cũng như ảnh hưởng tới các thành phần khác khi ta thay đổi một thành phần, chúng ta thường nhóm các thành phần có cùng chức năng lại với nhau. Chính vì thế các mô hình lập trình được sinh ra, một trong những mô hình lập trình đó là mô hình 3 lớp (3 - Layer).
* Presentation Layers
Lớp này làm nhiệm vụ giao tiếp với người dùng cuối để thu thập dữ liệu và hiển thị kết quả/dữ liệu thông qua các thành phần trong giao diện người sử dụng. Trong .NET thì bạn có thể dùng Windows Forms, ASP.NET hay Mobile Forms để hiện thực lớp này.
Lưu ý : Lớp này không nên sử dụng trực tiếp các dịch vụ của lớp Data Access mà nên sử dụng thông qua các service của lớp Business Logic vì khi bạn sử dụng trực tiếp như vậy, bạn có thể bỏ qua các ràng buộc, các logic nghiệp vụ mà ứng dụng cần phải có. Và hơn nữa nếu sử dụng như vậy thì đâu cần đến 3 lớp phải không bạn?
* Business Logic Layer
Đây là layer xử lý chính các dữ liệu trước khi được đưa lên hiển thị trên màn hình hoặc xử lý các dữ liệu trước khi chuyển xuống Data Access Layer để lưu dữ liệu xuống cơ sở dữ liệu.
Đây là nơi đê kiểm tra ràng buộc, các yêu cầu nghiệp vụ, tính toán, xử lý các yêu cầu và lựa chọn kết quả trả về cho Presentation Layers.
* Data Access Layer
Lớp này thực hiện các nghiệp vụ liên quan đến lưu trữ và truy xuất dữ liệu của ứng dụng như đọc, lưu, cập nhật cơ sở dữ liệu.

* Cách vận hành của mô hình
Đối với 3-Layer, yêu cầu được xử lý tuần tự qua các layer như hình.
- Đầu tiên User giao tiếp với Presentation Layers (GUI) để gửi đi thông tin và yêu cầu. Tại layer này, các thông tin sẽ được kiểm tra, nếu OK chúng sẽ được chuyển xuống Business Logic Layer (BLL).
- Tại BLL, các thông tin sẽ được nhào nặn, tính toán theo đúng yêu cầu đã gửi, nếu không cần đến Database thì BLL sẽ gửi trả kết quả về GUI, ngược lại nó sẽ đẩy dữ liệu (thông tin đã xử lý) xuống Data Access Layer (DAL).
- DAL sẽ thao tác với Database và trả kết quả về cho BLL, BLL kiểm tra và gửi nó lên GUI để hiển thị cho người dùng.
- Một khi gặp lỗi (các trường hợp không đúng dữ liệu) thì đang ở layer nào thì quăng lên trên layer cao hơn nó 1 bậc cho tới GUI thì sẽ quăng ra cho người dùng biết
- Các dữ liệu được trung chuyển giữa các Layer thông qua một đối tượng gọi là Data Transfer Object (DTO), đơn giản đây chỉ là các Class đại diện cho các đối tượng được lưu trữ trong Database.

* Tổ chức mô hình 3-Layer
Có rất nhiều cách đặt tên cho các thành phần của 3 lớp như:
Cách 1: GUI, BUS, DAL
Cách 2: GUI, BLL, DAO, DTO Ở đây chúng tôi xin sử dụng cách này! 
Cách 3: Presentation, BLL, DAL
## Nền tảng xây dựng

* [C# .NET](https://goo.gl/k4TNvU) - Nền tảng hệ thống phần mềm
* [MS SQL Server](https://goo.gl/UKLeUi) - Nền tảng cơ sở dữ liệu

## Đóng góp

Vui lòng đọc [CONTRIBUTING.md](https://github.com/TeamworkTCU/4305-FOSSD-Project/blob/master/CONTRIBUTING.md) để biết thêm chi tiết về quy tắc và trình tự đóng góp vào dự án với chúng tôi

## Phiên bản

Chúng tôi dùng [Git](https://git-scm.com/) để tổ chức quản lý phiên bản theo hướng phân tán.

## Tác giả

* **Nguyễn Đức Tiến** - 0948.278.451 | ductien96.vn@gmail.com 
* **Trịnh Đình Phúc** - 016.888.900.93 | phuccoi996@gmail.com

## Giấy phép

Đồ án này được cấp phép theo giấy phép của General Public License - xem file [LICENSE.md](LICENSE.md) để biết thêm chi tiết.

## Lời cảm ơn

Để hoàn thành tốt đề tài này chúng em xin cảm ơn thầy Mai Cường Thọ – giảng viên khoa CNTT Trường Đại học Nha Trang cùng các thầy cô bộ môn Kỹ thuật phần mềm đã tạo điều kiện cho chúng em nghiên cứu và hoàn thành đề tài. Một lần nữa chúng em xin trân trọng cảm ơn thầy Mai Cường Thọ đã tận tình giúp đỡ, hướng dẫn chúng em trong suốt quá trình thực hiện đề tài.
