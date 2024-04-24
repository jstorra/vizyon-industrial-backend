package jstorra.vizyonindustrialbackend.services;

import jstorra.vizyonindustrialbackend.models.Cliente;
import jstorra.vizyonindustrialbackend.repositories.ClienteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ClienteService {
    @Autowired
    ClienteRepository clienteRepository;

    public List<Cliente> getAll() {
        return clienteRepository.findAll();
    }
}
