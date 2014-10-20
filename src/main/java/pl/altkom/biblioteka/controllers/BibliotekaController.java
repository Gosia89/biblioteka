package pl.altkom.biblioteka.controllers;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.altkom.biblioteka.HomeController;

import pl.altkom.biblioteka.dao.BibliotekaDao;
import pl.altkom.biblioteka.model.Ksiazka;

@Controller
public class BibliotekaController {

    @Autowired
    private BibliotekaDao bd;

    @RequestMapping(value = "/katalog", method = RequestMethod.GET)
    public String biblioteka(Locale locale, Model model, HttpServletRequest request) {
        boolean zmiana = false;
        int id = 0;
        int atrybut = 0;
        String wyrazenie = "";

        if (request.getParameter("filter") != null) {
            System.out.println(request.getParameter("wyrazenie"));
            atrybut = Integer.parseInt(request.getParameter("kategoria"));
            wyrazenie = request.getParameter("wyrazenie");
        }

        if ((request.getParameter("sort") != null)) {
            bd.setSort(Integer.parseInt(request.getParameter("sort")));
        }

        if ((request.getParameter("id") != null)
                && (request.getParameter("action") != null)) {
            if (request.getParameter("action").equals("delete")) {
                bd.removeKsiazka(Integer.parseInt(request.getParameter("id")));
            }
            if (request.getParameter("action").equals("update")) {
                zmiana = true;
                id = Integer.parseInt(request.getParameter("id"));
                model.addAttribute("ksiazka", bd.getKsiazka(id));
            }
        }

        model.addAttribute("katalog", bd.getAllSortedKsiazka(atrybut, wyrazenie));
        model.addAttribute(new Ksiazka());
        //System.out.println("asdfasdf");
        return "katalog";
    }

    @RequestMapping(value = "/katalog", method = RequestMethod.POST)
    public String bibliotekaDodaj(Locale locale, @Valid @ModelAttribute Ksiazka ksiazka,
            BindingResult result, Model model) {
        
        if (result.hasErrors()) {
            model.addAttribute("katalog", bd.getAllSortedKsiazka(0, ""));
            return "katalog";
        }
        bd.addKsiazka(ksiazka);
        model.addAttribute("katalog", bd.getAllSortedKsiazka(0, ""));
        model.addAttribute(new Ksiazka());

        return "katalog";
    }

    @RequestMapping(value = "/katalogzmien", method = RequestMethod.GET)
    public String bibliotekaDodaj(HttpServletRequest request, Model model) {
        int id = Integer.parseInt(request.getParameter("id"));
        model.addAttribute(bd.getKsiazka(id));
        return "katalogzmien";
    }

    @RequestMapping(value = "/katalogzmien", method = RequestMethod.POST)
    public String bibliotekaDodaj(@Valid @ModelAttribute Ksiazka ksiazka, BindingResult result,
            Model model) {
        
        if (result.hasErrors()) {
            model.addAttribute("katalogzmien", bd.getAllSortedKsiazka(0, ""));
            return "katalogzmien";
        }
        bd.updateKsiazka(ksiazka);
        model.addAttribute(new Ksiazka());
        model.addAttribute("katalog", bd.getAllSortedKsiazka(0, ""));
        model.addAttribute(new Ksiazka());
        return "katalog";
    }
    
    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String home(HttpServletRequest request, Model model) {
                
        
        Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );

        return "home";
    }
}
