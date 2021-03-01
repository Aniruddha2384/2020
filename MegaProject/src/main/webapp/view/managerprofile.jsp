<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <%--  <%@ include file="common-css-js.jsp"%>
<jsp:include page="common-header.jsp"></jsp:include> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="bg-grey">
<nav class="navbar navbar-expand-lg navbar-light bg-light">

  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
  <form class="container-fluid justify-content-start">
   <a href="/tlList"><button class="btn btn-outline-success me-2"style="margin:5px;" type="button">Request from Lead</button></a>
   <a href="/infolist"> <button class="btn btn-outline-success me-2" style="margin:5px;"type="button">Request for New Hire</button></a>
   <a href="/home"> <button class="btn btn-outline-success me-2" style="margin:5px;"type="button">Log Out</button></a>
  </form>
    <form class="form-inline my-2 my-lg-0 text-align="center"">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>

		<div class="row" style="height: 80vh">
			<div class="col-6 d-flex justify-content-center mt-20">
			  <div class="col-6">
				<table>
					<td><h1 style="text-align: center">Profile</h1></td>
					 <tr>
						<th><h4>Name:</h4></th>
						 <td>
							<h5>${projectmanager.mname}</h5>
						</td>
						</tr>
						
						<tr>
							<th>
								<h4>Email:</h4>
							</th>
							<td>
								<h5>${projectmanager.memail}</h5>
							</td>
						</tr>
						<tr>
							<th>
								<h4>Mobile:</h4>
							</th>
							<td>
								<h5>${projectmanager.mmobile}</h5>
							</td>
							</tr>
 					
						</table>
							
						<tr>
							<td><form action="mupdate" method="get">
								<div>
								<input type="hidden" name="mid" value="${projectmanager.mid}" readonly />
								<input type="hidden" name="memail" value="${projectmanager.memail}" readonly />
								<input type="hidden" name="mpassword" value="${projectmanager.mpassword}" readonly />
								
							     <button class="btn btn-sm btn-outline-primary" type="submit">Update Profile</button>
							     </div>
							     </form>
							 </td>
						</tr>
				

					<div>
					       
								
						
						<br>
						<c:if test="${param.b==1}">
						<div class="alert alert-success mt-2">Request send Successfully</div>
					</c:if>
					<c:if test="${param.b==0}">
						<div class="alert alert-warning mt-2">Request not send. Try
							again...</div>
					</c:if>
						<c:if test="${param.c==1}">
						<div class="alert alert-warning mt-2">Request cancelled</div>
					</c:if>
					<c:if test="${param.c==0}">
						<div class="alert alert-warning mt-2">Request not cancelled.
							Try again...</div>
					</c:if>
					</div>

				
               </div>
			</div>

			<div
				class="col-6 text-dark d-flex flex-column justify-content-center align-items-center">
					<c:if test="${u==1 }">
						<div class="alert alert-success">Profile Updated Successfully</div>
					</c:if>
					<c:if test="${u==0 }">
						<div class="alert alert-warning">Updatation Failed</div>
					</c:if>


					<c:if test="${u==2 }">

						<form action="updmanager" method="get" class=""
							style="width: 40%">

							<div>
								<h3>
									<i>Update profile</i>
								</h3>
							</div>
							<div>
								<input name="idee" type="hidden" value="${projectmanager.mid}" readonly />
							</div>
							
							<div>
							   <input type="hidden" name="mpassword" value="${projectmanager.mpassword}" readonly />
							</div>
							<div class="mt-1">
								Name:<input name="mname" class="form-control form-control-md"
									type="text" placeholder="${projectmanager.mname}"  pattern="[A-Za-z\s]{1,40}" required autocomplete="off" title="only characters are allowed"/>
							</div>
							
							<div class="mt-1">
								Email: <input name="memail" class="form-control form-control-md"
									type="email" placeholder="${projectmanager.memail}" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{3}$" required autocomplete="off" title="enter valid email"/>
							</div>
							<div class="mt-1">
								Mobile: <input name="mmobile"
									class="form-control form-control-md" type="text"
									placeholder="${projectmanager.mmobile}" Pattern= "[789][0-9]{9}" required autocomplete="off" title="enter valid mobile no"/>
							</div>
							<div class="mt-2">
								<input class="btn btn-primary btn-block" type="submit"
									value="Save" />
							</div>
							<div class="mt-2">
								<input class="btn btn-primary btn-block" type="reset"
									value="Cancel" />
							</div>

						</form>
					</c:if>
					</div>
				</div>
				</div>
		
		
</body>
</html>