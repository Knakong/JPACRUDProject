package com.skilldistillery.bioluminescentOrganism.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.bioluminescentOrganism.entities.Organism;

@Service
@Transactional
public class OrganismDAOImpl implements OrganismDAO {

	@PersistenceContext
	private EntityManager em;
	
	
	@Override
	public Organism findbyId(int id) {

		return em.find(Organism.class, id);
		
		
	}

	@Override
	public List<Organism> findAll() {

		List<Organism> organisms;
		
		String query = "SELECT c from Organism c";
		
		organisms = em.createQuery(query, Organism.class).getResultList();
		
		return organisms;
	}

	@Override
	public Organism create(Organism organism) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Organism update(int id, Organism organism) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return false;
	}

}
