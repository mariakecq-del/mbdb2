-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19/06/2026 às 16:45
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
-- Banco de dados: `bd_escola`
--
CREATE DATABASE IF NOT EXISTS `bd_escola` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bd_escola`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `alunos`
--

DROP TABLE IF EXISTS `alunos`;
CREATE TABLE `alunos` (
  `ID_ALUNO` int(11) NOT NULL,
  `NOME` varchar(100) NOT NULL,
  `DATA_NASCIMENTO` date DEFAULT NULL,
  `CPF` varchar(14) DEFAULT NULL,
  `TELEFONE` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `ENDERECO` varchar(255) DEFAULT NULL,
  `ID_RESPONSAVEL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `avaliacoes`
--

DROP TABLE IF EXISTS `avaliacoes`;
CREATE TABLE `avaliacoes` (
  `ID_AVALIACAO` int(11) NOT NULL,
  `DESCRICAO` varchar(255) DEFAULT NULL,
  `DATA_AVALIACAO` date DEFAULT NULL,
  `VALOR_DECIMAL` decimal(5,2) DEFAULT NULL,
  `ID_DISCIPLINA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `boletins`
--

DROP TABLE IF EXISTS `boletins`;
CREATE TABLE `boletins` (
  `ID_BOLETINS` int(11) NOT NULL,
  `MEDIA_FINAL` decimal(5,2) DEFAULT NULL,
  `SITUACAO_FINAL` varchar(50) DEFAULT NULL,
  `FREQUENCIA` decimal(5,2) DEFAULT NULL,
  `ID_ALUNO` int(11) NOT NULL,
  `ID_DISCIPLINA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `coordenadores`
--

DROP TABLE IF EXISTS `coordenadores`;
CREATE TABLE `coordenadores` (
  `ID_COORDENADOR` int(11) NOT NULL,
  `NOME` varchar(100) NOT NULL,
  `CPF` varchar(14) DEFAULT NULL,
  `FORMACAO` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `TELEFONE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos`
--

DROP TABLE IF EXISTS `cursos`;
CREATE TABLE `cursos` (
  `ID_CURSO` int(11) NOT NULL,
  `NOME` varchar(100) NOT NULL,
  `CARGA_HORARIA` varchar(50) DEFAULT NULL,
  `DURAÇAO` varchar(50) DEFAULT NULL,
  `DESCRICAO` text DEFAULT NULL,
  `ID_COORDENADOR` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplina`
--

DROP TABLE IF EXISTS `disciplina`;
CREATE TABLE `disciplina` (
  `ID_DISCIPLINA` int(11) NOT NULL,
  `NOME` varchar(100) NOT NULL,
  `ID_CURSO` int(11) NOT NULL,
  `CARGA_HORARIA` int(11) DEFAULT NULL,
  `ID_PROFESSOR` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `matriculas`
--

DROP TABLE IF EXISTS `matriculas`;
CREATE TABLE `matriculas` (
  `ID_MATRICULA` int(11) NOT NULL,
  `ID_ALUNO` int(11) NOT NULL,
  `ID_CURSO` int(11) NOT NULL,
  `DATA_MATRICULA` date DEFAULT NULL,
  `SITUACAO` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `professores`
--

DROP TABLE IF EXISTS `professores`;
CREATE TABLE `professores` (
  `ID_PROFESSOR` int(11) NOT NULL,
  `NOME_DICIPLINA` varchar(100) NOT NULL,
  `CARGA_HORARIA` int(11) DEFAULT NULL,
  `ID_CURSO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `responsaveis`
--

DROP TABLE IF EXISTS `responsaveis`;
CREATE TABLE `responsaveis` (
  `ID_RESPONSAVEIS` int(11) NOT NULL,
  `NOME` varchar(100) NOT NULL,
  `CPF` varchar(14) NOT NULL,
  `TELEFONE` varchar(20) DEFAULT NULL,
  `PARENTESCO` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`ID_ALUNO`),
  ADD UNIQUE KEY `CPF` (`CPF`),
  ADD KEY `ID_RESPONSAVEL` (`ID_RESPONSAVEL`);

--
-- Índices de tabela `avaliacoes`
--
ALTER TABLE `avaliacoes`
  ADD PRIMARY KEY (`ID_AVALIACAO`),
  ADD KEY `ID_DISCIPLINA` (`ID_DISCIPLINA`);

--
-- Índices de tabela `boletins`
--
ALTER TABLE `boletins`
  ADD PRIMARY KEY (`ID_BOLETINS`),
  ADD KEY `ID_ALUNO` (`ID_ALUNO`),
  ADD KEY `ID_DISCIPLINA` (`ID_DISCIPLINA`);

--
-- Índices de tabela `coordenadores`
--
ALTER TABLE `coordenadores`
  ADD PRIMARY KEY (`ID_COORDENADOR`),
  ADD UNIQUE KEY `CPF` (`CPF`);

--
-- Índices de tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`ID_CURSO`),
  ADD KEY `ID_COORDENADOR` (`ID_COORDENADOR`);

--
-- Índices de tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`ID_DISCIPLINA`);

--
-- Índices de tabela `matriculas`
--
ALTER TABLE `matriculas`
  ADD PRIMARY KEY (`ID_MATRICULA`),
  ADD KEY `ID_ALUNO` (`ID_ALUNO`),
  ADD KEY `ID_CURSO` (`ID_CURSO`);

--
-- Índices de tabela `professores`
--
ALTER TABLE `professores`
  ADD PRIMARY KEY (`ID_PROFESSOR`),
  ADD KEY `ID_CURSO` (`ID_CURSO`);

--
-- Índices de tabela `responsaveis`
--
ALTER TABLE `responsaveis`
  ADD PRIMARY KEY (`ID_RESPONSAVEIS`),
  ADD UNIQUE KEY `CPF` (`CPF`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `ID_ALUNO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `avaliacoes`
--
ALTER TABLE `avaliacoes`
  MODIFY `ID_AVALIACAO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `boletins`
--
ALTER TABLE `boletins`
  MODIFY `ID_BOLETINS` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `coordenadores`
--
ALTER TABLE `coordenadores`
  MODIFY `ID_COORDENADOR` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `ID_CURSO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `ID_DISCIPLINA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `matriculas`
--
ALTER TABLE `matriculas`
  MODIFY `ID_MATRICULA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `professores`
--
ALTER TABLE `professores`
  MODIFY `ID_PROFESSOR` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `responsaveis`
--
ALTER TABLE `responsaveis`
  MODIFY `ID_RESPONSAVEIS` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `alunos`
--
ALTER TABLE `alunos`
  ADD CONSTRAINT `alunos_ibfk_1` FOREIGN KEY (`ID_RESPONSAVEL`) REFERENCES `responsaveis` (`ID_RESPONSAVEIS`);

--
-- Restrições para tabelas `avaliacoes`
--
ALTER TABLE `avaliacoes`
  ADD CONSTRAINT `avaliacoes_ibfk_1` FOREIGN KEY (`ID_DISCIPLINA`) REFERENCES `disciplina` (`ID_DISCIPLINA`);

--
-- Restrições para tabelas `boletins`
--
ALTER TABLE `boletins`
  ADD CONSTRAINT `boletins_ibfk_1` FOREIGN KEY (`ID_ALUNO`) REFERENCES `alunos` (`ID_ALUNO`),
  ADD CONSTRAINT `boletins_ibfk_2` FOREIGN KEY (`ID_DISCIPLINA`) REFERENCES `disciplina` (`ID_DISCIPLINA`);

--
-- Restrições para tabelas `cursos`
--
ALTER TABLE `cursos`
  ADD CONSTRAINT `cursos_ibfk_1` FOREIGN KEY (`ID_COORDENADOR`) REFERENCES `coordenadores` (`ID_COORDENADOR`);

--
-- Restrições para tabelas `matriculas`
--
ALTER TABLE `matriculas`
  ADD CONSTRAINT `matriculas_ibfk_1` FOREIGN KEY (`ID_ALUNO`) REFERENCES `alunos` (`ID_ALUNO`),
  ADD CONSTRAINT `matriculas_ibfk_2` FOREIGN KEY (`ID_CURSO`) REFERENCES `cursos` (`ID_CURSO`);

--
-- Restrições para tabelas `professores`
--
ALTER TABLE `professores`
  ADD CONSTRAINT `professores_ibfk_1` FOREIGN KEY (`ID_CURSO`) REFERENCES `cursos` (`ID_CURSO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
