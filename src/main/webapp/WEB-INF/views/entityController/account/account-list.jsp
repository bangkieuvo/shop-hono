<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Helo Spring MVC + JDBC</title>
<style>
table, th, td {
	border: 1px solid black;
}

td {
	padding-right: 30px;
}
</style>
</head>
<body>
	<c:url value="account-add" var="urlSave" />
	<c:url value="account-view" var="urlView" />
	<c:url value="account-edit" var="urlUpdate" />
	<c:url value="account-delete" var="urlDelete" />
	<h1>List Account:</h1>
	<a href="${urlSave}">Add Account</a>
	<br />
	<br />
	<table>
		<tr>
			<th>Account Id</th>
			<th>Account</th>
			<th>Name</th>
			<th>View</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<c:if test="${not empty listAccount}">
			<c:forEach var="account" items="${listAccount}">
				<tr style="border: 1px black solid">
					<td>${account.customerID}</td>
					<td>${account.account}</td>
					<td>${account.firstName} ${account.middleName} ${account.lastName}</td>
					<td><a href="${urlView}/${account.customerID}">View</a></td>
					<td><a href="${urlUpdate}/${account.customerID}">Edit</a></td>
					<td><a href="${urlDelete}/${account.customerID}">Delete</a></td>
				</tr>
			</c:forEach>
		</c:if>
	</table>
</body>
</html>