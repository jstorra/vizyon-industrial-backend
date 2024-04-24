package jstorra.vizyonindustrialbackend.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DetalleOrdenRepository extends JpaRepository<DetalleOrdenRepository, Integer> {
    //4. Mostrar los detalles de todas las órdenes junto con los nombres de los empleados y clientes asociados
//    @Query("SELECT do, e.nombre, c.nombre FROM DetalleOrden do " +
//            "JOIN Orden o ON do.orden.id = o.id "
//            "JOIN Cliente c ON o.cliente.id = c.id " +
//            "JOIN Empleado e ON o.empleado.id = e.id")
//    List<Object[]>
}
