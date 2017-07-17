# Đề tài môn học Phát triển phần mềm mã nguồn mở

# Phần mềm quản lý quán cà phê Tôm Tít 
<p align="center">
  <img width="350" height="300" src="https://raw.githubusercontent.com/TeamworkTCU/4305-FOSSD-Project/master/logo.ico">
</p>                

Ngày nay, CNTT đã và đang đóng vai trò quan trọng trong đời sống kinh tế, xã hội của nhiều quốc gia trên thế giới, là một phần không thể thiếu trong xã hội năng động, ngày càng hiện đại hoá. Vì vậy, việc tin học hoá vào một số lĩnh vực là hoàn toàn có thể và phù hợp với xu hướng hiện nay.

Xuất phát từ nhu cầu thực tế đó, trong công việc kinh doanh, bán hàng của chủ quán cà phê Tôm Tít, việc quản lý hệ thống thông tin bán hàng là một việc không thể thiếu. Nhằm thay thế một số công việc mà trước đó phải thao tác bằng tay trên giấy tờ đạt hiệu quả không cao, mất nhiều thời gian. Vì vậy, chúng em đã chọn thực hiện xây dựng một phần mềm được viết bằng ngôn ngữ C# kết nối với hệ quản trị CSDL MS SQL Server với đề tài “Xây dựng phần mềm quản lý quán cà phê Tôm Tít”.

## Quản lý phiên bản

