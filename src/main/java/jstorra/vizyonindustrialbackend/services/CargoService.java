package jstorra.vizyonindustrialbackend.services;

import jstorra.vizyonindustrialbackend.repositories.CargoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CargoService {
    @Autowired
    CargoRepository cargoRepository;
}
