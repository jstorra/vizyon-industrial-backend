package jstorra.vizyonindustrialbackend.repositories;

import jstorra.vizyonindustrialbackend.models.Venta;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface VentaRepository extends JpaRepository<Venta, Integer> {
}
