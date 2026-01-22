# ใช้ JDK 17 เพื่อรันแอป
FROM eclipse-temurin:17-jre-alpine
# กำหนดโฟลเดอร์ทำงาน
WORKDIR /app
# ก๊อปปี้ไฟล์ .jar ที่ build เสร็จแล้วเข้ามา
COPY target/*.jar app.jar
# คำสั่งรันแอป
ENTRYPOINT ["java", "-jar", "app.jar"]