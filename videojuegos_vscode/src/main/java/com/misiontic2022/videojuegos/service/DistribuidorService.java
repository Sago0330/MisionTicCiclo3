package com.misiontic2022.videojuegos.service;

import com.misiontic2022.videojuegos.domain.Distribuidor;
import com.misiontic2022.videojuegos.repository.DistribuidorRepository;
import java.util.List;
import org.springframework.stereotype.Service;

@Service
public class DistribuidorService {

    private final DistribuidorRepository distribuidorRepository;

    public DistribuidorService(DistribuidorRepository distribuidorRepository) {
        this.distribuidorRepository = distribuidorRepository;
    }

    public List<Distribuidor> buscarTodos() {
        return distribuidorRepository.findAll();
    }

}
