package com.constanza.controladores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.constanza.modelos.Cancion;
import com.constanza.servicios.ServicioCanciones;

import jakarta.validation.Valid;

@Controller
public class ControladorCanciones {
    
    @Autowired //Conecta con el servicio
    private ServicioCanciones servicio;

    //Método para mostrar las lista de canciones
    @GetMapping("/canciones")
    public String desplegarCanciones(Model model) {
        model.addAttribute("listaCanciones", servicio.obtenerTodasLasCanciones());
        return "canciones";
    }

    //Método para mostrar el detalle dependiendo del id de la canción
    @GetMapping("/canciones/detalle/{id}")
	public String desplegarDetalleCancion(@PathVariable ("id") Long id, Model model) {
		model.addAttribute("cancion", servicio.obtenerCancionPorId(id));
		return "detalleCancion";
	}

    //Método para mostar el formulario de agregar cancion
    @GetMapping("/canciones/formulario/agregar")
    public String formularioAgregarCancion(Model model) {
        Cancion cancion = new Cancion();
        model.addAttribute("cancion", cancion);
        return "agregarCancion";
    }

    //Método que grega la canción a la base de datos y redirige a la ruta de “/canciones”
    @PostMapping("/canciones/procesa/agregar")
    public String procesarAgregarCancion(
        @Valid @ModelAttribute("cancion") Cancion cancion,
        BindingResult resultado) {

    // Si hay errores en la validación, vuelve al formulario
    if (resultado.hasErrors()) {
        return "agregarCancion";
    }
    // Si no hay errores, guardar la canción
    servicio.agregarCancion(cancion);

    // Redirige al listado de canciones
    return "redirect:/canciones";
    }
    
}
