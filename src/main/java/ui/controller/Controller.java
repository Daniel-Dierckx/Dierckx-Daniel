package ui.controller;

import domain.db.model.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "Controller", value = "/Controller")
public class Controller extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private DrankDB db = new DrankDB();

    public Controller() {
        super();
        Drank drank1 = new Drank("Westmalle",  "Bier", 9.5);
        Drank drank2= new Drank("Pinot blanc",  "Wijn", 13);
        Drank drank3 = new Drank("Cactus",  "Jenever", 20);

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
                destination = overview(request, response);
                break;
            case "deleteConfirmation":
                destination = getDeleteConfirmation();
                break;
            case "add":
                destination = add(request, response);
                break;
            case "search":
                destination = search(request, response);
                break;
            case "delete":
                destination = delete(request, response);
                break;
            default:
                destination = home(request, response);
        }

        request.getRequestDispatcher(destination).forward(request, response);
    }

    private String home(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("strongestDrank", db.getStrongestDrank().getDrankNaam());
        return "index.jsp";
    }

    private String overview (HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("drinken", db.getDrankList());
        return "overzicht.jsp";
    }



    private String add (HttpServletRequest request, HttpServletResponse response) {
        String drankNaam= request.getParameter("drank-naam");
        String soort = request.getParameter("soort");
        double alcohol = Double.parseDouble(request.getParameter("alcohol"));

        if (!drankNaam.trim().isEmpty()  && !soort.trim().isEmpty() && alcohol > 0) {
            Drank drank = new Drank(drankNaam,  soort, alcohol);
            db.addDrank(drank);
            return overview(request, response);
        }
        else {
            return "voegtoe.jsp";
        }
    }

    private String search(HttpServletRequest request, HttpServletResponse response) {
        String destination;
        String drankNaam = request.getParameter("drank-naam");


        if (drankNaam == null || drankNaam.isEmpty()) {
            destination = "bestaatNiet.jsp";
        }

        else {
            Drank drank = db.getDrank(drankNaam);
            if(drank == null){
                destination = "bestaatNiet.jsp";
            }
            else{
                destination = "gevonden.jsp";
                request.setAttribute("drank", drank);
            }
        }
        request.getRequestDispatcher(destination);
        return destination;
    }

    private String getDeleteConfirmation() {
        return "deleteConfirmation.jsp";
    }

    private String delete (HttpServletRequest request, HttpServletResponse response) {
        String drankNaam = request.getParameter("drank-naam");
        db.removeDrank(drankNaam);
        return overview(request, response);
    }
}
