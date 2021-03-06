package pl.altkom.biblioteka.model;

import java.io.Serializable;

import javax.validation.constraints.Pattern;
import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;

public class Ksiazka implements Serializable, Comparable {

    private long id;
    public final String regex = "[a-zA-ZżźćńółęąśŻŹĆĄŚĘŁÓŃ]+[\\\\.]?[\\\\\\-]?[\\\\\\s]?[a-zA-ZżźćńółęąśŻŹĆĄŚĘŁÓŃ]+[\\\\.]?[\\\\,]?[\\\\\\-]?[\\\\\\s]?[a-zA-ZżźćńółęąśŻŹĆĄŚĘŁÓŃ]+[\\\\.]?[\\\\,]?[\\\\\\-]?[\\\\\\s]?[a-zA-ZżźćńółęąśŻŹĆĄŚĘŁÓŃ]+[\\\\.]?[\\\\,]?[\\\\\\-]?[\\\\\\s]?[a-zA-ZżźćńółęąśŻŹĆĄŚĘŁÓŃ]+[\\\\.]?[\\\\\\-]?[\\\\\\s]?[a-zA-ZżźćńółęąśŻŹĆĄŚĘŁÓŃ]+";
    
    @NotEmpty(message="Pole jest wymagane")
    private String tytul;
    
    @NotEmpty(message="Pole jest wymagane")
    private String opis;
    
    @Pattern(regexp=regex, message="Musisz użyć min. 1 litery, możesz użyć kropki, przecinka, myślnika i spacji")
    @NotEmpty(message="Pole jest wymagane")
    private String autor;
    
    @NotEmpty(message="Pole jest wymagane")
    private String krajA;
    
    @Range(min=0, max=99, message="Liczba książek musi zawierać się między 0 a 99")
    private int ilosc;
    
    @NotEmpty(message="Pole jest wymagane")
    @Pattern(regexp="[a-zA-Z]+", message="Pole nie może zawierać cyfr")
    private String kategoria;

    public Ksiazka(long id, String tytul, String opis, String autor, String krajA, 
            int ilosc, String kategoria) {
        this.id = id;
        this.tytul = tytul;
        this.opis = opis;
        this.autor = autor;
        this.krajA = krajA;
        this.ilosc = ilosc;
        this.kategoria = kategoria;
    }

    

    public Ksiazka() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTytul() {
        return tytul;
    }

    public void setTytul(String tytul) {
        this.tytul = tytul;
    }

    public String getOpis() {
        return opis;
    }

    public void setOpis(String opis) {
        this.opis = opis;
    }
    
    public String getAutor() {
        return autor;
    }
    
    public void setAutor(String autor) {
        this.autor = autor;
    }
    
    public String getKrajA() {
        return krajA;
    }
    
    public void setKrajA(String krajA) {
        this.krajA = krajA;
    }
    
    public int getIlosc() {
        return ilosc;
    }

    public void setIlosc(int ilosc) {
        this.ilosc = ilosc;
    }

    public String getKategoria() {
        return kategoria;
    }

    public void setKategoria(String kategoria) {
        this.kategoria = kategoria;
    }

    @Override
    public int compareTo(Object o) {
        return -1;
    }
}
