<%-- 
    Document   : leer
    Created on : 12/09/2017, 11:55:15 PM
    Author     : Alejandro
--%>

<%@page import="Servicios.Inventario"%>
<%@page import="Modelo.Serializacion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>

    <head>
        <title>simplestyle_7</title>
        <meta name="description" content="website description" />
        <meta name="keywords" content="website keywords, website keywords" />
        <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Tangerine&amp;v1" />
        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz" />
        <link rel="stylesheet" type="text/css" href="style/style.css" />
    </head>

    <body>
        <div id="main">
            <div id="header">
                <div id="logo">
                    <h1>Artes Graficas Ruiz</h1>
                    <div class="slogan">Compra y Venta De Libros Nuevos Y Usados! </div>
                </div>
                <div id="menubar">
                    <ul id="menu">
                        <!-- put class="current" in the li tag for the selected page - to highlight which page you're on -->
                        <li ><a href="index.jsp">Crear</a></li>
                        <li><a href="examples.html">Actualizar</a></li>
                        <li class="current"><a href="leer.jsp">Leer</a></li>
                        <li><a href="another_page.html">Borrar</a></li>
                        <li><a href="contact.html">Listar Todo</a></li>
                        <li><a href="inventario.jsp">Registrar libro</a></li>
                        
                    </ul>
                </div>
            </div>
            <div id="site_content">
                <div id="sidebar_container">
                    <!-- Inicio presentacion Noticias-->
                    <img class="paperclip" src="style/paperclip.png" alt="paperclip" />
                    <div class="sidebar">
                        <!-- insert your sidebar items here -->
                        <h3>&Uacute;ltimas Noticias</h3>
                        <h4> hay libros disponibles</h4>
                        <h5>12 septiembre 2018</h5>
                        <p>Los osciloscopios estan siendo usados en clase de Potencia<br /><a href="#">Read more</a></p>
                    </div>
                    <!-- Final presentacion Noticias-->



                </div>
                <div id="content">
                    <!-- insert the page content here -->
                    <h1>Libros Existentes</h1>

                    <%
                        //Serializacion se = new Serializacion();
                        //Inventario in = new Inventario();
                        //in=se.leer();
                        //System.out.println(in);
                        if (request.getAttribute("resultado") != null) {
                            Boolean resultado = (Boolean) request.getAttribute("resultado");
                            if (resultado.booleanValue() == true) {
                    %>
                    <h2> El Libro fue registrado satisfactoriamente</h2>
                    <%
                    } else {
                    %>     
                    <h2> El Libro no fue registrado </h2>
                    <%
                            }
                        }
                    %>


                </div>
            </div>
            <div id="footer">
                <p>Copyright &copy; simplestyle_7 | <a href="http://validator.w3.org/check?uri=referer">HTML5</a> | <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a> | <a href="http://www.html5webtemplates.co.uk">design from HTML5webtemplates.co.uk</a></p>
            </div>
        </div>
    </body>
</html>
