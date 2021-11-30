package pojo;

import java.io.File;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import dbutil.DBUtil;

public class Exporter {
	public void createXL()
	{
		try {
			Connection conn=DBUtil.getConnection();
			Statement st=conn.createStatement();
			ResultSet rs=st.executeQuery("select * from product");
			PrintWriter pw=new PrintWriter(new File("C:\\Users\\Soumak\\Desktop\\Products.csv"));
			StringBuilder sb=new StringBuilder();
			
			while(rs.next()) {
				sb.append(rs.getString("prod_id"));
				sb.append(",");
				sb.append(rs.getString("prod_name"));
				sb.append(",");
				sb.append(rs.getString("prod_category"));
				sb.append(",");
				sb.append(rs.getInt("prod_price"));
				sb.append("\r\n");
			}
			
			pw.write(sb.toString());
			pw.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
}