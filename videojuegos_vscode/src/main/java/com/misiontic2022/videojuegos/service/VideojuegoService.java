package com.misiontic2022.videojuegos.service;

import com.misiontic2022.videojuegos.domain.Videojuego;
import com.misiontic2022.videojuegos.repository.VideojuegoRepository;
import java.util.List;
import org.springframework.stereotype.Service;

@Service
public class VideojuegoService {

    private final VideojuegoRepository videojuegoRepository;

    public VideojuegoService(VideojuegoRepository videojuegoRepository) {
        this.videojuegoRepository = videojuegoRepository;
    }

    public List<Videojuego> buscarDestacados() {
        return videojuegoRepository.buscarTodos();
    }

    public List<Videojuego> buscarPorDistribuidor(int distribuidorId) {
        return videojuegoRepository.buscarPorDistribuidor(distribuidorId);
    }

    public List<Videojuego> buscarPorNombre(String consulta) {
        return videojuegoRepository.buscarPorNombre(consulta);
    }

    public Videojuego guardar(Videojuego videojuego) {
        return videojuegoRepository.save(videojuego);
    }
}
