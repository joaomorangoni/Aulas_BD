-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Set-2024 às 14:00
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
-- Banco de dados: `estacionamento`
--
CREATE DATABASE IF NOT EXISTS `estacionamento` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `estacionamento`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `andar`
--

CREATE TABLE `andar` (
  `codLugar` int(11) NOT NULL,
  `capacidade` int(11) DEFAULT NULL,
  `andar` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `andar`
--

INSERT INTO `andar` (`codLugar`, `capacidade`, `andar`) VALUES
(1, 50, 'Subsolo'),
(2, 30, 'Térreo'),
(3, 40, '1º Andar'),
(4, 60, '2º Andar'),
(5, 35, '3º Andar'),
(6, 50, 'Subsolo 2'),
(7, 45, 'Subsolo 3'),
(8, 40, 'Cobertura'),
(9, 25, 'Subsolo 4'),
(10, 55, '4º Andar'),
(11, 60, '5º Andar'),
(12, 70, '6º Andar'),
(13, 30, 'Térreo 2'),
(14, 40, '7º Andar'),
(15, 35, 'Subsolo 5'),
(16, 45, '8º Andar'),
(17, 20, '9º Andar'),
(18, 50, '10º Andar'),
(19, 60, '11º Andar'),
(20, 70, '12º Andar');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `cpf` varchar(20) NOT NULL,
  `dtNasc` datetime DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`cpf`, `dtNasc`, `nome`) VALUES
('11122233344', '1978-08-30 00:00:00', 'Carlos Souza'),
('11122233355', '1993-09-09 00:00:00', 'Lucas Rocha'),
('12223334444', '1984-05-28 00:00:00', 'Larissa Moreira'),
('12345678900', '1985-05-20 00:00:00', 'João Silva'),
('13334445555', '1979-12-12 00:00:00', 'Roberto Barros'),
('14445556666', '1996-03-03 00:00:00', 'Claudia Mendes'),
('15556667777', '1974-08-01 00:00:00', 'Gabriel Souza'),
('16667778888', '1982-10-22 00:00:00', 'Camila Freitas'),
('17778889999', '1991-07-18 00:00:00', 'Thiago Martins'),
('18889990000', '1989-11-07 00:00:00', 'Luciana Dias'),
('19990001111', '1986-02-25 00:00:00', 'Paulo Ramos'),
('22233344455', '1987-03-10 00:00:00', 'Ana Costa'),
('2716498982712', '2024-09-27 08:54:11', 'Bruno Barbosa'),
('33344455566', '1995-11-25 00:00:00', 'Rafael Lima'),
('44455566677', '1983-07-14 00:00:00', 'Beatriz Almeida'),
('55566677788', '1992-04-19 00:00:00', 'Fernando Santos'),
('66677788899', '1998-06-23 00:00:00', 'Juliana Nogueira'),
('77788899900', '1981-01-05 00:00:00', 'Guilherme Farias'),
('88899900011', '1975-12-30 00:00:00', 'Patricia Carvalho'),
('98765432100', '1990-12-15 00:00:00', 'Maria Oliveira'),
('99900011122', '1968-02-17 00:00:00', 'Marcos Torres');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estaciona`
--

CREATE TABLE `estaciona` (
  `cod` int(11) NOT NULL,
  `horSaida` datetime DEFAULT NULL,
  `dtEntrada` datetime DEFAULT NULL,
  `horEntrada` datetime DEFAULT NULL,
  `dtSaida` datetime DEFAULT NULL,
  `placa` varchar(20) DEFAULT NULL,
  `codLugar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `estaciona`
--

