
package dbHelpers;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Pokemons;


public class ReadRecord {
    
    private Connection conn;
    private ResultSet results;
    private Pokemons pokemon = new Pokemons();
    private int pokemonID;
    
    public ReadRecord (int pokemonID){

    
        Properties props = new Properties();//MWC
        InputStream instr = getClass().getResourceAsStream("dbConn.properties");
        try {
            props.load(instr);
        } catch (IOException ex) {
            Logger.getLogger(ReadRecord.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            instr.close();
        } catch (IOException ex) {
            Logger.getLogger(ReadRecord.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        String driver = props.getProperty("driver.name");
        String url = props.getProperty("server.name");
        String username = props.getProperty("user.name");
        String passwd = props.getProperty("user.password");
        
        this.pokemonID = pokemonID;
        
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ReadRecord.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            conn = DriverManager.getConnection(url, username, passwd);
        } catch (SQLException ex) {
            Logger.getLogger(ReadRecord.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
    
    }

    public void doRead(){
    
        try {
            String query = "SELECT * FROM pokemons WHERE pokemonID = ?";
            
            PreparedStatement ps = conn.prepareStatement(query);
            
            ps.setInt(1, pokemonID);
            
            this.results = ps.executeQuery();
            
            this.results.next();
            
            pokemon.setPokemonID(this.results.getInt("pokemonID"));
            pokemon.setPokemonName(this.results.getString("pokemonName"));
            pokemon.setPokemonType(this.results.getString("pokemonType"));
            pokemon.setPokemonNumber(this.results.getInt("pokemonNumber"));
        } catch (SQLException ex) {
            Logger.getLogger(ReadRecord.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    
    }
    
    public Pokemons getPokemon(){
        return this.pokemon;
    }
}

