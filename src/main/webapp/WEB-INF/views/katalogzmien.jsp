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
                            <td><form:errors path="tytul" cssStyle="color: #3d8ecc;"/></td>
                        </tr>
                        <tr><td>Opis:</td>
                            <td><form:input path="opis" /></td>
                        </tr>
                        <tr><td></td>
                            <td><form:errors path="opis" cssStyle="color: #3d8ecc;"/></td>
                        </tr>
                        <tr><td>Autor:</td> 
                            <td><form:input path="autor"/></td>
                        </tr>
                        <tr><td></td>
                            <td><form:errors path="autor" cssStyle="color: #3d8ecc;" /></td>
                        </tr>
                        <tr><td>Kraj:</td> 
                            <td><form:input path="krajA"/></td>
                        </tr>
                        <tr><td></td>
                            <td><form:errors path="krajA" cssStyle="color: #3d8ecc;" /></td>
                        </tr>
                        <tr><td>Liczba:</td>
                            <td><form:input path="ilosc" type="number" /></td>
                        </tr>
                        <tr><td></td>
                            <td><form:errors path="ilosc" cssStyle="color: #3d8ecc;"/></td>
                        </tr>
                        <td><label for="kategoria">Kategoria:</label></td> 
                        <td>
                            <select id="kategoria" name="kategoria">
                                <option value="Biografia">Biografia</option>
                                <option value="Fantastyka">Fantastyka</option>
                                <option value="Historyczna">Historyczna</option>
                                <option value="Horror">Horror</option>
                                <option value="Literatura popularnonaukowa">Literatura popularnonaukowa</option>
                                <option value="Literatura dzieci&#281ca">Literatura dzieci&#281ca</option>
                                <option value="Klasyka">Klasyka</option>
                                <option value="Poezja">Poezja</option>
                                <option value="Przygodowa">Przygodowa</option>
                                <option value="Religia">Religia</option>
                                <option value="Romans">Romans</option>
                                <option value="Satyra">Satyra</option>
                                <option value="Sensacja">Sensacja</option>
                                <option value="Thriller">Thriller</option>
                            </select>
                        </td>
                        </tr>
                        <tr><td></td>
                            <td><form:errors path="kategoria" cssStyle="color: #3d8ecc;"/></td>
                        </tr>
                        <tr><td>
                                <form>
                                    <INPUT class="button" type="submit" value="Zmie&#324;" />
                                </form>
                            </td></tr>
                        <form:hidden path="id"/>
                    </form:form>
                </table>
                <a href="<c:url value="/katalog" />" >Katalog</a>
                <a href="<c:url value="/home" />" >Strona g?ówna</a>
            </div>
<!--        </div>-->
    </center>
    </body>
</html>