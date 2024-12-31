package org.gbschool.krrsd.controller;

import java.io.IOException;

import jakarta.servlet.*;
import jakarta.servlet.http.*;

public class PageController extends HttpServlet {
	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String path = request.getPathInfo();
        if (path == null || path.equals("/")) {
            path = "/home";
        }

        // Determine which page to include based on the path
        switch (path) {
            case "/home":
                request.getRequestDispatcher("/index.jsp").forward(request, response);
                break;
            case "/about":
                request.getRequestDispatcher("/public/jsp/screens/about.jsp").forward(request, response);
                break;
            case "/gallery":
                request.getRequestDispatcher("/public/jsp/screens/gallery.jsp").forward(request, response);
                break;
            case "/admin/login":
                request.getRequestDispatcher("/index.jsp").forward(request, response);
                break;
            default:
                request.getRequestDispatcher("/public/jsp/screens/home.jsp").forward(request, response);
                break;
        }
    }
}
