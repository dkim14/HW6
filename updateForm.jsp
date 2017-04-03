<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Pokemons"%>
<% Pokemons pokemon = (Pokemons) request.getAttribute("pokemon"); %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css" />
        <title>Update a Pokemon</title>
    </head>
    <body>
        
         <div class = "wrap"> <!--div to hold all other divs -->
            
            <!--Header-->
            <%@ include file = "includes/header.jsp" %>
            <!--Menu-->
            <%@ include file = "includes/menu.jsp" %>
            
            <div class="main"> <!--main div-->
                
                
       <h2>Update A Pokemon Record</h2>
        
        <form name="updateForm" action="updatePokemon" method="get">
           <table>
            <br>
            <label> Pokemon ID: </label>
            <input type="text" name="id" value="<%= pokemon.getPokemonID() %>" readonly size="20" />
            <br>
            <label> Pokemon Name: </label>
            <input type="text" name="name" value="<%= pokemon.getPokemonName() %>" size="20" />
            <br>
            <label> Pokemon Type: </label>
            <input type="text" name="type" value="<%= pokemon.getPokemonType() %>" size="20"/>
            <br>
            <label> Pokemon Number </label>
            <input type="text" name="number" value="<%= pokemon.getPokemonNumber() %>" size="20"/>
            <br>
            <input type="reset" name="reset" value="Clear" />
            <input type="submit" name="submit" value="Update" />
           
        </form>
            
            </div> <!-- close main div-->

            <!--footer-->
            <%@ include file = "includes/footer.jsp" %>
        </div> <!--cose footer div -->
         
    </body>
</html>
