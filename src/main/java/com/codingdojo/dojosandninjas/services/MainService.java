package com.codingdojo.dojosandninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.dojosandninjas.models.Dojo;
import com.codingdojo.dojosandninjas.models.Ninja;
import com.codingdojo.dojosandninjas.repositories.DojoRepository;
import com.codingdojo.dojosandninjas.repositories.NinjaRepository;


@Service
public class MainService {
	private final DojoRepository dojoRepository;
	private final NinjaRepository ninjaRepository;
	
	public MainService(DojoRepository dojoRepository, NinjaRepository ninjaRepository) {
		this.dojoRepository = dojoRepository;
		this.ninjaRepository = ninjaRepository;
	}
	
	// Create dojo
	public Dojo createDojo(Dojo dojo) {
		return dojoRepository.save(dojo);
	}
	
	// Retrieve all dojos
	public List<Dojo> allDojos() {
		return dojoRepository.findAll();
	}
	
	// Retrieve one dojo
	public Dojo findDojo(Long id) {
		Optional<Dojo> optionalDojo = dojoRepository.findById(id);
		if(optionalDojo.isPresent()) {
			return optionalDojo.get();
		}
		return null;
	}
	
	// Add ninjas to dojo
	public Ninja createNinja(Ninja ninja) {
		return ninjaRepository.save(ninja);
	}
}
