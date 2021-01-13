<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="r12.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Homepage</title>
</head>
<body>
<% 
String x="";
x=request.getParameter("msg")+"";
if(!x.equals("null"))
{
out.println(x+"<br>");
}
%>
<div class=login-box>
<form action="remove1.jsp" method="post">
    		
     
    		<p>Product name</p>
    				<select name="pname" id="id">
<option value=0>-------Select--------</option >
<%@ page language="java"%>
<%@page import="java.sql.*"%>
<%@page import="java.lang.*"%>
<%@page import="java.io.*"%>
<%
Connection cn=null;
Statement st=null;
ResultSet rs=null;

try
{
 Class.forName("oracle.jdbc.driver.OracleDriver");
 cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","hr");
st=cn.createStatement();
rs=st.executeQuery("select p_name from product");
 while(rs.next())
{
%>
<option value="<%=rs.getString("p_name")%>"><%=rs.getString("p_name")%> </option>
<%
}
cn.close();
}
catch(ClassNotFoundException z){out.print("Driver loading fail\n"+z);}

catch(SQLException z){out.print("check table\n"+z);}

catch (Exception p)
 {
   p.printStackTrace();
   out.println(p);
 }
%>
    		                        
<input type="submit" value="Delete Product">
<a href=product.jsp><input type="button" value="Cancel"/></a>

    		

    		                        
</form>
     </div>                            
</body>
</html>