package com.misiontic2022.videojuegos.controller;

import com.misiontic2022.videojuegos.domain.Videojuego;
import com.misiontic2022.videojuegos.service.VideojuegoService;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ListadoController {

    private final VideojuegoService videojuegoService;

    public ListadoController(VideojuegoService videojuegoService) {
        this.videojuegoService = videojuegoService;
    }

    @RequestMapping("/")
    public String listarVideoJuegos(Model model) {
        List<Videojuego> destacados = videojuegoService.buscarDestacados();
        model.addAttribute("videojuegos", destacados);
        return "listado";
    }

    @RequestMapping("/videojuegosPorDistribuidor")
    public String listaVideojuegosPorDistribuidor(int distribuidorId, Model model) {
        List<Videojuego> juegos = videojuegoService.buscarPorDistribuidor(distribuidorId);
        model.addAttribute("videojuegos", juegos);
        return "listado";
    }

    @RequestMapping("/buscar")
    public String listaVideojuegosPorNombre(String consulta, Model model) {
        List<Videojuego> juegos = videojuegoService.buscarPorNombre(consulta);
        model.addAttribute("videojuegos", juegos);
        return "listado";
    }
}
