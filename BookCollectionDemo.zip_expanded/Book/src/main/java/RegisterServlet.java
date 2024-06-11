package com.example.ZBook.controller;

import com.example.ZBook.dao.UserDAO;
import com.example.ZBook.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.regex.Pattern;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");

        if (password == null || !password.equals(confirmPassword) || !isValidPassword(password)) {
            request.setAttribute("message", "Passwords do not match or do not meet the criteria.");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }

        User user = new User();
        user.setUsername(username);
        user.setEmail(email);
        user.setPassword(password);

        UserDAO userDAO = new UserDAO();
        try {
            userDAO.saveUser(user);
            response.sendRedirect("login.jsp");
        } catch (SQLException e) {
            throw new ServletException("Database error", e);
        }
    }

    private boolean isValidPassword(String password) {
        return password.length() >= 10 && Pattern.compile("[a-zA-Z]").matcher(password).find() && Pattern.compile("[0-9]").matcher(password).find();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("register.jsp").forward(request, response);
    }
}
