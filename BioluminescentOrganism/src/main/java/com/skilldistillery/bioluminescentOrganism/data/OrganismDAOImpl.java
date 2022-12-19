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
	public Organism findById(int id) {

		return em.find(Organism.class, id);
		
		
	}

	@Override
	public List<Organism> findAll() {

		List<Organism> organisms;
		
		String query = "SELECT o FROM Organism o";
		
		organisms = em.createQuery(query, Organism.class).getResultList();
		
		return organisms;
	}

	@Override
	public Organism create(Organism organism) {
		
		em.persist(organism);
		em.flush();
		
		return organism;
		
		
	}

	@Override
	public Organism update(int id, Organism organism) {
		// TODO Auto-generated method stub
		
		Organism dbOrganism = em.find(Organism.class, id);
		
		dbOrganism.setDescription(organism.getDescription());
		dbOrganism.setImgUrl(organism.getImgUrl());
		dbOrganism.setLocation(organism.getLocation());
		dbOrganism.setName(organism.getName());
		dbOrganism.setScientificName(organism.getScientificName());
		
		return dbOrganism;
		
	}

	@Override
	public boolean delete(int id) {

		boolean deleted = false;
		
		Organism organism = em.find(Organism.class, id);
		
		if (organism !=null) {
			
			em.remove(organism);
			deleted = !em.contains(organism);
		}
		
		return deleted;
	}

	@Override
	public List<Organism> findByKeyword(String keyword) {
		List<Organism> organisms = null;
		
		String query = "Select o FROM Organism o WHERE o.name LIKE :keyword OR o.description LIKE :keyword OR o.scientificName LIKE :keyword OR o.location LIKE :keyword";
		
		organisms = em.createQuery(query, Organism.class).setParameter("keyword", "%" + keyword + "%").getResultList();
		
		return organisms;
	}

}
