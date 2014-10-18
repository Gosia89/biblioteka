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
        <div id="content">
            <div id="left">
                <table id="t01" class="ta">
                    <form:form modelAttribute="ksiazka">
                        <tr><td>Tytu&#322:</td>
                            <td><form:input path="tytul" /></td>
                        </tr>
                        <tr><td></td>
                            <td><form:errors path="tytul" cssStyle="color: #ff0000;"/></td>
                        </tr>
                        <tr><td>Opis:</td>
                            <td><form:input path="opis" /></td>
                        </tr>
                        <tr><td></td>
                            <td><form:errors path="opis" cssStyle="color: #ff0000;"/></td>
                        </tr>
                        <tr><td>Imi&#281:</td> 
                            <td><form:input path="imieA"/></td>
                        </tr>
                        <tr><td></td>
                            <td><form:errors path="imieA" cssStyle="color: #ff0000;" /></td>
                        </tr>
                        <tr><td>Nazwisko:</td> 
                            <td><form:input path="nazwiskoA"/></td>
                        </tr>
                        <tr><td></td>
                            <td><form:errors path="nazwiskoA" cssStyle="color: #ff0000;" /></td>
                        </tr>
                        <tr><td>Kraj:</td> 
                            <td><form:input path="krajA"/></td>
                        </tr>
                        <tr><td></td>
                            <td><form:errors path="krajA" cssStyle="color: #ff0000;" /></td>
                        </tr>
                        <tr><td>Liczba:</td>
                            <td><form:input path="ilosc" type="number" /></td>
                        </tr>
                        <tr><td></td>
                            <td><form:errors path="ilosc" cssStyle="color: #ff0000;"/></td>
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
                            <td><form:errors path="kategoria" cssStyle="color: #ff0000;"/></td>
                        </tr>
                        <tr><td><input type="submit" value="Zmie&#324;" /></td>
                        </tr>
                        <form:hidden path="id"/>
                    </form:form>
                </table>
            </div>
        </div>
    </body>
</html>