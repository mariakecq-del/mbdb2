-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14/08/2026 às 16:41
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
-- Banco de dados: `bd_escola_projeto`
--
CREATE DATABASE IF NOT EXISTS `bd_escola_projeto` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bd_escola_projeto`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `aluno`
--

DROP TABLE IF EXISTS `aluno`;
CREATE TABLE `aluno` (
  `ID_ALUNO` int(11) NOT NULL,
  `NOME` varchar(100) NOT NULL,
  `DATA_NASCIMENTO` date DEFAULT NULL,
  `CPF` varchar(14) DEFAULT NULL,
  `TELEFONE` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `ENDERECO` varchar(255) DEFAULT NULL,
  `ID_RESPONSAVEL` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `aluno`
--

INSERT INTO `aluno` (`ID_ALUNO`, `NOME`, `DATA_NASCIMENTO`, `CPF`, `TELEFONE`, `EMAIL`, `ENDERECO`, `ID_RESPONSAVEL`) VALUES
(1, 'Lucas Aluno Exemplo', '2005-05-15', '444.555.666-77', '98888-7777', 'lucas@email.com', 'Rua das Flores, 123', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `avaliacao`
--

DROP TABLE IF EXISTS `avaliacao`;
CREATE TABLE `avaliacao` (
  `ID_AVALIACAO` int(11) NOT NULL,
  `ID_DISCIPLINA` int(11) DEFAULT NULL,
  `DESCRICAO` varchar(100) DEFAULT NULL,
  `DATA_AVALIACAO` date DEFAULT NULL,
  `VALOR` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `avaliacao`
--

INSERT INTO `avaliacao` (`ID_AVALIACAO`, `ID_DISCIPLINA`, `DESCRICAO`, `DATA_AVALIACAO`, `VALOR`) VALUES
(1, 1, 'Prova 1', '2026-04-10', 10.00),
(2, 1, 'Prova 2', '2026-06-15', 10.00),
(3, 1, 'Trabalho Prático', '2026-05-20', 10.00),
(4, 1, 'Atividades em Aula', '2026-06-01', 10.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `boletim`
--

DROP TABLE IF EXISTS `boletim`;
CREATE TABLE `boletim` (
  `ID_BOLETIM` int(11) NOT NULL,
  `ID_MATRICULA` int(11) DEFAULT NULL,
  `MEDIA_FINAL` decimal(5,2) DEFAULT NULL,
  `SITUACAO_FINAL` varchar(30) DEFAULT NULL,
  `FREQUENCIA_FINAL` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `coordenador`
--

DROP TABLE IF EXISTS `coordenador`;
CREATE TABLE `coordenador` (
  `ID_COORDENADOR` int(11) NOT NULL,
  `NOME` varchar(100) NOT NULL,
  `CPF` varchar(14) DEFAULT NULL,
  `FORMACAO` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `coordenador`
--

INSERT INTO `coordenador` (`ID_COORDENADOR`, `NOME`, `CPF`, `FORMACAO`, `EMAIL`) VALUES
(1, 'Carlos Coordenador', '111.111.111-11', 'Mestre em Computação', 'carlos@escola.com'),
(2, 'Ana Coordenadora', '222.222.222-22', 'Doutora em Sistemas', 'ana@escola.com'),
(3, 'Marcos Coordenador', '333.333.333-33', 'Especialista em Redes', 'marcos@escola.com'),
(4, 'Fernanda Coordenadora', '444.444.444-44', 'Mestre em Software', 'fernanda@escola.com'),
(5, 'Roberto Coordenador', '555.555.555-55', 'Doutor em IA', 'roberto@escola.com'),
(6, 'Carlos Coordenador', '111.111.111-11', 'Mestre em Computação', 'carlos@escola.com'),
(7, 'Ana Coordenadora', '222.222.222-22', 'Doutora em Sistemas', 'ana@escola.com'),
(8, 'Marcos Coordenador', '333.333.333-33', 'Especialista em Redes', 'marcos@escola.com'),
(9, 'Fernanda Coordenadora', '444.444.444-44', 'Mestre em Software', 'fernanda@escola.com'),
(10, 'Roberto Coordenador', '555.555.555-55', 'Doutor em IA', 'roberto@escola.com');

-- --------------------------------------------------------

--
-- Estrutura para tabela `curso`
--

DROP TABLE IF EXISTS `curso`;
CREATE TABLE `curso` (
  `ID_CURSO` int(11) NOT NULL,
  `NOME` varchar(100) NOT NULL,
  `CARGA_HORARIA` int(11) DEFAULT NULL,
  `DURACAO` varchar(50) DEFAULT NULL,
  `DESCRICAO` text DEFAULT NULL,
  `ID_COORDENADOR` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `curso`
--

INSERT INTO `curso` (`ID_CURSO`, `NOME`, `CARGA_HORARIA`, `DURACAO`, `DESCRICAO`, `ID_COORDENADOR`) VALUES
(1, 'Engenharia de Software', 3200, '4 anos', 'Foco em arquitetura e desenvolvimento', 1),
(2, 'Ciência da Computação', 3600, '4 anos', 'Foco em teoria e algoritmos', 2),
(3, 'Análise e Desenvolvimento de Sistemas', 2400, '2.5 anos', 'Foco no mercado tecnológico', 3),
(4, 'Sistemas de Informação', 3000, '4 anos', 'Foco em gestão e tecnologia', 4),
(5, 'Redes de Computadores', 2000, '2 anos', 'Foco em infraestrutura', 5),
(6, 'Engenharia de Software', 3200, '4 anos', 'Foco em arquitetura e desenvolvimento', 1),
(7, 'Ciência da Computação', 3600, '4 anos', 'Foco em teoria e algoritmos', 2),
(8, 'Análise e Desenvolvimento de Sistemas', 2400, '2.5 anos', 'Foco no mercado tecnológico', 3),
(9, 'Sistemas de Informação', 3000, '4 anos', 'Foco em gestão e tecnologia', 4),
(10, 'Redes de Computadores', 2000, '2 anos', 'Foco em infraestrutura', 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplina`
--

