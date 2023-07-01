<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Helo Spring MVC + JDBC</title>
</head>
<body>
	<a href="<c:url value="/account-list" />">List account</a>
	<br />
	<h1>Edit account:</h1>

	<c:url value="/updateAccount" var="updateAccount" />
	<form:form action="${updateAccount}" method="POST"
		modelAttribute="account">
		<form:hidden path="hashedPassword" readonly="false" />
		<br />
		<br />
      Id: <form:input path="customerID" readonly="true" />
		<br />
		<br />
  	  Account: <form:input path="account" readonly="true" />
		<br />
		<br />
      First name: <form:input path="firstName" />
		<br />
		<br />
      Middle name: <form:input path="middleName" />
		<br />
		<br />
      Last name: <form:input path="lastName" />
		<br />
		<br />
		<button type="submit">Submit</button>
	</form:form>
</body>
</html>