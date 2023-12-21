<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page import = "java.io.*, java.util.*, java.sql.*" %>
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
        
         <c:set var="name" value="${param.name}" />
         <c:set var="surname" value="${param.surname}" />
         <c:set var="idNumber" value="${param.idNumber}" />
         <c:set var="address" value="${param.address}" />
         <c:set var="contactNumber" value="${param.contactNumber}" />
         <c:set var="email" value="${param.email}" />
         <c:set var="health" value="${param.health}" />
         <c:set var="licenseType"  value="${param.licenseType}" />
         <c:set var="employeeNumber" value="${param.employeeNumber}" />
   
         
          
         <sql:update dataSource="${TruckMIS}" var="dbResult">
					
		INSERT INTO employeemanagement (name, surname, idNumber, address, contactNumber, email, health, licenseType, employeeNumber)
		  VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
		   <sql:param value="${name}" />
		  <sql:param value="${surname}" />
		  <sql:param value="${idNumber}" />
		  <sql:param value="${address}" />
		  <sql:param value="${contactNumber}" />
		  <sql:param value="${email}" />
		  <sql:param value="${health}" />
		  <sql:param value="${licenseType}" />
		  <sql:param value="${employeeNumber}" />
		</sql:update>

      <c:if test="${dbResult>=1}">
         <c:redirect url="viewUserBrief.jsp" >
            <c:param name="msg" value="Employee Details Have Been Uploaded" />
         </c:redirect>
      </c:if>
            
            
    </body>
</html>
