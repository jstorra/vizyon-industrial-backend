package jstorra.vizyonindustrialbackend.controllers;

import jstorra.vizyonindustrialbackend.models.Empleado;
import jstorra.vizyonindustrialbackend.services.EmpleadoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/empleados")
@CrossOrigin("*")
public class EmpleadoController {
    @Autowired
    EmpleadoService empleadoService;

    @GetMapping("info/cargos_municipios")
    public List<Empleado> obtenerEmpleados() {
        return empleadoService.obtenerEmpleados();
    }

    @GetMapping("info/cantidad_ventas")
    public List<Map<Object, Object>> cantidadVentasEmpleados() {
        return empleadoService.cantidadVentasEmpleados();
    }

    @GetMapping("info/duracion_empleo")
    public List<Map<Object, Object>> empleadosDuracionEmpleo() {
        return empleadoService.empleadosDuracionEmpleo();
    }

    @GetMapping("info/cargos_fecha_ingreso/orden/descendente")
    public List<Map<Object, Object>> empleadosCargosFechaIngreso() {
        return empleadoService.empleadosCargosFechaIngreso();
    }
}
