<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Biblioteka</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link href="<c:url value="/resources/styl-home.css" />" rel="stylesheet" type="text/css" />
        <link rel="icon" href="<c:url value="/resources/favicon.ico" />" type="image/x-icon">

</head>
<body>
    <!--<div id="content">-->
    <div class="nav">
        <center><h1>Biblioteka dla dzieci</h1></center>

        <P>  Czas na serwerze: ${serverTime}. </P>
		
        <button><a href="<c:url value="/katalog" />" >Katalog</a></button>
        <a href="<c:url value="/katalog" />" >Katalog</a>
    </div>
    <!--</div>-->

</body>
</html>
