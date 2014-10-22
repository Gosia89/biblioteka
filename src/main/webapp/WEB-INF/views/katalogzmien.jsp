<%@include file="./includes/common.jsp"%>
<!DOCTYPE>
<html>
    <head>
        <title>Edycja rekordu</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link href="<c:url value="/resources/styl-katalogzmien.css" />" rel="stylesheet" type="text/css" />
        <link rel="icon" href="<c:url value="/resources/favicon.ico" />" type="image/x-icon">
    </head>
    <body>
    <center>
<!--        <div id="content">-->
            <div id="left">
                <h4>Edycja rekordu</h4>
                <table id="t01" class="ta">
                    <form:form modelAttribute="ksiazka">
                        <tr><td>Tytu&#322:</td>
                            <td><form:input path="tytul" /></td>
                        </tr>
                        <tr><td></td>
                            <td><form:errors path="tytul" cssStyle="color: #ff3814;"/></td>
                        </tr>
                        <tr><td>Opis:</td>
                            <td><form:input path="opis" /></td>
                        </tr>
                        <tr><td></td>
                            <td><form:errors path="opis" cssStyle="color: #ff3814;"/></td>
                        </tr>
                        <tr><td>Autor:</td> 
                            <td><form:input path="autor"/></td>
                        </tr>
                        <tr><td></td>
                            <td><form:errors path="autor" cssStyle="color: #ff3814;" /></td>
                        </tr>
                        <tr><td>Kraj:</td> 
                            <td><form:input path="krajA"/></td>
                        </tr>
                        <tr><td></td>
                            <td><form:errors path="krajA" cssStyle="color: #ff3814;" /></td>
                        </tr>
                        <tr><td>Ilo&#347&#263::</td>
                            <td><form:input path="ilosc" type="number" /></td>
                        </tr>
                        <tr><td></td>
                            <td><form:errors path="ilosc" cssStyle="color: #ff3814;"/></td>
                        </tr>
                        <td><label for="kategoria">Kategoria:</label></td> 
                        <td>
                            <select id="kategoria" name="kategoria">
                                <option value="Bajki">Bajki</option>
                                <option value="Czasopisma">Czasopisma</option>
                                <option value="Fantastyka">Fantastyka</option>
                                <option value="Historyczne">Historyczne</option>
                                <option value="Lektury">Lektury</option>
                                <option value="Obyczajowe">Obyczajowe</option>
                                <option value="Popularnonaukowe">Popularnonaukowe</option>
                                <option value="Przygodowe">Przygodowe</option>
                            </select>
                        </td>
                        </tr>
                        <tr><td></td>
                            <td><form:errors path="kategoria" cssStyle="color: tomato;"/></td>
                        </tr>
                        <tr><td>
                                <form>
                                    <INPUT class="button" type="submit" value="Zmie&#324;" />
                                </form>
                            </td></tr>
                        <form:hidden path="id"/>
                    </form:form>
                </table>
                <br>
                <center>
                    <li><a href="<c:url value="/katalog" />" class="aredir">KATALOG</a></li>
                        <li><a href="<c:url value="/home" />" class="aredir">STRONA G&#321ÓWNA</a></li>
                    
                </center>
            </div>
<!--        </div>-->
    </center>
    </body>
</html>