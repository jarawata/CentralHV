/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Soluciones MMedia
 */
@Entity
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "UsuariosHV.findAll", query = "SELECT u FROM UsuariosHV u")
    , @NamedQuery(name = "UsuariosHV.findById", query = "SELECT u FROM UsuariosHV u WHERE u.id = :id")
    , @NamedQuery(name = "UsuariosHV.findByNombres", query = "SELECT u FROM UsuariosHV u WHERE u.nombres = :nombres")
    , @NamedQuery(name = "UsuariosHV.findByApellidos", query = "SELECT u FROM UsuariosHV u WHERE u.apellidos = :apellidos")
    , @NamedQuery(name = "UsuariosHV.findByTelefono", query = "SELECT u FROM UsuariosHV u WHERE u.telefono = :telefono")
    , @NamedQuery(name = "UsuariosHV.findByDireccion", query = "SELECT u FROM UsuariosHV u WHERE u.direccion = :direccion")
    , @NamedQuery(name = "UsuariosHV.findByFecha", query = "SELECT u FROM UsuariosHV u WHERE u.fecha = :fecha")
    , @NamedQuery(name = "UsuariosHV.findByEmail", query = "SELECT u FROM UsuariosHV u WHERE u.email = :email")
    , @NamedQuery(name = "UsuariosHV.findByPassword", query = "SELECT u FROM UsuariosHV u WHERE u.password = :password")})
public class UsuariosHV implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    private Integer id;
    private String nombres;
    private String apellidos;
    private String telefono;
    private String direccion;
    @Temporal(TemporalType.DATE)
    private Date fecha;
    private String email;
    private String password;

    public UsuariosHV() {
    }

    public UsuariosHV(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof UsuariosHV)) {
            return false;
        }
        UsuariosHV other = (UsuariosHV) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Controller.UsuariosHV[ id=" + id + " ]";
    }
    
}
