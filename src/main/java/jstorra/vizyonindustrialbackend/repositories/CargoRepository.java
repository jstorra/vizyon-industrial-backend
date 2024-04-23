package jstorra.vizyonindustrialbackend.repositories;

import jstorra.vizyonindustrialbackend.models.Cargo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CargoRepository extends JpaRepository<Cargo, Integer> {
}