INSERT INTO `estaciona` (`cod`, `horSaida`, `dtEntrada`, `horEntrada`, `dtSaida`, `placa`, `codLugar`) VALUES
(1, '2023-09-15 08:30:00', '2023-09-15 00:00:00', '0000-00-00 00:00:00', '2023-09-15 18:00:00', 'ABC1234', 1),
(2, '2023-09-16 09:00:00', '2023-09-16 00:00:00', '0000-00-00 00:00:00', '2023-09-16 19:00:00', 'XYZ5678', 2),
(3, '2023-09-16 10:30:00', '2023-09-16 00:00:00', '0000-00-00 00:00:00', '2023-09-16 17:00:00', 'DEF4321', 3),
(4, '2023-09-16 12:00:00', '2023-09-16 00:00:00', '0000-00-00 00:00:00', '2023-09-16 17:30:00', 'GHJ1234', 4),
(5, '2023-09-16 11:00:00', '2023-09-16 00:00:00', '0000-00-00 00:00:00', '2023-09-16 16:00:00', 'JKL5678', 5),
(6, '2023-09-16 15:30:00', '2023-09-16 00:00:00', '0000-00-00 00:00:00', '2023-09-16 18:00:00', 'MNO9876', 6),
(7, '2023-09-17 10:00:00', '2023-09-17 00:00:00', '0000-00-00 00:00:00', '2023-09-17 17:00:00', 'PQR4321', 7),
(8, '2023-09-17 13:00:00', '2023-09-17 00:00:00', '0000-00-00 00:00:00', '2023-09-17 18:00:00', 'STU6789', 8),
(9, '2023-09-17 11:00:00', '2023-09-17 00:00:00', '0000-00-00 00:00:00', '2023-09-17 17:45:00', 'VWX5432', 9),
(10, '2023-09-17 16:00:00', '2023-09-17 00:00:00', '0000-00-00 00:00:00', '2023-09-17 19:00:00', 'YZA1111', 10),
(11, '2023-09-18 10:30:00', '2023-09-18 00:00:00', '0000-00-00 00:00:00', '2023-09-18 17:00:00', 'BCD2222', 11),
(12, '2023-09-18 12:00:00', '2023-09-18 00:00:00', '0000-00-00 00:00:00', '2023-09-18 17:30:00', 'EFG3333', 12),
(13, '2023-09-18 11:30:00', '2023-09-18 00:00:00', '0000-00-00 00:00:00', '2023-09-18 16:30:00', 'HIJ4444', 13),
(14, '2023-09-18 14:00:00', '2023-09-18 00:00:00', '0000-00-00 00:00:00', '2023-09-18 18:00:00', 'KLM5555', 14),
(15, '2023-09-18 10:00:00', '2023-09-18 00:00:00', '0000-00-00 00:00:00', '2023-09-18 17:00:00', 'NOP6666', 15),
(16, '2023-09-19 12:30:00', '2023-09-19 00:00:00', '0000-00-00 00:00:00', '2023-09-19 17:30:00', 'QRS7777', 16),
(17, '2023-09-19 13:00:00', '2023-09-19 00:00:00', '0000-00-00 00:00:00', '2023-09-19 18:00:00', 'TUV8888', 17),
(18, '2023-09-19 11:00:00', '2023-09-19 00:00:00', '0000-00-00 00:00:00', '2023-09-19 17:45:00', 'WXY9999', 18);

-- --------------------------------------------------------

--
-- Estrutura da tabela `modelo`
--

CREATE TABLE `modelo` (
  `codModelo` int(11) NOT NULL,
  `modelo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `modelo`
--

INSERT INTO `modelo` (`codModelo`, `modelo`) VALUES
(1, 'Sedan'),
(2, 'Hatchback'),
(3, 'SUV'),
(4, 'Crossover'),
(5, 'Coupé'),
(6, 'Conversível'),
(7, 'Picape'),
(8, 'Minivan'),
(9, 'Esportivo'),
(10, 'Station Wagon'),
(11, 'Furgão'),
(12, 'Elétrico'),
(13, 'Híbrido'),
(14, 'Conversível Elétrico'),
(15, 'SUV Compacto'),
(16, 'Utilitário'),
(17, 'Van'),
(18, 'Moto'),
(19, 'Quadriciclo'),
(20, 'Triciclo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `placa` varchar(20) NOT NULL,
  `cor` varchar(20) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `codModelo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `veiculo`
--

INSERT INTO `veiculo` (`placa`, `cor`, `cpf`, `codModelo`) VALUES
('ABC1234', 'Preto', '12345678900', 1),
('BCD2222', 'Cinza', '99900011122', 11),
('CDE1111', 'Prata Fosco', '19990001111', 20),
('DEF4321', 'Azul', '11122233344', 3),
('EFG3333', 'Dourado', '11122233355', 12),
('GHJ1234', 'Verde', '22233344455', 4),
('HIJ4444', 'Bege', '12223334444', 13),
('JJJ-2020', 'Lilás', '2716498982712', 2),
('JKL5678', 'Amarelo', '33344455566', 5),
('KLM5555', 'Roxo', '13334445555', 14),
('MNO9876', 'Vermelho', '44455566677', 6),
('NOP6666', 'Verde Escuro', '14445556666', 15),
('PQR4321', 'Prata', '55566677788', 7),
('QRS7777', 'Azul Claro', '15556667777', 16),
('STU6789', 'Preto', '66677788899', 8),
('TUV8888', 'Laranja', '16667778888', 17),
('VWX5432', 'Azul', '77788899900', 9),
('WXY9999', 'Rosa', '17778889999', 18),
('XYZ5678', 'Branco', '98765432100', 2),
('YZA1111', 'Branco', '88899900011', 10),
('ZAB0000', 'Marrom', '18889990000', 19);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `andar`
--
ALTER TABLE `andar`
  ADD PRIMARY KEY (`codLugar`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices para tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD PRIMARY KEY (`cod`),
  ADD KEY `placa` (`placa`),
  ADD KEY `codLugar` (`codLugar`);

--
-- Índices para tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`codModelo`);

--
-- Índices para tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`placa`),
  ADD KEY `cpf` (`cpf`),
  ADD KEY `codModelo` (`codModelo`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD CONSTRAINT `estaciona_ibfk_1` FOREIGN KEY (`placa`) REFERENCES `veiculo` (`placa`),
  ADD CONSTRAINT `estaciona_ibfk_2` FOREIGN KEY (`codLugar`) REFERENCES `andar` (`codLugar`);

--
-- Limitadores para a tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `cliente` (`cpf`),
  ADD CONSTRAINT `veiculo_ibfk_2` FOREIGN KEY (`codModelo`) REFERENCES `modelo` (`codModelo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
