-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29-Ago-2024 às 14:59
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.0.25

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
-- Estrutura da tabela `aluguel`
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

-- --------------------------------------------------------

--
-- Estrutura da tabela `corretor`
--

CREATE TABLE `corretor` (
  `idCorretor` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `imobiliaria` varchar(255) DEFAULT NULL,
  `telefone` varchar(15) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereço`
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
-- Extraindo dados da tabela `endereço`
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
-- Estrutura da tabela `fiador`
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

-- --------------------------------------------------------

--
-- Estrutura da tabela `fotos`
--

CREATE TABLE `fotos` (
  `idfoto` int(100) NOT NULL,
  `midias` varchar(255) DEFAULT NULL,
  `idimovel` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `imovel`
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

-- --------------------------------------------------------

--
-- Estrutura da tabela `inquilino`
--

CREATE TABLE `inquilino` (
  `idinquilino` int(10) NOT NULL,
  `rg` varchar(15) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `idfiador` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `proprietario`
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
-- Extraindo dados da tabela `proprietario`
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
-- Índices para tabela `aluguel`
--
ALTER TABLE `aluguel`
  ADD PRIMARY KEY (`codaluguel`),
  ADD KEY `idimovel` (`idimovel`),
  ADD KEY `idCorretor` (`idCorretor`),
  ADD KEY `idinquilino` (`idinquilino`);

--
-- Índices para tabela `corretor`
--
ALTER TABLE `corretor`
  ADD PRIMARY KEY (`idCorretor`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `telefone` (`telefone`);

--
-- Índices para tabela `endereço`
--
ALTER TABLE `endereço`
  ADD PRIMARY KEY (`idendereço`),
  ADD KEY `idproprietario` (`idproprietario`);

--
-- Índices para tabela `fiador`
--
ALTER TABLE `fiador`
  ADD PRIMARY KEY (`idfiador`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `rg` (`rg`),
  ADD UNIQUE KEY `telefone` (`telefone`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD KEY `idendereço` (`idendereço`);

--
-- Índices para tabela `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`idfoto`),
  ADD KEY `idimovel` (`idimovel`);

--
-- Índices para tabela `imovel`
--
ALTER TABLE `imovel`
  ADD PRIMARY KEY (`idimovel`),
  ADD KEY `idendereço` (`idendereço`),
  ADD KEY `idproprietario` (`idproprietario`);

--
-- Índices para tabela `inquilino`
--
ALTER TABLE `inquilino`
  ADD PRIMARY KEY (`idinquilino`),
  ADD UNIQUE KEY `rg` (`rg`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idfiador` (`idfiador`);

--
-- Índices para tabela `proprietario`
--
ALTER TABLE `proprietario`
  ADD PRIMARY KEY (`idproprietario`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `pix` (`pix`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluguel`
--
ALTER TABLE `aluguel`
  MODIFY `codaluguel` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `corretor`
--
ALTER TABLE `corretor`
  MODIFY `idCorretor` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `endereço`
--
ALTER TABLE `endereço`
  MODIFY `idendereço` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `fiador`
--
ALTER TABLE `fiador`
  MODIFY `idfiador` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `fotos`
--
ALTER TABLE `fotos`
  MODIFY `idfoto` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `imovel`
--
ALTER TABLE `imovel`
  MODIFY `idimovel` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `inquilino`
--
ALTER TABLE `inquilino`
  MODIFY `idinquilino` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `proprietario`
--
ALTER TABLE `proprietario`
  MODIFY `idproprietario` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `aluguel`
--
ALTER TABLE `aluguel`
  ADD CONSTRAINT `aluguel_ibfk_1` FOREIGN KEY (`idimovel`) REFERENCES `imovel` (`idimovel`),
  ADD CONSTRAINT `aluguel_ibfk_2` FOREIGN KEY (`idCorretor`) REFERENCES `corretor` (`idCorretor`),
  ADD CONSTRAINT `aluguel_ibfk_3` FOREIGN KEY (`idinquilino`) REFERENCES `inquilino` (`idinquilino`);

--
-- Limitadores para a tabela `endereço`
--
ALTER TABLE `endereço`
  ADD CONSTRAINT `endereço_ibfk_1` FOREIGN KEY (`idproprietario`) REFERENCES `proprietario` (`idproprietario`);

--
-- Limitadores para a tabela `fiador`
--
ALTER TABLE `fiador`
  ADD CONSTRAINT `fiador_ibfk_1` FOREIGN KEY (`idendereço`) REFERENCES `endereço` (`idendereço`);

--
-- Limitadores para a tabela `fotos`
--
ALTER TABLE `fotos`
  ADD CONSTRAINT `fotos_ibfk_1` FOREIGN KEY (`idimovel`) REFERENCES `imovel` (`idimovel`);

--
-- Limitadores para a tabela `imovel`
--
ALTER TABLE `imovel`
  ADD CONSTRAINT `imovel_ibfk_1` FOREIGN KEY (`idendereço`) REFERENCES `endereço` (`idendereço`),
  ADD CONSTRAINT `imovel_ibfk_2` FOREIGN KEY (`idproprietario`) REFERENCES `proprietario` (`idproprietario`);

--
-- Limitadores para a tabela `inquilino`
--
ALTER TABLE `inquilino`
  ADD CONSTRAINT `inquilino_ibfk_1` FOREIGN KEY (`idfiador`) REFERENCES `fiador` (`idfiador`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
