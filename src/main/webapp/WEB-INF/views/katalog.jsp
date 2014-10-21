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
                        <td><form:errors path="tytul" cssStyle="color: #ff0000;"/></td>
                    </tr>
                    </tr>
                    <tr><td>Opis:</td> 
                        <td><form:input path="opis" /></td>
                    </tr>
                    <tr><td></td>
                        <td><form:errors path="opis" cssStyle="color: #ff0000;" /></td>
                    </tr>
                    <tr><td>Autor:</td> 
                        <td><form:input path="autor"/></td>
                    </tr>
                    <tr><td></td>
                        <td><form:errors path="autor" cssStyle="color: #ff0000;" /></td>
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
                        <td><form:errors path="ilosc" cssStyle="color: #ff0000;" /></td>
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
                    <tr><td></td>
                    <tr><td><input type="submit" value="Dodaj" formaction="katalog"
                   formmethod="post"/>
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
                    <option value="5" >Kategoria</option>
                            </select></td></tr>
                    <tr><td><input type="text" value=".*" name="wyrazenie">
                        </td></tr>
                    <tr><td><input type="submit" name="filter" value="Filtruj">
                        </td></td>
                </table>
            </form>
        <a href="<c:url value="/home" />" >Strona glowna</a>
            </div>



        <!-- Tutaj dodawane sa nowe ksi??ki -->
        <div id="right">
        <table id="t02" class="tb">
            
             <!--Nag?ówki tabeli ksi??ek-->

            <tr>
                <th><a href="katalog?sort=0" class="a2a">Id</a></th>
                <th><a href="katalog?sort=1" class="a2a">Tytu&#322</a></th>
                <th><a href="katalog?sort=2" class="a2a">Opis</a></th>
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
                    <td><a href="katalog?id=${ksiazka.id}&action=delete" class="a2b">Usu&#324;</a></td>
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