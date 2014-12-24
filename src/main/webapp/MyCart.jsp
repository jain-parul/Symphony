<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="edu.sjsu.symphony.POJO.Cart" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">

<link rel="stylesheet" href="/Symphony/Stylesheets/homepage.css" type="text/css">
<link href="/Symphony/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<style>
.btn-cart{
height: 50px;
width: 150px;
color:white;
background-color:black;
padding: 5px;

}
</style>
<title>Symphony - Home</title>
</head>
<body style="background-color:#eee;background-size:100%;">

	<%String customerId=(String)request.getSession(false).getAttribute("customerID");
	%>
	
	 <nav class="navbar navbar-fixed-top navbar-inverse" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
		<c:choose>
          	<c:when test="${customerId ne null}">
          		<a class="navbar-brand" style="font-style:oblique;font-size:1.8em;" href="/Symphony/Home.jsp">Symphony</a>
          	</c:when>
          	<c:otherwise>
          	    <a class="navbar-brand" style="font-style:oblique;font-size:1.8em;" href="/Symphony/Login.jsp">Symphony</a>
          	</c:otherwise>
          </c:choose>        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
           
          </ul>
          <ul class="nav navbar-nav navbar-right">
          	  <li><a href="/Symphony/Feedback.jsp">Feedback</a></li>
          	  <li><a href="/Symphony/Home.jsp">Home</a>
              <li><a href="/Symphony/Symphony/Symphony/Logout"> Logout</a></li>
          </ul>
        </div><!-- /.nav-collapse -->
        </div>
    </nav><!-- /.navbar -->	
    
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
         
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
  
     		
			<c:set var="count" value="0" scope="page" />     		
			<form action="/Symphony/Symphony/Symphony/CheckOut" method="post">
			<table  cellpadding="10" height="40%" width=40% padding: 5px;>
     		<tr><td>Item</td><td>Price</td>
     		
     		<c:forEach var="product" items="${it.ProductList}">
     			<tr>
     				<td>${product.getProduct()}</td>
     				<td>${product.getPrice()}</td>
     				<c:set var="count" value="${count + 1}" scope="page"/>
     			<tr>
     		</c:forEach>
     		<tr>
     		
     		<tr>
     		<td>Grand Total</td>
     		<td><span>$</span>${count*100}</td>
     		</tr>
     		
     		<tr>
     		<td><input id="submit" class="btn-cart" type="submit" name="CheckOut" value="CheckOut"></td>
     		</tr>
     		</table>
     		</form>
			
			</div>
    	</div>
    </div>
   
    

    
	<%String customername=(String)request.getSession(false).getAttribute("customername"); %>
	
</body>
<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>

</html>