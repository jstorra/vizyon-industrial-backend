package jstorra.vizyonindustrialbackend.services;

import jstorra.vizyonindustrialbackend.TransformResultList;
import jstorra.vizyonindustrialbackend.models.Empleado;
import jstorra.vizyonindustrialbackend.repositories.EmpleadoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class EmpleadoService {
    @Autowired
    EmpleadoRepository empleadoRepository;

    public List<Empleado> obtenerEmpleados() {
        return empleadoRepository.obtenerEmpleados();
    }

    public List<Map<Object, Object>> cantidadVentasEmpleados() {
        List<Object[]> results = empleadoRepository.cantidadVentasEmpleados();
        return TransformResultList.transformResultList(results, "id", "nombre", "fechaIngreso", "idCargo", "idMunicipio", "cantidadVentas");
    }

    public List<Map<Object, Object>> empleadosDuracionEmpleo() {
        List<Object[]> results = empleadoRepository.empleadosDuracionEmpleo();
        return TransformResultList.transformResultList(results, "id", "nombre", "fechaIngreso", "idCargo", "idMunicipio", "duracionAños");
    }

    public List<Map<Object, Object>> empleadosCargosFechaIngreso() {
        List<Object[]> results = empleadoRepository.empleadosCargosFechaIngreso();
        return TransformResultList.transformResultList(results, "id", "nombre", "fechaIngreso", "nombreCargo");
    }
}
