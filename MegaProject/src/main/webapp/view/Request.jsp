<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<jsp:include page="common-header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

<meta charset="ISO-8859-1">

<title>Insert title here</title>

<link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<style>
body {
	background: url('https://image.shutterstock.com/image-photo/businessman-building-recruitment-concept-wooden-260nw-459724216.jpg');
	background-size : cover;
  font-family: 'Titillium Web', sans-serif;
  
}

</style>
</head>
<body>
<c:if test="${q == 1 }">
	<div class="alert alert-success"> Success</div>
</c:if>
<div  class="container-fluid ">
		<div class="row" style="height: 80vh">
			
			
			<div class="col-6 d-flex justify-content-center align-items-center" >


    
<form action="requested" method="get">
       

          <h1>Request form</h1>


<div  class="form-control form-control-lg "><label for="">Choose a technology:</label>
  <select id="technology" name="technology">
    <option value="java">java</option>
    <option value="python">python</option>
    <option value="c++">c++</option>
    <option value="advweb">Adv web</option>
  </select>
  </div>
  <div class="form-control form-control-lg mt-2"><label for="">Choose a Experience:</label>
  <select id="exp" name="exp">
    <option value="0-1">0-1</option>
    <option value="1-3">1-3</option>
    <option value="3-5">3-5</option>
    <option value="5-10">5-10</option>
  </select>
  </div>
  <div class="form-control form-control-lg mt-2"">
  <label>Project start date</label>
  <input type="date" name="sdate"><br></div>
  <div class="form-control form-control-lg mt-2">
    <label>Project end date</label>
    <input type="date" name="edate"><br></div>
    <br>
  <center><input class="btn btn-primary" type="submit" value="Request"></center>
</form>

</div>
</div>
</div>

</body>
</html>