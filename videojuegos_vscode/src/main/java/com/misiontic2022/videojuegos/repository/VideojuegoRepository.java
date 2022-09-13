package com.misiontic2022.videojuegos.repository;

import org.springframework.data.jpa.repository.Query;
import com.misiontic2022.videojuegos.domain.Videojuego;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface VideojuegoRepository extends JpaRepository<Videojuego, Integer> {

    // @Query("select v from Videojuego v order by v.nombre") // No es costumbre
    @Query("from Videojuego v order by v.nombre") // Por costumbre
    // @Query(value = "select * from videojuego order by nombre", nativeQuery =
    // true) // SQL nativo
    List<Videojuego> buscarTodos();

    @Query("from Videojuego v where v.distribuidor.id = ?1 order by v.nombre")
    List<Videojuego> buscarPorDistribuidor(int distribuidorId);

    @Query("from Videojuego v where v.nombre like %?1%")
    List<Videojuego> buscarPorNombre(String consulta);
}
