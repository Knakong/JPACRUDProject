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
		assertEquals("Sea Sparkle", organism.getName());
		assertEquals("https://news.agu.org/files/2019/06/Blue-tears-Yu-Xian-Yang-small.jpg", organism.getImgUrl());
		assertEquals("Noctiluca scintillans is a marine species of dinoflagellate that can exist in a green or red form, depending on the pigmentation in its vacuoles. It can be found worldwide, but its geographical distribution varies depending on whether it is green or red. This unicellular microorganism is known for its ability to bioluminesce, giving the water a bright blue glow seen at night. However, blooms of this species can be responsible for environmental hazards, such as toxic red tides. They may also be an indicator of anthropogenic eutrophication.", organism.getDescription());
	}
	
}
