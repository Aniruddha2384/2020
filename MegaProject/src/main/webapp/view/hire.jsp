<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="common-css-js.jsp"%>
  <%@ include file="nav-css.jsp"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<link
	href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

<style >
body {
	background: url('https://content.thriveglobal.com/wp-content/uploads/2018/11/GettyImages-843491278.jpg');
	background-size : cover;
  font-family: 'Titillium Web', sans-serif;
  
}
</style>

</head>
<body>
<br>
<br>
<center><h3 >Hired Candidate Details</h3></center>

<c:if test="${q == 1 }">
	<div class="alert alert-success"> Success</div>
</c:if>


<div class="col-16 d-flex flex-column justify-content-center align-items-center">

	<form action="hired" method="post">
		<div>
			<input class="form-control" type="text" name="resusername" placeholder="Enter Candidate name..."  pattern="[A-Za-z.\s]{1,}"required autocomplete="off" title="Fullname should only contain letters. e.g. john" />
		</div>
		
		
		<div class= "mt-2">
			<input class="form-control" type="text" name="resemail" placeholder="Enter Candidate Email...." pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required autocomplete="off" title="Enter valid email"/>
		</div>
		
		<div class= "mt-2">
			<input class="form-control" type="text" name="resmobile" placeholder="Enter Canditae Mobile...." Pattern= "[789][0-9]{9}" required autocomplete="off" title="enter valid mobile no." />
		</div>
		<div class= "mt-2">
		
<select class="form-control" name= "resskillset" Pattern= "dropsown" required autocomplete="off" title="select one option" />
  <option>Skill Set</option>
  <option>Java</option>
  <option>C++</option>
  <option>Python</option>
  <option>Advance Java</option>
  <option>MySQL</option>
</select>

</div>

<div class = "mt-2 justify-content-center align-items-center ">
  
    <select class="form-control" name= "resexperience" >
  
    <option>Experience</option>
   <option>Fresher</option>
  <option>1-5yrs</option>
  <option>5-7</option>
  <option>7-10</option>
  <option>10 or more</option>
  

    
   </div>
  </select>
		
		<div class= "mt-2">
		<input class="btn btn-primary btn-block justify-content-center " type="submit" value="Response">
		</div>
		
	
		
	</form>
</div>
</body>
</html>