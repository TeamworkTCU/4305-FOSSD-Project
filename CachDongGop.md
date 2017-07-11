# Quy trình Pull-Request khi đóng góp code

Tiến trình đóng góp code có thể làm bạn nản chí vào lúc ban đầu.
Điều quan trọng nhất cần nhớ là làm theo các mô hình và tiêu chuẩn được nêu ra bởi dự án bạn đang làm việc (như chúng ta đã thảo luận). Các tiến trình làm việc chung mà GitHub hỗ trợ là khá đơn giản.

* Fork target repo vào account riêng của bạn.
* Clone repo tới máy tính của bạn
* Kiểm tra "topic branch" mới và thực hiện sự thay đổi.
* Push topic branch đến fork của bạn
* Sử dụng viewer khác trên GitHub để tạo pull request thông qua thảo luận.
* Thực hiện bất kỳ thay đổi nào được yêu cầu.
* Pull request là sau khi được merge (thường nằm trong master branch) và topic branch bị xóa từ upstream (target) repo.

Trong tiến trình này, bạn có thể thấy nhiều thay đổi đối với bất kỳ dự án nào. Ví dụ, các quy ước đặt tên cho các topic branch khác nhau. Một số dự án sử dụng quy ước bug_345, trong đó 345 là ID# của GitHub issue được tập hợp. Một số dự án thích commit messages ngắn hơn so với những projects khác. Dưới đây là một số lệnh có thể hoàn thiện tiến trình trên.


## Bước 1: Forking

Fork repo trên Github.com
![Forking](http://fsd14.com/images/2015_05_13_f2830.png)

## Bước 2: Cloning

Clone repo sử dụng URL ở thanh bên phải
git clone git@github.com:jcutrell/jquery.git
![Clonning](http://fsd14.com/images/2015_05_13_16114.png)

## Bước 3: Thêm Upstream remote

Thay đổi trong cloned directory và sau đó tại thời điểm này, bạn có thể thêm upstream remote:

cd jquery
git remote add upstream git@github.com:jquery/jquery.git
Nó sẽ cho phép bạn pull khi thay đổi từ source locally và kết hợp chúng lại, như sau:

git fetch upstream
git merge upstream/master

## Bước 4: Kiếm tra topic branch

Trước khi thực hiện những thay đổi của mình, hãy kiểm tra topic branch

git checkout -b enhancement_345

## Bước 5: Committing

Bây giờ, bạn có thể thực hiện thay đổi của mình, và tạo ra một commit theo dõi những thay đổi đó

git commit -am "adding a smileyface to the documentation."

## Bước 6: Pushing

Tiếp theo, bạn sẽ push topic branch này vào fork riêng trong dự án của bạn

git push origin enhancment_345

## Bước 7: Tạo một Pull-Request

Cuối cùng, bạn sẽ tạo một pull request. Trước tiên, hãy tới fork của bạn trong repo. Bạn sẽ thấy "your recently pushed branches", và nếu vậy, bạn có thể chọn "Compare and Pull Request". Nếu không, bạn có thể chọn branch của mình từ dropdown, sau đó click vào "Pull Request" hoặc "Compare" ở phía trên bên phải của phần repo.
![Pull](http://fsd14.com/images/2015_05_13_23d1c.png)
![Pull](http://fsd14.com/images/2015_05_13_0ddf8.png)

Tạo một pull request thông qua branch dropdown menu

Một trong hai cách trên sẽ chuyển bạn đến trang nơi bạn có thể tạo một pull-request và comment trên các request. Trang này cũng bao gồm một hình tượng hóa về những thay đổi bạn đã thực hiện. Nó làm cho người quản trị project dễ dàng xem xét bạn đã làm những gì và đưa ra quyết định dễ dàng hơn về việc liệu có phù hợp để merge commit của bạn. Nếu có câu hỏi, họ có thể hỏi trong comments; họ cũng có thể hỏi bạn cách clean up pull request và resubmit, sau đó đóng pull request.

Có một lưu ý vô cùng quan trọng là bạn cần biểu lộ sự tôn trọng tuyệt đối tới quản trị viên của project; Sau tất cả, bạn luôn có thể sử dụng forked version của code, và nếu admin không lựa chọn sự thay đổi của bạn thì đó là vì theo quan điểm của mình, họ có thể làm như vậy. Hãy nhớ rằng, theo như Github Employee Zach Holman trong "How GitHub Uses GitHub to Build GitHub", pull request chỉ là một cuộc đối thoại. Đó là cách họ đã xử lý; thay vì chờ đợi commit của bạn được chấp nhận, bạn nên hy vọng rằng sẽ có một cuộc đối thoại mở về code bạn đã viết.

## GitHub Issues + Pull Requests = Project Management Zen

GitHub đưa ra GitHub Issues, đó là một cách mạnh mẽ trong việc tạo ra dữ liệu, tương tác, các cuộc đối thoại tự động về bugs hoặc các tính năng đối với bất kỳ dự án nào. Trong khi Issues có thể bị disable, theo mặc định chúng có thể được enable. Có rất nhiều tính năng tuyệt vời mà Issues đã xây dựng sẵn, nhưng một trong những tính năng quan trọng nhất là sự tích hợp của nó với pull request. Một user có thể tham chiếu một issue trong commit message của mình chỉ bằng cách include các issue’s numerical ID trong commit message. Ví dụ:

git commit -am "Adding a header; fixes #3"

Commit message này sẽ tự động đánh dấu issue #3 là closed khi pull request liên quan đến nó được chấp nhận. Kĩ thuật tự động hóa này tạo cho GitHub một công cụ tuyệt vời để phát triển việc quản lý các project.

## Tìm các kênh khác của sự hợp tác

Đừng suy nghĩ rằng cách duy nhất bạn có thể hợp tác là thông qua pull request. Thông thường, các dự án mã nguồn mở lớn được hưởng lợi từ nhiều cách thức hợp tác trong công việc. Ví dụ, một dự án như Ruby on Rails đã có tiếng trong cộng đồng của nó; đây là nơi các câu hỏi được trả lời trên forum và trong IRC chatroom giúp cho việc xây dựng các kiến thức về framework, và cũng định hướng cho framework tương lai bằng cách nói về các ý tưởng và các uncovering bugs.

Các kênh của việc hợp tác thường được mở ra như một môi trường hỗ trợ, chẳng hạn như forums và chatrooms. Cũng có thể có các email chains, meetups, hoặc các conference calls giúp cho việc định hướng project và tạo ra một cộng đồng sôi nổi, hữu ích. Nếu không có những cộng đồng thế này, hiệu quả của pull request là rất thấp.
