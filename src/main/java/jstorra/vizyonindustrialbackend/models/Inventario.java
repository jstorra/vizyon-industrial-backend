package jstorra.vizyonindustrialbackend.models;

import jakarta.persistence.*;

@Entity
@Table(name = "inventario")
public class Inventario {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String codInv;
    private double valorVtaCop;
    private double valorVtaUsd;

    @ManyToOne
    @JoinColumn(name = "id_prenda_fk")
    private Prenda prenda;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCodInv() {
        return codInv;
    }

    public void setCodInv(String codInv) {
        this.codInv = codInv;
    }

    public double getValorVtaCop() {
        return valorVtaCop;
    }

    public void setValorVtaCop(double valorVtaCop) {
        this.valorVtaCop = valorVtaCop;
    }

    public double getValorVtaUsd() {
        return valorVtaUsd;
    }

    public void setValorVtaUsd(double valorVtaUsd) {
        this.valorVtaUsd = valorVtaUsd;
    }

    public Prenda getPrenda() {
        return prenda;
    }

    public void setPrenda(Prenda prenda) {
        this.prenda = prenda;
    }
}
