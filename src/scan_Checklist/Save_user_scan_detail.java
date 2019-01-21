package scan_Checklist;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Save_user_scan_detail {
	String last_value="";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String classname = "oracle.jdbc.driver.OracleDriver";
	PreparedStatement pstm = null;
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	String driverName = "oracle.jdbc.driver.OracleDriver";
	String url1 = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "System";
	String dbpsw = "Nuevo";

	public void insert_scanvalue(String value) {
		try {
			System.out.println("from save_user_scan_detail");
			Class.forName(classname);
			Connection c = DriverManager.getConnection(url, user, dbpsw);
			c.setAutoCommit(false);
			PreparedStatement pstm = null;

			String sql = "INSERT INTO USER_PIC_DIGI(TIMESTAMP,PIC_NAME) VALUES('"
					+ java.time.LocalDate.now().toString() + "','" + value + "')";
			System.out.println(sql);
			pstm = (PreparedStatement) c.prepareStatement(sql);
			pstm.execute();
			c.commit();
			pstm.close();
			c.close();
		} catch (Exception e) {
			System.out.println(e);

		}
	}
}
