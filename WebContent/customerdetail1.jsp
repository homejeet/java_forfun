
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login |Indian passport portal</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">
<script defer src="https://code.getmdl.io/1.3.0/material.min.js"></script>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700" type="text/css">

 <script language="Javascript" src="jquery.js"></script>
    <script type="text/JavaScript" src='state.js'></script>
    <link rel="stylesheet" type="text/css" href="style.css">

</head>


<style type="text/css">

body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
body, html {
    height: 100%;
    line-height: 1.8;
}

/* Full height image header */
.bgimg-1 {
    background-position: center;
    background-size: cover;
   /*  background-image: url("image/digi.jpg"); */
    min-height: 100%;
}
.w3-navbar li a {
    padding: 16px;
    float: left;
}





#a{
  height:1080px;
  width:100%;
background-color: blue;
 background-image: url("image/digital2.jpg"); 
}
#b{
 height:50px;
  width:100%;
background-color: lightblue;

}
#c{
 height:1080px;
  width:60%;
background-color: white;
/* float:right; */

}
/* #c,img
{
 float: right;
} */
/* #c1{
height:350px;
width:60%;
background-color: gray;

} */
#c2{
height:350px;
width:40%;
background-color:ocean;
/* float:left; */

.mdl-button {
  color: white;
  background-color: lightgreen;
}


}


table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}






tr:nth-child(even) {
    background-color: #dddddd;
}



.flex-container {
    display: -webkit-flex;
    display: flex;  
    -webkit-flex-flow: row wrap;
    flex-flow: row wrap;
    text-align: center;
}

.flex-container > * {
    padding: 15px;
    -webkit-flex: 1 100%;
    flex: 1 100%;
}

.article {
    text-align: left;
}

header {background: black;color:white;}
footer {background: #aaa;color:white;}
.nav {background:#eee;}

.nav ul {
    list-style-type: none;
    padding: 0;
}
.nav ul a {
    text-decoration: none;
}

@media all and (min-width: 768px) {
    .nav {text-align:left;-webkit-flex: 1 auto;flex:1 auto;-webkit-order:1;order:1;}
    .article {-webkit-flex:5 0px;flex:5 0px;-webkit-order:2;order:2;}
    footer {-webkit-order:3;order:3;}
}


table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}











</style>
<script type="text/javascript">

/* function validateForm()
{
	var x=document.forms["myform"]["email"].value;
	var atpos=x.indexof("@");
	var dotpos=x.lastindexof(".");
	if(atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
		{
		    alert("Not a valid e-mail address! ");
		    return false;
		
		}
	
	
	} */
</script>

<!-- <script type="text/javascript">

var arr=new Array("digi.jpg","digi1.jpg","digital1.jpg","digital2.jpg","digitalind1.jpg","gov.jpg","gov2.jpg","makeindia.jpg","pass1.jpg","passport.jpg");

var i=0;
function img()
{
	document.getElementById("li").src=arr[i];
	i++;
	if(i==arr.length)
		{
		  i=0;
	
		}
	window.setTimeout("img()","4000");
	
	
	}

</script>
 -->


<body>

<%
HttpSession ses=request.getSession();
   String otp=(String)ses.getAttribute("otp");
ses.setAttribute("otp1", otp);


%>


<div class="flex-container">
<header>
  <h1>Email For Otp</h1>
</header>

<nav class="nav">
<ul>
  <!-- <li><a href="#">London</a></li>
  <li><a href="#">Paris</a></li>
  <li><a href="#">Tokyo</a></li> -->
</ul>
</nav>

<article class="article"> 
  <table>
  <tr>
    <th></th>
   
  </tr>
  <tr>
    <td><input type="email" name="email" required></td>
      <td><button type="submit" onclick='<jsp:forward page="Register1"></jsp:forward>'>Send</button></td>
  </tr>

</table>
 
</article>

<footer>Copyright &copy; IPPS.com</footer>
</div>
</body>
</html>