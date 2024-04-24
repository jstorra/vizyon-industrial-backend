package jstorra.vizyonindustrialbackend.repositories;

import jstorra.vizyonindustrialbackend.models.Empleado;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface EmpleadoRepository extends JpaRepository<Empleado, Integer> {
    //    2. Seleccionar todos los empleados con sus respectivos cargos y municipios
    @Query("SELECT e FROM Empleado e")
    List<Empleado> obtenerEmpleados();

    //    7. Encontrar la cantidad de ventas realizadas por cada empleado
    @Query("SELECT e.id, e.nombre, e.fechaIngreso, e.cargo.id, e.municipio.id, COUNT(*) cantidadVentas FROM Empleado e " +
            "JOIN Venta v ON e.id = v.empleado.id " +
            "GROUP BY e.id")
    List<Object[]> cantidadVentasEmpleados();

    //    12. Mostrar la lista de empleados y la duración de su empleo en años
    @Query(value = "SELECT e.id, e.nombre, e.fecha_ingreso, e.id_cargo_fk, e.id_municipio_fk, " +
            "TIMESTAMPDIFF(YEAR, e.fecha_ingreso, CURRENT_TIMESTAMP()) duracionAños " +
            "FROM empleado e", nativeQuery = true)
    List<Object[]> empleadosDuracionEmpleo();

    //    22. Mostrar la lista de empleados con sus cargos y fechas de ingreso ordenados por la fecha de ingreso de manera descendente
    @Query("SELECT e.id, e.nombre, e.fechaIngreso, e.cargo.descripcion " +
            "FROM Empleado e ORDER BY e.fechaIngreso DESC")
    List<Object[]> empleadosCargosFechaIngreso();
}
