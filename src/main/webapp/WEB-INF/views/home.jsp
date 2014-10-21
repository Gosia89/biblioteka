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
<center>
    <div class="nav">
        <center><h1>Biblioteka dla dzieci</h1></center>
       
        <center><p>MBP nr 200<br> 
                ul. Grunwaldzka 23<br>
                50-123 Wroc&#322aw<br>
                tel. (71) 328-23-23</p>
        </center>
        
       <center><FORM>
            <INPUT class="button" Type="button" VALUE="Kliknij, aby wej&#347&#263 do katalogu" 
                   ONCLICK="window.location.href='<c:url value="/katalog" />'"> 
        </FORM>
        </center>
        
                
        <time>${serverTime}</time>
        
    </div>
</center>

</body>
</html>
