<%@include file="./includes/common.jsp"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Edycja rekordu</title>
</head>
<body>

	<form:form modelAttribute="ksiazka">
		Tytu?: <form:input path="tytul" />
		<br>
		Opis: <form:input path="opis" />
		<br>
				Autorzy: <form:input path="autorzy" />
		<br>
				Ilo??: <form:input path="ilosc" />
		<br>
				Kategoria: <form:input path="kategoria" />
		<br>
		<input type="submit" value="Zmie&#324;" />
		<form:hidden path="id"/>
	</form:form>
</body>
</html>