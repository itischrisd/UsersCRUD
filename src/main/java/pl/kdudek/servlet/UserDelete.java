package pl.kdudek.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import pl.kdudek.entity.UserDao;

import java.io.IOException;

@WebServlet("/user/delete")
public class UserDelete extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userId = request.getParameter("id");
        UserDao.delete(Integer.parseInt(userId));
        response.sendRedirect(request.getContextPath() + "/user/list");
    }
}
