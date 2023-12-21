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
         url="jdbc:mysql://localhost:3306/truckmanagementis"
          user="root"  password=""/>
            
          <c:set var="id" value="${param.id}" />   
         <c:set var="employeeNumber" value="${param.employeeNumber}" />
         <c:set var="driverName" value="${param.driverName}" />
         <c:set var="driverSurname" value="${param.driverSurname}" />
         <c:set var="truckNumberPlate" value="${param.truckNumberPlate}" />
         <c:set var="date" value="${param.date}" />
         <c:set var="pricePerLitre"  value="${param.pricePerLitre}" />
         <c:set var="litresPouredIn"  value="${param.litresPouredIn}" />
        <c:set var="amountSpent"  value="${param.amountSpent}}" />
          
          
         <sql:update dataSource="${TruckMIS}" var="dbResult">
         UPDATE fuelmanagement SET employeeNumber=?, driverName=?, driverSurname=?, truckNumberPlate=?, 
		 date=?, pricePerLitre=?, litresPouredIn=?, amountSpent=?   WHERE id=?
			
             
            
         <sql:param value="${param.employeeNumber}" />
         <sql:param value="${param.driverName}" />
         <sql:param value="${param.driverSurname}" />
         <sql:param value="${param.truckNumberPlate}" />
         <sql:param value="${param.date}" />
         <sql:param value="${param.pricePerLitre}" />
         <sql:param value="${param.litresPouredIn}" />
         <sql:param value="${param.amountSpent}" />
         <sql:param value="${param.id}" />
         </sql:update>

      <c:if test="${dbResult>=1}">
         <c:redirect url="viewFuelBrief.jsp" >
            <c:param name="msg" value="Fuel Details Have Been Uploaded" />
         </c:redirect>
      </c:if>
            
            
    </body>
</html>
