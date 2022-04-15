package com.jamesbonura.dojosninjas.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jamesbonura.dojosninjas.models.Dojo;
import com.jamesbonura.dojosninjas.models.Ninja;
import com.jamesbonura.dojosninjas.repositories.DojoRepository;
import com.jamesbonura.dojosninjas.repositories.NinjaRepository;

@Service
public class MainService {
	@Autowired
	private DojoRepository dojoRepo;
	
	@Autowired
	private NinjaRepository ninjaRepo;
	
	//CREATE
	public Dojo createDojo(Dojo newDojo) {
		return dojoRepo.save(newDojo);
	}
	
	public Ninja createNinja(Ninja newNinja) {
		return ninjaRepo.save(newNinja);
	}
	
	//READ ONE DOJO
	public Dojo getOneDojo(Long id) {
		return dojoRepo.findById(id).orElse(null);
	}
	
	//READ ALL NINJAS
	public List<Ninja> getAllNinjas(){
		return ninjaRepo.findAll();
	}
	
	//READ ALL DOJOS
	public List<Dojo> getAllDojos(){
		return dojoRepo.findAll();
	}
	
}	
