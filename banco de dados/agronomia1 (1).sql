-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Ago-2024 às 14:13
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `agronomia1`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`) VALUES
(2, 'v', '', '$2y$10$ilfR74RycoZJ8ghU7ivt2eBuSCOEVwKfPnC.9Da7rsTToWYJObpbe'),
(7, 'teset', 'teste@email.com', '$2y$10$9PaHjOQvbWHQayNQSbQ2de.xFqJ7mMbopXO6yx7/nwg/fWAuQvGa6'),
(8, 'vinicius', 'email@email.com', '$2y$10$TWa5AQlPV9/BaXNDCQEYyuaI3iIPkJzHxIL81g6Y7l2tvWcSWkmrO'),
(9, 'luis', 'luis@gmail.com', '$2y$10$gvKp9CLry.59sLk6/K/Zx.leYqAoxnjmSxcCYhaoM3Ny9elN8Arda'),
(10, 'luisao', 'luisao@gmail.com', '$2y$10$o6kBoNU0V.ZTEULtBOIA9u7MVraweZ6K5uD8SBOldUFsQz4FNgUQy'),
(11, 'daniel', 'daniel@gmail.com', '$2y$10$mJzEz9VlfM7k3FZZHq8QVOrKb/ji6O1LiKxpjHt2A6dUAs1fBXCG6');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
