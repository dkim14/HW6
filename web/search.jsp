<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css" />
        <title>Search Pokemons</title>
    </head>
    <body>
        <div class = "wrap"> <!--div to hold all other divs -->
            
            <!--Header-->
            <%@ include file = "includes/header.jsp" %>
            <!--Menu-->
            <%@ include file = "includes/menu.jsp" %>
            
            <div class="main"> <!--main div-->
        <h1>Search Pokemons</h1>
        
        <form name="searchForm" action="search" method="get">
           
            <input type="text" name="searchVal" value=""/>
            
                <br>
             
             <input type="submit" name="submit" value="Search"/>
             
         </form>
         
            </div> <!-- close main div-->

            <!--footer-->
            <%@ include file = "includes/footer.jsp" %>
        </div> <!--cose footer div -->
         
     </body>
 </html>