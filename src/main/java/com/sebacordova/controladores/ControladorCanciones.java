package com.sebacordova.controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import com.sebacordova.modelos.Cancion;
import com.sebacordova.servicios.ServicioCanciones;




@Controller
public class ControladorCanciones {
	@Autowired
	ServicioCanciones servicio;
	
	
	@GetMapping("/canciones")
	public String desplegarCanciones(Model modelo) {
		List<Cancion> canciones = servicio.obtenerTodasLasCanciones();
		modelo.addAttribute("canciones", canciones);
		return "canciones.jsp";
	}
	
	@GetMapping("/canciones/detalle/{id}")
	public String desplegarDetalleCancion(Model modelo, @PathVariable Long id) {
		Cancion cancion = servicio.obtenerCancionPorId(id);
		modelo.addAttribute("cancion", cancion);
		return "detalleCancion.jsp";
	}
	
	@GetMapping("/formulario/agregar")
	public String formularioAgregarCancion(@ModelAttribute Cancion cancion) {
		return "agregarcancion.jsp";
	}
}
