<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List Books</title>
</head>
<style>
body {background-color: yellow; text-align: center}
h2{color: MidnightBlue; text-align: center}
th{color: MidnightBlue; text-align: center}
</style>
<body>
	<h1>List of Books Available</h1>
	<table border = "1">
		<tr>
			<th>ISBN</th>
			<th>Title</th>
			<th>Author</th>
			<th>Publish Date</th>
			<th>Content</th>
			<th>Price</th>
			<th>Status</th>
			<th>View</th>
		</tr>
		<c:forEach items="${book}" var="book">
		<tr>	
			<td>${book.isbn}</td>
			<td>${book.title}</td>
			<td>${book.author}</td>
			<td>${book.publishDate}</td>
			<td>${book.content}</td>
			<td>${book.price}</td>
			<td>${book.status}</td>
			<td><a href="../book/${book.isbn}">View</a></td>
		</tr>
		</c:forEach>
	</table>	
</body>
</html>