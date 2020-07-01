/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package access.model;

/**
 *
 * @author mili
 */
public class EmpleadoListModel {
    private String  documento,
                    nombreCompleto,
                    cargo,
                    numeroTelf,
                    correo;
  
    public EmpleadoListModel(){
        
    }

    public String getDocumento() {
        return documento;
    }

    public void setDocumento(String documento) {
        this.documento = documento;
    }

    public String getNombreCompleto() {
        return nombreCompleto;
    }

    public void setNombreCompleto(String nombreCompleto) {
        this.nombreCompleto = nombreCompleto;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public String getNumeroTelf() {
        return numeroTelf;
    }

    public void setNumeroTelf(String numeroTelf) {
        this.numeroTelf = numeroTelf;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    @Override
    public String toString() {
        return "EmpleadoListModel{" + "documento=" + documento + ", nombreCompleto=" + nombreCompleto + ", cargo=" + cargo + ", numeroTelf=" + numeroTelf + ", correo=" + correo + '}';
    }
    
}
