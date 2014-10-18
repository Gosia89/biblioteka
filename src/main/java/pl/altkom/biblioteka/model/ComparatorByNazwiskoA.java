package pl.altkom.biblioteka.model;

import java.util.Comparator;

public class ComparatorByNazwiskoA implements Comparator<Ksiazka> {

    @Override
    public int compare(Ksiazka o1, Ksiazka o2) {
        String nazwisko1 = o1.getNazwiskoA();
        String nazwisko2 = o2.getNazwiskoA();
        return nazwisko1.compareToIgnoreCase(nazwisko2);
    }

}
