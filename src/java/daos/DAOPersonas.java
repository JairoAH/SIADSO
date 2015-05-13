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
        DTOPersonas perUsuario = new DTOPersonas(); //Creo un objeto DTO vacio

        try {
            pstmt = cnn.prepareStatement("SELECT personas.idPersona, personas.nombre1, personas.apellido1, personas.correo, "
                    + "personas.clave, personas.idEstadoPersona, roles.nombreRol "
                    + "FROM personas, personasroles, roles "
                    + "WHERE personas.idPersona=? AND personas.clave=? "
                    + "AND personas.idPersona=personasroles.idPersona "
                    + "AND personasroles.idRol=roles.idRol");
            pstmt.setString(1, IdPersona);
            pstmt.setString(2, Clave);
            rs = pstmt.executeQuery();//Ejecuta consulta
            pstmt.toString();//
            if (rs != null) {
                while (rs.next()) {
                    perUsuario.setIdPersona(rs.getString("personas.idPersona"));
                    perUsuario.setNombre1(rs.getString("personas.nombre1"));
                    perUsuario.setApellido1(rs.getString("personas.apellido1"));
                    perUsuario.setCorreo(rs.getString("personas.correo"));
                    perUsuario.setClave(rs.getString("personas.clave"));
                    perUsuario.setIdEstadoPersonaFK(rs.getInt("personas.idEstadoPersona"));
                    perUsuario.setNombreRol(rs.getString("roles.nombreRol"));
                }
            }
        } catch (SQLException ex) {
            throw new myException("error al consultar " + ex.getSQLState());
        }
        return perUsuario;

    }

}
