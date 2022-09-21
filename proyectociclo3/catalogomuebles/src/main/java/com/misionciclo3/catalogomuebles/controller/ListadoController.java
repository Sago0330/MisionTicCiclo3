package com.misionciclo3.catalogomuebles.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ListadoController {

    @RequestMapping("/")
    public String listarCatalogo() {
        return "listado";
    }
}
