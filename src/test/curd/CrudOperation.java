package test.curd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ResourceBundle;

public class CrudOperation 
{
	private static Connection con=null;
	private static ResultSet rs=null;
	private static PreparedStatement ps=null;
	private static ResourceBundle rb=ResourceBundle.getBundle("property.config");
	
	public static Connection createConnection()
	{
		try 
		{
			Class.forName(rb.getString("espo.driver"));//load driver class
			con=DriverManager.getConnection(rb.getString("espo.url"),rb.getString("espo.userid"),rb.getString("espo.userpass"));
		}
		catch (ClassNotFoundException|SQLException cse)
		{
			System.out.println(cse);
		}
		return con;
	}
	public static ResultSet getData(String sql,String data)
	{
		con=createConnection();//calling above method
		try
		{
			ps=con.prepareStatement(sql);
			ps.setString(1,data);
			rs=ps.executeQuery();
		}
		catch(SQLException se)
		{
			System.out.println(se);
		}
		return rs;
	}//------------>  New
	public static ResultSet getData(String sql)
	{
		con=createConnection();//calling above method
		try
		{
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
		}
		catch(SQLException se)
		{
			System.out.println(se);
		}
		return rs;
	}//---------------> new
	public static ResultSet getData(String sql,int data)
	{
		con=createConnection();//calling above method
		try
		{
			ps=con.prepareStatement(sql);
			ps.setInt(1, data);
			rs=ps.executeQuery();
		}
		catch(SQLException se)
		{
			System.out.println(se);
		}
		return rs;
	}//------------>  New
}