DROP TABLE IF EXISTS `disciplina`;
CREATE TABLE `disciplina` (
  `ID_DISCIPLINA` int(11) NOT NULL,
  `NOME` varchar(100) NOT NULL,
  `CARGA_HORARIA` int(11) DEFAULT NULL,
  `ID_CURSO` int(11) DEFAULT NULL,
  `ID_PROFESSOR` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `disciplina`
--

INSERT INTO `disciplina` (`ID_DISCIPLINA`, `NOME`, `CARGA_HORARIA`, `ID_CURSO`, `ID_PROFESSOR`) VALUES
(1, 'Algoritmos I', 80, 1, 1),
(2, 'Cálculo I', 80, 1, 2),
(3, 'Álgebra Linear', 40, 1, 3),
(4, 'Estruturas de Dados', 80, 1, 4),
(5, 'Banco de Dados I', 80, 1, 5),
(6, 'Engenharia de Requisitos', 60, 1, 6),
(7, 'Arquitetura de Software', 60, 1, 7),
(8, 'Testes de Software', 40, 1, 8),
(9, 'Sistemas Operacionais', 80, 1, 9),
(10, 'Projeto Integrador I', 60, 1, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `frequencia`
--

DROP TABLE IF EXISTS `frequencia`;
CREATE TABLE `frequencia` (
  `ID_FREQUENCIA` int(11) NOT NULL,
  `ID_MATRICULA` int(11) DEFAULT NULL,
  `PERCENTUAL_FREQUENCIA` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `matricula`
--

DROP TABLE IF EXISTS `matricula`;
CREATE TABLE `matricula` (
  `ID_MATRICULA` int(11) NOT NULL,
  `ID_ALUNO` int(11) DEFAULT NULL,
  `ID_TURMA` int(11) DEFAULT NULL,
  `DATA_MATRICULA` date DEFAULT NULL,
  `SITUACAO` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `matricula`
--

INSERT INTO `matricula` (`ID_MATRICULA`, `ID_ALUNO`, `ID_TURMA`, `DATA_MATRICULA`, `SITUACAO`) VALUES
(1, 1, 1, '2026-02-10', 'Ativo');

-- --------------------------------------------------------

--
-- Estrutura para tabela `nota`
--

DROP TABLE IF EXISTS `nota`;
CREATE TABLE `nota` (
  `ID_NOTA` int(11) NOT NULL,
  `ID_MATRICULA` int(11) DEFAULT NULL,
  `ID_AVALIACAO` int(11) DEFAULT NULL,
  `NOTA` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `professor`
--

DROP TABLE IF EXISTS `professor`;
CREATE TABLE `professor` (
  `ID_PROFESSOR` int(11) NOT NULL,
  `NOME` varchar(100) NOT NULL,
  `CPF` varchar(14) DEFAULT NULL,
  `FORMACAO` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `TELEFONE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `professor`
--

INSERT INTO `professor` (`ID_PROFESSOR`, `NOME`, `CPF`, `FORMACAO`, `EMAIL`, `TELEFONE`) VALUES
(1, 'Prof. Alexandre', '001.000.000-01', 'Graduado', 'alexandre@escola.com', '9999-0001'),
(2, 'Prof. Bruno', '002.000.000-02', 'Mestre', 'bruno@escola.com', '9999-0002'),
(3, 'Prof. Carla', '003.000.000-03', 'Doutora', 'carla@escola.com', '9999-0003'),
(4, 'Prof. Daniel', '004.000.000-04', 'Especialista', 'daniel@escola.com', '9999-0004'),
(5, 'Prof. Eduardo', '005.000.000-05', 'Mestre', 'eduardo@escola.com', '9999-0005'),
(6, 'Prof. Felipe', '006.000.000-06', 'Doutor', 'felipe@escola.com', '9999-0006'),
(7, 'Prof. Gabriel', '007.000.000-07', 'Graduado', 'gabriel@escola.com', '9999-0007'),
(8, 'Prof. Helena', '008.000.000-08', 'Mestre', 'helena@escola.com', '9999-0008'),
(9, 'Prof. Igor', '009.000.000-09', 'Doutor', 'igor@escola.com', '9999-0009'),
(10, 'Prof. Juliana', '010.000.000-10', 'Especialista', 'juliana@escola.com', '9999-0100'),
(11, 'Prof. Kléber', '011.000.000-11', 'Mestre', 'kleber@escola.com', '9999-0111'),
(12, 'Prof. Larissa', '012.000.000-12', 'Doutora', 'larissa@escola.com', '9999-0112'),
(13, 'Prof. Marcelo', '013.000.000-13', 'Graduado', 'marcelo@escola.com', '9999-0113'),
(14, 'Prof. Natália', '014.000.000-14', 'Mestre', 'natalia@escola.com', '9999-0114'),
(15, 'Prof. Otávio', '015.000.000-15', 'Doutor', 'otavio@escola.com', '9999-0115'),
(16, 'Prof. Patrícia', '016.000.000-16', 'Especialista', 'patricia@escola.com', '9999-0116'),
(17, 'Prof. Quênia', '017.000.000-17', 'Mestre', 'quenia@escola.com', '9999-0117'),
(18, 'Prof. Rodrigo', '018.000.000-18', 'Doutor', 'rodrigo@escola.com', '9999-0118'),
(19, 'Prof. Sandra', '019.000.000-19', 'Graduada', 'sandra@escola.com', '9999-0119'),
(20, 'Prof. Tatiana', '020.000.000-20', 'Mestra', 'tatiana@escola.com', '9999-0120');

-- --------------------------------------------------------

--
-- Estrutura para tabela `responsavel`
--

DROP TABLE IF EXISTS `responsavel`;
CREATE TABLE `responsavel` (
  `ID_RESPONSAVEL` int(11) NOT NULL,
  `NOME` varchar(100) NOT NULL,
  `CPF` varchar(14) DEFAULT NULL,
  `TELEFONE` varchar(20) DEFAULT NULL,
  `PARENTESCO` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `responsavel`
--

INSERT INTO `responsavel` (`ID_RESPONSAVEL`, `NOME`, `CPF`, `TELEFONE`, `PARENTESCO`) VALUES
(1, 'José Aluno Pai', '999.888.777-66', '8888-8888', 'Pai');

-- --------------------------------------------------------

--
-- Estrutura para tabela `turma`
--

DROP TABLE IF EXISTS `turma`;
CREATE TABLE `turma` (
  `ID_TURMA` int(11) NOT NULL,
  `ID_CURSO` int(11) DEFAULT NULL,
  `ANO_LETIVO` year(4) DEFAULT NULL,
  `TURNO` varchar(20) DEFAULT NULL,
  `SALA` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `turma`
--

INSERT INTO `turma` (`ID_TURMA`, `ID_CURSO`, `ANO_LETIVO`, `TURNO`, `SALA`) VALUES
(1, 1, '2026', 'Matutino', 'Sala 101'),
(2, 2, '2026', 'Vespertino', 'Sala 102'),
(3, 3, '2026', 'Noturno', 'Sala 103'),
(4, 4, '2026', 'Matutino', 'Sala 104'),
(5, 5, '2026', 'Noturno', 'Sala 105');

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `view_01_alunos_cursos`
-- (Veja abaixo para a visão atual)
--
DROP VIEW IF EXISTS `view_01_alunos_cursos`;
CREATE TABLE `view_01_alunos_cursos` (
`ID_ALUNO` int(11)
,`NOME_ALUNO` varchar(100)
,`ID_MATRICULA` int(11)
,`SITUACAO_MATRICULA` varchar(30)
,`ID_CURSO` int(11)
,`NOME_CURSO` varchar(100)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `view_02_alunos_turmas_cursos`
-- (Veja abaixo para a visão atual)
--
DROP VIEW IF EXISTS `view_02_alunos_turmas_cursos`;
CREATE TABLE `view_02_alunos_turmas_cursos` (
`ALUNO` varchar(100)
,`TURMA` int(11)
,`CURSO` varchar(100)
,`ANO_LETIVO` year(4)
,`TURNO` varchar(20)
,`SALA` varchar(100)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `view_03_disciplinas_professores`
-- (Veja abaixo para a visão atual)
--
DROP VIEW IF EXISTS `view_03_disciplinas_professores`;
CREATE TABLE `view_03_disciplinas_professores` (
`ID_DISCIPLINA` int(11)
,`NOME_DISCIPLINA` varchar(100)
,`CARGA_HORARIA` int(11)
,`ID_PROFESSOR` int(11)
,`NOME_PROFESSOR` varchar(100)
,`FORMACAO_PROFESSOR` varchar(100)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `view_04_disciplinas_professores_cursos`
-- (Veja abaixo para a visão atual)
--
DROP VIEW IF EXISTS `view_04_disciplinas_professores_cursos`;
CREATE TABLE `view_04_disciplinas_professores_cursos` (
`NOME_CURSO` varchar(100)
,`NOME_DISCIPLINA` varchar(100)
,`CARGA_HORARIA_DISCIPLINA` int(11)
,`NOME_PROFESSOR_RESPONSAVEL` varchar(100)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `view_05_alunos_responsaveis`
-- (Veja abaixo para a visão atual)
--
DROP VIEW IF EXISTS `view_05_alunos_responsaveis`;
CREATE TABLE `view_05_alunos_responsaveis` (
`NOME_ALUNO` varchar(100)
,`CPF_ALUNO` varchar(14)
,`NOME_RESPONSAVEL` varchar(100)
,`CPF_RESPONSAVEL` varchar(14)
,`TELEFONE_RESPONSAVEL` varchar(20)
,`GRAU_PARENTESCO` varchar(50)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `view_06_alunos_disciplinas_notas`
-- (Veja abaixo para a visão atual)
--
DROP VIEW IF EXISTS `view_06_alunos_disciplinas_notas`;
CREATE TABLE `view_06_alunos_disciplinas_notas` (
`NOME_ALUNO` varchar(100)
,`NOME_DISCIPLINA` varchar(100)
,`NOTA` decimal(5,2)
,`MEDIA_FINAL` decimal(5,2)
,`SITUACAO_FINAL` varchar(30)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `view_07_alunos_turmas_disciplinas_professores`
-- (Veja abaixo para a visão atual)
--
DROP VIEW IF EXISTS `view_07_alunos_turmas_disciplinas_professores`;
CREATE TABLE `view_07_alunos_turmas_disciplinas_professores` (
`ALUNO` varchar(100)
,`TURMA` int(11)
,`CURSO` varchar(100)
,`DISCIPLINA` varchar(100)
,`PROFESSOR` varchar(100)
,`ANO_LETIVO` year(4)
,`TURNO` varchar(20)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `view_08_desempenho_academico`
-- (Veja abaixo para a visão atual)
--
DROP VIEW IF EXISTS `view_08_desempenho_academico`;
CREATE TABLE `view_08_desempenho_academico` (
`ALUNO` varchar(100)
,`CURSO` varchar(100)
,`DISCIPLINA` varchar(100)
,`NOTA_MEDIA_AVALIACOES` decimal(9,6)
,`MEDIA_FINAL` decimal(5,2)
,`FREQUENCIA` decimal(5,2)
,`SITUACAO_FINAL` varchar(30)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `view_09_situacao_matriculas`
-- (Veja abaixo para a visão atual)
--
DROP VIEW IF EXISTS `view_09_situacao_matriculas`;
CREATE TABLE `view_09_situacao_matriculas` (
`ALUNO` varchar(100)
,`CURSO` varchar(100)
,`TURMA` int(11)
,`DATA_MATRICULA` date
,`SITUACAO_MATRICULA` varchar(30)
,`ANO_LETIVO` year(4)
,`TURNO` varchar(20)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `view_10_relatorio_completo`
-- (Veja abaixo para a visão atual)
--
DROP VIEW IF EXISTS `view_10_relatorio_completo`;
CREATE TABLE `view_10_relatorio_completo` (
`ALUNO` varchar(100)
,`CURSO` varchar(100)
,`TURMA` int(11)
,`DISCIPLINA` varchar(100)
,`PROFESSOR` varchar(100)
,`NOTA` decimal(5,2)
,`MEDIA_FINAL` decimal(5,2)
,`FREQUENCIA` decimal(5,2)
,`SITUACAO_FINAL` varchar(30)
);

-- --------------------------------------------------------

--
-- Estrutura para view `view_01_alunos_cursos`
--
DROP TABLE IF EXISTS `view_01_alunos_cursos`;

DROP VIEW IF EXISTS `view_01_alunos_cursos`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_01_alunos_cursos`  AS SELECT `a`.`ID_ALUNO` AS `ID_ALUNO`, `a`.`NOME` AS `NOME_ALUNO`, `m`.`ID_MATRICULA` AS `ID_MATRICULA`, `m`.`SITUACAO` AS `SITUACAO_MATRICULA`, `c`.`ID_CURSO` AS `ID_CURSO`, `c`.`NOME` AS `NOME_CURSO` FROM (((`aluno` `a` join `matricula` `m` on(`a`.`ID_ALUNO` = `m`.`ID_ALUNO`)) join `turma` `t` on(`m`.`ID_TURMA` = `t`.`ID_TURMA`)) join `curso` `c` on(`t`.`ID_CURSO` = `c`.`ID_CURSO`)) ;

-- --------------------------------------------------------

--
-- Estrutura para view `view_02_alunos_turmas_cursos`
--
DROP TABLE IF EXISTS `view_02_alunos_turmas_cursos`;

DROP VIEW IF EXISTS `view_02_alunos_turmas_cursos`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_02_alunos_turmas_cursos`  AS SELECT `a`.`NOME` AS `ALUNO`, `t`.`ID_TURMA` AS `TURMA`, `c`.`NOME` AS `CURSO`, `t`.`ANO_LETIVO` AS `ANO_LETIVO`, `t`.`TURNO` AS `TURNO`, `t`.`SALA` AS `SALA` FROM (((`aluno` `a` join `matricula` `m` on(`a`.`ID_ALUNO` = `m`.`ID_ALUNO`)) join `turma` `t` on(`m`.`ID_TURMA` = `t`.`ID_TURMA`)) join `curso` `c` on(`t`.`ID_CURSO` = `c`.`ID_CURSO`)) ;

-- --------------------------------------------------------

--
-- Estrutura para view `view_03_disciplinas_professores`
--
DROP TABLE IF EXISTS `view_03_disciplinas_professores`;

DROP VIEW IF EXISTS `view_03_disciplinas_professores`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_03_disciplinas_professores`  AS SELECT `d`.`ID_DISCIPLINA` AS `ID_DISCIPLINA`, `d`.`NOME` AS `NOME_DISCIPLINA`, `d`.`CARGA_HORARIA` AS `CARGA_HORARIA`, `p`.`ID_PROFESSOR` AS `ID_PROFESSOR`, `p`.`NOME` AS `NOME_PROFESSOR`, `p`.`FORMACAO` AS `FORMACAO_PROFESSOR` FROM (`disciplina` `d` join `professor` `p` on(`d`.`ID_PROFESSOR` = `p`.`ID_PROFESSOR`)) ;

-- --------------------------------------------------------

--
-- Estrutura para view `view_04_disciplinas_professores_cursos`
--
DROP TABLE IF EXISTS `view_04_disciplinas_professores_cursos`;

DROP VIEW IF EXISTS `view_04_disciplinas_professores_cursos`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_04_disciplinas_professores_cursos`  AS SELECT `c`.`NOME` AS `NOME_CURSO`, `d`.`NOME` AS `NOME_DISCIPLINA`, `d`.`CARGA_HORARIA` AS `CARGA_HORARIA_DISCIPLINA`, `p`.`NOME` AS `NOME_PROFESSOR_RESPONSAVEL` FROM ((`disciplina` `d` join `curso` `c` on(`d`.`ID_CURSO` = `c`.`ID_CURSO`)) join `professor` `p` on(`d`.`ID_PROFESSOR` = `p`.`ID_PROFESSOR`)) ;

-- --------------------------------------------------------

--
-- Estrutura para view `view_05_alunos_responsaveis`
--
DROP TABLE IF EXISTS `view_05_alunos_responsaveis`;

DROP VIEW IF EXISTS `view_05_alunos_responsaveis`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_05_alunos_responsaveis`  AS SELECT `a`.`NOME` AS `NOME_ALUNO`, `a`.`CPF` AS `CPF_ALUNO`, `r`.`NOME` AS `NOME_RESPONSAVEL`, `r`.`CPF` AS `CPF_RESPONSAVEL`, `r`.`TELEFONE` AS `TELEFONE_RESPONSAVEL`, `r`.`PARENTESCO` AS `GRAU_PARENTESCO` FROM (`aluno` `a` join `responsavel` `r` on(`a`.`ID_RESPONSAVEL` = `r`.`ID_RESPONSAVEL`)) ;

-- --------------------------------------------------------

--
-- Estrutura para view `view_06_alunos_disciplinas_notas`
--
DROP TABLE IF EXISTS `view_06_alunos_disciplinas_notas`;

DROP VIEW IF EXISTS `view_06_alunos_disciplinas_notas`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_06_alunos_disciplinas_notas`  AS SELECT `a`.`NOME` AS `NOME_ALUNO`, `d`.`NOME` AS `NOME_DISCIPLINA`, `n`.`NOTA` AS `NOTA`, `b`.`MEDIA_FINAL` AS `MEDIA_FINAL`, `b`.`SITUACAO_FINAL` AS `SITUACAO_FINAL` FROM (((((`aluno` `a` join `matricula` `m` on(`a`.`ID_ALUNO` = `m`.`ID_ALUNO`)) join `nota` `n` on(`m`.`ID_MATRICULA` = `n`.`ID_MATRICULA`)) join `avaliacao` `av` on(`n`.`ID_AVALIACAO` = `av`.`ID_AVALIACAO`)) join `disciplina` `d` on(`av`.`ID_DISCIPLINA` = `d`.`ID_DISCIPLINA`)) left join `boletim` `b` on(`m`.`ID_MATRICULA` = `b`.`ID_MATRICULA`)) ;

-- --------------------------------------------------------

--
-- Estrutura para view `view_07_alunos_turmas_disciplinas_professores`
--
DROP TABLE IF EXISTS `view_07_alunos_turmas_disciplinas_professores`;

DROP VIEW IF EXISTS `view_07_alunos_turmas_disciplinas_professores`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_07_alunos_turmas_disciplinas_professores`  AS SELECT `a`.`NOME` AS `ALUNO`, `t`.`ID_TURMA` AS `TURMA`, `c`.`NOME` AS `CURSO`, `d`.`NOME` AS `DISCIPLINA`, `p`.`NOME` AS `PROFESSOR`, `t`.`ANO_LETIVO` AS `ANO_LETIVO`, `t`.`TURNO` AS `TURNO` FROM (((((`aluno` `a` join `matricula` `m` on(`a`.`ID_ALUNO` = `m`.`ID_ALUNO`)) join `turma` `t` on(`m`.`ID_TURMA` = `t`.`ID_TURMA`)) join `curso` `c` on(`t`.`ID_CURSO` = `c`.`ID_CURSO`)) join `disciplina` `d` on(`c`.`ID_CURSO` = `d`.`ID_CURSO`)) join `professor` `p` on(`d`.`ID_PROFESSOR` = `p`.`ID_PROFESSOR`)) ;

-- --------------------------------------------------------

--
-- Estrutura para view `view_08_desempenho_academico`
--
DROP TABLE IF EXISTS `view_08_desempenho_academico`;

DROP VIEW IF EXISTS `view_08_desempenho_academico`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_08_desempenho_academico`  AS SELECT `a`.`NOME` AS `ALUNO`, `c`.`NOME` AS `CURSO`, `d`.`NOME` AS `DISCIPLINA`, avg(`n`.`NOTA`) AS `NOTA_MEDIA_AVALIACOES`, `b`.`MEDIA_FINAL` AS `MEDIA_FINAL`, `f`.`PERCENTUAL_FREQUENCIA` AS `FREQUENCIA`, `b`.`SITUACAO_FINAL` AS `SITUACAO_FINAL` FROM ((((((((`aluno` `a` join `matricula` `m` on(`a`.`ID_ALUNO` = `m`.`ID_ALUNO`)) join `turma` `t` on(`m`.`ID_TURMA` = `t`.`ID_TURMA`)) join `curso` `c` on(`t`.`ID_CURSO` = `c`.`ID_CURSO`)) join `nota` `n` on(`m`.`ID_MATRICULA` = `n`.`ID_MATRICULA`)) join `avaliacao` `av` on(`n`.`ID_AVALIACAO` = `av`.`ID_AVALIACAO`)) join `disciplina` `d` on(`av`.`ID_DISCIPLINA` = `d`.`ID_DISCIPLINA`)) left join `boletim` `b` on(`m`.`ID_MATRICULA` = `b`.`ID_MATRICULA`)) left join `frequencia` `f` on(`m`.`ID_MATRICULA` = `f`.`ID_MATRICULA`)) GROUP BY `a`.`NOME`, `c`.`NOME`, `d`.`NOME`, `b`.`MEDIA_FINAL`, `f`.`PERCENTUAL_FREQUENCIA`, `b`.`SITUACAO_FINAL` ;

-- --------------------------------------------------------

--
-- Estrutura para view `view_09_situacao_matriculas`
--
DROP TABLE IF EXISTS `view_09_situacao_matriculas`;

DROP VIEW IF EXISTS `view_09_situacao_matriculas`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_09_situacao_matriculas`  AS SELECT `a`.`NOME` AS `ALUNO`, `c`.`NOME` AS `CURSO`, `t`.`ID_TURMA` AS `TURMA`, `m`.`DATA_MATRICULA` AS `DATA_MATRICULA`, `m`.`SITUACAO` AS `SITUACAO_MATRICULA`, `t`.`ANO_LETIVO` AS `ANO_LETIVO`, `t`.`TURNO` AS `TURNO` FROM (((`aluno` `a` join `matricula` `m` on(`a`.`ID_ALUNO` = `m`.`ID_ALUNO`)) join `turma` `t` on(`m`.`ID_TURMA` = `t`.`ID_TURMA`)) join `curso` `c` on(`t`.`ID_CURSO` = `c`.`ID_CURSO`)) ;

-- --------------------------------------------------------

--
-- Estrutura para view `view_10_relatorio_completo`
--
DROP TABLE IF EXISTS `view_10_relatorio_completo`;

DROP VIEW IF EXISTS `view_10_relatorio_completo`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_10_relatorio_completo`  AS SELECT `a`.`NOME` AS `ALUNO`, `c`.`NOME` AS `CURSO`, `t`.`ID_TURMA` AS `TURMA`, `d`.`NOME` AS `DISCIPLINA`, `p`.`NOME` AS `PROFESSOR`, `n`.`NOTA` AS `NOTA`, `b`.`MEDIA_FINAL` AS `MEDIA_FINAL`, `f`.`PERCENTUAL_FREQUENCIA` AS `FREQUENCIA`, `b`.`SITUACAO_FINAL` AS `SITUACAO_FINAL` FROM (((((((((`aluno` `a` join `matricula` `m` on(`a`.`ID_ALUNO` = `m`.`ID_ALUNO`)) join `turma` `t` on(`m`.`ID_TURMA` = `t`.`ID_TURMA`)) join `curso` `c` on(`t`.`ID_CURSO` = `c`.`ID_CURSO`)) join `disciplina` `d` on(`c`.`ID_CURSO` = `d`.`ID_CURSO`)) join `professor` `p` on(`d`.`ID_PROFESSOR` = `p`.`ID_PROFESSOR`)) left join `nota` `n` on(`m`.`ID_MATRICULA` = `n`.`ID_MATRICULA`)) left join `avaliacao` `av` on(`n`.`ID_AVALIACAO` = `av`.`ID_AVALIACAO` and `d`.`ID_DISCIPLINA` = `av`.`ID_DISCIPLINA`)) left join `boletim` `b` on(`m`.`ID_MATRICULA` = `b`.`ID_MATRICULA`)) left join `frequencia` `f` on(`m`.`ID_MATRICULA` = `f`.`ID_MATRICULA`)) ;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`ID_ALUNO`),
  ADD KEY `ID_RESPONSAVEL` (`ID_RESPONSAVEL`);

--
-- Índices de tabela `avaliacao`
--
ALTER TABLE `avaliacao`
  ADD PRIMARY KEY (`ID_AVALIACAO`),
  ADD KEY `ID_DISCIPLINA` (`ID_DISCIPLINA`);

--
-- Índices de tabela `boletim`
--
ALTER TABLE `boletim`
  ADD PRIMARY KEY (`ID_BOLETIM`),
  ADD KEY `ID_MATRICULA` (`ID_MATRICULA`);

--
-- Índices de tabela `coordenador`
--
ALTER TABLE `coordenador`
  ADD PRIMARY KEY (`ID_COORDENADOR`);

--
-- Índices de tabela `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`ID_CURSO`),
  ADD KEY `ID_COORDENADOR` (`ID_COORDENADOR`);

--
-- Índices de tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`ID_DISCIPLINA`),
  ADD KEY `ID_CURSO` (`ID_CURSO`),
  ADD KEY `ID_PROFESSOR` (`ID_PROFESSOR`);

--
-- Índices de tabela `frequencia`
--
ALTER TABLE `frequencia`
  ADD PRIMARY KEY (`ID_FREQUENCIA`),
  ADD KEY `ID_MATRICULA` (`ID_MATRICULA`);

--
-- Índices de tabela `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`ID_MATRICULA`),
  ADD KEY `ID_ALUNO` (`ID_ALUNO`),
  ADD KEY `ID_TURMA` (`ID_TURMA`);

--
-- Índices de tabela `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`ID_NOTA`),
  ADD KEY `ID_MATRICULA` (`ID_MATRICULA`),
  ADD KEY `ID_AVALIACAO` (`ID_AVALIACAO`);

--
-- Índices de tabela `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`ID_PROFESSOR`);

--
-- Índices de tabela `responsavel`
--
ALTER TABLE `responsavel`
  ADD PRIMARY KEY (`ID_RESPONSAVEL`);

--
-- Índices de tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`ID_TURMA`),
  ADD KEY `ID_CURSO` (`ID_CURSO`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `ID_ALUNO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `avaliacao`
--
ALTER TABLE `avaliacao`
  MODIFY `ID_AVALIACAO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `boletim`
--
ALTER TABLE `boletim`
  MODIFY `ID_BOLETIM` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `coordenador`
--
ALTER TABLE `coordenador`
  MODIFY `ID_COORDENADOR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `curso`
--
ALTER TABLE `curso`
  MODIFY `ID_CURSO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `ID_DISCIPLINA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `frequencia`
--
ALTER TABLE `frequencia`
  MODIFY `ID_FREQUENCIA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `matricula`
--
ALTER TABLE `matricula`
  MODIFY `ID_MATRICULA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `nota`
--
ALTER TABLE `nota`
  MODIFY `ID_NOTA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `professor`
--
ALTER TABLE `professor`
  MODIFY `ID_PROFESSOR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `responsavel`
--
ALTER TABLE `responsavel`
  MODIFY `ID_RESPONSAVEL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
  MODIFY `ID_TURMA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `aluno`
--
ALTER TABLE `aluno`
  ADD CONSTRAINT `aluno_ibfk_1` FOREIGN KEY (`ID_RESPONSAVEL`) REFERENCES `responsavel` (`ID_RESPONSAVEL`);

--
-- Restrições para tabelas `avaliacao`
--
ALTER TABLE `avaliacao`
  ADD CONSTRAINT `avaliacao_ibfk_1` FOREIGN KEY (`ID_DISCIPLINA`) REFERENCES `disciplina` (`ID_DISCIPLINA`);

--
-- Restrições para tabelas `boletim`
--
ALTER TABLE `boletim`
  ADD CONSTRAINT `boletim_ibfk_1` FOREIGN KEY (`ID_MATRICULA`) REFERENCES `matricula` (`ID_MATRICULA`);

--
-- Restrições para tabelas `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`ID_COORDENADOR`) REFERENCES `coordenador` (`ID_COORDENADOR`);

--
-- Restrições para tabelas `disciplina`
--
ALTER TABLE `disciplina`
  ADD CONSTRAINT `disciplina_ibfk_1` FOREIGN KEY (`ID_CURSO`) REFERENCES `curso` (`ID_CURSO`),
  ADD CONSTRAINT `disciplina_ibfk_2` FOREIGN KEY (`ID_PROFESSOR`) REFERENCES `professor` (`ID_PROFESSOR`);

--
-- Restrições para tabelas `frequencia`
--
ALTER TABLE `frequencia`
  ADD CONSTRAINT `frequencia_ibfk_1` FOREIGN KEY (`ID_MATRICULA`) REFERENCES `matricula` (`ID_MATRICULA`);

--
-- Restrições para tabelas `matricula`
--
ALTER TABLE `matricula`
  ADD CONSTRAINT `matricula_ibfk_1` FOREIGN KEY (`ID_ALUNO`) REFERENCES `aluno` (`ID_ALUNO`),
  ADD CONSTRAINT `matricula_ibfk_2` FOREIGN KEY (`ID_TURMA`) REFERENCES `turma` (`ID_TURMA`);

--
-- Restrições para tabelas `nota`
--
ALTER TABLE `nota`
  ADD CONSTRAINT `nota_ibfk_1` FOREIGN KEY (`ID_MATRICULA`) REFERENCES `matricula` (`ID_MATRICULA`),
  ADD CONSTRAINT `nota_ibfk_2` FOREIGN KEY (`ID_AVALIACAO`) REFERENCES `avaliacao` (`ID_AVALIACAO`);

--
-- Restrições para tabelas `turma`
--
ALTER TABLE `turma`
  ADD CONSTRAINT `turma_ibfk_1` FOREIGN KEY (`ID_CURSO`) REFERENCES `curso` (`ID_CURSO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
