<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Helo Spring MVC + JDBC</title>
<meta charset="utf-8">
</head>
<body>
  <a href="<c:url value="/account-list" />" >List Account</a><br />
  
  <h1>View Account:</h1>  
  Customer ID: ${account.customerID} <br/>
  Account: ${account.account} <br/>
  Name: ${account.firstName} ${account.middleName} ${account.lastName}<br/>
</body>
</html>