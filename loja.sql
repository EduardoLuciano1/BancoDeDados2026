-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03-Jun-2026 às 22:40
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `loja`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `idproduto` int(11) NOT NULL,
  `produto` varchar(200) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `qtde` int(11) NOT NULL,
  `datacad` date NOT NULL,
  `ativo` bit(1) NOT NULL,
  `idcat` int(11) DEFAULT NULL,
  `obervacao` varchar(255) DEFAULT NULL,
  `marca` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`idproduto`, `produto`, `preco`, `qtde`, `datacad`, `ativo`, `idcat`, `obervacao`, `marca`) VALUES
(1, 'Acém Peça', '33.99', 50, '2026-05-13', b'1', 1, 'Sem gordura', 'Friboi'),
(2, 'Amaciante', '23.99', 50, '2026-05-13', b'1', 2, 'esse é bom', 'Omo'),
(4, 'Celular', '1500.99', 50, '2026-05-20', b'1', 4, 'Outra coisa', 'Nokia'),
(5, 'Relogio Analogico', '30000.00', 15, '2026-05-20', b'1', 5, 'Relogio De Luxo Inovador', 'Cartier'),
(6, 'Camisa', '100.00', 200, '2026-05-20', b'1', 6, 'Camisa de tecido de algodão polo', 'Zara'),
(7, 'Tênis', '300.00', 40, '2026-05-20', b'1', 7, 'Tênis Air Jordan Classico', 'Nike'),
(8, 'Cadeira', '2000.00', 40, '2026-05-20', b'1', 8, 'Vemelha e Preta confortavel com almofadas de courino', 'Pichau'),
(9, 'Shampoo', '20.00', 40, '2026-05-20', b'1', 9, '300 ml de shampoo anti caspa', 'Clear-Men'),
(10, 'Leite', '8.00', 50, '2026-05-27', b'1', 10, 'Leite integral com vitaminas b12', 'Nestle Ninho');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`idproduto`),
  ADD KEY `idcat` (`idcat`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `idproduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
