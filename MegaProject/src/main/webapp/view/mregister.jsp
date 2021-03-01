 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <div id="signup">
          <h1>Sign Up for Project Lead</h1>
          <c:if test="${q == 1 }">
	<div class="alert alert-success">Resgistration unSuccess</div>
</c:if>

          <form action="registered" method="post">

          <!-- <div class="top-row"> -->
            <div class="field-wrap">
              
              <input type="text" name="musername" placeholder="Enter fullname"  pattern="[A-Za-z.\s]{1,}"required autocomplete="off" title="Fullname should only contain letters. e.g. john" />
            </div>

            
            
              <div class="field-wrap">
          
            <input type="password" name="mpassword" placeholder="Enter password"  required autocomplete="off"/>
          </div>
          
          
          <div class="field-wrap">
          
            <input type="text" name="memail" placeholder="Enter  email"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required autocomplete="off" title="Enter valid email"/>
          </div>
           <div class="field-wrap"> -->
             
              <input type="text" name="mmobile" placeholder="Enter mobileno" Pattern= "[789][0-9]{9}" required autocomplete="off" title="enter valid mobile no." />
            </div>
          

          <button type="submit" class="button button-block"/>Get Started</button>

          </form>

        </div>

    

</body>
</html>
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 