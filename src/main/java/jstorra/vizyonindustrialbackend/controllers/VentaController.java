package jstorra.vizyonindustrialbackend.controllers;

import jstorra.vizyonindustrialbackend.models.Venta;
import jstorra.vizyonindustrialbackend.services.VentaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/ventas")
@CrossOrigin("*")
public class VentaController {
    @Autowired
    VentaService ventaService;

    @GetMapping
    public List<Venta> getAll() {
        return ventaService.getAll();
    }
}
