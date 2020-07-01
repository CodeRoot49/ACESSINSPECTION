/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package access.controller;

import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class accessLoginLogout extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        HttpSession se = req.getSession();
        String location = resp.encodeURL(req.getHeader("referer"));
        if (action != null) {
            boolean logout = false;
            switch (action) {
                case "logout":
                    logout = true;
                    break;
                default:
                    resp.sendRedirect(location);
            }
            if (logout) {
                se.invalidate();
                resp.sendRedirect(req.getContextPath() + "/index.jsp");
            }
        } else {
            resp.sendRedirect(location);
        }
    }

}
