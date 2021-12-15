package com.codingdojo.dojosandninjas.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.dojosandninjas.models.Dojo;
import com.codingdojo.dojosandninjas.services.MainService;

@Controller
public class DojoController {
//	private final MainService mainService;
	
	public DojoController(MainService mainService) {
		this.mainService = mainService;
	}
	
	@Autowired
	MainService mainService;
	
	// Create - display
	@GetMapping("/dojos/new")
	public String newDojo(@ModelAttribute("dojo") Dojo dojo) {
		return "newDojo.jsp";
	}
	
	// Create - action
	@PostMapping(value="/dojos/new")
	public String createDojo(@Valid @ModelAttribute("dojo") Dojo dojo, BindingResult result, Model model) {
		if (result.hasErrors()) {
			model.addAttribute("dojos", mainService.allDojos());
			return "newDojo.jsp";
		} else {
			mainService.createDojo(dojo);
			return "redirect:/dojos";
		}
	}
	
	// Retrieve all 
	@GetMapping("/dojos")
	public String displayDojos(@ModelAttribute("dojo") Dojo dojo, Model model) {
		List<Dojo> dojos = mainService.allDojos();
		model.addAttribute("dojos", dojos);
		return "dojos.jsp";
	}
	
	// Retrieve one 
	@GetMapping("/dojos/{id}")
	public String show(Model model, @PathVariable("id") Long id) {
		Dojo dojo = mainService.findDojo(id);
		model.addAttribute("dojo", dojo);
		
		return "show.jsp";
	}
}
