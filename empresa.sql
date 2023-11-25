-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25/11/2023 às 22:13
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
-- Banco de dados: `empresa`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `duvidas`
--

CREATE TABLE `duvidas` (
  `idDuv` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `Titulo` text NOT NULL,
  `Mensagem` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `duvidas`
--

INSERT INTO `duvidas` (`idDuv`, `userId`, `Titulo`, `Mensagem`) VALUES
(1, 2, 'Por Onde Receperei Os Produtos?', 'Você Recebera os Produtos Por Meio do Email!');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `temp` date NOT NULL DEFAULT current_timestamp(),
  `id` int(11) NOT NULL,
  `usuario` text NOT NULL,
  `email` text NOT NULL,
  `senha` text NOT NULL,
  `nivel` int(11) NOT NULL,
  `ativo` tinyint(1) NOT NULL DEFAULT 1,
  `endereco` text NOT NULL,
  `cep` text NOT NULL,
  `tel` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`temp`, `id`, `usuario`, `email`, `senha`, `nivel`, `ativo`, `endereco`, `cep`, `tel`) VALUES
('2023-11-25', 1, 'Action Gym', 'actiongym@suport.com.br', '$2y$10$WG5Ot4opXizkF5URXKp2LeBIdKqJeUSGUx3wRJ0wjM0YujT/mLSBG', 1, 1, 'Rua Piraquara 20', '21.755-270', '(21) 95555-0655'),
('2023-11-25', 2, 'teste', 'teste@gmail.com', '$2y$10$VbOKfOl7f4Eq7dRNuSaUOehWUjZuVabaEMH9s/s7XToZJid2NlhzO', 0, 1, 'Rua teste', '21.421-421', '(41) 32412-4312');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `duvidas`
--
ALTER TABLE `duvidas`
  ADD PRIMARY KEY (`idDuv`),
  ADD KEY `usuarios` (`userId`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `duvidas`
--
ALTER TABLE `duvidas`
  MODIFY `idDuv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `duvidas`
--
ALTER TABLE `duvidas`
  ADD CONSTRAINT `usuarios` FOREIGN KEY (`userId`) REFERENCES `usuario` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
