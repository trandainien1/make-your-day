# 📝 Web Chia Sẻ Cảm Nghĩ

Đây là một ứng dụng web nơi người dùng có thể dễ dàng **chia sẻ cảm nghĩ của mình thông qua các bài viết**, lưu trữ các bài viết mà mình thích, tương tác với người khác bằng cách **bình luận và thích bình luận**, từ đó tạo nên một cộng đồng trao đổi tích cực.

## 🔑 Chức năng chính

### 👤 Quản lý tài khoản người dùng
- Đăng ký tài khoản mới
- Đăng nhập/đăng xuất
- Thay đổi thông tin tài khoản (avatar, email, mật khẩu)

### 📝 Bài viết
- Tạo bài viết chia sẻ cảm nghĩ
- Chỉnh sửa nội dung bài viết
- Xóa bài viết
- Xem danh sách bài viết của mình và người khác
- Yêu thích bài viết của người dùng khác

### 💬 Bình luận & Tương tác
- Bình luận dưới mỗi bài viết
- Thích (like) bình luận của người khác
- Hiển thị số lượt thích trên mỗi bình luận
- Có thể lưu lại bài viết yêu thích
- Tìm kiếm dựa trên tiêu đề bài viết
- Lọc theo chủ đề (category) bài viết

## 📌 Công nghệ sử dụng
- **Ruby on Rails** (backend, RESTful API)
- **SQLite** (cơ sở dữ liệu)
- **Tailwind CSS** (giao diện người dùng)
- **Devise** (xác thực người dùng)

---

## 🚀 Hướng dẫn khởi động

```bash
# Clone project
git clone https://github.com/trandainien1/make-your-day.git
cd make-your-day

# Cài đặt gem
bundle install

# Cài đặt database
rails db:migrate

# Chạy server
rails server
```
