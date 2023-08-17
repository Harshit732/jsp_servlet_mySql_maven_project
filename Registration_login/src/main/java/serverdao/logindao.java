package serverdao;

import java.io.IOException;
import java.sql.*;

public class logindao  {
	
	String sql="SELECT * FROM employee.emp_table WHERE empname=? AND emp_pass=?" ;
	
	public boolean check(String uname,String pass)
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","rodeblock");
			PreparedStatement st= con.prepareStatement(sql);
			st.setString(1,uname);
			st.setString(2,pass);
			
			ResultSet rs= st.executeQuery();
			if(rs.next())
			{
				return true;
			}
			
		}
		catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return false;
		
	}

	
	

}
