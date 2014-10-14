package pl.altkom.biblioteka.model;

import java.io.Serializable;
import java.util.Comparator;

import java.util.Set;
import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import org.hibernate.validator.constraints.NotEmpty;

public class Ksiazka implements Serializable, Comparable {

    private long id;
    
    @NotEmpty(message="To pole jest wymagane")
    private String tytul;
    
    @NotEmpty(message="To pole jest wymagane")
    private String opis;
    
    @NotEmpty(message="To pole jest wymagane")
    private String autorzy;
    
    private int ilosc;
    
    @NotEmpty(message="To pole jest wymagane")
    private String kategoria;

    public Ksiazka(long id, String tytul, String opis, String autorzy, int ilosc,
            String kategoria) {
        this.id = id;
        this.tytul = tytul;
        this.opis = opis;
        this.autorzy = autorzy;
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

    public String getAutorzy() {
        return autorzy;
    }

    public void setAutorzy(String autorzy) {
        this.autorzy = autorzy;
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
