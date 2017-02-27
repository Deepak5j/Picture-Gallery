<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Add Pictures</title>	
</head>
<body class="im" bottommargin="0px" topmargin="0px" rightmargin="0px" leftmargin="0px">
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
<div style="border-radius:0px;float:left;margin-left:9%;background-color: #a7ffeb;border-width:1px;
	border-color: #000000;border-style: ridge;width:82%;height:100%;margin-right:9%;margin-top:20px;margin-bottom:20px">
	<!-- Add file -->
	<h1 style="text-align: center;font-size: 24px; color:#000088;font-family: arial;text-transform: uppercase;">
		<br><u>ADD PICS</u>
	</h1>
	<div align="center">
	<!-- form -->			
		<form method="post" action="/test/UPLOAD" enctype="multipart/form-data" onsubmit="ch()">
			<table  align="center" style="border-spacing:20px; border-style:inset;background-color: #ede7ff;border-color: #000000;border-width: 1px;">
				<tr>
					<th>Title :</th>
					<td><input type="text"  name="title"></td>
				</tr>
				<tr>
					<th>File:</th>
			    	<th>
			    		<input type="file" name="ddd">
			    	</th>
			    </tr>
				<tr>
					<th colspan=2><button type="submit">ADD</button></th>
				</tr>
			</table>
		</form >
		<br><br>
		<br><br>				
	</div>
</div> 
<div align="center">
	<a  href="/test/jsp/access.jsp">
		<img alt="FORWARD" src="/test/back/fr.png" height=50px width=80px>
	</a>		
</div>
<!-- footer -->					
<div style="border-radius:0px;background-color: #000077;width:100%;height:70px;margin-top:90px;margin-bottom:0%">
</div>
</body>
</html>