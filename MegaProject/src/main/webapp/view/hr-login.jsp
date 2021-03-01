<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html >
<html >
<head>
  <meta charset="UTF-8">
  <title>Sign-Up</title>
  <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
   <link rel="stylesheet" type="text/css" href="/css/Register.css">

</head>
<h2>Internal Smart Recruiter</h2>
  <div class="form">
        <div id="">
          <h1>Login for Hr</h1>
	<div class="col-6 d-flex justify-content-center align-items-center" >

				<form action="Authentlogin1" method="get"  >

					<c:if test="${param.q==0 }">
						<div class="alert alert-warning"> Invalid Login</div>
					</c:if>
               
          <div class="field-wrap">
          
            <input type="text" name="hremail" placeholder="Enter  email"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required autocomplete="off" title="Enter valid email"/>
          </div>
          
            
            
              <div class="field-wrap">
          
            <input type="password" name="hrpassword" placeholder="Enter password"  required autocomplete="off"/>
          </div>
          
          
         

          <button type="submit" class="button button-block"/>Login</button>

          </form>

        </div>

  
</body>
</html>