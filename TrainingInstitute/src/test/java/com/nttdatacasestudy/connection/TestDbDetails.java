package com.nttdatacasestudy.connection;

public class TestDbDetails {
    public static void main(String[] args) {
        // Simulate TiDB URL
        System.setProperty("DB_URL",
                "mysql://4HkjARMfHQLz3AB.root:OjAyeaICf8MLDanS@gateway01.us-east-1.prod.aws.tidbcloud.com:4000/test");
        System.setProperty("DB_USER", "4HkjARMfHQLz3AB.root");
        System.setProperty("DB_PASS", "OjAyeaICf8MLDanS");

        // Test URL conversion
        String jdbcUrl = DbDetails.getJdbcUrl();
        System.out.println("Original URL: " + System.getenv("DB_URL"));
        System.out.println("Converted JDBC URL: " + jdbcUrl);
        System.out.println("DB User: " + DbDetails.getUserName());
        String pass = DbDetails.getPassword();
        System.out.println(
                "DB Pass: " + (pass != null ? "***" + pass.substring(Math.max(0, pass.length() - 4)) : "null"));

        // Expected:
        // jdbc:mysql://gateway01.us-east-1.prod.aws.tidbcloud.com:4000/test?useSSL=true&serverTimezone=UTC
    }
}
