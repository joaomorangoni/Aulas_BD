-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02/09/2024 às 05:34
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `imobiliaria`
--
CREATE DATABASE IF NOT EXISTS `imobiliaria` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `imobiliaria`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `aluguel`
--

CREATE TABLE `aluguel` (
  `codaluguel` int(10) NOT NULL,
  `datainicio` date NOT NULL,
  `datafim` date NOT NULL,
  `datavenc` date NOT NULL,
  `descri` varchar(255) DEFAULT NULL,
  `idimovel` int(10) DEFAULT NULL,
  `idCorretor` int(10) DEFAULT NULL,
  `idinquilino` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `aluguel`
--

INSERT INTO `aluguel` (`codaluguel`, `datainicio`, `datafim`, `datavenc`, `descri`, `idimovel`, `idCorretor`, `idinquilino`) VALUES
(1, '0000-00-00', '0000-00-00', '0000-00-00', '', 1, 1, 1),
(2, '0000-00-00', '0000-00-00', '0000-00-00', '', 2, 2, 2),
(3, '0000-00-00', '0000-00-00', '0000-00-00', '', 3, 3, 3),
(4, '0000-00-00', '0000-00-00', '0000-00-00', '', 4, 4, 4),
(5, '0000-00-00', '0000-00-00', '0000-00-00', '', 5, 5, 5),
(6, '0000-00-00', '0000-00-00', '0000-00-00', '', 6, 6, 6),
(7, '0000-00-00', '0000-00-00', '0000-00-00', '', 7, 7, 7),
(8, '0000-00-00', '0000-00-00', '0000-00-00', '', 8, 8, 8),
(9, '0000-00-00', '0000-00-00', '0000-00-00', '', 9, 9, 9),
(10, '0000-00-00', '0000-00-00', '0000-00-00', '', 10, 10, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `corretor`
--

CREATE TABLE `corretor` (
  `idCorretor` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `imobiliaria` varchar(255) DEFAULT NULL,
  `telefone` varchar(15) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `corretor`
--

INSERT INTO `corretor` (`idCorretor`, `email`, `imobiliaria`, `telefone`, `nome`) VALUES
(1, 'corretor email@gmail.com', 'construções', '28738-9278', 'Gilberto'),
(2, 'danielson@email.com', 'construções', '71433-8788', 'Daniel'),
(3, 'clt@gmail.com', 'construções', '72678-8268', 'Trabalhador'),
(4, 'pablo@hotmail.com', 'construções', '76279-8278', 'Pablo'),
(5, 'mico@outlook.com', 'construções', '72678-8278', 'Matheus'),
(6, 'adriana@gmail.com', 'construções', '62678-5123', 'Adriana'),
(7, 'paulo@email.com', 'construções', '72688-8268', 'Paulo'),
(8, 'sono@gmail.com', 'construções', '72578-9989', 'João'),
(9, 'calor@gmail.com', 'construções', '72455-4244', 'Barnes'),
(10, 'amora@gmail.com', 'construções', '62567-8278', 'Amora');

-- --------------------------------------------------------

--
-- Estrutura para tabela `endereço`
--

CREATE TABLE `endereço` (
  `idendereço` int(30) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `CEP` varchar(255) NOT NULL,
  `rua` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `complemento` varchar(100) DEFAULT NULL,
  `numero` int(10) NOT NULL,
  `idproprietario` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `endereço`
--

INSERT INTO `endereço` (`idendereço`, `cidade`, `bairro`, `CEP`, `rua`, `estado`, `complemento`, `numero`, `idproprietario`) VALUES
(1, 'Ribeirão Pires', 'Vila Suissa', '43583-458', 'Ernesto Alvez de Arruda', 'São Paulo', '', 141, 1),
(2, 'Ribeirão Pires', 'Ouro Fino', '29383-483', 'Rua das flores', 'São Paulo', '', 111, 2),
(3, 'Ribeirão Pires', 'Centro Alto', '29043-789', 'Rua Venancio', 'São Paulo', '', 88, 3),
(4, 'Ribeirão Pires', 'Quarta Divisão', '89706-432', 'Rua Rochedo', 'São Paulo', '', 76, 4),
(5, 'Diadema', 'Piraporinha', '12637-589', 'Rua da Anta', 'São Paulo', '', 345, 5),
(6, 'Ribeirão Pires', 'Centro Alto', '56987-865', 'Rua Belmiro', 'São Paulo', '', 388, 6),
(7, 'Ribeirão Pires', 'Ouro Fino', '45674-389', 'Rua Rua', 'São Paulo', '', 453, 7),
(8, 'Ribeirão Pires', 'Vila Suissa', '24621-854', 'Rua Maristela', 'São Paulo', '', 324, 8),
(9, 'Ribeirão Pires', 'Vila Suissa', '43762-896', 'Rua Camini', 'São Paulo', '', 222, 9),
(10, 'Ribeirão Pires', 'Ouro Fino', '84564-865', 'Rua Roberto', 'São Paulo', '', 242, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `fiador`
--

CREATE TABLE `fiador` (
  `idfiador` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `rg` varchar(15) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `idendereço` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `fiador`
--

INSERT INTO `fiador` (`idfiador`, `email`, `rg`, `telefone`, `cpf`, `nome`, `idendereço`) VALUES
(1, 'hamburguer@email.com', '12.329.758.0', '97926-7268', '378.726.287-88', 'Maria', 1),
(2, 'bungas@gmail.com', '21.329.128.1', '91685-7267', '267.726.928-09', 'Rebecca', 2),
(3, 'Elbroxa@gmail.com', '69.699.699.6', '95002-8922', '843.237.348-99', 'Kevyn Marques', 3),
(4, 'seila@email.com', '00.000.000.0', '77573-8268', '827.762.018-02', 'Paulo', 4),
(5, 'Caspirro@hotmail.com', '43.398.327.2', '62768-7627', '826.017.628-08', 'Gabriel', 5),
(6, 'Praian@outlook.com', '32.548.587.1', '72816-3686', '618.728.918-08', 'Bryan', 6),
(7, 'soosloucossabem@outlook.com', '23.587.869.3', '25164-9787', '618.861.927-08', 'Thiago', 7),
(8, 'stardew@email.com', '90.437.325.9', '27289-8788', '727.827.937-08', 'Matt', 8),
(9, 'starbucks@gmail.com', '23.473.237.2', '26286-8278', '827.928.018-08', 'Buck', 9),
(10, 'fafas@hotmail.com', '32.457.865.2', '28278-8267', '826.927.927-06', 'Lalau', 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `fotos`
--

CREATE TABLE `fotos` (
  `idfoto` int(100) NOT NULL,
  `midias` varchar(255) DEFAULT NULL,
  `idimovel` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `fotos`
--

INSERT INTO `fotos` (`idfoto`, `midias`, `idimovel`) VALUES
(1, '', 1),
(2, '', 2),
(3, '', 3),
(4, '', 4),
(5, '', 5),
(6, '', 6),
(7, '', 7),
(8, '', 8),
(9, '', 9),
(10, '', 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `imovel`
--

CREATE TABLE `imovel` (
  `idimovel` int(10) NOT NULL,
  `qntBanheiros` int(10) NOT NULL,
  `suites` int(10) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `qntComodos` int(10) NOT NULL,
  `qntGaragem` int(10) DEFAULT NULL,
  `disponivel` bit(1) NOT NULL,
  `piscina` int(10) DEFAULT NULL,
  `idendereço` int(30) DEFAULT NULL,
  `idproprietario` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `imovel`
--

INSERT INTO `imovel` (`idimovel`, `qntBanheiros`, `suites`, `tipo`, `qntComodos`, `qntGaragem`, `disponivel`, `piscina`, `idendereço`, `idproprietario`) VALUES
(1, 1, 0, 'terrea', 4, 1, b'1', 0, 1, 1),
(2, 1, 0, 'terrea', 5, 1, b'1', 0, 2, 2),
(3, 2, 1, 'terrea', 5, 1, b'1', 1, 3, 3),
(4, 3, 0, 'sobrado', 7, 1, b'1', 1, 4, 4),
(5, 2, 1, 'terrea', 5, 1, b'1', 0, 5, 5),
(6, 3, 1, 'sobrado', 7, 1, b'1', 1, 6, 6),
(7, 1, 0, 'terrea', 4, 1, b'1', 0, 7, 7),
(8, 3, 1, 'sobrado', 7, 1, b'1', 1, 8, 8),
(9, 2, 1, 'terrea', 6, 1, b'1', 1, 9, 9),
(10, 2, 1, 'terrea', 6, 1, b'1', 0, 10, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `inquilino`
--

CREATE TABLE `inquilino` (
  `idinquilino` int(10) NOT NULL,
  `rg` varchar(15) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `idfiador` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `inquilino`
--

INSERT INTO `inquilino` (`idinquilino`, `rg`, `telefone`, `cpf`, `email`, `idfiador`) VALUES
(1, '76.862.725.2', '8002-8922', '828.928.817-01', 'rogerinho@email.com', 1),
(2, '26.928.725.8', '71688-8268', '827.927.928-00', 'fulano@gmail.com', 2),
(3, '72.827.725.0', '72678-9289', '827.928.414-12', 'fulaninho@email.com', 3),
(4, '71.837.726.9', '87289-8278', '627.837.716-80', 'dipper@email.com', 4),
(5, '72.625.847.7', '02782-8268', '626.847.817-98', 'algumacoisaai@outlook.com', 5),
(6, '17.736.828.5', '72667-2656', '627.726.928-09', 'capitao@gmail.com', 6),
(7, '26.726.625.4', '62443-5255', '827.726.727-00', 'deltrano@email.com', 7),
(8, '62.725.524.1', '62527-8268', '827.726.826-08', 'marcelin@gmail.com', 8),
(9, '16.847.514.2', '72677-8278', '276.847.625-08', 'inquilino9@gmail.com', 9),
(10, '26.836.847.2', '91899-8268', '626.847.514-09', 'robertooo@outlook.com', 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `proprietario`
--

CREATE TABLE `proprietario` (
  `idproprietario` int(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `nasc` date NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `banco` varchar(255) NOT NULL,
  `agencia` varchar(255) NOT NULL,
  `conta` varchar(255) NOT NULL,
  `pix` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `proprietario`
--

INSERT INTO `proprietario` (`idproprietario`, `email`, `cpf`, `nasc`, `telefone`, `nome`, `banco`, `agencia`, `conta`, `pix`) VALUES
(1, 'claudinho@email.com', '231.238.218-12', '0000-00-00', '11 23844-6857', 'Claudio Leite', 'nubank', '0001', 'Claudio Leite', '231.238.218-12'),
(2, 'roberto@gmail.com', '322.873.219-11', '0000-00-00', '11 38723-8999', 'Roberto', 'Inter', '077', 'Roberto Chagas', '11 38723-8999'),
(3, 'kevyn@hotmail.com', '211.754.829-09', '0000-00-00', '31 27328-9900', 'Kevyn Marques', 'Bradesco', '237', 'Kevyn Marques', '31 27328-9900'),
(4, 'bobesponja@outlook.com', '865.548.239-09', '0000-00-00', '00 00000-0000', 'BobEsponja', 'Nubank', '0001', 'Esponja Bob', ''),
(5, 'gilberto@email.com', '321.568.234-10', '0000-00-00', '16 29387-2346', 'Gilberto', 'Bradesco', '237', 'Gilberto Barros', '16 29387-2346'),
(6, 'bungas@gmail.com', '856.495.235-08', '0000-00-00', '21 37627-4738', 'Kleber', 'Nubank', '0001', 'Kleber Coelho', '856.495.235-08'),
(7, 'rebocodeparede@email.com', '544.348.965-10', '0000-00-00', '11 43743-8458', 'Bruno', 'Itau', '341', 'Reboquinho de Parede', '544.348.965-10'),
(8, 'bryan@gmail.com', '238.218.968-19', '0000-00-00', '41 47543-4368', 'Bryan', 'Inter', '077', 'Bryan Almeida', '41 47543-4368'),
(9, 'fuinhas@email.com', '754.586.325-01', '0000-00-00', '11 34623-4783', 'Aline', 'Nubank', '0001', 'Aline Dantas', '754.586.325-01'),
(10, 'paragas@email.com', '823.687.457-02', '0000-00-00', '51 28394-5487', 'Gabriel Caspirro', 'Nubank', '0001', 'Gabriel Caspirro', '823.687.457-02');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `aluguel`
--
ALTER TABLE `aluguel`
  ADD PRIMARY KEY (`codaluguel`),
  ADD KEY `idimovel` (`idimovel`),
  ADD KEY `idCorretor` (`idCorretor`),
  ADD KEY `idinquilino` (`idinquilino`);

--
-- Índices de tabela `corretor`
--
ALTER TABLE `corretor`
  ADD PRIMARY KEY (`idCorretor`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `telefone` (`telefone`);

--
-- Índices de tabela `endereço`
--
ALTER TABLE `endereço`
  ADD PRIMARY KEY (`idendereço`),
  ADD KEY `idproprietario` (`idproprietario`);

--
-- Índices de tabela `fiador`
--
ALTER TABLE `fiador`
  ADD PRIMARY KEY (`idfiador`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `rg` (`rg`),
  ADD UNIQUE KEY `telefone` (`telefone`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD KEY `idendereço` (`idendereço`);

--
-- Índices de tabela `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`idfoto`),
  ADD KEY `idimovel` (`idimovel`);

--
-- Índices de tabela `imovel`
--
ALTER TABLE `imovel`
  ADD PRIMARY KEY (`idimovel`),
  ADD KEY `idendereço` (`idendereço`),
  ADD KEY `idproprietario` (`idproprietario`);

--
-- Índices de tabela `inquilino`
--
ALTER TABLE `inquilino`
  ADD PRIMARY KEY (`idinquilino`),
  ADD UNIQUE KEY `rg` (`rg`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idfiador` (`idfiador`);

--
-- Índices de tabela `proprietario`
--
ALTER TABLE `proprietario`
  ADD PRIMARY KEY (`idproprietario`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `pix` (`pix`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluguel`
--
ALTER TABLE `aluguel`
  MODIFY `codaluguel` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `corretor`
--
ALTER TABLE `corretor`
  MODIFY `idCorretor` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `endereço`
--
ALTER TABLE `endereço`
  MODIFY `idendereço` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `fiador`
--
ALTER TABLE `fiador`
  MODIFY `idfiador` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `fotos`
--
ALTER TABLE `fotos`
  MODIFY `idfoto` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `imovel`
--
ALTER TABLE `imovel`
  MODIFY `idimovel` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `inquilino`
--
ALTER TABLE `inquilino`
  MODIFY `idinquilino` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `proprietario`
--
ALTER TABLE `proprietario`
  MODIFY `idproprietario` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `aluguel`
--
ALTER TABLE `aluguel`
  ADD CONSTRAINT `aluguel_ibfk_1` FOREIGN KEY (`idimovel`) REFERENCES `imovel` (`idimovel`),
  ADD CONSTRAINT `aluguel_ibfk_2` FOREIGN KEY (`idCorretor`) REFERENCES `corretor` (`idCorretor`),
  ADD CONSTRAINT `aluguel_ibfk_3` FOREIGN KEY (`idinquilino`) REFERENCES `inquilino` (`idinquilino`);

--
-- Restrições para tabelas `endereço`
--
ALTER TABLE `endereço`
  ADD CONSTRAINT `endereço_ibfk_1` FOREIGN KEY (`idproprietario`) REFERENCES `proprietario` (`idproprietario`);

--
-- Restrições para tabelas `fiador`
--
ALTER TABLE `fiador`
  ADD CONSTRAINT `fiador_ibfk_1` FOREIGN KEY (`idendereço`) REFERENCES `endereço` (`idendereço`);

--
-- Restrições para tabelas `fotos`
--
ALTER TABLE `fotos`
  ADD CONSTRAINT `fotos_ibfk_1` FOREIGN KEY (`idimovel`) REFERENCES `imovel` (`idimovel`);

--
-- Restrições para tabelas `imovel`
--
ALTER TABLE `imovel`
  ADD CONSTRAINT `imovel_ibfk_1` FOREIGN KEY (`idendereço`) REFERENCES `endereço` (`idendereço`),
  ADD CONSTRAINT `imovel_ibfk_2` FOREIGN KEY (`idproprietario`) REFERENCES `proprietario` (`idproprietario`);

--
-- Restrições para tabelas `inquilino`
--
ALTER TABLE `inquilino`
  ADD CONSTRAINT `inquilino_ibfk_1` FOREIGN KEY (`idfiador`) REFERENCES `fiador` (`idfiador`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
