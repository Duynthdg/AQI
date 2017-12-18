AQI server đưa chỉ số AQI dựa vào các thông số đã đo được.
# Cài đặt
- Cài đặt node, cài đặt npm.
- Tạo Database mới có tên aqi.
- File backup database trong /database.
- cd vào thư mục, dùng lệnh npm install để cài các gói
- Các config ở trong file /constant/constant.js. Dùng để thay đổi các dữ liệu host, port, ...
- Thời gian mặc định đang để 60 phút/1 lần publish. Có thể thay đổi ngắn hơn để test tiện hơn trong file. /constant/constant.js -> serverConfig -> aqiTimeToPublish. Thời gian tính theo phút (mặc định là 60 phút) muốn cho ngắn hơn có thể sửa thành 1,2 phút hoặc 1/2 (30 giây), 1/6 (10 giây), 1/60(1 giây) ...
![AQI Server Describe](https://gitlab.com/hungnguyen95/AQI/raw/master/AQI.png)
- MQTT broker làm trung tâm để publish và subscribe
- Sensor sẽ pubish đc những data đo được lên MQTT broker ở topic /aqi/data.
- Server sẽ subscribe ở topic /aqi/data lấy những dữ liệu đo được rồi tính toán ra chỉ số AQI.
- Dựa vào chỉ số AQI đã tính toán được, server sẽ publish thông báo cho nhóm người sensitive và nosensitive tại topic /sensetive và /nosensitive.
- User dùng smart phone sẽ đăng kí thông tin là người nhạy cảm (sensitive) hoặc không nhạy cảm (nosensitive) và lắng nghe tại topic tương ứng. Khi nào server publish lên topic nào thì nhóm người tương ứng sẽ nhận được notify.
