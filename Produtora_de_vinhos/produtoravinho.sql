-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14/06/2024 às 17:45
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `produtoravinho`
--
CREATE DATABASE IF NOT EXISTS `produtoravinho` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `produtoravinho`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `casta`
--

CREATE TABLE `casta` (
  `codCasta` int(11) NOT NULL,
  `casta` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `casta`
--

INSERT INTO `casta` (`codCasta`, `casta`) VALUES
(1, 'Touriga Nacional'),
(2, 'Tinta Roriz'),
(3, 'Tinta Barroca'),
(4, 'Baga'),
(5, 'Pinot Noir'),
(6, 'Ramisco');

-- --------------------------------------------------------

--
-- Estrutura para tabela `casta_vinho`
--

CREATE TABLE `casta_vinho` (
  `codVinho` int(11) DEFAULT NULL,
  `codCasta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `casta_vinho`
--

INSERT INTO `casta_vinho` (`codVinho`, `codCasta`) VALUES
(6, 1),
(5, 2),
(4, 3),
(3, 4),
(2, 5),
(1, 6);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtor`
--

CREATE TABLE `produtor` (
  `produtorid` int(11) NOT NULL,
  `nomeProdutor` varchar(50) DEFAULT NULL,
  `moradaProdutor` varchar(50) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `codregiao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtor`
--

INSERT INTO `produtor` (`produtorid`, `nomeProdutor`, `moradaProdutor`, `telefone`, `email`, `codregiao`) VALUES
(1, 'Qt Vallado', 'Régua', '362895471', 'vallado@mail.telepac.pt', 1),
(2, 'Finagra', 'Reguengos', '628196459', 'esporao@mail.esporao', 2),
(3, 'Adolfo', 'Alemanha', '637291659', 'Spanish@gmail.com.es', 3),
(4, 'Braya', 'Pindamonhangaba', '271946301', 'praian@hotmail.com', 4),
(5, 'Andershow', 'Php', '271945105', 'csharp@php.com', 5),
(6, 'Ednaldo', 'Pereira', '362945103', 'reboquinhodeparede@gmail.com', 6),
(7, 'Breno', 'Atlantida', '184915482', 'Breno@gmail.com', 7),
(8, 'Jundiaí', 'Jundiaí', '925174814', 'Jundiaí@jundiaí.jundiaí', 8);

-- --------------------------------------------------------

--
-- Estrutura para tabela `regiao`
--

CREATE TABLE `regiao` (
  `idregiao` int(11) NOT NULL,
  `descriregiao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `regiao`
--

INSERT INTO `regiao` (`idregiao`, `descriregiao`) VALUES
(1, 'TesteBAH'),
(2, 'Douro'),
(3, 'ETECMCM'),
(4, 'Fazenda da etec'),
(5, 'fazendinha de minas'),
(6, 'Alasca'),
(7, 'Fazendinha'),
(8, '8');

-- --------------------------------------------------------

--
-- Estrutura para tabela `vinho`
--

CREATE TABLE `vinho` (
  `vinhoId` int(11) NOT NULL,
  `nomeVinho` varchar(30) DEFAULT NULL,
  `ano_vinho` int(11) DEFAULT NULL,
  `cor` varchar(15) DEFAULT NULL,
  `grau` decimal(7,2) DEFAULT NULL,
  `preco` decimal(7,2) DEFAULT NULL,
  `codProdutor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `vinho`
--

INSERT INTO `vinho` (`vinhoId`, `nomeVinho`, `ano_vinho`, `cor`, `grau`, `preco`, `codProdutor`) VALUES
(1, 'Esporão Reserva', 2004, 'Tinto', 13.00, 18.50, 1),
(2, 'Praian', 1987, 'Branco', 6.00, 4.50, 2),
(3, 'Casponto', 2000, 'Tinto', 8.00, 39.50, 3),
(4, 'Kelvynho', 2007, 'Branco', 69.00, 999.90, 4),
(5, 'Doradita', 1945, 'Branco', 13.00, 86.40, 5),
(6, 'Brazuca', 2077, 'Tinto', 11.00, 91.70, 6);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `casta`
--
ALTER TABLE `casta`
  ADD PRIMARY KEY (`codCasta`);

--
-- Índices de tabela `casta_vinho`
--
ALTER TABLE `casta_vinho`
  ADD KEY `codVinho` (`codVinho`),
  ADD KEY `codCasta` (`codCasta`);

--
-- Índices de tabela `produtor`
--
ALTER TABLE `produtor`
  ADD PRIMARY KEY (`produtorid`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `codregiao` (`codregiao`);

--
-- Índices de tabela `regiao`
--
ALTER TABLE `regiao`
  ADD PRIMARY KEY (`idregiao`);

--
-- Índices de tabela `vinho`
--
ALTER TABLE `vinho`
  ADD PRIMARY KEY (`vinhoId`),
  ADD KEY `codProdutor` (`codProdutor`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `casta`
--
ALTER TABLE `casta`
  MODIFY `codCasta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `produtor`
--
ALTER TABLE `produtor`
  MODIFY `produtorid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `regiao`
--
ALTER TABLE `regiao`
  MODIFY `idregiao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `vinho`
--
ALTER TABLE `vinho`
  MODIFY `vinhoId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `casta_vinho`
--
ALTER TABLE `casta_vinho`
  ADD CONSTRAINT `casta_vinho_ibfk_1` FOREIGN KEY (`codVinho`) REFERENCES `vinho` (`vinhoId`),
  ADD CONSTRAINT `casta_vinho_ibfk_2` FOREIGN KEY (`codCasta`) REFERENCES `casta` (`codCasta`);

--
-- Restrições para tabelas `produtor`
--
ALTER TABLE `produtor`
  ADD CONSTRAINT `produtor_ibfk_1` FOREIGN KEY (`codregiao`) REFERENCES `regiao` (`idregiao`);

--
-- Restrições para tabelas `vinho`
--
ALTER TABLE `vinho`
  ADD CONSTRAINT `vinho_ibfk_1` FOREIGN KEY (`codProdutor`) REFERENCES `produtor` (`produtorid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
