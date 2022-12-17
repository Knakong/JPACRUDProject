package com.skilldistillery.bioluminescentOrganism.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.bioluminescentOrganism.data.OrganismDAO;
import com.skilldistillery.bioluminescentOrganism.entities.Organism;

@Controller
public class OrganismController {

	@Autowired
	private OrganismDAO dao;

	@RequestMapping(path = { "/", "home.do" })

	public String goToHome(Model model) {

		List<Organism> organisms = dao.findAll();

		model.addAttribute("organisms", organisms);

		return "home";
	}

	@RequestMapping(path = "getOrganism.do", params = "id")
	public String goTodetails(Model model, int id) {

		Organism organism = dao.findbyId(id);

		model.addAttribute("organism", organism);

		return "details";
	}
}