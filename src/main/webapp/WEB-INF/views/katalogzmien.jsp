<%@include file="./includes/common.jsp"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<title>Edycja rekordu</title>
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

<link rel="icon" href="<c:url value="/resources/favicon.ico" />" type="image/x-icon">
</head>
<body>
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
            <tr><td>Autorzy:</td>
                <td><form:input path="autorzy" /></td>
            </tr>
            <tr><td></td>
                <td><form:errors path="autorzy" cssStyle="color: #ff0000;"/></td>
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
</body>
</html>