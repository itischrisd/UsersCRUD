package pl.kdudek.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import pl.kdudek.entity.User;
import pl.kdudek.entity.UserDao;

import java.io.IOException;

@WebServlet("/user/add")
public class UserAdd extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/users/add.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userName = req.getParameter("userName");
        String userEmail = req.getParameter("userEmail");
        String userPassword = req.getParameter("userPassword");
        User user = new User();
        user.setUserName(userName);
        user.setEmail(userEmail);
        user.setPassword(userPassword);
        UserDao.create(user);
        resp.sendRedirect(req.getContextPath() + "/user/list");
    }
}
