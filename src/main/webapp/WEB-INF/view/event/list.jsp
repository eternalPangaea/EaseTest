<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>所有活动</title>
</head>
<body>
   <spring:url value="/event/add" var="login" />
   <a href="${login}">Add a new one</a>
   <c:if test="${!empty eventList}">
      <table>
         <tr>
            <th>ID</th>
            <th>Activity Name</th>
            <th>Intro</th>
         </tr>
         <c:forEach items="${eventList}" var="event">
            <tr>
               <td><c:out value="${event.eventId}" />&nbsp&nbsp</td>
               <td><c:out value="${event.eventName}" />&nbsp&nbsp</td>
               <td><font size="3" color=red><c:out value="To see click edit plz" />&nbsp&nbsp&nbsp</font></td>
               
               <td>
                  <a href="<c:url value='/event/edit/${event.eventId}'/>">edit</a>
                  <a href="<c:url value='/event/delete/${event.eventId}'/>">delete</a>      
               </td>
            </tr>
         </c:forEach>
      </table>
   </c:if>
</body>
</html>