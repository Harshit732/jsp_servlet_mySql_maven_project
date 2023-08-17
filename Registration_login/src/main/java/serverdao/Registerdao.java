package serverdao;

import java.io.IOException;
import java.sql.*;

public class Registerdao  {
	
	String sql="INSERT INTO `employee`.`emp_table` (`empname`, `empcontact`, `emp_email`, `emp_pass`) VALUES (?, ?, ?, ?);";
	
	public boolean insert(String empname,String emp_email,String empcontact,String emp_pass)
	{int r=0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","rodeblock");
			PreparedStatement st= con.prepareStatement(sql);			
			st.setString(1,empname);
			st.setString(2,empcontact);
			st.setString(3,emp_email);			
			st.setString(4,emp_pass);
			
			System.out.print(st);
		r=st.executeUpdate();
			if(r>0)
			return true;
			
		}
		catch (Exception e) {
			
			e.printStackTrace();
		}
		return false;
		
		
	}

	
	

}
