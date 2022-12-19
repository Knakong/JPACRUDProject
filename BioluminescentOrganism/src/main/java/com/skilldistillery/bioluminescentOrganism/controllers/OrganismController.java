package com.skilldistillery.bioluminescentOrganism.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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

	@RequestMapping(path = "getOrganism.do")
	public String goTodetails(Model model, int id) {

		Organism organism = dao.findbyId(id);

		model.addAttribute("organism", organism);

		return "details";
	}

	@RequestMapping(path = "addOrganism.do")
public String addOrganism(Organism organism, Model model) {
	
	
	
	Organism dbOrganism = dao.create(organism);
	
	model.addAttribute("organism", dbOrganism);
	
	
	return "details";
}
	
	
	
@RequestMapping(path="goToForm.do")
public String goToform() {
	


return "newOrganismForm";




}
@RequestMapping(path="goToUpdateForm.do")
public String goToUpdateForm(@RequestParam int id, Model model) {

Organism organism = dao.findbyId(id);
	
model.addAttribute("organism", organism);

return "updateForm";
	
}

@RequestMapping(path ="updateOrganism.do")
public String updateOrganism (@RequestParam int id, Organism organism, Model model) {
	
Organism updatedOrganism = dao.update(id, organism);

model.addAttribute("organism", updatedOrganism);

return "details";
	
}

@RequestMapping(path = "delete.do") 
public String deleteOrganism(@RequestParam int id, Model model) {
	
	boolean deleted = dao.delete(id);
	
	model.addAttribute("deleted", deleted);
	
	return "deleted";
	
	
}
}

