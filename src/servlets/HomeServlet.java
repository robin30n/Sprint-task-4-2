package servlets;

import db.DBConnector;
import db.Items;
import db.Users;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/home.html")
public class HomeServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession();
        Users currentUser = (Users) session.getAttribute("useer");

        if (currentUser != null) {
            ArrayList<Items> items = DBConnector.getItems();
            req.setAttribute("items", items);

            req.getRequestDispatcher("/home_page.jsp").forward(req, resp);
        } else resp.sendRedirect("/login");
    }
}