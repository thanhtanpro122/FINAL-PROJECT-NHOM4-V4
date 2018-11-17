package banhaisan.models.businessmodels;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public abstract class ConnectDatabase {
    private final String connectionString = "jdbc:sqlserver://localhost:1433;database=WebHaiSanTuoiSong;username=sa;password=12345";
    protected Connection connection = null;

    public void openConnection() throws SQLException, ClassNotFoundException {
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        connection = DriverManager.getConnection(connectionString);
    }

    public void closeConnection() throws SQLException {
        if (connection != null) {
            connection.close();
        }
    }
}