Chúng tôi dùng [Git](https://git-scm.com/) để tổ chức quản lý phiên bản theo hướng phân tán.

## Tác giả

* **Nguyễn Đức Tiến** - Tác giả | 0948.278.451 | ductien96.vn@gmail.com 
* **Trịnh Đình Phúc** - Đồng tác giả | 016.888.900.93 | phuccoi996@gmail.com

## Giấy phép

Đồ án này được cấp phép theo giấy phép của General Public License - xem file [LICENSE.md](https://github.com/TeamworkTCU/4305-FOSSD-Project/blob/master/Documents/LICENSE.md) để biết thêm chi tiết. Mọi sự sao chép, sử dụng với mục đích thương mại đều trái với quy tắc và giấy phép của chúng tôi.


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
* Phạm vi áp dụng:

Những lập trình viên tham gia dự án phát triển bằng ngôn ngữ C# và công cụ Visual Studio .Net.
* CHI TIẾT VỀ CHUẨN LẬP TRÌNH [xin xem tại đây](https://github.com/TeamworkTCU/4305-FOSSD-Project/blob/master/Documents/Chu%E1%BA%A9n%20L%E1%BA%ADp%20Tr%C3%ACnh.md)

## Triển khai

Đề Tài Cafe Tôm Tít được triển khai theo mô hình 3 lớp (Presentation - Bussiness Logic - Data Access)
Khi bạn làm việc với các ứng dụng, nếu với những dự án nhỏ thì việc tạo một ứng dụng theo ý của chúng ta rất dễ dàng, tuy nhiên khi bạn làm với những dự án lớn hơn, cần nhiều người cùng làm hơn thì việc lập trình trở nên phức tạp hơn, vậy nên đễ dễ dàng hơn trong việc quản lý các thành phần của hệ thống cũng như ảnh hưởng tới các thành phần khác khi ta thay đổi một thành phần, chúng ta thường nhóm các thành phần có cùng chức năng lại với nhau. Chính vì thế các mô hình lập trình được sinh ra, một trong những mô hình lập trình đó là mô hình 3 lớp (3 - Layer).

* Tổ chức mô hình 3-Layer
Có rất nhiều cách đặt tên cho các thành phần của 3 lớp như:
Cách 1: GUI, BUS, DAL
Cách 2: GUI, BLL, DAO, DTO Ở đây chúng tôi xin sử dụng cách này! 
Cách 3: Presentation, BLL, DAL

* Presentation Layers
Lớp này làm nhiệm vụ giao tiếp với người dùng cuối để thu thập dữ liệu và hiển thị kết quả/dữ liệu thông qua các thành phần trong giao diện người sử dụng. Trong .NET thì bạn có thể dùng Windows Forms, ASP.NET hay Mobile Forms để hiện thực lớp này.
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


## Nền tảng xây dựng

* [C# .NET](https://goo.gl/k4TNvU) - Nền tảng hệ thống phần mềm

C # là một ngôn ngữ lập trình hiện đại được phát triển bởi Microsoft và được phê duyệt bởi European Computer Manufacturers Association (ECMA) và International Standards Organization (ISO).

C # được phát triển bởi Anders Hejlsberg và nhóm của ông trong việc phát triển .Net Framework.

C # được thiết kế cho các ngôn ngữ chung cơ sở hạ tầng (Common Language Infrastructure – CLI), trong đó bao gồm các mã (Executable Code) và môi trường thực thi (Runtime Environment) cho phép sử dụng các ngôn ngữ cấp cao khác nhau trên đa nền tảng máy tính và kiến trúc khác nhau.

Ngôn ngữ ra đời cùng với .NET

Kết hợp C++ và Java.
Hướng đối tượng.
Hướng thành phần.
Mạnh mẽ (robust) và bền vững (durable).
Mọi thứ trong C# đều Object oriented.
Kể cả kiểu dữ liệu cơ bản.
Chỉ cho phép đơn kế thừa.
Dùng interface để khắc phục.
Lớp Object là cha của tất cả các lớp.
Mọi lớp đều dẫn xuất từ Object.
Cho phép chia chương trình thành các thành phần nhỏ độc lập nhau.
Mỗi lớp gói gọn trong một file, không cần file header như C/C++.
Bổ sung khái niệm namespace để gom nhóm các lớp.
Bổ sung khái niệm “property” cho các lớp.
Khái niệm delegate & event

Vai trò C# trong .NET Framework

.NET runtime sẽ phổ biến và được cài trong máy client.
Việc cài đặt App C# như là tái phân phối các thành phần .NET
Nhiều App thương mại sẽ được cài đặt bằng C#.

C# tạo cơ hội cho tổ chức xây dựng các App Client/Server n-tier.
Kết nối ADO.NET cho phép truy cập nhanh chóng & dễ dàng với SQL Server, Oracle…
Cách tổ chức .NET cho phép hạn chế những vấn đề phiên bản.

* [MS SQL Server](https://goo.gl/UKLeUi) - Nền tảng cơ sở dữ liệu

SQL Server là một hệ quản trị cơ sở dữ liệu quan hệ (Relational Database Management System (RDBMS) ) sử dụng câu lệnh SQL (Transact-SQL) để trao đổi dữ liệu giữa máy Client và máy cài SQL Server. Một RDBMS bao gồm databases, database engine và các ứng dụng dùng để quản lý dữ liệu và các bộ phận khác nhau trong RDBMS.

SQL Server được tối ưu để có thể chạy trên môi trường cơ sở dữ liệu rất lớn (Very Large Database Environment) lên đến Tera-Byte và có thể phục vụ cùng lúc cho hàng ngàn user. SQL Server có thể kết hợp “ăn ý” với các server khác như Microsoft Internet Information Server (IIS), E-Commerce Server, Proxy Server….

## Đóng góp

Vui lòng đọc [Quy tắc đóng góp](https://github.com/TeamworkTCU/4305-FOSSD-Project/blob/master/Documents/Quy_tac_dong_gop.md) để biết thêm chi tiết về quy tắc và trình tự đóng góp vào dự án với chúng tôi

## Quy tắc ứng xử

Vui lòng đọc [Quy tắc ứng xử](https://github.com/TeamworkTCU/4305-FOSSD-Project/blob/master/Documents/Quy_tac_ung_xu.md) để biết thêm chi tiết về quy tắc ứng xử của chúng tôi.

## Tài liệu cho người dùng cuối

Mời các bạn [Click đây để xem tài liệu cho người dùng cuối](https://github.com/TeamworkTCU/4305-FOSSD-Project/blob/master/Documents/T%C3%A0i%20Li%E1%BB%87u%20cho%20ng%C6%B0%E1%BB%9Di%20d%C3%B9ng%20cu%E1%BB%91i.md)

## Tài liệu cho nhà phát triển
Mời các bạn [Click đây để xem tài liệu cho nhà phát triển](https://github.com/TeamworkTCU/4305-FOSSD-Project/blob/master/Documents/T%C3%A0i%20Li%E1%BB%87u%20D%C3%A0nh%20Cho%20Ng%C6%B0%E1%BB%9Di%20Ph%C3%A1t%20Tri%E1%BB%83n.md)

## Tài liệu thiết kế
Mời các bạn [Click đây để xem tài liệu thiết kế](https://github.com/TeamworkTCU/4305-FOSSD-Project/blob/master/Documents/TailieuThietke.md)


## Lời cảm ơn

Để hoàn thành tốt đề tài này chúng em xin cảm ơn thầy [Mai Cường Thọ](https://sites.google.com/site/maicuongtho/index) – giảng viên khoa CNTT Trường Đại học Nha Trang cùng các thầy cô bộ môn [Kỹ thuật Mạng máy tính](http://tcu.edu.vn/) đã tạo điều kiện cho chúng em nghiên cứu và hoàn thành đề tài. Một lần nữa chúng em xin trân trọng cảm ơn thầy [Mai Cường Thọ](https://sites.google.com/site/maicuongtho/index) đã tận tình giúp đỡ, hướng dẫn chúng em trong suốt quá trình thực hiện đề tài.
