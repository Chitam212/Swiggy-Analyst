 Swiggy Data Analytics — Phân tích dữ liệu đơn hàng Swiggy
> Dự án cá nhân phân tích dữ liệu hoạt động của Swiggy (nền tảng giao đồ ăn hàng đầu Ấn Độ), sử dụng SQL để khai thác insight và Dashboard để trực quan hóa, phục vụ hỗ trợ ra quyết định kinh doanh.
## Giới thiệu

Dự án phân tích dữ liệu đơn hàng, nhà hàng, khách hàng của Swiggy nhằm trả lời các câu hỏi kinh doanh: xu hướng doanh thu, nhà hàng/món ăn bán chạy, hành vi khách hàng, hiệu suất giao hàng. Toàn bộ quy trình từ truy vấn, làm sạch dữ liệu bằng SQL đến xây dựng dashboard trực quan được thực hiện độc lập, nhằm rèn luyện kỹ năng của một Data Analyst thực thụ.
##  Mục tiêu dự án

- Viết truy vấn SQL để làm sạch, tổng hợp và phân tích dữ liệu đơn hàng
- Xác định các chỉ số kinh doanh cốt lõi (KPI): doanh thu, số đơn hàng, giá trị đơn trung bình (AOV), tỷ lệ tăng trưởng theo thời gian
- Phân tích hành vi khách hàng: khách hàng trung thành, tần suất đặt hàng, nhóm khách hàng mang lại doanh thu cao
- Phân tích hiệu suất nhà hàng: nhà hàng/món ăn được đặt nhiều nhất, đánh giá trung bình
- Xây dựng dashboard trực quan để trình bày kết quả phân tích một cách trực quan, dễ hiểu cho người ra quyết định

## Quy trình thực hiện

```
Dữ liệu Swiggy (đơn hàng, khách hàng, nhà hàng)
              ↓
   SQL: làm sạch & truy vấn phân tích
              ↓
   Tổng hợp chỉ số & insight kinh doanh
              ↓
        Dashboard trực quan hóa
```

## Công nghệ sử dụng

| Thành phần | Công nghệ |
|---|---|
| Truy vấn & phân tích dữ liệu | SQL |
| Trực quan hóa | Dashboard (Power BI) |

##  

- **SQL cho phân tích dữ liệu**: viết truy vấn tổng hợp để trả lời câu hỏi kinh doanh cụ thể
- **Data cleaning**: xử lý dữ liệu thô, giá trị thiếu, chuẩn hóa trước khi phân tích
- **Phân tích kinh doanh (Business Analysis)**: chuyển đổi số liệu thô thành insight có ý nghĩa cho việc ra quyết định
- **Trực quan hóa dữ liệu**: xây dựng dashboard giúp truyền tải thông tin rõ ràng, trực quan cho người không chuyên kỹ thuật
- **Tư duy giải quyết vấn đề**: đặt câu hỏi đúng và tìm câu trả lời bằng dữ liệu

##  Cấu trúc thư mục

```
Swiggy-Analyst/
└── Swiggy Data Analytics/
    ├── [SQL scripts]      # Truy vấn làm sạch & phân tích dữ liệu
    └── [Dashboard file]   # File dashboard trực quan hóa kết quả
```

##  Một số câu hỏi phân tích chính

- Doanh thu và số lượng đơn hàng biến động như thế nào theo thời gian?
- Nhà hàng và món ăn nào được đặt nhiều nhất?
- Nhóm khách hàng nào mang lại doanh thu cao nhất (top khách hàng)?
- Khu vực/địa điểm nào có mức độ hoạt động cao nhất?

## Định hướng phát triển tiếp theo

- [ ] Bổ sung phân tích dự đoán (forecasting) doanh thu
- [ ] Tự động hóa pipeline cập nhật dữ liệu định kỳ
- [ ] Mở rộng dashboard với bộ lọc tương tác chi tiết hơn
