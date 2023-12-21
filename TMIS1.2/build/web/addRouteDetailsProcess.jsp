<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page import = "java.io.*, java.util.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <sql:setDataSource var="TruckMIS" driver="com.mysql.jdbc.Driver"
         url="jdbc:mysql://localhost:3306/TruckManagementIS"
          user="root"  password=""/>
        
          
         <c:set var="date" value="${param.date}" />
         <c:set var="driverName" value="${param.driverName}" />
         <c:set var="driverSurname" value="${param.driverSurname}" />
         <c:set var="truckNumberPlate" value="${param.truckNumberPlate}" />
         <c:set var="truckVinNumber" value="${param.truckVinNumber}" />
         <c:set var="departureLocation" value="${param.departureLocation}" />
         <c:set var="destinationLocation" value="${param.destinationLocation}" />
         <c:set var="routeApprovedBy"  value="${param.routeApprovedBy}" />
          
         <sql:update dataSource="${TruckMIS}" var="dbResult">
            
		  INSERT INTO routes (date, driverName, driverSurname, truckNumberPlate, truckVinNumber, departureLocation, destinationLocation, routeApprovedBy)
		  VALUES (?, ?, ?, ?, ?, ?, ?, ?);
		  <sql:param value="${date}" />
		  <sql:param value="${driverName}" />
		  <sql:param value="${driverSurname}" />
		  <sql:param value="${truckNumberPlate}" />
		  <sql:param value="${truckVinNumber}" />
		  <sql:param value="${departureLocation}" />
		  <sql:param value="${destinationLocation}" />
		  <sql:param value="${routeApprovedBy}" />
		</sql:update>

      <c:if test="${dbResult>=1}">
         <c:redirect url="viewRouteBrief.jsp" >
            <c:param name="msg" value="Fuel Details Have Been Uploaded" />
         </c:redirect>
      </c:if>
            
            
    </body>
</html>
