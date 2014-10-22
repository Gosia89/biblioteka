package pl.altkom.biblioteka.model;

import java.util.Comparator;

public class ComparatorByKraj implements Comparator<Ksiazka> {

    @Override
    public int compare(Ksiazka o1, Ksiazka o2) {
        String kraj1 = o1.getAutor();
        String kraj2 = o2.getAutor();
        return kraj1.compareToIgnoreCase(kraj2);
    }

}
