package com.helloworld.hello.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;

@RestController
@RequestMapping("/mentalidade")

public class MentalidadeController {

	@GetMapping
	public String mentalidade() {

		return "mentalidade\n"
				+"Atenção aos detalhes!\n"
				+"persistencia!";
	}
}
