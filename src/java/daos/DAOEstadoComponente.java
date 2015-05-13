/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import Utilidades.Conexion;
import dtos.DTOEstadoComponente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Jairo Hernández
 */
public class DAOEstadoComponente {

    PreparedStatement st = null;
    Connection con = null;
    ResultSet rs = null;

    public DAOEstadoComponente() {
        con = Conexion.getInstance();
    }

    public String registrarEstado(DTOEstadoComponente newEstado) {
        String informe = "";
        try {
            int resultado = 0;
            st = con.prepareStatement("INSERT INTO estadoscomponentes(IdEstadoComponente, estadoComponente) VALUES (?,?)");
            st.setInt(1, newEstado.getIdEstado());
            st.setString(2, newEstado.getEstado());
            resultado = st.executeUpdate();
            if (resultado != 0) {
                informe = "Nuevo estado de componente almacenado.";
            } else {
                informe = "No se pudo ingresar el registro.";
            }
        } catch (SQLException sQLException) {
            System.out.println("Error de MYSQL: " + sQLException.getMessage());
        } finally {
            if (st != null) {
                try {
                    st.close();
                } catch (SQLException exception) {
                    Logger.getLogger(DAOEstadoComponente.class.getName()).log(Level.SEVERE, null, exception);
                }
            }
        }
        return informe;
    }

    public String modificarEstado(DTOEstadoComponente modificacionEstado) {
        String informe = "";
        try {
            int resultado = 0;
            st = con.prepareStatement("UPDATE estadoscomponentes SET estadoComponente=? WHERE IdEstadoComponente=?");
            st.setString(1, modificacionEstado.getEstado());
            resultado = st.executeUpdate();
            if (resultado != 0) {
                informe = "Estado actualizado.";
            } else {
                informe = "No se pudo actualizar estado.";
            }
        } catch (SQLException SqlExcepcion) {
            System.out.println("Error de mysql: " + SqlExcepcion.getMessage());
        } finally {
            if (st != null) {
                try {
                    st.close();
                } catch (SQLException SqlExcepcion) {
                    System.out.println("Error de mysql: " + SqlExcepcion.getMessage());
                }
            }
        }
        return informe;
    }
}
