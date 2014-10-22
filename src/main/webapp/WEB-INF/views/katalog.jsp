<%@include file="./includes/common.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>


<!DOCTYPE html>
<html>
    <head>
        <title>Katalog</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link href="<c:url value="/resources/styl-katalog.css" />" rel="stylesheet" type="text/css" />
        <link rel="icon" href="<c:url value="/resources/favicon.ico" />" type="image/x-icon">
    </head>


    <body>
    <center>

        <div id="content">
            <header>
                <h1>Katalog</h1>
            </header>

            <br>
            <!-- Tutaj powstaje formularz -->

            <div id="left">
                <h4>Dodaj ksi&#261&#380k&#281 do katalogu</h4>
                <form:form modelAttribute="ksiazka">

                    <table id="t01" class="ta">
                        <tr><td>Tytu&#322:</td> 
                            <td><form:input path="tytul"/></td>
                        <tr><td></td>
                            <td><form:errors path="tytul" cssStyle="color: #ff3814"/></td>
                        </tr>
                        </tr>
                        <tr><td>Opis:</td> 
                            <td><form:input path="opis" /></td>
                        </tr>
                        <tr><td></td>
                            <td><form:errors path="opis" cssStyle="color: #ff3814" /></td>
                        </tr>
                        <tr><td>Autor:</td> 
                            <td><form:input path="autor"/></td>
                        </tr>
                        <tr><td></td>
                            <td><form:errors path="autor" cssStyle="color: #ff3814" /></td>
                        </tr><td><a class="info" href="#">Kraj:<span>Kraj pochodzenia autora</span></a></td>
                        <td><form:input path="krajA"/></td>
                        </tr>
                        <tr><td></td>
                            <td><form:errors path="krajA" cssStyle="color: #ff3814" /></td>
                        </tr>
                        <tr><td>Ilo&#347&#263:</td> 
                            <td><form:input path="ilosc" type="number" /></td>
                        </tr>
                        <tr><td></td>
                            <td><form:errors path="ilosc" cssStyle="color: #ff3814" /></td>
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
                        <tr><td></td>
                        <tr><td>
                                <form>
                                    <INPUT class="button" type="submit" VALUE="Dodaj" formaction="katalog" 
                                           formmethod="post"/>
                                </form>
                            </td></tr>
                    </table>


                </form:form>

                <br>      


                <!--Tutaj s? wybrane kategorie filtrowania--> 

                <h4>Filtruj wed&#322ug:</h4>
                <form action="katalog" method="get">
                    <table id="t01" class="ta">
                        <tr><td><select name="kategoria">
                                    <option value="1" >Tytu&#322</option>
                                    <option value="3" >Autor</option>
                                    <option value="4" >Kraj</option>
                                    <option value="5" >Kategoria</option>
                                </select></td><td></td></tr>
                        <tr><td><input type="text" value=".*" name="wyrazenie" >
                            </td><td></td></tr>
                        <tr><td>
                                <form>
                                    <INPUT class="button" type="submit" name="filter" VALUE="Filtruj" />
                                </form>
                            </td>
                            <td></td></tr>
                    </table>
                </form>
                <br><br>
                <li><a href="<c:url value="/home" />" class="aredir">STRONA G&#321ÓWNA</a></li>
            </div>



            <!-- Tutaj dodawane sa nowe ksi??ki -->
            <div id="right">
                <table id="t02" class="tb">

                    <!--Nag?ówki tabeli ksi??ek-->

                    <tr>
                        <th><a href="katalog?sort=0" class="a2a">Id</a></th>
                        <th><a href="katalog?sort=1" class="a2a">Tytu&#322</a></th>
                        <th>Opis</th>
                        <th><a href="katalog?sort=3" class="a2a">Autor</a></th>
                        <th><a href="katalog?sort=4" class="a2a">Kraj</a></th>
                        <th><a href="katalog?sort=5" class="a2a">Ilo&#347&#263</a></th>
                        <th><a href="katalog?sort=6" class="a2a">Kategoria</a></th>
                        <th>Usu&#324</th>
                        <th>Edytuj</th>
                    </tr>
                    <!--z bazy danych wyci?ga do tabeli zapisane ksi??ki-->
                    <c:forEach var="ksiazka" items="${katalog}">
                        <tr class="a02">
                            <td><c:out value="${ksiazka.id+1}" /></td>
                            <td><c:out value="${ksiazka.tytul}" /></td>
                            <td><c:out value="${ksiazka.opis}" /></td>
                            <td><c:out value="${ksiazka.autor}" /></td>
                            <td><c:out value="${ksiazka.krajA}" /></td>
                            <td><c:out value="${ksiazka.ilosc}" /></td>
                            <td><c:out value="${ksiazka.kategoria}" /></td>
                            <td><a href="katalog?id=${ksiazka.id}&action=delete" onclick="return confirm('Czy na pewno chcesz usun&#261;&#263; ten rekord?')" class="a2b">Usu&#324;</a></td>
                            <td><a href="katalogzmien?id=${ksiazka.id}&action=update" class="a2b">Edytuj</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </center>
</body>
</html>