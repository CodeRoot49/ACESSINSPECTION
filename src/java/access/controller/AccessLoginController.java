package access.controller;

import access.dao.AccessConexionDao;
import access.dao.AccessLoginDao;
import access.model.AccessLoginBeans;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AccessLoginController extends HttpServlet {

    protected void doPost(HttpServletRequest requet, HttpServletResponse response)
            throws ServletException, IOException {
        /**
         * //Suponemos que el usuario está visitando por primera vez nuestro
         * sitio boolean userAccess = true; //Obtenemos todas las cookies
         * Cookie[] cookies = requet.getCookies(); if (cookies != null) { for
         * (Cookie c : cookies) { if (c.getName().equals("userAccess") &&
         * c.getValue().equals("si")) { userAccess = false; break; } } } String
         * mensaje = null; if (userAccess) { //En caso de ser un usuario nuevo
         * creamos el objeto Cookie Cookie visitanteCookie = new
         * Cookie("userAccess", "si"); //Agregamos la cookie en la respuesta
         * response.addCookie(visitanteCookie); mensaje = "Gracias por visitar
         * nuestro sitio"; } else { mensaje = "Gracias por visitar NUEVAMENTE
         * nuestro sitio"; }*
         */

        String user = requet.getParameter("user");
        String password = requet.getParameter("password");

        if (user != null && password != null) {

            AccessConexionDao cone = new AccessConexionDao();
            AccessLoginDao loginDao = new AccessLoginDao(cone);

            AccessLoginBeans loginAdminReport = new AccessLoginBeans();
            loginAdminReport.setUser(user);
            loginAdminReport.setPassword(password);
            loginAdminReport.setRol("adminReport");

            AccessLoginBeans loginAmdinUser = new AccessLoginBeans();
            loginAmdinUser.setUser(user);
            loginAmdinUser.setPassword(password);
            loginAmdinUser.setRol("adminUser");

            HttpSession session = requet.getSession(true);
            System.out.println("Si ejecute el servlett");

            String msg = "";
            try {
                if (loginDao.validate(loginAdminReport)) {
                    System.out.println("Usuario logouttt Daren");
                    session.setAttribute("accessUser", user);
                    session.setAttribute("login", "login");
                    //response.sendRedirect("admin/adminreport.jsp");
                } else {
                    if (loginDao.validate(loginAmdinUser)) {
                        System.out.println("Usuario logouttt Miltom");
                        session.setAttribute("accessUser", user);
                        session.setAttribute("login", "login");
                        //response.sendRedirect("admin/adminusers.jsp");
                    } else {
                        //HttpSession session = requet.getSession();
                        System.out.println("Usuario no logeadooooooooooo");
                        response.sendRedirect("login/loginAdmin.jsp");
                        msg = "<div id=\"loginIvalido\" class=\"messageError\">\n <i class=\"fas fa-exclamation-circle\">Usuario y/o contraseña incorectos</i>\n</div>";
                        session.setAttribute("loginError", msg);
                    }
                }
                cone.Disconnect();
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(AccessLoginController.class
                        .getName()).log(Level.SEVERE, null, ex);
            }
        }else{
            System.out.println("no recivi user ni passs");
        }

    }
}
