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
        
         <c:set var="date" value="${param.date}" />
         <c:set var="offence" value="${param.offence}" />
         <c:set var="amount" value="${param.amount}" />
         <c:set var="driver" value="${param.driver}" />
         <c:set var="vehicle" value="${param.vehicle}" />
         
         
          
         <sql:update dataSource="${TruckMIS}" var="dbResult">
					
		INSERT INTO trafficoffencemanagement (date, offence, amount, driver, vehicle)
		  VALUES (?, ?, ?, ?, ?);
		   <sql:param value="${date}" />
		  <sql:param value="${offence}" />
		  <sql:param value="${amount}" />
		  <sql:param value="${driver}" />
		  <sql:param value="${vehicle}" />
                  </sql:update>

      <c:if test="${dbResult>=1}">
         <c:redirect url="viewtrafficOffence.jsp" >
            <c:param name="msg" value="Details Have Been Uploaded" />
         </c:redirect>
      </c:if>
            
            
    </body>
</html>
