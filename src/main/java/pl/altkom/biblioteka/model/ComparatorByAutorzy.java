package pl.altkom.biblioteka.model;

import java.util.Comparator;

public class ComparatorByAutorzy implements Comparator<Ksiazka> {

    @Override
    public int compare(Ksiazka o1, Ksiazka o2) {
        String aut1 = o1.getAutorzy();
        String aut2 = o2.getAutorzy();
        return aut1.compareToIgnoreCase(aut2);
    }

}
