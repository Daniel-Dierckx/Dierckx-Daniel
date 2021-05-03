package ui.controller;

import domain.db.model.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;

@WebServlet(name = "Controller", value = "/Controller")
public class Controller extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private DrankDB db = new DrankDB();

    public Controller() {
        super();
        Drank drank1 = new Drank("Westmalle", "Bier", 9.5);
        Drank drank2 = new Drank("Pinot blanc", "Wijn", 13);
        Drank drank3 = new Drank("Cactus", "Jenever", 20);

        db.addDrank(drank1);
        db.addDrank(drank2);
        db.addDrank(drank3);
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String command = "home";

        if (request.getParameter("command") != null) {
            command = request.getParameter("command");
        }

        String destination;

        switch (command) {
            case "overview":
                destination = overview(request);
                break;
            case "deleteConfirmation":
                destination = getDeleteConfirmation();
                break;
            case "add":
                destination = add(request);
                break;
            case "getSearch":
                destination = getSearch(request);
                break;
            case "getAdd":
                destination = getAdd(request);
                break;
            case "search":
                destination = search(request);
                break;
            case "delete":
                destination = delete(request);
                break;
            default:
                destination = home(request);
        }

        request.getRequestDispatcher(destination).forward(request, response);
    }

    private String home(HttpServletRequest request) {
        request.setAttribute("strongestDrank", db.getStrongestDrank());
        return "index.jsp";
    }

    private String overview(HttpServletRequest request) {
        request.setAttribute("drinken", db.getDrankList());
        return "overzicht.jsp";
    }

    private String add(HttpServletRequest request) {
        Drank drank = new Drank();
        ArrayList<String> errors = new ArrayList<>();

        setDrankNaam(drank, request, errors);
        setSoort(drank, request, errors);
        setAlcohol(drank, request, errors);

        if (errors.size() == 0) {
            try {
                db.addDrank(drank);
                return overview(request);
            } catch (IllegalArgumentException ecx) {
                errors.add(ecx.getMessage());
                return "voegtoe.jsp";
            }
        }

        request.setAttribute("errors", errors);
        return "voegtoe.jsp";
    }

    private void setDrankNaam(Drank drank, HttpServletRequest request, ArrayList<String> errors) {
        String drankNaam = request.getParameter("drankNaam");

        try {
            drank.setDrankNaam(drankNaam);
        } catch (IllegalArgumentException ecx) {
            errors.add(ecx.getMessage());
        }
    }

    private void setSoort(Drank drank, HttpServletRequest request, ArrayList<String> errors) {
        String soort = request.getParameter("soort");

        try {
            drank.setSoort(soort);
        } catch (IllegalArgumentException ecx) {
            errors.add(ecx.getMessage());
        }
    }

    private void setAlcohol(Drank drank, HttpServletRequest request, ArrayList<String> errors) {
        String alcoholStr = request.getParameter("alcohol");

        try {
            double alcohol = Double.parseDouble(alcoholStr);
            drank.setAlcohol(alcohol);
        } catch (NumberFormatException nfe) {
            errors.add("Alcohol percentage moet een cijfer zijn.");
        } catch (IllegalArgumentException ecx) {
            errors.add(ecx.getMessage());
        }
    }


    private String search(HttpServletRequest request) {
        Drank drank = new Drank();
        ArrayList<String> errors = new ArrayList<>();

        setDrankNaam(drank, request, errors);


        if (errors.size() == 0) {
            try {
                db.getDrank(drank.getDrankNaam());
                return overview(request);
            } catch (IllegalStateException exc) {
                request.setAttribute("errors", exc.getMessage());
                return getSearch(request);
            }
        }

        request.setAttribute("errors", errors);
        return getSearch(request);
        }

       /* String destination;
        String drankNaam = request.getParameter("drankNaam");

        if (drankNaam == null || drankNaam.isEmpty()) {
            destination = "";
        }

        else {
            Drank drank = db.getDrank(drankNaam);
            if(drank == null){
                destination = "";
            }
            else{
                destination = "gevonden.jsp";
                request.setAttribute("drank", drank);
            }
        }
        request.getRequestDispatcher(destination);
        return destination;

        */




    private String getDeleteConfirmation() {
        return "deleteConfirmation.jsp";
    }

    private String delete (HttpServletRequest request) {
        String drankNaam = request.getParameter("drankNaam");
        db.removeDrank(drankNaam);
        return overview(request);
    }

    private String getSearch(HttpServletRequest request) {
        Cookie cookie = getCookieWithKey(request, "prevSearch");

        if (cookie != null) {
            request.setAttribute("prevSearch", cookie.getValue().replace("_", " "));
        }

        return "zoekDrank.jsp";
    }

    private String getAdd(HttpServletRequest request) {
        request.setAttribute("title", "Add Track");
        request.setAttribute("command", "add");
        return "voegtoe.jsp";
    }

    private Cookie getCookieWithKey(HttpServletRequest request, String key) {
        Cookie[] cookies = request.getCookies();
        if (cookies == null)
            return null;
        for (Cookie cookie : cookies
        ) {
            if (cookie.getName().equals(key))
                return cookie;
        }
        return null;
    }
}
