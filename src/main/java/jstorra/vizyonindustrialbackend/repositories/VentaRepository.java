package jstorra.vizyonindustrialbackend.repositories;

import jstorra.vizyonindustrialbackend.models.Venta;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.List;

@Repository
public interface VentaRepository extends JpaRepository<Venta, Integer> {
    //    1. Listar todas las ventas que se realizaron en el mes de julio de 2023
    @Query("SELECT v FROM Venta v WHERE MONTH(v.fecha) = ?1 AND YEAR(v.fecha) = ?2")
    List<Venta> obtenerventasxmesyaño(int numeroMes, int año);

    //    3. Obtener la lista de todas las ventas con la información de los clientes y la forma de pago
    @Query("SELECT v FROM Venta v")
    List<Venta> ventasInfoClientesYFormaPago();

    //    15. Mostrar la lista de ventas realizadas en un rango de fechas específico junto con el nombre del cliente y la forma de pago
    @Query("SELECT v.id, v.fecha, v.empleado.id, v.cliente.nombre, v.formaPago.descripcion " +
            "FROM Venta v WHERE v.fecha BETWEEN ?1 AND ?2 ORDER BY v.fecha ASC")
    List<Object[]> ventasRangoFechas(LocalDate fecha1, LocalDate fecha2);
}
