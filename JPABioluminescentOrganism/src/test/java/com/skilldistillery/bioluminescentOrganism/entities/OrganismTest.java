package com.skilldistillery.bioluminescentOrganism.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class OrganismTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private Organism organism;
	
	



@BeforeAll
	static void setUpBeforeClass() throws Exception {
	emf = Persistence.createEntityManagerFactory("JPABioluminescentOrganism");
	
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
	}

	@BeforeEach
	void setUp() throws Exception {
	em = emf.createEntityManager();
		organism = em.find(Organism.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
	em.close();
	organism = null;
		
		
	}

	@Test
	void test_Organism_Entity() {
		assertNotNull(organism);
		assertEquals("Algae", organism.getName());
	
	}
	
}
