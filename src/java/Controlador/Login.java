package Controlador;

import daos.DAOPersonas;
import dtos.DTOPersonas;
import Utilidades.myException;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Login extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws IOException, myException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        try {
            if (request.getParameter("btnAcceder") != null && request.getParameter("rSesion") != null) {

                String IdPersona = request.getParameter("txtUsuario").trim(); //Asignar a user name lo que esta en el parametro txt usuario
                String Clave = request.getParameter("txtPassword").trim(); //Asignar a user userpass lo que esta en el parametro txt password

                HttpSession sesion = request.getSession(); //Objeto de tipo sesión
                sesion.setMaxInactiveInterval(1800);//Tiempo de actividad de la sesión
                DTOPersonas usdto = new DTOPersonas(); //Instacion DTO
                DAOPersonas usdao = new DAOPersonas(); //Instancio DAO
                //pwcompare
                usdto = usdao.validarPersona(IdPersona, Clave);

                if (usdto.getIdPersona()!= "") {
                    sesion.setAttribute("usuario", usdto);
                    
                    if (usdto.getIdEstadoPersonaFK()==2) {
                        if (usdto.getNombreRol().equals("Usuario")) {
                            out.print(usdto.getIdPersona() + "-" + usdto.getNombre1());
                            response.sendRedirect("IndexUsuario.jsp");
                        } else if (usdto.getNombreRol().equals("Tecnico")) {
                            out.print(usdto.getIdPersona() + "-" + usdto.getNombre1());
                            response.sendRedirect("IndexTecnico.jsp");
                        } else if (usdto.getNombreRol().equals("Administrador")) {
                            out.print(usdto.getIdPersona() + "-" + usdto.getNombre1());
                            response.sendRedirect("IndexAdministrador.jsp");
                        } else if (usdto.getNombreRol().equals("Superadministrador")) {
                            out.print(usdto.getIdPersona() + "-" + usdto.getNombre1());
                            response.sendRedirect("IndexSuperadministrador.jsp");
                        } else if (usdto.getNombreRol().equals("SinRol")) {
                            out.print("<SCRIPT LANGUAGE='javascript'>alert('No tienes un rol definido, contacta al administrador.');document.location=('Login.jsp')</script>");
                        }
                    } else {
                        out.print("<SCRIPT LANGUAGE='javascript'>alert('El usuario que intenta acceder no esta activo, contacta al administrador.');document.location=('Login.jsp')</script>");
                    }
                } else {
                    out.print("<SCRIPT LANGUAGE='javascript'>alert('Datos no validos, intentalo de nuevo.');document.location=('Login.jsp')</script>");
                }
            }
        } catch (myException ex) {
            throw new myException("excepcion del controldor " + ex);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);

        } catch (myException ex) {
            Logger.getLogger(Login.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);

        } catch (myException ex) {
            Logger.getLogger(Login.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
