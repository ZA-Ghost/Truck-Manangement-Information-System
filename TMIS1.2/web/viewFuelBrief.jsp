
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin: Fuel Management</title>
        
   <link rel="stylesheet" href="tableCSS.css">
         <link rel="stylesheet" href="tableMenuCSS.css"> 
         <style>
    body, ul, li, a {
      margin: 0;
      padding: 0;
      list-style: none;
      text-decoration: none;
    }

    /* Style for the navigation bar */
    nav {
      background-color: #f8f8f8; /* Light background color */
      padding: 10px;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Box shadow for a subtle effect */
    }

    ul {
      display: flex;
      justify-content: space-around; /* Space out the headings */
    }

    li {
      margin-right: 20px;
      position: relative;
    }

    a {
      color: #333; /* Dark text color */
      font-weight: bold;
      text-transform: uppercase;
      padding: 10px;
      display: block;
      border-radius: 5px;
      background-color: #f8f8f8; /* Same color as the background */
    }

    /* Hover effect */
    a:hover {
      background-color: #ddd; /* Lighter background color on hover */
    }

    /* Focus effect */
    a:focus {
      outline: 2px solid #333; /* Dark outline on focus */
      outline-offset: 5px;
    }

    /* Blur effect */
    a:blur {
      outline: none;
    }

    /* Style for the nested lists */
    ul ul {
      display: none;
      position: absolute;
      background-color: #f8f8f8; /* Same color as the background for the submenu */
      border-radius: 5px;
      box-shadow: 0 0 5px rgba(0, 0, 0, 0.1); /* Box shadow for a subtle effect */
    }

    li:hover > ul {
      display: block;
    }

    ul ul li {
      margin: 0;
      padding: 10px;
    }

    ul ul a {
      color: #333; /* Dark text color for submenu items */
      font-weight: normal;
      border-radius: 5px;
    }

    /* Focus effect for submenu items */
    ul ul a:focus {
      outline: 2px solid #333; /* Dark outline on focus */
      outline-offset: 5px;
    }

    /* Blur effect for submenu items */
    ul ul a:blur {
      outline: none;
    }

    /* Adjust spacing for smaller screens */
    @media (max-width: 768px) {
      ul {
        flex-direction: column;
      }

      li {
        margin-bottom: 10px;
        margin-right: 0;
      }
    }
  </style>
</head>
<body>

<nav>
  <ul>
    <li>
      <a href="#">Employee</a>
      <ul>
        <li><a href="add_employee.html">Add Employee</a></li>
        <li><a href="viewUserBrief.jsp">View Employees</a></li>
        <li><a href="updateUserBrief.jsp">Update Employee</a></li>
      </ul>
    </li>
    <li>
      <a href="#">Truck</a>
      <ul>
        <li><a href="add_truck.html">Add Truck</a></li>
        <li><a href="viewTruckBrief.jsp">View Trucks</a></li>
        <li><a href="updateTruckBrief.jsp">Update Truck</a></li>
      </ul>
    </li>
    <li>
      <a href="#">Fuel</a>
      <ul>
        <li><a href="add_fuel.html">Add Fuel</a></li>
        <li><a href="viewFuelBrief.jsp">View Fuel Entries</a></li>
        <li><a href="updateFuelBrief.jsp">Update Fuel</a></li>
      </ul>
    </li>
    <li>
      <a href="#">Route</a>
      <ul>
        <li><a href="add_route.html">Add Route</a></li>
        <li><a href="viewRouteBrief.jsp">View Routes</a></li>
        <li><a href="updateRouteBrief.jsp">Update Route</a></li>
      </ul>
    </li>
    <li>
      <a href="#">Service</a>
      <ul>
        <li><a href="add_service.html">Add Service</a></li>
        <li><a href="viewServiceBrief.jsp">View Services</a></li>
        <li><a href="updateServiceBrief.jsp">Update Service</a></li>
      </ul>
    </li>
    <li>
      <a href="#">Traffic Offense</a>
      <ul>
        <li><a href="trafficOffenceManagement.html">Add Offense</a></li>
        <li><a href="viewtrafficOffence.jsp">View Offense</a></li>
        <li><a href="updatetrafficOffenceManagement.jsp">Update Offense</a></li>
      </ul>
    </li>
  </ul>
</nav>
        
            
     <center>
        
         <jsp:useBean id="now" class="java.util.Date" />
         <h3><fmt:formatDate value="${now}" type="both" dateStyle="long" timeStyle="short" /></h3>
    </center>  
            
     <sql:setDataSource var="TruckMIS" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/TruckManagementIS"
     user="root"  password=""/>
 
    <sql:query dataSource="${TruckMIS}" var="result">
    SELECT * from fuelmanagement;
    </sql:query>
           
    
    
    <div class="search-bar">
        <input type="text" id="searchInput" placeholder="Search">
        </div>
        
        <script src="searchTable.js"></script>
        
        <table id="dataTable">
            <tr>
                <th style="width:10%">ID</th>
                <th>Emp Number</th>
                <th>Truck Number Plate</th>
                <th>Date</th>
                <th>Amount Spent</th>
                <th>View</th>
            </tr>   
        
        
           <c:forEach var="row" items="${result.rows}">
           
            
            <tr>
            <td><c:out value="${row.id}"/></td>
            <td><c:out value="${row.employeeNumber}"/></td>
            <td><c:out value="${row.truckNumberPlate}"/></td>
            <td><c:out value="${row.date}"/></td>
            <td><c:out value="${row.amountSpent}"/></td>
            <td><a href="viewFuelDetails.jsp?id=<c:out value="${row.id}"/>">View </a></td>
            </tr>
			
            </c:forEach>
           </table>
        
    </body> 
</html>
