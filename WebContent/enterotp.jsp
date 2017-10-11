<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Enter OTP|IPPS</title>
</head>
<body>
<hr>
            <form action="otp.jsp" method="post">
            
            
              <input  type="submit" value="SEND OTP">
            
            </form>
            
             <form action="otpverify.jsp" method="post">
            
           <input type="text" name="otprecvd" placeholder="ENTER OTP  _ _ _- _ _ _"/>|<input type="submit" value="Verify otp >>>" />
            
            
            </form>    
     
     <hr> 
      
           
</body>
</html>