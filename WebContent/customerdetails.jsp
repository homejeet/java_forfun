<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>details</title>
</head>



<body  bgcolor="green" >
<div id="d">
<div id="c">
<img src="image/digital2.jpg" width="155" height="200">
</div>
</div>
<img src="image/d.jpg"/><br><br>
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
  
  import java.sql.*; " 
  %> 
<%
HttpSession ses=request.getSession();
response.setContentType("text/html");
PrintWriter outt=response.getWriter();
 String driver="com.mysql.jdbc.Driver";
    String url="jdbc:mysql://localhost:3306/company";
    String user="root";
    String password="1234";
    String qry="select * from customerdatabase ";
    String applicationno="";
    String name="";
    String surname="";
    String dob="";
    String state="";
    String sex="";
    String passstatus="";
    String checked="";
    
    outt.print("<center><h1> CUSTOMER DETAILS</h1></center>");
    outt.print("<table align='center'>");
    outt.print("<tr><th>APPLICATION NO</th><th>NAME</th><th>SURNAME</th><th>DOB</th><th>STATE</th><th>SEX</th><th>SHEDULE AAPOINTMENT</th>");    

try{
	
	Class.forName(driver);
	Connection con=(Connection) DriverManager.getConnection(url,user,password);
	PreparedStatement stmt=(PreparedStatement) con.prepareStatement(qry);
	ResultSet rs=stmt.executeQuery();
	
	while(rs.next())
	{   
		/* out.print("<center><h1>Customer details</h1></center>");
		out.print("<table align='center'>");
		out.print("<tr><th>Application_no</th><th>Name</th><th>Surname</th><th>DOB</th><th>State</th><th>SEX</th><th>Pass status</th><th>Checked</th><th>Shedule Appointment</th>");		 */
		outt.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(9)+"</td><td>"+rs.getString(11)+"</td><td>"+rs.getString(13)+"</td><td>"+rs.getString(34)+"</td><td><a href='appointment.jsp'><font color='black'>shedule appointment</font></a></td></tr>");
		
			
	}

}catch(Exception e)
{
	e.printStackTrace();
}


%>
<!-- <input type="text" name="my_check" value=> Check value -->
 <button    onclick="window.location='adminpage.jsp'"    class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent">
  << Prev
</button> 


</body>
</html>