<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
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

</head>
<body>
    <div align="center">
        <h1>Wejście do biblioteki</h1>

<P>  Czas na serwerze: ${serverTime}. </P>
		
<button><a href="<c:url value="/biblioteka" />" >Biblioteka</a></button>

    </div>
</body>
</html>
