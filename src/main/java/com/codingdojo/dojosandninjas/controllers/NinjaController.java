package com.codingdojo.dojosandninjas.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.dojosandninjas.models.Ninja;
import com.codingdojo.dojosandninjas.services.MainService;

@Controller
public class NinjaController {
	public NinjaController(MainService mainService) {
		this.mainService = mainService;
	}
	
	@Autowired
	MainService mainService;
	
	// Create - display
	@GetMapping("/ninjas/new")
	public String newNinja(@ModelAttribute("ninja") Ninja ninja, Model model) {
		model.addAttribute("dojos", mainService.allDojos());
		return "newNinja.jsp";
	}
	
	// Create - action
	@PostMapping("/ninjas/new")
	public String createNinja(@Valid @ModelAttribute("ninja") Ninja ninja, BindingResult result, Model model) {
		if (result.hasErrors()) {
			return "newNinja.jsp";
		} else {
			mainService.createNinja(ninja);
			return "redirect:/dojos";
		}
	}
}
