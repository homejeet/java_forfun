<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>verifying...otp...</title>
</head>
<body>
<%@page import="java.util.*,javax.servlet.http.*" %>

<%

HttpSession ses=request.getSession(false);
ses.setMaxInactiveInterval(4*60);
//String otpCreated=(String)ses.getAttribute("");

String myOtp=(String)ses.getAttribute("otp");
String recvOtp=request.getParameter("otprecvd");

if(myOtp==null)
{
	
	response.sendRedirect("verifyaadhar.jsp");
}
if(myOtp.equals(recvOtp))
{
		
		response.sendRedirect("user.jsp");
}
if(myOtp!=recvOtp)
{
			
   response.sendRedirect("verifyaadhar.jsp");	
		
}
	
	

%>
</body>
</html>