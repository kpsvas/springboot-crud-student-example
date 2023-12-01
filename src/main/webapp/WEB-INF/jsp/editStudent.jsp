<!DOCTYPE html><%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%><%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> <html>
  <head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  </head>
  <body>
    <div class="container">
      <div class="row">
        <div class="col-md-7 offset-2">
          <div>
            <!--<form action="addStudent" method="POST" name="StudentForm">-->
            <form:form action="editStudent" method="POST" name="StudentForm" modelAttribute="student">
             <form:hidden path="id"/>
              <h1>Edit Student Registration</h1>
              <p>Please fill in this form to create an account.</p>
              <hr>
              <label for="name">
                <b>Name: </b>
              </label>
              <!-- <input type="password" placeholder="Enter Password" name="psw" id="psw" required> -->
              <form:input type="text" placeholder="Enter Name" path="name" id="name" />
              <br />
              <br />
              <label for="email">
                <b>Email: </b>
              </label>
              <!-- <input type="text" placeholder="Enter Email" name="email" id="email" required>-->
              <form:input type="text" placeholder="Enter Email" path="email" id="email"></form:input>
              </br>
              <br />
              <label for="address">
                <b>Address: </b>
              </label>
              <form:input type="text" placeholder="Enter Address" path="address" id="address"/>
              <hr>
              <button type="submit" class="registerbtn">Update</button>
            </form:form>
          </div>
        </div>
      </div>
  </body>
</html>