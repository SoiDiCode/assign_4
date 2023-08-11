package com.example.ass_banhang.utils;
import java.time.LocalDate;
public class TestDate {
        public static void main(String[] args) {
            // Lấy ngày hiện tại
            LocalDate currentDate = LocalDate.now();

            // Cộng thêm một ngày
            LocalDate nextDay = currentDate.plusDays(20);

            System.out.println("Ngày sau khi cộng: " + nextDay);
        }
}
