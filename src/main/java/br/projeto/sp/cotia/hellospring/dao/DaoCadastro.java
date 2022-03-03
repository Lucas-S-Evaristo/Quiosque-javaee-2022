package br.projeto.sp.cotia.hellospring.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import br.projeto.sp.cotia.hellospring.model.Cadastro;
import br.projeto.sp.cotia.hellospring.model.TipoGenero;

public class DaoCadastro {
	private Connection conexao;

	public DaoCadastro() {
		conexao = ConnectionFactory.conectar();
	}

	public void inserir(Cadastro cadastro) {
		String sql = "insert into tb_cadastro"
				+ "(nome, endereco, telefone, email, prodInteresse, dataNascimento, genero)" + "values (?,?,?,?,?,?,?)";
		PreparedStatement stmt;
		try {
			stmt = conexao.prepareStatement(sql);
			stmt.setString(1, cadastro.getNome());
			stmt.setString(2, cadastro.getEndereco());
			stmt.setString(3, cadastro.getTelefone());
			stmt.setString(4, cadastro.getEmail());
			stmt.setString(5, cadastro.getProdInteresse());
			stmt.setDate(6, new Date(cadastro.getDataNascimento().getTimeInMillis()));
			stmt.setInt(7, cadastro.getGenero().ordinal());
			stmt.execute();
			conexao.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void atualizar(Cadastro cadastro) {
		String sql = "update tb_cadastro set nome = ?, endereco = ?, telefone = ?, email = ?, prodInteresse = ?, dataNascimento = ?, genero = ? where id = ?";
		PreparedStatement stmt;
		try {
			stmt = conexao.prepareStatement(sql);
			stmt.setString(1, cadastro.getNome());
			stmt.setString(2, cadastro.getEndereco());
			stmt.setString(3, cadastro.getTelefone());
			stmt.setString(4, cadastro.getEmail());
			stmt.setString(5, cadastro.getProdInteresse());
			stmt.setDate(6, new Date(cadastro.getDataNascimento().getTimeInMillis()));
			stmt.setInt(7, cadastro.getGenero().ordinal());
			stmt.setLong(8, cadastro.getId());
			stmt.execute();
			conexao.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<Cadastro> listar() {
		String sql = "select * from tb_cadastro order by nome asc";
		List<Cadastro> lista = new ArrayList<Cadastro>();
		PreparedStatement stmt;
		try {
			stmt = conexao.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				Cadastro p = new Cadastro();
				p.setId(rs.getLong("id"));
				p.setNome(rs.getString("nome"));
				p.setEndereco(rs.getString("endereco"));
				p.setTelefone(rs.getString("telefone"));
				p.setEmail(rs.getString("email"));
				p.setProdInteresse(rs.getString("prodInteresse"));
				Calendar nascimento = Calendar.getInstance();
				Date dataBd = rs.getDate("dataNascimento");
				nascimento.setTimeInMillis(dataBd.getTime());
				p.setDataNascimento(nascimento);
				lista.add(p);
				int posEnum = rs.getInt("genero");
				TipoGenero tipo = TipoGenero.values()[posEnum];
				p.setGenero(tipo);

			}
			rs.close();
			stmt.close();
			conexao.close();
			return lista;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public Cadastro buscar(Long idCadastro) {
		String sql = "select * from tb_cadastro where id = ?";
		Cadastro p = null;
		PreparedStatement stmt;
		try {
			stmt = conexao.prepareStatement(sql);
			stmt.setLong(1, idCadastro);
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				p = new Cadastro();
				p.setId(rs.getLong("id"));
				p.setNome(rs.getString("nome"));
				p.setEndereco(rs.getString("endereco"));
				p.setTelefone(rs.getString("telefone"));
				p.setEmail(rs.getString("email"));
				p.setProdInteresse(rs.getString("prodInteresse"));
				Calendar nascimento = Calendar.getInstance();
				Date dataBd = rs.getDate("dataNascimento");
				nascimento.setTimeInMillis(dataBd.getTime());
				p.setDataNascimento(nascimento);
				int posEnum = rs.getInt("genero");
				TipoGenero tipo = TipoGenero.values()[posEnum];
				p.setGenero(tipo);

			}
			rs.close();
			stmt.close();
			conexao.close();
			return p;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void excluir(long id) {
		String sql = "delete from tb_cadastro where id = ?";
		PreparedStatement stmt;
		try {
			stmt = conexao.prepareStatement(sql);
			stmt.setLong(1, id);
			stmt.execute();
			stmt.close();
			conexao.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
