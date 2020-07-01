
package access.model;

import java.util.Date;

public class EmpleadoPerfilModel {
    private String  nombreCompleto,
                    documento,
                    cargo,
                    telefono,
                    correo,
                    municipio,
                    direccion,
                    rh,
                    foto,
                    fechNaci;
    public EmpleadoPerfilModel(){
    }      

    public String getNombreCompleto() {
        return nombreCompleto;
    }

    public void setNombreCompleto(String nombreCompleto) {
        this.nombreCompleto = nombreCompleto;
    }

    public String getDocumento() {
        return documento;
    }

    public void setDocumento(String documento) {
        this.documento = documento;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getMunicipio() {
        return municipio;
    }

    public void setMunicipio(String municipio) {
        this.municipio = municipio;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getRh() {
        return rh;
    }

    public void setRh(String rh) {
        this.rh = rh;
    }

    public String getFechNaci() {
        return fechNaci;
    }

    public void setFechNaci(String fechNaci) {
        this.fechNaci = fechNaci;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    @Override
    public String toString() {
        return "EmpleadoPerfilModel{" + "nombreCompleto=" + nombreCompleto + ", documento=" + documento + ", cargo=" + cargo + ", telefono=" + telefono + ", correo=" + correo + ", municipio=" + municipio + ", direccion=" + direccion + ", rh=" + rh + ", foto=" + foto + ", fechNaci=" + fechNaci + '}';
    }

   
   
                    
}
