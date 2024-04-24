package jstorra.vizyonindustrialbackend.controllers;

import jstorra.vizyonindustrialbackend.models.Venta;
import jstorra.vizyonindustrialbackend.services.VentaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/ventas")
@CrossOrigin("*")
public class VentaController {
    @Autowired
    VentaService ventaService;

    @GetMapping("numeroMes/{mes}/año/{año}")
    public List<Venta> obtenerventasxmesyaño(@PathVariable int mes, @PathVariable int año) {
        return ventaService.obtenerventasxmesyaño(mes, año);
    }

    @GetMapping("info/clientes_forma_pago")
    public List<Venta> ventasInfoClientesYFormaPago() {
        return ventaService.ventasInfoClientesYFormaPago();
    }

    @GetMapping("fecha/{fecha1yfecha2}/info/cliente_forma_pago")
    public List<Map<Object, Object>> ventasRangoFechas(@PathVariable String fecha1yfecha2) {
        return ventaService.ventasRangoFechas(fecha1yfecha2);
    }
}
