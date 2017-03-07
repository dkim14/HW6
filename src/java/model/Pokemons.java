
package model;


public class Pokemons {

    private int pokemonID;
    private String pokemonName;
    private String pokemonType;
    private int pokemonNumber;

    public Pokemons() {
        this.pokemonID = 0;
        this.pokemonName = "";
        this.pokemonType = "";
        this.pokemonNumber = 0;
    }
    
        public Pokemons(int pokemonID, String pokemonName, String pokemonType, int pokemonNumber) {
        this.pokemonID = pokemonID;
        this.pokemonName = pokemonName;
        this.pokemonType = pokemonType;
        this.pokemonNumber = pokemonNumber;
    }

    public int getPokemonID() {
        return pokemonID;
    }

    public void setPokemonID(int pokemonID) {
        this.pokemonID = pokemonID;
    }

    public String getPokemonName() {
        return pokemonName;
    }

    public void setPokemonName(String pokemonName) {
        this.pokemonName = pokemonName;
    }

    public String getPokemonType() {
        return pokemonType;
    }

    public void setPokemonType(String pokemonType) {
        this.pokemonType = pokemonType;
    }

    public int getPokemonNumber() {
        return pokemonNumber;
    }

    public void setPokemonNumber(int pokemonNumber) {
        this.pokemonNumber = pokemonNumber;
    }

    @Override
    public String toString() {
        return "Pokemons{" + "pokemonID=" + pokemonID + ", pokemonName=" + pokemonName + ", pokemonType=" + pokemonType + ", pokemonNumber=" + pokemonNumber + '}';
    }
    
    
        
        
        
        
}
