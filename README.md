# 4305-FOSSD-Project
Free &amp; Open Source Software Development Project

Thành viên tham gia:

Nguyễn Đức Tiến | 0948.278.451 | ductien96.vn@gmail.com 

Trịnh Đình Phúc | 0121.658.5084 | phuccoi996@gmail.com

Đề tài: Chương trình lên lịch công việc

* Tính năng chính:

– sử dụng control lịch theo tháng cơ bản của Windows Form, giúp dễ dàng duyệt qua các ngày cần lên lịch.

– Có khả năng lên lịch công việc theo giờ và phút tại nhiều thời điểm trong bất kỳ ngày nào.

– không cho người sử dụng thêm ngày giờ đã “quá khứ”.

– tính năng nhắc liên tục khi người dùngt chưa bấm “I have done it!” khi xem một công việc mà chưa được hoàn thành.

– có khả năng khởi động cùng lúc với Windows (startup), ứng dụng sẽ luôn theo bạn khi cần.

* Ưu điểm

– Tiết kiệm tài nguyên máy, sử dụng control “timer” để tiết kiệm tài nguyên CPU khi chạy ngầm khi chương trình đang quét tìm việc cần nhắc chưa được thực hiện.

– Mỗi lần control timer thới thời điểm bắt đầu chu kỳ mới, nó chỉ quét những việc cần nhắc “chưa làm” trong khoảng thời gian hai giây để tiết kiệm xử lý khi vòng lặp chạy.

– Có khả năng mở rộng tùy theo mục đích, nhu cầu.

* Nhược điểm

– Vì chương trình đơn giản nên dùng text file để lưu trữ nên bảo mật không cao, tốn tài nguyên khi phải đọc file liên tục.

– Hơi tốm RAM một ít khi chạy, nên xóa dữ liệu chương trình thường xuyên để tiết kiệm bộ nhớ RAM.
* Thuật Toán:
– Datepicker là một dạng component đã quá quen thuộc với các bạn làm front-end, được sử dụng rộng rãi trên rất nhiều ứng dụng web. Mục đích của nó là hiển thị một "tờ" lịch trên màn hình máy tính để người dùng có thể chọn ngày tháng một cách dễ dàng.
– Khi hiển thị lịch cho một tháng bất kì, chúng ta phải bắt đầu hiển thị từ ngày đầu tiên của tháng đó (ngày 1), vấn đề là ngày này có thể thuộc một "thứ" nào đó bất kì trong tuần (từ thứ 2 đến CN). Các thứ trước đó sẽ bị bỏ trống vì nó thuộc về tháng trước.
– Vì vậy, việc đầu tiên chúng ta cần làm là xác định ngày đầu tiên của tháng cần tạo là ngày thứ mấy trong tuần. Sau khi đã xác định được đâu là ngày bắt đầu, chúng ta sẽ bắt đầu điền tiếp vào các ngày tiếp theo cho đến hết tháng (30 hoặc 31 ngày). Riêng tháng 2 sẽ có 28 ngày, đặc biệt vào năm nhuận thì tháng 2 sẽ có 29 ngày. Vậy, việc thứ 2 cần làm đó là xác định năm hiện tại có phải là năm nhuận không.
– Sử dụng Công thức Zeller - Tính thứ ngày trong tuần
– Bây giờ chúng ta sẽ tổng hợp các phân tích ở trên và implement thuật toán lập lịch cho một tháng bất kì. Input: Tháng và năm cần lập lịch, ví dụ: 1 và 2016 Output: Một mảng 1 chiều chứa 42 phần tử ứng với một khung lịch 6x7 ô Đầu tiên ta sẽ khởi tạo mảng result 1 chiều gồm 42 phần tử, tất cả đều mang giá trị mặc định là 0. Sau đó tạo 1 biến startIndex, có giá trị là kết quả của hàm zeller() với ngày đầu tiên của tháng (ngày 1). Cuối cùng bạn chỉ cần điền các ngày tương ứng từ (gía trị của) startIndex đến daysIn(month, year) của tháng hiện tại là hoàn thành.

