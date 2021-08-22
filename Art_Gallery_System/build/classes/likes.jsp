<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>like</title>
<link type="text/css" rel="stylesheet" href="css/frontpage.css"/>
<link rel="shortcut icon" href="favicon.ico">

	<!-- Google Webfonts -->
	<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,100,500' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">
	<!-- Salvattore -->
	<link rel="stylesheet" href="css/salvattore.css">
	<!-- Theme Style -->
	<link rel="stylesheet" href="css/style1.css">
	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>

</head>
<body>
<style>
/* General Styles */
body { 
     background: url('data:image/jpeg;base64,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') no-repeat center center fixed;    
     background-size:cover;  
} 
</style>
<div class="navbar">
  <a href="frontpage.jsp">Home</a>
  <a href="likes.jsp">Paintings</a>
  <!--  <a href="My_profile.jsp">My Profile</a>
    <a href="gallery_option.jsp">Gallery options</a>
     <a href="upload_paintings.jsp">Upload Paintings</a> -->
     <a href="search.jsp">Search</a>
      <a href="frontpage.jsp">Logout</a>
       <a href="#" class="navbar1"><% HttpSession httpSession=request.getSession();
			String id = request.getParameter("email");
			httpSession.setAttribute("login1",id );
			if(id != null) {
				out.println("WElCOME "+httpSession.getAttribute("login1"));
			}
			String a = (String)httpSession.getAttribute("login1");%>

     
</div>
<form action="likes1.jsp" method="post"  onsubmit="index.jsp">
<div id="fh5co-main">
		<div class="container">

			<div class="row">

        <div id="fh5co-board" data-columns>
        
	        	  	


<%
String url = "jdbc:mysql://localhost:3306/";
String dbName = "art_gallery";
String driver = "com.mysql.jdbc.Driver";
String userName = "root";
String password = "pwd";
String query= "select * from painting";
//String query2 = "insert into likes (v_id, title) values(?, ?)";
try {
    Class.forName(driver).newInstance();
    Connection conn = DriverManager.getConnection(url + dbName, userName, password);

    Statement st = conn.createStatement();
   
    ResultSet rs = st.executeQuery(query);
    while(rs.next()){
    	%>
    	<div class="item">
        		<div class="animate-box">
	        		<a href=<%= rs.getString("url") %> class="image-popup fh5co-board-img"><img src=<%= rs.getString("url") %> alt="Free HTML5 Bootstrap template"></a>
	        		<div class="image-popup fh5co-desc"><%= rs.getString("title") %>
	        		
	        		</div>
	        		<%-- <a href="likes1.jsp?value=<%= rs.getString("title")%>">Like</a> --%>
        		</div>
        		</div>
   <%}
    rs.close();
    // rs1.close();
     st.close();
     conn.close();
     }
     catch (Exception e) {
  	   
  	   System.out.println(e.getMessage());
     }
 
%> 
   
   </div>
</div>
</div>
   <script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<!-- Salvattore -->
	<script src="js/salvattore.min.js"></script>
	<!-- Main JS -->
	<script src="js/main1.js"></script>
   
</form>
</body>
</html>