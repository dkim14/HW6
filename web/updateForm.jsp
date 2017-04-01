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
       <h1>Update A Pokemon Record</h1>
        
        <form name="updateForm" action="updatePokemon" method="get">
            
            <br>
            <label> Pokemon ID: </label>
            <input type="text" name="name" value="<%= pokemon.getPokemonID() %>" size="20" />
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
    </body>
</html>
