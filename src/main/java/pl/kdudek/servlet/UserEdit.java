package pl.kdudek.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import pl.kdudek.entity.User;
import pl.kdudek.entity.UserDao;

import java.io.IOException;

@WebServlet("/user/edit")
public class UserEdit extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userId = request.getParameter("id");
        User user = UserDao.read(Integer.parseInt(userId));
        request.setAttribute("user", user);
        getServletContext().getRequestDispatcher("/users/edit.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userId = req.getParameter("id");
        String userName = req.getParameter("userName");
        String userEmail = req.getParameter("userEmail");
        String userPassword = req.getParameter("userPassword");
        User user = new User(
                Integer.parseInt(userId),
                userName,
                userEmail,
                userPassword
        );
        UserDao.update(user);
        resp.sendRedirect(req.getContextPath() + "/user/list");
    }
}
