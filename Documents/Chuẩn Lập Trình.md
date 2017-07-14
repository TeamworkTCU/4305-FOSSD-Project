# 4305 Đồ án môn học Phát triển phần mềm mã nguồn mở
## THẾ NÀO LÀ CHUẨN LẬP TRÌNH???
* Mục đích:

Đưa ra các quy ước khi coding với ngôn ngữ lập trình C#, với các quy tắc này giúp tiết kiệm thời gian rất lớn trong tiến trình phát triển phần mềm và cả trong quá trình bảo trì sản phẩm. Giúp sinh viên quen với làm việc theo nhóm.
Tài liệu này chủ yếu hướng dẫn sinh viên với ngôn ngữ lập trình C#, nhưng có rất nhiều quy tắc được sử dụng trong nhiều ngôn ngữ lập trình khác tích hợp trong bộ công cụ Visual Studio .NET.
* Phạm vi áp dụng:

Những lập trình viên tham gia dự án phát triển bằng ngôn ngữ C# và công cụ Visual Studio .Net.

* Định nghĩa và những từ viết tắt:

Ký pháp Hungarian là cách quy định đặt tên biến như sau: bắt đầu tên biến thì viết chữ thường và các chữ đầu thể hiện kiểu dữ liệu của biến, và được gọi là các tiền tố
## QUI ĐỊNH CHUNG VỀ CHUẨN LẬP TRÌNH

### TỔ CHỨC TẬP TIN, THƯ MỤC
- Đặt tên tập tin ngắn gọn (độ dài tên tập tin nên <=8 ký tự)
- Lưu mỗi lớp trong một tập tin riêng biệt và tên tập tin phải trùng với tên lớp.
- Mỗi Namespace được đặt trong một thư mục riêng, phân cấp thư mục theo phân cấp
của Namespace
### NGẮT DÒNG, THỤT VÀO ĐẦU DÒNG
- Khi một biểu thức quá dài, ta phải ngắt dòng biểu thức đó theo nguyên tắc sau:
o Ngắt sau dấu phẩy
o Ngắt sau phép toán
o Ngắt theo độ ưu tiên của các phép toán
o Canh lề dòng sau khi ngắt phải ngang bằng với dòng trên tại cùng độ ưu tiên
của phép toán
Ví dụ:
double x =a * b / (d – e + f) +
 4 * g;
