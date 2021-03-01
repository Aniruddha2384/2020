<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%-- <table class="table table-striped table-hover">
<tr>
<th>Technology</th>
<th>Experience</th>
<th>Start Date</th>
<th>End Date</th>
</tr>
<tr>
<td>${p2.technology}</td>
<td>${p2.exp}</td>
<td>${p2.sdate}</td>
<td>${p2.edate}</td>
</tr>

</table> --%>




<c:if test="${DRLIST==1 }">
    <div class="container">
      <div ><h2>Request List</h2></div>
       <div class="" >
         <table border="5px" cellpadding="10" cellspacing="5" >
             <tr>
   <th>Sr.No</th>    <th>Request id</th>   <th>Technology</th>   <th>Experience</th> <th>Start Date</th>  <th> End Date</th>  
                               <th>Edit</th> <th>Delete </th>
             </tr>


<c:forEach var="item" items="${reqlist}" begin="0" end="100" varStatus="srno">  
             <tr>
   <th>${srno.index+1 }</th>   <th>${item.reqid}</th>     <th>${item.technology}</th>   <th>${item.exp}</th> <th> ${item.sdate}</th>  <th>${item.edate}</th> 
                               
              <th>
                <form action="editDrOpt" method="post">
                <input type="hidden" name="id" value="" readonly />									
				<button class="btn btn-sm btn-success" type="submit">Edit</button>							    
	             </form>             
               </th> 
   
              <th>
                <form action="deltlList" method="get">
                <input type="hidden" name="id" value="${item.reqid}" readonly />									
				<button class="btn btn-sm btn-success" type="submit" >Delete</button>							    
	             </form>              
               </th> 
             </tr>
           </c:forEach>  
             
         </table>
      
        </div>
     </div>
    </c:if>



</body>
</html>