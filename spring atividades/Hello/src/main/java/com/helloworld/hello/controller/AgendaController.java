package com.helloworld.hello.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;

@RestController
@RequestMapping("/agenda")

public class AgendaController {
	
	@GetMapping
	public String agenda() {

		return "Pretendo:\n"
				+ "Estudar mais!\n"
				+ "Focar mais!\n"
				+ "Fazer exercicios que deixei para trás!\n"
				+ "Não chora mais!";
	

   }
}