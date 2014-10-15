<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Biblioteka</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
   
        <style>
           button {
	background-color:#5478E4;
	-moz-border-radius:20px;
	-webkit-border-radius:20px;
	border-radius:20px;
	border:3px solid #6787E7;
	display:inline-block;
	cursor:pointer;
	color:red;
	font-family:verdana;
	font-size:20px;
	padding:11px 31px;
	text-decoration:none;
	text-shadow:0px 0px 0px #2f6627;
}
button:hover {
	background-color:#5cbf2a;
}
button:active {
	position:relative;
	top:1px;
}
</style>

<link rel="icon" href="<c:url value="/resources/favicon.ico" />" type="image/x-icon">

</head>
<body>
    <div align="center">
        <h1>Zapoznaj się z katalogiem naszej biblioteki</h1>

<P>  Czas na serwerze: ${serverTime}. </P>
		
<button><a href="<c:url value="/katalog" />" >Katalog</a></button>
<a href="<c:url value="/katalog" />" >Katalog</a>
    </div>
</body>
</html>
