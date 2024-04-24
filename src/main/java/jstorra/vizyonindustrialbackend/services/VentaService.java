package jstorra.vizyonindustrialbackend.services;

import jstorra.vizyonindustrialbackend.TransformResultList;
import jstorra.vizyonindustrialbackend.models.Venta;
import jstorra.vizyonindustrialbackend.repositories.VentaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

@Service
public class VentaService {
    @Autowired
    VentaRepository ventaRepository;

    public List<Venta> obtenerventasxmesyaño(int numeroMes, int año) {
        return ventaRepository.obtenerventasxmesyaño(numeroMes, año);
    }

    public List<Venta> ventasInfoClientesYFormaPago() {
        return ventaRepository.ventasInfoClientesYFormaPago();
    }

    public List<Map<Object, Object>> ventasRangoFechas(String fecha1yfecha2) {
        LocalDate fecha1 = LocalDate.parse(fecha1yfecha2.split("y")[0]);
        LocalDate fecha2 = LocalDate.parse(fecha1yfecha2.split("y")[1]);
        List<Object[]> results = ventaRepository.ventasRangoFechas(fecha1, fecha2);
        return TransformResultList.transformResultList(results, "id", "fecha", "idEmpleado", "nombreCliente", "formaPago");
    }
}
