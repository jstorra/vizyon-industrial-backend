package jstorra.vizyonindustrialbackend.controllers;

import jstorra.vizyonindustrialbackend.models.Cliente;
import jstorra.vizyonindustrialbackend.services.ClienteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/clientes")
@CrossOrigin("*")
public class ClienteController {
    @Autowired
    ClienteService clienteService;

    @GetMapping
    public List<Cliente> getAll() {
        return clienteService.getAll();
    }
}
