<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="edu.sjsu.symphony.POJO.Product" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">

<link rel="stylesheet" href="/Symphony/Stylesheets/homepage.css" type="text/css">
<link href="/Symphony/font-awesome/css/font-awesome.min.css" rel="stylesheet">

<title>Symphony - Home</title>
</head>
<body>

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
          	   <li><a href="/Symphony/Symphony/Symphony/ViewMyCart">My Cart</a></li>
              <li><a href="/Symphony/Symphony/Symphony/Logout"> Logout</a></li>
          </ul>
        </div><!-- /.nav-collapse -->
        </div>
    </nav><!-- /.navbar -->	
    
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li><a href="/Symphony/Symphony/Symphony/List/Album"> Album</a></li>
            <li><a href="/Symphony/Symphony/Symphony/List/Tracks">Tracks</a></li>
            <li><a href="/Symphony/Symphony/Symphony/List/Artists">Artists</a></li>
            <li><a href="/Symphony/Symphony/Symphony/List/Genre">Genre</a></li>
          </ul>
          
        </div>

    	</div>
    </div>
	
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">        

     <h1 class="page-header">${it.Category}</h1> 
    	<div class="music"> 
	<c:forEach var="product" items="${it.ProductList}">
	<a href="/Symphony/Symphony/Symphony/Product/${it.Category}/${product}">
	<p style="border:2px solid #000; float:left; border-radius:10px; box-shadow: 0px 0px 13px 1px; width: 200px; background-color: #f5f5f5; margin: 25px; padding: 25px 0px; text-align: center; ">
	<i class="fa fa-music fa-5x"></i> <br/><br/>
	<span style="font-size:1.7em;">	${product}</span>
	</p>
	</a>
	</c:forEach>
	</ul>

</div>

    </div>    

    
	<%String customername=(String)request.getSession(false).getAttribute("customername"); %>
	
</body>
<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>

</html>