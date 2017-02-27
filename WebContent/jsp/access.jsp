<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.sql.*,test.curd.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">	
	<title>Gallry</title>
</head>
<body bottommargin="0px" topmargin="0px" rightmargin="0px" leftmargin="0px">
<%/*
response.setHeader("Cache-Control", "no-cache");
response.setHeader("Cache-Control", "no-store");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);
*/%>
<!-- blue header -->
<div style="background-color: #000099; width:100%;height:50px;padding-top: 25px">	
</div>		
<!-- light blue background -->	
<div style="padding:6px;border-radius:10px;float:left;margin-left:7%;background-color: #a7ffeb;border-width:1px;
	border-color: #000000;border-style: ridge;width:82%;height:100%;margin-right:7%;margin-top:20px;margin-bottom:20px">
	<!-- Add file -->
	<h1 style="text-align: center;font-size: 24px; color:#000088;font-family: arial;text-transform: uppercase;">
		<br><u>Picture Gallry</u>
	</h1>
	<div>		
		<%	Connection con =null;
			PreparedStatement ps=null;
			ResultSet rs=null;
			String strsql="select * from files order by date desc";// limit 6";
			con=CrudOperation.createConnection();
			try
			{
				ps=con.prepareStatement(strsql);
				rs=ps.executeQuery();
				while(rs.next())
				{
					String path=request.getContextPath();
					String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
					String newpath=basePath+"pics";
					String name=rs.getString("name");
					String source=newpath+"/"+name;	
			%>
					<img src="<%=source %>" style="width:218px;height:210px">
			<%	} 
			}
			catch(SQLException se)
			{
				se.printStackTrace();
				System.out.println("==>db catch");
			}
			finally
			{
				System.out.println("==>db finally");
			}
		%>	
	</div>
</div>
<div align="center">
	<a  href="/test/jsp/upload.jsp">
		<img alt="Add Pics" src="/test/back/bk.png" height=50px width=80px>
	</a>		
</div>
</body>
</html>