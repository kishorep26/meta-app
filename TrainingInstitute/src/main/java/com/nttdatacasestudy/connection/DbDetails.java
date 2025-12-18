package com.nttdatacasestudy.connection;

/**
 * Interface DbDetails is created get the database details.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */
public class DbDetails {
    public static final String DRIVER_NAME = "com.mysql.cj.jdbc.Driver";
    public static final String USER_NAME = System.getenv("DB_USER");
    public static final String PASSWORD = System.getenv("DB_PASS");

    // Convert TiDB URL format to JDBC format
    public static String getJdbcUrl() {
        String rawUrl = System.getenv("DB_URL");
        if (rawUrl == null || rawUrl.isEmpty()) {
            return null;
        }

        // If it already starts with jdbc:mysql://, use it as-is
        if (rawUrl.startsWith("jdbc:mysql://")) {
            return rawUrl;
        }

        // If it starts with mysql://, convert to JDBC format
        if (rawUrl.startsWith("mysql://")) {
            // Remove mysql:// prefix
            String withoutPrefix = rawUrl.substring(8);

            // Find the @ symbol that separates credentials from host
            int atIndex = withoutPrefix.indexOf('@');
            if (atIndex > 0) {
                // Extract everything after @ (host:port/db)
                String hostAndDb = withoutPrefix.substring(atIndex + 1);
                return "jdbc:mysql://" + hostAndDb + "?useSSL=true&serverTimezone=UTC";
            }
        }

        // Fallback: assume it's already in correct format
        return rawUrl;
    }

    public static final String CONSTR = getJdbcUrl();
}