- Các dòng lệnh cùng cấp phải đặt thẳng hàng (canh lề trái), các dòng lệnh cấp con
phải thụt vào 1 khoảng Tab so với dòng lệnh cấp cha.
### KHOẢNG TRẮNG
- Không được phép gõ 2 hoặc nhiều khoảng trắng liên tiếp nhau.
- Không được gõ khoảng trắng ở đầu dòng lệnh.
- Giữa các phép toán và toán hạng phải có khoảng trắng.
- Sau dấu phẩy phải có 1 khoảng trắng (trường hợp truyền tham số cho hàm)
### CHÚ THÍCH
- Chú thích 1 đoạn: sử dụng cặp dấu /*….*/
- Chú thích 1 dòng: sử dụng //
### KHAI BÁO BIẾN
- Nên khai báo mỗi biến trên 1 dòng.
- Phía sau biến chú thích công dụng của biến, giá trị có thể nhận được (nếu cần)
Ví dụ:
int nCount = 0; // đếm số lượng mặt hàng thoả điều kiện
- Tất cả các biến khi khai báo đều phải khởi tạo giá trị ban đầu.
- Nếu có nhiều biến khai báo gần nhau  định dạng các khai báo đó theo dạng bảng
(table).
Ví dụ:
string strConn = “DSN=ABC”;
int nRow = 0;
float fTotal = 0;
### ĐỊNH NGHĨA LỚP / INTERFACE
- Dấu “{“ phải được đặt ở dòng kế tiếp sau dòng định nghĩa lớp (hoặc khai báo phương
thức)
- Dấu “}” phải được đặt thẳng hàng với dấu “{“ tương ứng của nó và phải được đặt
trên 1 dòng riêng.
- Giữa tên phương thức và dấu “(“ phía sau không có khoảng trắng.
- Bên trong 1 lớp / Interface, dữ liệu + phương thức phải được nhóm lại và được đặt
theo trình tự sau:
o Biến public
o Biến cục bộ
o Các hàm xử lý sự kiện
o Các hàm tự tạo
(Có thể dùng #region để nhóm các biến, phương thức cùng loại lại với nhau)

### Dòng trống (Blank Lines)
- Giữa các phương thức trong 1 lớp phải có 1 dòng trống tách biệt.
- Giữa các phương thức và các thuộc tính phải có 1 dòng trống.
- Giữa các biến cục bộ và câu lệnh đầu tiên trong phương thức nên có 1 dòng
trống (để dễ đọc)
- Giữa các phần (section) bên trong 1 phương thức nên có 1 dòng trống (để dễ
đọc)
### QUI ƯỚC ĐẶT TÊN (Đặt tên biến như thế nào để chuẩn “clean code”)

* Tên mang mục đích        

Tôi cho rằng đây là qui định bắt buộc và ưu tiên nhất. Hãy chọn tên biểu đạt được mục đích của nó. Điều này hoàn toàn đơn giản phải không? Thay vì muốn biểu hiện danh sách học sinh bằng biến list1 hãy dùng listStudents. Bởi vì list1 là 1 tên vô nghĩa , gây nhầm lẫn và lộn xộn cho người đọc.
Để dễ hiểu hơn, hãy xem qua ví dụ sau:
```javascript
List list1 = new ArrayList();
			/*... */
			for ( Student x : list1 ) {
				if( x.GPA &gt; 8 ){
					x.rank= "GOOD";
				}
			}
```
Và
```javascript
		List listStudents= new ArrayList();
			/*... */
			for ( Student student : listStudent s) {
				if( student.GPA &gt; 8 ){
					student.rank= "GOOD";
				}
			}
```
 Với ví dụ trên, chúng ta dễ dàng thấy được sức mạnh của việc lựa chọn tên phù hợp. Vậy tóm lại tên biến đạt yêu cầu phải trả lời được 3 câu hỏi lớn: Tại sao nó tồn tại? Nó dùng để làm gì ? và Làm sao sử dụng nó ? Suy nghĩ một cái tên chuẩn sẽ mất vài giây nhưng nó sẽ tiết kiệm hàng giờ đồng hồ cho bạn và đồng đội của bạn.    
* Tránh sai lệch thông tin

Không sử dụng studentList để biểu thị nhóm học sinh. Khái niệm nhóm và danh sách là hoàn toàn khác nhau. Trong tường hợp bạn muốn phân nhiều nhóm trong lớp học hãy dùng studentGroup.

Cẩn thận với những tên dài nhưng chỉ có 1 sự thay đổi nhỏ.Nó sẽ làm bạn khó phân biệt được.

    listOfStudentInClass9aBorrowBooksIn2016 .

    listOfStudentInClass9bBorrowBooksIn2016 .    

Bạn có dám chắc rằng bạn sẽ không nhầm 2 biến trên là 1 không?

Tránh những sai lầm không đáng có từ I và l. Nhìn có vẻ ngớ ngẩn nhưng 1 bên là chữ i viết hoa, bên còn lại là chữ l.

* Tính nhất quán  

Nếu bạn đã dùng user làm tên biến chỉ khách hàng, thì đừng sử dụng tên client ở những phần phía dưới. Chắc chắn điều này sẽ gây không ít phiền hà cho người đọc.

* Sử dụng tên có thể tìm được    

Hãy tưởng tượng bạn đang làm việc trên 1 project lớn gồm một mớ hỗn độn code của thành viên trong team. Ban gặp vấn đề với một biến nhưng tìm mãi không được ? 12h tối nay tới deadline nhưng 8h có hẹn sinh nhật với bạn gái. Bạn đã mất 5 giờ đồng hồ để sửa lỗi nhưng vẫn không giải quyết được … OK giờ đừng tưởng tượng nữa, thấy đỡ kinh hoàng hơn chưa? Vấn đề này xảy ra, khi bạn sử dụng hằng số 7 để biểu thị 1 tuần có 7 ngày hay số 5 là 1 nhóm phải có 5 sinh viên. 
```javascript
final int MAX_MONTH_IN_YEAR = 12;
		int salary = 0;
		for(int i=1 ; i &lt; MAX_MONTH_IN_YEAR ; i++){ 
			if( Jame.getWorkDays(i) &gt; 25) {
		        salary += 5000000;
			}
			salary+= 15000000;
		}
```

Nếu không sử dụng MAX_MONTH_IN_YEAR mà sử dụng số 12, khi tìm kiếm sẽ gặp rất nhiều biến số 12 được đăt khắp nơi trên chương trình.

* Tránh những kí tự dư thừa      

Tránh những kí tự đặt phía trước như tiền tố m_ hay thêm kiểu dữ liệu vào đầu tên biến. Tôi cảm thấy khá dư, không cần thiết lắm. Trong lúc làm việc nhóm, tôi cũng loại bỏ những tiền tố và team tôi không phàn nàn gì lắm. Và tôi cũng không thấy ai trong nhóm dùng thế.     

* Đừng tỏ ra hài hước hay nguy hiểm        

Đừng đem sự hài hước hay cố tỏ ra nguy hiểm vào tên biến. Ví dụ bạn muốn ám chỉ một hành động copy nhưng tỏ ra hài hước với một em trong team nên bạn đặt tên biến là mtp ? Có vẻ vui đấy.Nhưng nó không khiến người đọc code của bạn và một số người khác thấy vui đâu. Một lựa chọn tường minh thường tốt hơn là  một giá trị giải trí. Hãy nhớ vui đúng lúc, nghiêm túc đúng nơi.

* Qui ước đặt tên class và method        

Tên class hoặc đối tượng tốt nhất nên dùng danh từ hoặc cụm danh từ để đặt. Đối với method thì nên dùng động từ hoặc cụm động từ. Vì method là một hành động nên dùng thế sẽ khiến mọi thứ rõ ràng dễ đọc hơn.  Ví dụ:

Class : Student, firstNumber, secondNumber,…      

Method : run, setName, addCustomer,…

Trên đây là một số qui định về đặt tên biến mà tôi tự tổng hợp lại và thấy có ích trong quá trình code. Cảm ơn vì đã đọc. Một điều khác nhau đặc trưng giữa lập trình viên chuyên nghiệp và lập trình viên thông minh là lập trình viên chuyên nghiệp dành sức lực của họ để viết code cho mọi người dễ đọc.


## Tài liệu liên quan

*	C# Coding Conventions (C# Programming Guide)

		https://msdn.microsoft.com/en-us/library/ff926074.aspx
*	C# Coding Standards and Naming Conventions

		http://www.dofactory.com/reference/csharp-coding-standards
*	C# Coding Standards for .NET 

		http://se.inf.ethz.ch/old/teaching/ss2007/251-0290-00/project/CSharpCodingStandards.pdf
#### Nếu có bất cứ thắc mắc nào xin vui lòng liên hệ qua email:    phuccoi996@gmail.com

