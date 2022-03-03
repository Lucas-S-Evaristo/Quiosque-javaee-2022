package br.projeto.sp.cotia.hellospring.controller;

import org.springframework.web.bind.annotation.RequestMapping;

import br.projeto.sp.cotia.hellospring.dao.ConnectionFactory;

public class IndexController {
	@RequestMapping("index")
	public String index() {
		System.out.println("Passou aqui" + ConnectionFactory.conectar());
		return "index";
	}
}
