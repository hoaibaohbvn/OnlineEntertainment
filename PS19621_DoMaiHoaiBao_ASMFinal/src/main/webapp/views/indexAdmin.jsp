<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADMINISTRATION TOOL</title>
<!-- Bootstrap CSS -->
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
 <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
 <base href="/asm/HomeAdmin"/> 
 <base href="/asm/"/>
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
<style>
	.bg-warning {
    background-color: #1E0253!important;
}
.footer{
		text-align: center;
	}
.container-fluid{
		color: white;
	}
</style>

</head>
<body >	
		 <jsp:include page="navAdmin.jsp"></jsp:include>	
	 <div class ="row" style="height: 680px; background-color: #cd70b5 ; margin : 0; color: black"> 
	 <jsp:include page="${VIEW}"></jsp:include>	</div>	
     <footer class="w3-row-padding w3-padding-32 footer" >
    	<div class="footer">
      		<h3>Power by Hoài Bão</h3>
    	</div>
    
  </footer>
</body>
</html>