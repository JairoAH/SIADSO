package daos;

import dtos.DTOPersonas;
import Utilidades.Conexion;
import Utilidades.myException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DAOPersonas {

    Connection cnn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    public DAOPersonas() {
        cnn = Conexion.getInstance();
    }

    public DTOPersonas validarPersona(String IdPersona, String Clave) throws myException {
        DTOPersonas perUsuario = new DTOPersonas();
        try {
            pstmt = cnn.prepareStatement("SELECT idPersona, nombres, apellidos, clave, rol, estado from usuarios WHERE idPersona=? AND Clave=?");
            pstmt.setString(1, IdPersona);
            pstmt.setString(2, Clave);
            rs = pstmt.executeQuery();
            pstmt.toString();
            if (rs != null) {
                while (rs.next()) {
                    
                    perUsuario.setIdPersona(rs.getString("IdPersona"));
                    perUsuario.setNombres(rs.getString("Nombres"));
                    perUsuario.setApellidos(rs.getString("Apellidos"));
                    perUsuario.setClave(rs.getString("Clave"));
                    perUsuario.setRol(rs.getString("Rol"));
                    perUsuario.setEstado(rs.getString("Estado"));
                }
            } 
            
//            else {
//                perUsuario = null;
//                throw new myException("usuario no encotrado");
//            }

        } catch (SQLException ex) {
            throw new myException("error al consultar " + ex.getSQLState());
        }
        return perUsuario;

    }

}
