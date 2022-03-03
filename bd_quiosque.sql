-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24-Fev-2022 às 21:20
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_quiosque`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_cadastro`
--
CREATE DATABASE bd_quiosque;


CREATE TABLE `tb_cadastro` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `telefone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `prodInteresse` varchar(50) NOT NULL,
  `dataNascimento` date NOT NULL,
  `genero` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_cadastro`
--

INSERT INTO `tb_cadastro` (`id`, `nome`, `endereco`, `telefone`, `email`, `prodInteresse`, `dataNascimento`, `genero`) VALUES
(1, 'Bolacha', 'dddddd', '11111111111111111111', 'jessicaferreira@gmail.com', 'ffffffffffff', '2022-01-30', '1'),
(2, 'Bolacha', 'dddddd', '11111111111111111111', 'jessicaferreira@gmail.com', 'ffffffffffff', '2022-01-30', '1'),
(3, 'Bolacha', 'dddddd', '11111111111111111111', 'jessicaferreira@gmail.com', 'ffffffffffff', '2022-01-30', '1'),
(4, 'Bolacha', 'dddddd', '11111111111111111111', 'jessicaferreira@gmail.com', 'ffffffffffff', '2022-01-30', '1'),
(6, 'Bolo', 'dddddd', '11111111111111111111', 'jessicaferreira@gmail.com', 'ffffffffffff', '2022-01-30', '1'),
(7, 'Joao', 'dddddd', '11111111111111111111', 'joao@gmail.com', 'ffffffffffff', '2022-01-30', '0');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_cadastro`
--
ALTER TABLE `tb_cadastro`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_cadastro`
--
ALTER TABLE `tb_cadastro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

USE DATABASE bd_quiosque;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
