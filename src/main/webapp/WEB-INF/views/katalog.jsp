<%@include file="./includes/common.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>


<!DOCTYPE html>
<html>
    <head>

        <link href="&{pageContext.request.contextPath}/resources/style.css" 
              rel="stylesheet" type="text/css" />
        <title>Katalog</title>
        <style>
            header {
                background-color:black;
                color:white;
                text-align:center;
                padding:5px;
                border-top-left-radius: 2em;
                border-top-right-radius: 2em;
            }

            #left {
                line-height:15px;
                /*background-color:black;*/
                /*background-image: url('small1.png');*/
                height:100%;
                width:300px;
                float:left;
                padding-left:10px;
                background-color: lightsalmon;
            }
            #right {
                width:0px;
                float:left;
                padding-left:10px;
                padding-top:0px
            }
            
/*                margin: 0;  
                background-color: lightsalmon;
                width: 24%;
                float: left;
                padding-left: 10px;
                height: 100%;
            }*/
            
/*            section {
                width:800px;
                float:left;
                padding:10px;
                background-color: lightcoral;
            }*/
/*            #right {
                float: left;
                padding-left: 10px;
                height: 100%;
                width: 74%;
            }*/
            table.ta {
                width:300px;
                border-collapse: collapse;
                margin-left: 0px;
            }
            table.tb {
                width:944px;
                border-collapse: collapse;
                margin-left: 0px;
            }
            th, td {
                padding: 5px;
                text-align: left;
            }
            table#t02 tr:nth-child(even) {
                background-color: #eee;
                border: 1px solid black;
                border-collapse: collapse;
            }
            table#t02 tr:nth-child(odd) {
                background-color:#fff;
                border: 1px solid black;
                border-collapse: collapse;
            }
            table#t02 th	{
                color: beige;
                background-color: black;
                border: 1px solid black;
                border-collapse: collapse;
                text-align: center;
            }
            table#t02 td	{
                border: 1px solid black;
                border-collapse: collapse;
            }

            body {background-color:lightgrey}
            h1   {color:blue; font:arial}
            p    {color:green}
            
            .a2a:link    {color:beige; background-color:transparent}
            .a2a:visited {color:beige; background-color:transparent}
            .a2a:hover   {color:green; background-color:transparent}
            .a2a:active  {color:red; background-color:transparent}
            
            .a2b:link    {color:black; background-color:transparent}
            .a2b:visited {color:black; background-color:transparent}
            .a2b:hover   {color:green; background-color:transparent}
            .a2b:active  {color:red; background-color:transparent}
            
        </style>
        
<!--        <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">-->
<link rel="icon" href="<c:url value="/resources/favicon.ico" />" type="image/x-icon">

    </head>


    <body>
        <header>
            <h1>Katalog</h1>
        </header>
        
        <br>
        <!-- Tutaj powstaje formularz -->
        
        <div id="left">
            <h3>Dodawanie ksi&#261&#380ki do katalogu</h3>
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
                    <tr><td>Autorzy:</td> 
                        <td><form:input path="autorzy"/></td>
                    </tr>
                    <tr><td></td>
                        <td><form:errors path="autorzy" cssStyle="color: #ff0000;" /></td>
                    </tr>
                    <tr><td>Ilo&#347&#263:</td> 
                        <td><form:input path="ilosc" type="number" /></td>
                    </tr>
                    <tr><td></td>
                        
                    </tr>
<!--                    <tr><td>Kategoria:</td> -->
<!--                        <td><form:input path="kategoria"/></td></tr>
                    <tr>-->
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
      


        <!-- Tutaj s? wybrane kategorie filtrowania -->

            <h3>Filtruj wg:</h3>
            <form action="katalog" method="get">
                <table id="t01">
                    <tr><td><select name="kategoria">
                    <option value="1" >Tytu&#322</option>
                    <option value="3" >Autorzy</option>
                    <option value="5" >Kategoria</option>
                            </select></td></tr>
                    <tr><td><input type="text" value=".*" name="wyrazenie">
                        </td></tr>
                    <tr><td><input type="submit" name="filter" value="Filtruj">
                        </td></td>
                </table>
                
            </form>
            </div>



        <!-- Tutaj dodawane sa nowe ksi??ki -->
        <div id="right">
        <table id="t02" class="tb">
            
            <!-- Nag?ówki tabeli ksi??ek-->
            <tr>
                <th><a href="katalog?sort=0" class="a2a">Id</a></th>
                <th><a href="katalog?sort=1" class="a2a">Tytu&#322</a></th>
                <th><a href="katalog?sort=2" class="a2a">Opis</a></th>
                <th><a href="katalog?sort=3" class="a2a">Autorzy</a></th>
                <th><a href="katalog?sort=4" class="a2a">Ilo&#347&#263</a></th>
                <th><a href="katalog?sort=5" class="a2a">Kategoria</a></th>
                <th>Usu&#324</th>
                <th>Zmie&#324</th>
            </tr>
            <!-- z bazy danych wyci?ga do tabeli zapisane ksi??ki-->
            <c:forEach var="ksiazka" items="${katalog}">
                <tr class="a02">
                    <td><c:out value="${ksiazka.id+1}" /></td>
                    <td><c:out value="${ksiazka.tytul}" /></td>
                    <td><c:out value="${ksiazka.opis}" /></td>
                    <td><c:out value="${ksiazka.autorzy}" /></td>
                    <td><c:out value="${ksiazka.ilosc}" /></td>
                    <td><c:out value="${ksiazka.kategoria}" /></td>
                    <td><a href="katalog?id=${ksiazka.id}&action=delete" class="a2b">Usu&#324;</a></td>
                    <td><a href="katalogzmien?id=${ksiazka.id}&action=update" class="a2b">Zmie&#324;</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        </div>
    </body>
</html>