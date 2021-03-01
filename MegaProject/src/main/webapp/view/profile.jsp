<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ include file="common-css-js.jsp"%>
<jsp:include page="common-header-profile.jsp"></jsp:include>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
	crossorigin="anonymous"></script>
	
	<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="bg-grey">

		<div class="row" style="height: 80vh">
			<div class="col-6 d-flex justify-content-center mt-20">
			   
              <div class="col-6">
				
					
					<table>
						<td><h1 style="text-align: center">Profile</h1></td>
						<tr>
							<th><h4>Name:</h4></th>
							<td>
								<h5>${hr.hrname}</h5>
							</td>
						</tr>
						
						<tr>
							<th>
								<h4>Email:</h4>
							</th>
							<td>
								<h5>${hr.hremail}</h5>
							</td>
						</tr>
						<tr>
							<th>
								<h4>Mobile:</h4>
							</th>
							<td>
								<h5>${hr.hrmobile}</h5>
							</td>
						</tr>
						<tr>
							<th>
								<h4>City:</h4>
							</th>
							<td>
								<h5>${hr.hrcity}</h5>
							</td>
						</tr>
						</table>
						
						<tr>
							<td><form action="update-opt1" method="get">
								<div>
								<input type="hidden" name="ide" value="${hr.id}" readonly />
								<input type="hidden" name="hremail" value="${hr.hremail}" readonly />
								<input type="hidden" name="hrpassword" value="${hr.hrpassword}" readonly />
								
							     <button class="btn btn-sm btn-outline-primary" type="submit">Update Profile</button>
							     </div>
							     </form>
							 </td>
						</tr>
				

					<div>
					          <!--   <form action="patient-book-app" method="post">
								<div>profile Date:
								 <input type="date" id="loc" name="appdate" value="" placeholder="" tabindex="3" required="required" />
								<input type="hidden" name="id" value="${hr.id}" readonly />
								<input type="hidden" name="hremail" value="${hr.hremail}" readonly />
								<input type="hidden" name="hrpassword" value="${hr.hrpassword}" readonly />-->
								</div>
								
								<div>
							   <a href="/hire"> <button class="btn btn-primary mt-3" type="submit">Add Candidate</button></a>
							     </div>
							 <!-- </form> -->  
							     
							     <form action="hr-cancel-app" method="post">
								<div>
								<input type="hidden" name="id" value="${hr.id}" readonly />
								<input type="hidden" name="hremail" value="${hr.hremail}" readonly />
								<input type="hidden" name="hrpassword" value="${hr.hrpassword}" readonly />
								
							     <button class="btn btn-primary mt-3" type="submit">Cancel Request</button>
							     </div>
							     </form>
						
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
		

			<div class="col-6 text-dark d-flex flex-column justify-content-center align-items-center">

				

					<c:if test="${u==1 }">
						<div class="alert alert-success">Profile Updated Successfully</div>
					</c:if>

					<c:if test="${u==0 }">
						<div class="alert alert-warning">Updatation Failed</div>
					</c:if>


					<c:if test="${u==2 }">

						<form action="upd-patient1" method="get" class=""
							style="width: 40%">

							<div class="col-6">
								<h3>
									<i>Update profile</i>
								</h3>
							</div>
							<div>
								<input name="ide" type="hidden" value="${hr.id}" readonly />
							</div>
							<!--  <div>
							 <input type="hidden" name="hremail" value="${hr.hremail}" readonly />
							</div>-->
							<div>
							   <input type="hidden" name="hrpassword" value="${hr.hrpassword}" readonly />
							</div>
							<div class="mt-1">
								Name:<input name="hrname" class="form-control form-control-md"
									type="text" placeholder="${hr.hrname}"  pattern="[A-Za-z\s]{1,40}" required autocomplete="off" title="only characters are allowed"/>
							</div>
							
							<div class="mt-1">
								Email: <input name="hremail" class="form-control form-control-md"
									type="email" placeholder="${hr.hremail}" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{3}$" required autocomplete="off" title="enter valid email"/>
							</div>
							<div class="mt-1">
								Mobile: <input name="hrmobile"
									class="form-control form-control-md" type="text"
									placeholder="${hr.hrmobile}" Pattern= "[789][0-9]{9}" required autocomplete="off" title="enter valid mobile no"/>
							</div>
							
							<div class="mt-1">
								City: <input name="hrcity"
									class="form-control form-control-md" type="text"
									placeholder="${hr.hrcity}" required autocomplete="off" title="enter city"/>
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
	</div>

</body>
</html>