package es.tienda.repositorios;

import es.tienda.jpa.Shirt;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ShirtsRepository extends JpaRepository<Shirt, String> {
    @Query("SELECT s FROM Shirt s")
    List<Shirt> findAllShirts();
}
