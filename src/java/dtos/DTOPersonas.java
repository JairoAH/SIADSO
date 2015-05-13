package dtos;

public class DTOPersonas {
    
    private String idPersona="", nombre1="", nombre2="", apellido1="", apellido2="", cargo="", clave="", correo="";
    private int idUbicacionFK=0, idEstadoPersonaFK=0;
    
    private String nombreRol="";

    public DTOPersonas() {
    }

    public String getIdPersona() {
        return idPersona;
    }

    public void setIdPersona(String idPersona) {
        this.idPersona = idPersona;
    }

    public String getNombre1() {
        return nombre1;
    }

    public void setNombre1(String nombre1) {
        this.nombre1 = nombre1;
    }

    public String getNombre2() {
        return nombre2;
    }

    public void setNombre2(String nombre2) {
        this.nombre2 = nombre2;
    }

    public String getApellido1() {
        return apellido1;
    }

    public void setApellido1(String apellido1) {
        this.apellido1 = apellido1;
    }

    public String getApellido2() {
        return apellido2;
    }

    public void setApellido2(String apellido2) {
        this.apellido2 = apellido2;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public int getIdUbicacionFK() {
        return idUbicacionFK;
    }

    public void setIdUbicacionFK(int idUbicacionFK) {
        this.idUbicacionFK = idUbicacionFK;
    }

    public int getIdEstadoPersonaFK() {
        return idEstadoPersonaFK;
    }

    public void setIdEstadoPersonaFK(int idEstadoPersonaFK) {
        this.idEstadoPersonaFK = idEstadoPersonaFK;
    }

    public String getNombreRol() {
        return nombreRol;
    }

    public void setNombreRol(String nombreRol) {
        this.nombreRol = nombreRol;
    }
    

}
