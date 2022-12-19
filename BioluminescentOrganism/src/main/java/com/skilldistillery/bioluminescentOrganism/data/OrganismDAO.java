package com.skilldistillery.bioluminescentOrganism.data;

import java.util.List;

import com.skilldistillery.bioluminescentOrganism.entities.Organism;

public interface OrganismDAO {

	Organism findById(int id);
	
	List<Organism> findAll();
	
	Organism create(Organism organism);
	
	Organism update(int id, Organism organism);
	
	List<Organism> findByKeyword(String keyword);
	
	boolean delete (int id);
	
	
	
}
