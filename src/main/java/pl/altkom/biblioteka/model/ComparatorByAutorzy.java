package pl.altkom.biblioteka.model;

import java.util.Comparator;

public class ComparatorByAutorzy implements Comparator<Ksiazka> {

    @Override
    public int compare(Ksiazka o1, Ksiazka o2) {
        Double cen1 = new Double(o1.getAutorzy());
        Double cen2 = new Double(o2.getAutorzy());

        return cen1.compareTo(cen2);
    }

}
