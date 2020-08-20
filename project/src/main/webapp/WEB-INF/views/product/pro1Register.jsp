<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Form control: input</h2>
  <p>The form below contains two input elements; one of type text and one of type password:</p>
  <form action="<%=request.getContextPath() %>/pro1" method= "post">
    <div class="form-group">
      <label >code:</label>
      <input type="text" class="form-control" id="code" name="code">
    </div>
    <div class="form-group">
      <label>startDate:</label>
      <input type="text" class="form-control" id="startDate" name="startDate">
    </div>
     <div class="form-group">
      <label>endDate:</label>
      <input type="text" class="form-control" id="endDate" name="endDate">
    </div>
     <div class="form-group">
      <label>place:</label>
      <input type="text" class="form-control" id="place" name="place">
    </div>
     <div class="form-group">
      <label>limitType:</label>
      <input type="text" class="form-control" id="limitType" name="limitType">
    </div>
     <div class="form-group">
      <label>limitAmount:</label>
      <input type="text" class="form-control" id="limitAmount" name="limitAmount">
    </div>
     <div class="form-group">
      <label>Type:</label>
      <input type="text" class="form-control" id="Type" name="Type">
    </div>
     <div class="form-group">
      <label>price:</label>
      <input type="text" class="form-control" id="price" name="price">
    </div>
         <div class="form-group">
      <label>Type:</label>
      <input type="text" class="form-control" id="Type" name="Type">
    </div>
     <div class="form-group">
      <label>price:</label>
      <input type="text" class="form-control" id="price" name="price">
    </div>
    
    
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>

</body>
</html>