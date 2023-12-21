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
        
          <c:set var="brand" value="${param.brand}" />
         <c:set var="model" value="${param.model}" />
         <c:set var="dateBought" value="${param.dateBought}" />
         <c:set var="vinNumber" value="${param.vinNumber}" />
         <c:set var="numberPlate" value="${param.numberPlate}" />
         <c:set var="licenseDisk"  value="${param.licenseDisk}" />
        
   
         
          
         <sql:update dataSource="${TruckMIS}" var="dbResult">
			  INSERT INTO truckmanagement (brand, model, dateBought, vinNumber, numberPlate, licenseDisk)
			  VALUES (?, ?, ?, ?, ?, ?);
			  <sql:param value="${brand}" />
			  <sql:param value="${model}" />
			  <sql:param value="${dateBought}" />
			  <sql:param value="${vinNumber}" />
			  <sql:param value="${numberPlate}" />
			  <sql:param value="${licenseDisk}" />
	</sql:update>


      <c:if test="${dbResult>=1}">
         <c:redirect url="viewTruckBrief.jsp" >
            <c:param name="msg" value="Truck Details Have Been Uploaded" />
         </c:redirect>
      </c:if>
            
            
    </body>
</html>
