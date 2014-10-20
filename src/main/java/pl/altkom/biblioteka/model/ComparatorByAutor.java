package pl.altkom.biblioteka.model;

import java.util.Comparator;

public class ComparatorByAutor implements Comparator<Ksiazka> {

    @Override
    public int compare(Ksiazka o1, Ksiazka o2) {
        String autor1 = o1.getAutor();
        String autor2 = o2.getAutor();
        return autor1.compareToIgnoreCase(autor2);
    }

}
