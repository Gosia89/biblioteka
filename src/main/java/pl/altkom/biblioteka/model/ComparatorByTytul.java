package pl.altkom.biblioteka.model;

import java.util.Comparator;

public class ComparatorByTytul implements Comparator<Ksiazka> {

    @Override
    public int compare(Ksiazka o1, Ksiazka o2) {
        String tyt1 = o1.getTytul();
        String tyt2 = o2.getTytul();
        return tyt1.compareToIgnoreCase(tyt2);
    }

}
