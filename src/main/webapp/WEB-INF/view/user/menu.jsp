<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="<%=request.getContextPath()%>/Resource/JQuery/jquery-3.2.0.min.js"></script>
<script src="<%=request.getContextPath()%>/Resource/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/Resource/css/bootstrap.min.css"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ease Management System</title>
</head>
<body>
                  <h3><a href="<c:url value='/event/list'/>">Activities</a></h3>
                  <h3><a href="<c:url value='/user/list'/>">normal user login test</a></h3>
                  <h3><a href="<c:url value='/form/apply'/>">homestay application</a></h3>
</body>
</html>