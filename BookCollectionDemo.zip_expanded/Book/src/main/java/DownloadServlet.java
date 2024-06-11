package com.example.ZBook.controller;

import com.example.ZBook.dao.BookDAO;
import com.example.ZBook.model.Book;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/download")
public class DownloadServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BookDAO bookDAO = new BookDAO();
        try {
            List<Book> books = bookDAO.getAllBooks();
            request.setAttribute("books", books);
        } catch (SQLException e) {
            throw new ServletException("Database error", e);
        }
        request.getRequestDispatcher("download.jsp").forward(request, response);
    }
}
