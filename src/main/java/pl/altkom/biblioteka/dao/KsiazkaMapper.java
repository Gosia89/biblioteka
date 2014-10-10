package pl.altkom.biblioteka.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import pl.altkom.biblioteka.model.Ksiazka;

public class KsiazkaMapper implements RowMapper<Ksiazka> {
	public Ksiazka mapRow(ResultSet row, int rowNum) throws SQLException {
		Ksiazka ksiazka = new Ksiazka();
		ksiazka.setId(row.getLong("id"));
		ksiazka.setTytul(row.getString("tytul"));
		ksiazka.setOpis(row.getString("opis"));
		ksiazka.setAutorzy(row.getString("autorzy"));
		ksiazka.setIlosc(row.getInt("ilosc"));
		ksiazka.setKategoria(row.getString("kategoria"));
		return ksiazka;
	}
}
