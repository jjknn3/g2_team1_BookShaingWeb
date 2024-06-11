package com.example.ZBook.dao;

import com.example.ZBook.model.Book;
import com.example.ZBook.util.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BookDAO {
    public void saveBook(Book book) throws SQLException {
        String query = "INSERT INTO books (title, author, publisher, pubDate, summary, filePath) VALUES (?, ?, ?, ?, ?, ?)";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, book.getTitle());
            preparedStatement.setString(2, book.getAuthor());
            preparedStatement.setString(3, book.getPublisher());
            preparedStatement.setString(4, book.getPubDate());
            preparedStatement.setString(5, book.getSummary());
            preparedStatement.setString(6, book.getFilePath());
            preparedStatement.executeUpdate();
        }
    }

    public List<Book> getAllBooks() throws SQLException {
        List<Book> books = new ArrayList<>();
        String query = "SELECT * FROM books";
        try (Connection connection = DBConnection.getConnection();
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(query)) {
            while (resultSet.next()) {
                Book book = new Book();
                book.setId(resultSet.getInt("id"));
                book.setTitle(resultSet.getString("title"));
                book.setAuthor(resultSet.getString("author"));
                book.setPublisher(resultSet.getString("publisher"));
                book.setPubDate(resultSet.getString("pubDate"));
                book.setSummary(resultSet.getString("summary"));
                book.setFilePath(resultSet.getString("filePath"));
                books.add(book);
            }
        }
        return books;
    }
}
