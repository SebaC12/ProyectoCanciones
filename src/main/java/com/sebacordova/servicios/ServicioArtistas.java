package com.sebacordova.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sebacordova.modelos.Artista;
import com.sebacordova.repositorios.RepositorioArtistas;

@Service
public class ServicioArtistas {
	@Autowired
	private final RepositorioArtistas repositorioArtistas;
	
	public Artista agregarArtista(Artista artista) {
		return repositorioArtistas.save(artista);
	}
	
	public List<Artista> obtenerTodosLosArtistas(){
		return repositorioArtistas.findAll();
	}
	
	public ServicioArtistas(RepositorioArtistas repositorioArtistas) {
		this.repositorioArtistas = repositorioArtistas;
	}
	
	public Artista obtenerUno(Long id_artista) {
		return this.repositorioArtistas.findById(id_artista).orElse(null);
	}
}