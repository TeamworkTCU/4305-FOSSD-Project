Sau khi đăng kí tài khỏan trên GitHub và truy cập đến kho code của 4305-FOSSD-Project. Thì đây là màn hình trang chủ của dự án.

![Màn hình trang chủ dự án ](https://github.com/TeamworkTCU/4305-FOSSD-Project/blob/Phuc/Capture.PNG)

## Quy trình Pull-Request khi đóng góp code

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
