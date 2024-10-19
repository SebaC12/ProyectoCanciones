package com.sebacordova.controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.sebacordova.modelos.Cancion;
import com.sebacordova.servicios.ServicioCanciones;

import jakarta.validation.Valid;



@Controller
public class ControladorCanciones {
	@Autowired
	ServicioCanciones servicio;
	
	
	@GetMapping("/canciones")
	public String desplegarCanciones(Model modelo) {
		List<Cancion> canciones = this.servicio.obtenerTodasLasCanciones();
		modelo.addAttribute("canciones", canciones);
		return "canciones.jsp";
	}
	
	@GetMapping("/canciones/detalle/{id}")
	public String desplegarDetalleCancion(Model modelo, @PathVariable Long id) {
		Cancion cancion = this.servicio.obtenerCancionPorId(id);
		modelo.addAttribute("cancion", cancion);
		return "detalleCancion.jsp";
	}
	
	@GetMapping("/formulario/agregar")
	public String formularioAgregarCancion(@ModelAttribute Cancion cancion) {
		return "agregarCancion.jsp";
	}
	
	@PostMapping("/procesa/agregar")
	public String procesarAgregarCancion(@Valid @ModelAttribute Cancion cancion, BindingResult validaciones) {
		if(validaciones.hasErrors()) {
			return "agregarCancion.jsp";
		}
		this.servicio.agregarCancion(cancion);
		return "redirect:/canciones";
	}
	
	@GetMapping("/canciones/editar/{id}")
	public String desplegarFormularioEditarCancion(@PathVariable Long id, 
	@ModelAttribute Cancion cancion, Model modelo) {
		cancion = this.servicio.obtenerCancionPorId(id);
		modelo.addAttribute("cancion", cancion);
		return "formularioEditarCancion.jsp";
	}
	
	
	@PutMapping("/canciones/actualizar/{id}")
	public String actualizarPelicula(@Valid @ModelAttribute Cancion cancion, 
			BindingResult validaciones, @PathVariable Long id) {
		if(validaciones.hasErrors()) {
			return "formularioEditarCancion.jsp";
		}
		this.servicio.actualizarCancion(cancion);
		return "redirect:/canciones";
	}
}
