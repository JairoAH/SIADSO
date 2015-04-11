<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!doctype html>
<html>
    <head>
        <title>Cierre de sesión</title>
    </head>
    <body>
                     <%

                        HttpSession sesion = request.getSession(false);
                        if (sesion.getAttribute("usuario") == null) {
                            response.sendRedirect("Login.jsp");
                        } else {
                            sesion.removeAttribute("usuario");
                            sesion.invalidate();
                            response.sendRedirect("Login.jsp");
                            
                        }

                    %>
       
    </body>
</html>
