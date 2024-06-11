package com.example.ZBook.controller;

import com.example.ZBook.dao.BookDAO;
import com.example.ZBook.model.Book;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/upload")
@MultipartConfig
public class UploadServlet extends HttpServlet {
    private static final String UPLOAD_DIR = "uploads";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String author = request.getParameter("author");
        String publisher = request.getParameter("publisher");
        String pubDate = request.getParameter("pubDate");
        String summary = request.getParameter("summary");
        Part filePart = request.getPart("file");
        String fileName = filePart.getSubmittedFileName();
        String filePath = getServletContext().getRealPath("") + File.separator + UPLOAD_DIR + File.separator + fileName;

        // Save the file
        File uploadDir = new File(getServletContext().getRealPath("") + File.separator + UPLOAD_DIR);
        if (!uploadDir.exists()) uploadDir.mkdir();
        filePart.write(filePath);

        // Save book details to the database
        Book book = new Book();
        book.setTitle(title);
        book.setAuthor(author);
        book.setPublisher(publisher);
        book.setPubDate(pubDate);
        book.setSummary(summary);
        book.setFilePath(filePath);

        BookDAO bookDAO = new BookDAO();
        try {
            bookDAO.saveBook(book);
        } catch (SQLException e) {
            throw new ServletException("Database error", e);
        }

        response.sendRedirect("download.jsp");
    }
}
