package com.skilldistillery.instrument.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.instrument.data.InstrumentDao;

@Controller
public class InstrumentController {
	
	@Autowired
	private InstrumentDao dao;
	
	@RequestMapping(path= {"/", "index.do", "home.do"})
	public String home() {
		return "index";
	}
	
	@RequestMapping(path= "findById.do")
	public String findById(int instId, Model model) {
		model.addAttribute("inst", dao.findById(instId));
		return "findById";
	}
	
	@RequestMapping(path= "findAll.do")
	public String findAll(Model model) {
		model.addAttribute("allInstruments", dao.findAll());
		return "findAll";
	}
	
	
	@RequestMapping(path= "createNewPage.do")
	public String createNewInstrument() {
		return "createNewPage";
	}
	
	@RequestMapping(path= "createNewAction.do", method=RequestMethod.POST)
	public String createNewInstrument(String instrument, String brand, String modelOfInstrument, String instrumentFamily, String condition, Model model) {
//		InstrumentLog inst= new InstrumentLog(instrument, brand, modelOfInstrument, family, condition);

		model.addAttribute("inst", dao.createNewInstrument(instrument, brand, modelOfInstrument, instrumentFamily, condition)); 
		return "createNewAction";
	}
	
	@RequestMapping(path= "delete.do")
	public String deleteInstrument(int instId, Model model) {
		model.addAttribute("inst", dao.deleteInstrument(instId));
		return "delete";
	}
	
	@RequestMapping(path= "updatePage.do")
	public String updatePage(int instId, Model model) {
		model.addAttribute("inst", dao.findById(instId));
		return "updatePage";
	}
	
	
	@RequestMapping(path= "updateAction.do")
	public String updateInstrument(int instId, String instrument, String brand, String modelOfInstrument, String instrumentFamily, String condition, Model model) {
		model.addAttribute("inst", dao.updateInstrument(instId, instrument, brand, modelOfInstrument, instrumentFamily, condition));
		return "updateAction";
	}
	

}
