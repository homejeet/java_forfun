<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>OTP</title>
</head>
<body>
<%@ page import="java.util.*,javax.servlet.http.*" %>


<%


int len = 6;
String number="0123456789";

Random rndm=new Random(); 

char[] otp =new char[len];

for(int i=0;i<len;i++)
{
   otp[i]=number.charAt(rndm.nextInt(number.length()));	
}
HttpSession ses = request.getSession();
ses.setAttribute("otp",otp);

response.sendRedirect("customerdetail1.jsp");



//out.print(otp);
%>
</body>
</html>