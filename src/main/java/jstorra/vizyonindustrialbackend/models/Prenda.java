package jstorra.vizyonindustrialbackend.models;

import jakarta.persistence.*;

@Entity
@Table(name = "prenda")
public class Prenda {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String nombre;
    private double valorUnitCop;
    private double valorUnitUsd;
    private String codigo;

    @ManyToOne
    @JoinColumn(name = "id_estado_fk")
    private Estado estado;

    @ManyToOne
    @JoinColumn(name = "id_tipo_proteccion")
    private TipoProteccion tipoProteccion;

    @ManyToOne
    @JoinColumn(name = "id_genero_fk")
    private Genero genero;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public double getValorUnitCop() {
        return valorUnitCop;
    }

    public void setValorUnitCop(double valorUnitCop) {
        this.valorUnitCop = valorUnitCop;
    }

    public double getValorUnitUsd() {
        return valorUnitUsd;
    }

    public void setValorUnitUsd(double valorUnitUsd) {
        this.valorUnitUsd = valorUnitUsd;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public Estado getEstado() {
        return estado;
    }

    public void setEstado(Estado estado) {
        this.estado = estado;
    }

    public TipoProteccion getTipoProteccion() {
        return tipoProteccion;
    }

    public void setTipoProteccion(TipoProteccion tipoProteccion) {
        this.tipoProteccion = tipoProteccion;
    }

    public Genero getGenero() {
        return genero;
    }

    public void setGenero(Genero genero) {
        this.genero = genero;
    }
}
