<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
   <head>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
      <meta name="viewport" content="width=device-width, initial-scale=1">
   </head>
   <body>
      <br/><br/>
      <h1>
         <center> Employee List </center>
      </h1>
      <br/>
      <div class="container">
         <div class="row">
            <div class="col-md-12">
               <table class="table">
                  <thead>
                     <tr>
                        <th scope="col">#</th>
                        <th scope="col">First Name</th>
                        <th scope="col">Last Name</th>
                        <th scope="col">Email</th>
                        <th scope="col">Dob</th>
                        <th scope="col">Address</th>
                        <th scope="col">City</th>
                        <th scope="col">State</th>
                        <th scope="col">Zip</th>
                     </tr>
                  </thead>
                  <tbody>
                     <c:forEach items="${employees}" var="emp">
                        <tr>
                           <th scope="row">${emp.id}</th>
                           <td>${emp.firstName}</td>
                           <td>${emp.lastName}</td>
                           <td>${emp.email}</td>
                           <td>${emp.dob}</td>
                           <td>${emp.address}</td>
                           <td>${emp.city}</td>
                           <td>${emp.state}</td>
                           <td>${emp.zip}</td>
                           <td><a href="./editEmployee?id=${emp.id}"><input type="button" value="Edit"></a>
                              <a href="./deleteEmployee?id=${emp.id}"><input type="button" value="Delete"></a>
                           </td>
                        </tr>
                     </c:forEach>
                  </tbody>
               </table>
            </div>
         </div>
      </div>
   </body>
</html>