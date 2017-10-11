<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import=" java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;"
 %>
 <%


String driver="com.mysql.jdbc.Driver";
String url="jdbc:mysql://localhost:3306/company";
String user="root";
String password="1234";
String qry="update user3 set password=? where mobile_no=?";
try
{
	Class.forName(driver);
	Connection con=(Connection) DriverManager.getConnection(url,user,password);
	PreparedStatement stmt=(PreparedStatement) con.prepareStatement(qry);
	stmt.setString(1, request.getParameter("mobile"));
	stmt.setString(2, request.getParameter("upassword"));
	
	int status=stmt.executeUpdate();
	
	
	
	if(status>0)
	        out.println("success............");%>
	            
	            <form action="passwordupdatemail.jsp" method="post">
	            
	                Email To Verify:<input type="email" name="mailid" required/>|<input type="submit" value="Go >>"/>
	                
	            
	            
	            
	            </form>
	            
	        <% 
		//request.getRequestDispatcher("/Sendingmail").forward(request, response);
		
		//response.sendRedirect("Sendingmail");
		
	
}catch(Exception e){e.printStackTrace();


}


%>
 
</body>
</html>