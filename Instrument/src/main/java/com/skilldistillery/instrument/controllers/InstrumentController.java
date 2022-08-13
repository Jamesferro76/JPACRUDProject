package com.skilldistillery.instrument.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.instrument.data.InstrumentDao;

@Controller
public class InstrumentController {
	
	@Autowired
	private InstrumentDao dao;
	
	@RequestMapping(path= {"/", "index.do", "home.do"})
	public String home(Model model) {
		model.addAttribute("DELETEME", dao.findById(1)); //DEBUG, DELETE LATER
		return "index";
	}
	
	@RequestMapping(path= "findById.do")
	public String findById(int instId, Model model) {
		model.addAttribute("inst", dao.findById(instId)); //DEBUG, DELETE LATER
		return "findById";
	}
	
	@RequestMapping(path= "findAll.do")
	public String findAll(Model model) {
		model.addAttribute("allInstruments", dao.findAll()); //DEBUG, DELETE LATER
		return "findAll";
	}
	

}
