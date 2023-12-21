
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin: Truck Management</title>
        
     
     <style>
body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 20px;
    }

    form {
      max-width: 400px;
      margin: 0 auto;
    }

    label {
      display: block;
      margin-top: 10px;
    }

    input[type="text"], input[type="date"] {
      width: 100%;
      padding: 10px;
      margin-top: 5px;
      border: 1px solid #ccc;
      border-radius: 4px;
    }

    input[type="submit"] {
      padding: 10px 20px;
      margin-top: 10px;
      font-size: 16px;
      text-decoration: none;
      color: #fff;
      background-color: #4CAF50;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }

    input[type="submit"]:hover {
      background-color: #45a049;
    }
</style>
        
    </head>
    <body>
        
        
            
   <sql:setDataSource var="TruckMIS" driver="com.mysql.jdbc.Driver"
         url="jdbc:mysql://localhost:3306/truckmanagementis"
          user="root"  password=""/>
        
 
    <sql:query dataSource="${TruckMIS}" var="result">
    SELECT * from truckmanagement where id=?;
    <sql:param value="${param.id}" />
    </sql:query>
           
    
   <form action="updateTruckDetailsProcess.jsp" name="updateTruckDetailsProcess">
        <c:forEach var="row" items="${result.rows}">
     
     <label>ID</label>
    <input type="text" name="id" value="<c:out value="${row.id}"/>">       
            
    <label>Brand</label>
    <input type="text" name="brand" value="<c:out value="${row.brand}"/>">

    <label>Model</label>
    <input type="text" name="model" value="<c:out value="${row.model}"/>">

    <label>Date Bought</label>
    <input type="date" name="dateBought" value="<c:out value="${row.dateBought}"/>">

    <label>VIN Number</label>
    <input type="text" name="vinNumber" value="<c:out value="${row.vinNumber}"/>">

    <label>Number Plate</label>
    <input type="text" name="numberPlate" value="<c:out value="${row.numberPlate}"/>">

    <label>License Disk ED</label>
    <input type="text" name="licenseDisk" value="<c:out value="${row.licenseDisk}"/>">

    <input type="submit" value="Submit">
    </c:forEach>
  </form>      
    </body> 
</html>
