package com.constanza.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.constanza.modelos.Cancion;
import com.constanza.repositorios.RepositorioCanciones;

@Service
public class ServicioCanciones {
    
    @Autowired
    private RepositorioCanciones repoCanciones;

    public List<Cancion> obtenerTodasLasCanciones(){
        return this.repoCanciones.findAll();
    }

    public Cancion obtenerCancionPorId(Long id){
        return repoCanciones.findById(id).orElse(null);
    }

    //Método que agrega la canción a la base de datos
    public Cancion agregarCancion(Cancion cancion) {
        return repoCanciones.save(cancion);
    }

}
