<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="common-css-js.jsp"%>
<jsp:include page="common-header-PatDr.jsp"></jsp:include>
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
								<h5>${projectlead.username}</h5>
							</td>
						</tr>
						
						<tr>
							<th>
								<h4>Email:</h4>
							</th>
							<td>
								<h5>${projectlead.email}</h5>
							</td>
						</tr>
						<tr>
							<th>
								<h4>Mobile:</h4>
							</th>
							<td>
								<h5>${projectlead.mobile}</h5>
							</td>
						</tr>
						</table>
						
						<tr>
							<td><form action="update-opt" method="get">
								<div>
								<input type="hidden" name="id" value="${projectlead.id}" readonly />
								<input type="hidden" name="email" value="${projectlead.email}" readonly />
								<input type="hidden" name="password" value="${projectlead.password}" readonly />
								
							     <button class="btn btn-sm btn-outline-primary" type="submit">Update Profile</button>
							     </div>
							     </form>
							 </td>
						</tr>
				

					<div>
					       
								<div>
							  <a href="/request">   <button class="btn btn-primary mt-3" type="submit">Send Request to HR</button></a>
							  </div>
							     
							     <%-- <form action="patient-cancel-app" method="post">
								<div>
								<input type="hidden" name="id" value="${projectlead.id}" readonly />
								<input type="hidden" name="email" value="${projectlead.email}" readonly />
								<input type="hidden" name="password" value="${projectlead.password}" readonly />
								
							     <button class="btn btn-primary mt-3" type="submit">Cancel Request</button>
							     </div>
							     </form> --%>
						
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

						<form action="upd-patient" method="get" class=""
							style="width: 40%">

							<div>
								<h3>
									<i>Update profile</i>
								</h3>
							</div>
							<div>
								<input name="ide" type="hidden" value="${projectlead.id}" readonly />
							</div>
							<%-- <div>
							 <input type="hidden" name="email" value="${projectlead.email}" readonly />
							</div> --%>
							<div>
							   <input type="hidden" name="password" value="${projectlead.password}" readonly />
							</div>
							<div class="mt-1">
								Name:<input name="username" class="form-control form-control-md"
									type="text" placeholder="${projectlead.username}"  pattern="[A-Za-z\s]{1,40}" required autocomplete="off" title="only characters are allowed"/>
							</div>
							
							<div class="mt-1">
								Email: <input name="email" class="form-control form-control-md"
									type="email" placeholder="${projectlead.email}" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{3}$" required autocomplete="off" title="enter valid email"/>
							</div>
							<div class="mt-1">
								Mobile: <input name="mobile"
									class="form-control form-control-md" type="text"
									placeholder="${projectlead.mobile}" Pattern= "[789][0-9]{9}" required autocomplete="off" title="enter valid mobile no"/>
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