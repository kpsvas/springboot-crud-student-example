<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
  <head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  </head>
  <body>
    <div class="container">
      <div class="row">
        <div class="col-md-7 offset-2">
          <table class="table">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">Name</th>
                <th scope="col">Email</th>
                <th scope="col">Address</th>
                <th scope="col">Action</th>

              </tr>
            </thead>
            <tbody>
            <c:forEach items="${students}" var="s">
              <tr>
                <th scope="row">${s.id}</th>
                <td>${s.name}</td>
                <td>${s.email}</td>
                <td>${s.address}</td>
                <td>  <a href="./editStudent?id=${student.id}"><input type="button" value="Edit"></a>
                 <a href="./deleteStudent?id=${student.id}"><input type="button" value="Delete"></a></td>
              </tr>
              </c:forEach>
            </tbody>
          </table>
          </div>
        </div>
      </div>
  </body>
</html>