package jstorra.vizyonindustrialbackend.services;

import jstorra.vizyonindustrialbackend.models.Venta;
import jstorra.vizyonindustrialbackend.repositories.VentaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class VentaService {
    @Autowired
    VentaRepository ventaRepository;

    public List<Venta> getAll() {
        return ventaRepository.findAll();
    }
}
