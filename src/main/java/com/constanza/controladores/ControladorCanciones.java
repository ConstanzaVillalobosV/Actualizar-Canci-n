package com.constanza.controladores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.constanza.servicios.ServicioCanciones;

@Controller
public class ControladorCanciones {
    
    @Autowired //Coecta con el servicio
    private ServicioCanciones servicio;

    @GetMapping("/canciones")
    public String desplegarCanciones(Model model) {
        model.addAttribute("listaCanciones", servicio.obtenerTodasLasCanciones());
        return "canciones";
    }

    @GetMapping("/canciones/detalle/{id}")
	public String desplegarDetalleCancion(@PathVariable ("id") Long id, Model model) {
		model.addAttribute("cancion", servicio.obtenerCancionPorId(id));
		return "detalleCancion";
	}
    
}
