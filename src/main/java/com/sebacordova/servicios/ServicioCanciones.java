package com.sebacordova.servicios;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sebacordova.repositorios.RepositorioCanciones;

import com.sebacordova.modelos.Cancion;

@Service
public class ServicioCanciones {
	@Autowired
	RepositorioCanciones repositorio;
	
	public List<Cancion> obtenerTodasLasCanciones(){
		return repositorio.findAll();
	}
	
	public Cancion obtenerCancionPorId(Long id) {
		Optional<Cancion> cancion = repositorio.findById(id);
		return cancion.orElse(null);
	}
}
