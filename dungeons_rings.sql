-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20/10/2024 às 17:20
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
-- Banco de dados: `dungeons_rings`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `atributo_especial`
--

CREATE TABLE `atributo_especial` (
  `ID` int(11) NOT NULL,
  `Nome_Atributo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `atributo_especial`
--

INSERT INTO `atributo_especial` (`ID`, `Nome_Atributo`) VALUES
(1, 'Força Extraordinária'),
(3, 'Mente Brilhante'),
(2, 'Velocidade Relâmpago');

-- --------------------------------------------------------

--
-- Estrutura para tabela `classe`
--

CREATE TABLE `classe` (
  `ID` int(11) NOT NULL,
  `Nome_Classe` varchar(20) NOT NULL,
  `Arma_Pericia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `classe`
--

INSERT INTO `classe` (`ID`, `Nome_Classe`, `Arma_Pericia`) VALUES
(1, 'Guerreiro', 6),
(2, 'Mago', 6),
(3, 'Arqueiro', 6);

-- --------------------------------------------------------

--
-- Estrutura para tabela `conta`
--

CREATE TABLE `conta` (
  `ID` int(11) NOT NULL,
  `Nick` varchar(30) NOT NULL,
  `Plataforma` int(11) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Senha` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `encantamento`
--

CREATE TABLE `encantamento` (
  `ID` int(11) NOT NULL,
  `Buff` varchar(100) NOT NULL,
  `Tipo_Equipamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `encantamento_equipamento`
--

CREATE TABLE `encantamento_equipamento` (
  `ID` int(11) NOT NULL,
  `Encantamento` int(11) NOT NULL,
  `Tipo_Equipamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `equipamento`
--

CREATE TABLE `equipamento` (
  `ID` int(11) NOT NULL,
  `Ataque` int(11) NOT NULL,
  `Defesa` int(11) NOT NULL,
  `Agilidade` int(11) NOT NULL,
  `Mana` int(11) NOT NULL,
  `Alcance` int(11) NOT NULL,
  `Vida` int(11) NOT NULL,
  `Encantamento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `mochila`
--

CREATE TABLE `mochila` (
  `ID` int(11) NOT NULL,
  `Qtd` int(11) NOT NULL,
  `ID_Equipamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `personagem`
--

CREATE TABLE `personagem` (
  `ID_Personagem` int(11) NOT NULL,
  `ID_Conta` int(11) NOT NULL,
  `NomePersonagem` varchar(30) NOT NULL,
  `HP` int(11) NOT NULL,
  `Ataque` int(11) NOT NULL,
  `Mana` int(11) NOT NULL,
  `Estamina` int(11) NOT NULL,
  `Furia` int(11) NOT NULL,
  `Velocidade` float NOT NULL,
  `Classe` int(11) NOT NULL,
  `Raca` int(11) NOT NULL,
  `Elmo` int(11) DEFAULT NULL,
  `Peitoral` int(11) DEFAULT NULL,
  `Calca` int(11) DEFAULT NULL,
  `Bota` int(11) DEFAULT NULL,
  `Manopla` int(11) DEFAULT NULL,
  `Arma` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `plataforma`
--

CREATE TABLE `plataforma` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `plataforma`
--

INSERT INTO `plataforma` (`ID`, `Nome`) VALUES
(1, 'PC'),
(3, 'PlayStation'),
(2, 'Xbox');

-- --------------------------------------------------------

--
-- Estrutura para tabela `raca`
--

CREATE TABLE `raca` (
  `ID` int(11) NOT NULL,
  `Nome_Raca` varchar(20) NOT NULL,
  `Atributo_Especial` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `raca`
--

INSERT INTO `raca` (`ID`, `Nome_Raca`, `Atributo_Especial`) VALUES
(1, 'Humano', 1),
(2, 'Elfo', 2),
(3, 'Anão', 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipo_equipamento`
--

CREATE TABLE `tipo_equipamento` (
  `ID` int(11) NOT NULL,
  `Nome_Tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tipo_equipamento`
--

INSERT INTO `tipo_equipamento` (`ID`, `Nome_Tipo`) VALUES
(4, 'Bota'),
(3, 'Calça'),
(1, 'Elmo'),
(6, 'Espada Basica'),
(5, 'Manopla'),
(2, 'Peitoral');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `atributo_especial`
--
ALTER TABLE `atributo_especial`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Nome_Atributo` (`Nome_Atributo`);

--
-- Índices de tabela `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Nome_Classe` (`Nome_Classe`);

--
-- Índices de tabela `conta`
--
ALTER TABLE `conta`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `Plataforma` (`Plataforma`);

--
-- Índices de tabela `encantamento`
--
ALTER TABLE `encantamento`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Buff` (`Buff`),
  ADD KEY `Tipo_Equipamento` (`Tipo_Equipamento`);

--
-- Índices de tabela `encantamento_equipamento`
--
ALTER TABLE `encantamento_equipamento`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Encantamento` (`Encantamento`),
  ADD KEY `Tipo_Equipamento` (`Tipo_Equipamento`);

--
-- Índices de tabela `equipamento`
--
ALTER TABLE `equipamento`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Encantamento` (`Encantamento`);

--
-- Índices de tabela `mochila`
--
ALTER TABLE `mochila`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Equipamento` (`ID_Equipamento`);

--
-- Índices de tabela `personagem`
--
ALTER TABLE `personagem`
  ADD PRIMARY KEY (`ID_Personagem`),
  ADD UNIQUE KEY `NomePersonagem` (`NomePersonagem`),
  ADD KEY `ID_Conta` (`ID_Conta`),
  ADD KEY `Classe` (`Classe`),
  ADD KEY `Raca` (`Raca`),
  ADD KEY `Elmo` (`Elmo`),
  ADD KEY `Peitoral` (`Peitoral`),
  ADD KEY `Calca` (`Calca`),
  ADD KEY `Bota` (`Bota`),
  ADD KEY `Manopla` (`Manopla`),
  ADD KEY `Arma` (`Arma`);

--
-- Índices de tabela `plataforma`
--
ALTER TABLE `plataforma`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Nome` (`Nome`);

--
-- Índices de tabela `raca`
--
ALTER TABLE `raca`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Nome_Raca` (`Nome_Raca`),
  ADD KEY `Atributo_Especial` (`Atributo_Especial`);

--
-- Índices de tabela `tipo_equipamento`
--
ALTER TABLE `tipo_equipamento`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Nome_Tipo` (`Nome_Tipo`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `conta`
--
ALTER TABLE `conta`
  ADD CONSTRAINT `conta_ibfk_1` FOREIGN KEY (`Plataforma`) REFERENCES `plataforma` (`ID`);

--
-- Restrições para tabelas `encantamento`
--
ALTER TABLE `encantamento`
  ADD CONSTRAINT `encantamento_ibfk_1` FOREIGN KEY (`Tipo_Equipamento`) REFERENCES `tipo_equipamento` (`ID`);

--
-- Restrições para tabelas `encantamento_equipamento`
--
ALTER TABLE `encantamento_equipamento`
  ADD CONSTRAINT `encantamento_equipamento_ibfk_1` FOREIGN KEY (`Encantamento`) REFERENCES `encantamento` (`ID`),
  ADD CONSTRAINT `encantamento_equipamento_ibfk_2` FOREIGN KEY (`Tipo_Equipamento`) REFERENCES `tipo_equipamento` (`ID`);

--
-- Restrições para tabelas `equipamento`
--
ALTER TABLE `equipamento`
  ADD CONSTRAINT `equipamento_ibfk_1` FOREIGN KEY (`Encantamento`) REFERENCES `encantamento` (`ID`);

--
-- Restrições para tabelas `mochila`
--
ALTER TABLE `mochila`
  ADD CONSTRAINT `mochila_ibfk_1` FOREIGN KEY (`ID_Equipamento`) REFERENCES `equipamento` (`ID`);

--
-- Restrições para tabelas `personagem`
--
ALTER TABLE `personagem`
  ADD CONSTRAINT `personagem_ibfk_1` FOREIGN KEY (`ID_Conta`) REFERENCES `conta` (`ID`),
  ADD CONSTRAINT `personagem_ibfk_2` FOREIGN KEY (`Classe`) REFERENCES `classe` (`ID`),
  ADD CONSTRAINT `personagem_ibfk_3` FOREIGN KEY (`Raca`) REFERENCES `raca` (`ID`),
  ADD CONSTRAINT `personagem_ibfk_4` FOREIGN KEY (`Elmo`) REFERENCES `equipamento` (`ID`),
  ADD CONSTRAINT `personagem_ibfk_5` FOREIGN KEY (`Peitoral`) REFERENCES `equipamento` (`ID`),
  ADD CONSTRAINT `personagem_ibfk_6` FOREIGN KEY (`Calca`) REFERENCES `equipamento` (`ID`),
  ADD CONSTRAINT `personagem_ibfk_7` FOREIGN KEY (`Bota`) REFERENCES `equipamento` (`ID`),
  ADD CONSTRAINT `personagem_ibfk_8` FOREIGN KEY (`Manopla`) REFERENCES `equipamento` (`ID`),
  ADD CONSTRAINT `personagem_ibfk_9` FOREIGN KEY (`Arma`) REFERENCES `equipamento` (`ID`);

--
-- Restrições para tabelas `raca`
--
ALTER TABLE `raca`
  ADD CONSTRAINT `raca_ibfk_1` FOREIGN KEY (`Atributo_Especial`) REFERENCES `atributo_especial` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
