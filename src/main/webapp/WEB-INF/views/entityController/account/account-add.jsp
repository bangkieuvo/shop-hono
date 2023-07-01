<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Helo Spring MVC + JDBC</title>
</head>
<body>
  <a href="<c:url value="/account-list" />" >List Account</a><br />
  <h1>Add new Customer:</h1>
  <c:url value="/addAccount" var="addAccount"/>
  <form:form action="${addAccount}" method="POST"
    modelAttribute="account">
      Account: <form:input path="account" /> <br/> <br/>
      Password: <input name="password"><br/><br/>
      First name: <form:input path="firstName" /> <br/> <br/>
      Middle name: <form:input path="middleName" /> <br/> <br/>
      Last name: <form:input path="lastName" /> <br/> <br/>
    <button type="submit">Submit</button>
  </form:form>
</body>
</html>