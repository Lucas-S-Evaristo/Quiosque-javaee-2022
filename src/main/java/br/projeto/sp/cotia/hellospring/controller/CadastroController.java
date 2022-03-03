package br.projeto.sp.cotia.hellospring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.projeto.sp.cotia.hellospring.dao.DaoCadastro;
import br.projeto.sp.cotia.hellospring.model.Cadastro;
import br.projeto.sp.cotia.hellospring.model.TipoGenero;

@Controller
public class CadastroController {

	@RequestMapping("formCadastro") // url
	public String form(Model model) {
		model.addAttribute("tipos", TipoGenero.values());
		return "formcadastro"; // pasta view
	}

	@RequestMapping("salvarCadastro")
	public String salvarCadastro(Cadastro cadastro) {
		System.out.println(cadastro.getNome());
		System.out.println(cadastro.getEndereco());
		System.out.println(cadastro.getTelefone());
		System.out.println(cadastro.getEmail());
		System.out.println(cadastro.getProdInteresse());
		System.out.println(cadastro.getDataNascimento());
		System.out.println(cadastro.getGenero());

		DaoCadastro dao = new DaoCadastro();
		if (cadastro.getId() == null) {
			dao.inserir(cadastro);
		} else {
			dao.atualizar(cadastro);
		}
		return "redirect:listarCadastro";
	}

	@RequestMapping("listarCadastro")
	public String listarCadastro(Model model) {
		DaoCadastro dao = new DaoCadastro();
		model.addAttribute("cadastros", dao.listar());
		return "listacadastro";
	}

	@RequestMapping("excluirCadastro")
	public String excluir(long idCadastro) {
		DaoCadastro dao = new DaoCadastro();
		dao.excluir(idCadastro);
		return "redirect:listarCadastro";
	}

	@RequestMapping("alterarCadastro")
	public String alterar(Long idCadastro, Model model) {
		DaoCadastro dao = new DaoCadastro();
		model.addAttribute("cadastro", dao.buscar(idCadastro));
		return "forward:formCadastro";
	}

	/* METODO MOSTRAR GENÊRO */
	/* 
	@RequestMapping("mostrarMasculino")
	public String mostrarMasculino(long numGen, Model model) {
		DaoCadastro dao = new DaoCadastro();
		model.addAttribute(dao.mostrarMasculino(numGen));
		return "listacadastro";
	}

	@RequestMapping("mostrarFeminino")
	public String mostrarFeminino(long numMasc, Model model) {
		DaoCadastro dao = new DaoCadastro();
		model.addAttribute(dao.mostrarFeminino(numMasc));
		return "listacadastro";
	}*/
	
	
}
