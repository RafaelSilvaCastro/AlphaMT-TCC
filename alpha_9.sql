-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 13-Dez-2023 às 10:25
-- Versão do servidor: 8.0.31
-- versão do PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `alpha`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `eventos`
--

DROP TABLE IF EXISTS `eventos`;
CREATE TABLE IF NOT EXISTS `eventos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL,
  `cpf_cnpj` varchar(35) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descricao` varchar(300) NOT NULL,
  `data_inicio` datetime NOT NULL,
  `data_fim` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `eventos`
--

INSERT INTO `eventos` (`id`, `login`, `cpf_cnpj`, `titulo`, `descricao`, `data_inicio`, `data_fim`) VALUES
(16, 'brutos', '12.345.678/0003-00', 'Apresentação TCC', 'Venham prestigiar a apresentação da I.T.S.A.S.', '2023-12-13 07:30:00', '2023-12-13 12:50:00'),
(17, 'brutos', '12.345.678/0003-00', 'Fechamento do 3°DS', 'Ultimo dia de aula', '2023-12-20 07:30:00', '2023-12-20 12:50:00'),
(18, 'brutos', '12.345.678/0003-00', 'zumba', 'dudu', '2023-12-14 16:00:00', '2023-12-06 16:59:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `parceria`
--

DROP TABLE IF EXISTS `parceria`;
CREATE TABLE IF NOT EXISTS `parceria` (
  `id_parceria` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `nivel` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `motivo` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id_parceria`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `parceria`
--

INSERT INTO `parceria` (`id_parceria`, `nome`, `nivel`, `email`, `telefone`, `motivo`) VALUES
(41, 'Teste2', 'profissionais', 'teste1@gmail.com', '1235431111111', 'teste'),
(43, 'Academia01', 'academia', 'academia01@gmail.com', '11900000001', 'Primeira'),
(44, 'Academia02', 'academia', 'academia02@gmail.com', '11900000002', 'Segunda'),
(45, 'Academia03', 'academia', 'academia03@gmail.com', '11900000003', 'Terceira'),
(46, 'Academia04', 'academia', 'academia04@gmail.com', '11900000004', 'Quarta'),
(47, 'Trumann', 'academia', 'gui@gmail.com', '11900000050', 'teste'),
(48, 'dudu', 'academia', 'dudu@gmail.com', '+5511998652718', 'teste');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbabdomen`
--

DROP TABLE IF EXISTS `tbabdomen`;
CREATE TABLE IF NOT EXISTS `tbabdomen` (
  `login_usuario` varchar(50) NOT NULL,
  `nome_personal` varchar(50) NOT NULL,
  `telefone_personal` varchar(30) NOT NULL,
  `email_personal` varchar(150) NOT NULL,
  `exercicio1` varchar(50) NOT NULL,
  `series1` varchar(10) NOT NULL,
  `repeticoes1` varchar(10) NOT NULL,
  `exercicio2` varchar(50) NOT NULL,
  `series2` varchar(10) NOT NULL,
  `repeticoes2` varchar(10) NOT NULL,
  `exercicio3` varchar(50) NOT NULL,
  `series3` varchar(10) NOT NULL,
  `repeticoes3` varchar(10) NOT NULL,
  `exercicio4` varchar(50) NOT NULL,
  `series4` varchar(10) NOT NULL,
  `repeticoes4` varchar(10) NOT NULL,
  `exercicio5` varchar(50) NOT NULL,
  `series5` varchar(10) NOT NULL,
  `repeticoes5` varchar(10) NOT NULL,
  `exercicio6` varchar(50) NOT NULL,
  `series6` varchar(10) NOT NULL,
  `repeticoes6` varchar(10) NOT NULL,
  `exercicio7` varchar(50) NOT NULL,
  `series7` varchar(10) NOT NULL,
  `repeticoes7` varchar(10) NOT NULL,
  `exercicio8` varchar(50) NOT NULL,
  `series8` varchar(10) NOT NULL,
  `repeticoes8` varchar(10) NOT NULL,
  `observacao` varchar(80) NOT NULL,
  UNIQUE KEY `login_usuario` (`login_usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tbabdomen`
--

INSERT INTO `tbabdomen` (`login_usuario`, `nome_personal`, `telefone_personal`, `email_personal`, `exercicio1`, `series1`, `repeticoes1`, `exercicio2`, `series2`, `repeticoes2`, `exercicio3`, `series3`, `repeticoes3`, `exercicio4`, `series4`, `repeticoes4`, `exercicio5`, `series5`, `repeticoes5`, `exercicio6`, `series6`, `repeticoes6`, `exercicio7`, `series7`, `repeticoes7`, `exercicio8`, `series8`, `repeticoes8`, `observacao`) VALUES
('dyego', 'Guilherme', '11975286494', 'gui@gmail.com', ' Abdominal em V', '4', '12', 'Prancha', '4', '12', 'Prancha lateral', '4', '12', 'Escalada', '4', '12', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbantebraco`
--

DROP TABLE IF EXISTS `tbantebraco`;
CREATE TABLE IF NOT EXISTS `tbantebraco` (
  `login_usuario` varchar(50) NOT NULL,
  `nome_personal` varchar(50) NOT NULL,
  `telefone_personal` varchar(30) NOT NULL,
  `email_personal` varchar(150) NOT NULL,
  `exercicio1` varchar(50) NOT NULL,
  `series1` varchar(10) NOT NULL,
  `repeticoes1` varchar(10) NOT NULL,
  `exercicio2` varchar(50) NOT NULL,
  `series2` varchar(10) NOT NULL,
  `repeticoes2` varchar(10) NOT NULL,
  `exercicio3` varchar(50) NOT NULL,
  `series3` varchar(10) NOT NULL,
  `repeticoes3` varchar(10) NOT NULL,
  `exercicio4` varchar(50) NOT NULL,
  `series4` varchar(10) NOT NULL,
  `repeticoes4` varchar(10) NOT NULL,
  `exercicio5` varchar(50) NOT NULL,
  `series5` varchar(10) NOT NULL,
  `repeticoes5` varchar(10) NOT NULL,
  `exercicio6` varchar(50) NOT NULL,
  `series6` varchar(10) NOT NULL,
  `repeticoes6` varchar(10) NOT NULL,
  `exercicio7` varchar(50) NOT NULL,
  `series7` varchar(10) NOT NULL,
  `repeticoes7` varchar(10) NOT NULL,
  `exercicio8` varchar(50) NOT NULL,
  `series8` varchar(10) NOT NULL,
  `repeticoes8` varchar(10) NOT NULL,
  `observacao` varchar(80) NOT NULL,
  UNIQUE KEY `login_usuario` (`login_usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tbantebraco`
--

INSERT INTO `tbantebraco` (`login_usuario`, `nome_personal`, `telefone_personal`, `email_personal`, `exercicio1`, `series1`, `repeticoes1`, `exercicio2`, `series2`, `repeticoes2`, `exercicio3`, `series3`, `repeticoes3`, `exercicio4`, `series4`, `repeticoes4`, `exercicio5`, `series5`, `repeticoes5`, `exercicio6`, `series6`, `repeticoes6`, `exercicio7`, `series7`, `repeticoes7`, `exercicio8`, `series8`, `repeticoes8`, `observacao`) VALUES
('dyego', 'Guilherme', '11975286494', 'gui@gmail.com', 'Rosca de punho.', '4', '12', 'Rosca punho invertido', '4', '12', 'Pull Ups', '4', '12', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbbiceps`
--

DROP TABLE IF EXISTS `tbbiceps`;
CREATE TABLE IF NOT EXISTS `tbbiceps` (
  `login_usuario` varchar(50) NOT NULL,
  `nome_personal` varchar(50) NOT NULL,
  `telefone_personal` varchar(30) NOT NULL,
  `email_personal` varchar(150) NOT NULL,
  `exercicio1` varchar(50) NOT NULL,
  `series1` varchar(10) NOT NULL,
  `repeticoes1` varchar(10) NOT NULL,
  `exercicio2` varchar(50) NOT NULL,
  `series2` varchar(10) NOT NULL,
  `repeticoes2` varchar(10) NOT NULL,
  `exercicio3` varchar(50) NOT NULL,
  `series3` varchar(10) NOT NULL,
  `repeticoes3` varchar(10) NOT NULL,
  `exercicio4` varchar(50) NOT NULL,
  `series4` varchar(10) NOT NULL,
  `repeticoes4` varchar(10) NOT NULL,
  `exercicio5` varchar(50) NOT NULL,
  `series5` varchar(10) NOT NULL,
  `repeticoes5` varchar(10) NOT NULL,
  `exercicio6` varchar(50) NOT NULL,
  `series6` varchar(10) NOT NULL,
  `repeticoes6` varchar(10) NOT NULL,
  `exercicio7` varchar(50) NOT NULL,
  `series7` varchar(10) NOT NULL,
  `repeticoes7` varchar(10) NOT NULL,
  `exercicio8` varchar(50) NOT NULL,
  `series8` varchar(10) NOT NULL,
  `repeticoes8` varchar(10) NOT NULL,
  `observacao` varchar(80) NOT NULL,
  UNIQUE KEY `login_usuario` (`login_usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tbbiceps`
--

INSERT INTO `tbbiceps` (`login_usuario`, `nome_personal`, `telefone_personal`, `email_personal`, `exercicio1`, `series1`, `repeticoes1`, `exercicio2`, `series2`, `repeticoes2`, `exercicio3`, `series3`, `repeticoes3`, `exercicio4`, `series4`, `repeticoes4`, `exercicio5`, `series5`, `repeticoes5`, `exercicio6`, `series6`, `repeticoes6`, `exercicio7`, `series7`, `repeticoes7`, `exercicio8`, `series8`, `repeticoes8`, `observacao`) VALUES
('dyego', 'Guilherme', '11975286494', 'gui@gmail.com', 'Rosca Direta', '4', '12', 'Rosca Martelo', '4', '12', 'Rosca 21', '3', '21', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbcardio`
--

DROP TABLE IF EXISTS `tbcardio`;
CREATE TABLE IF NOT EXISTS `tbcardio` (
  `login` varchar(50) NOT NULL,
  `data_hora` date NOT NULL,
  `tempo` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tbcardio`
--

INSERT INTO `tbcardio` (`login`, `data_hora`, `tempo`) VALUES
('123', '0000-00-00', 3),
('123', '0000-00-00', 1),
('123', '0000-00-00', 2),
('123', '0000-00-00', 4),
('123', '0000-00-00', 5),
('123', '0000-00-00', 6),
('123', '0000-00-00', 7),
('123', '0000-00-00', 8),
('123', '2023-09-27', 8),
('123', '2023-09-27', 3),
('123', '2023-09-27', 9),
('1235', '2023-09-27', 2),
('1235', '2023-09-27', 1),
('1235', '2023-09-27', 3),
('1235', '2023-09-27', 4),
('1235', '2023-09-27', 2),
('1235', '2023-09-27', 3),
('1235', '2023-09-27', 5),
('1235', '2023-09-27', 4),
('1235', '2023-09-27', 2),
('1235', '2023-09-27', 1),
('123', '2023-09-28', 2),
('123', '2023-09-28', 3),
('123', '2023-09-28', 4),
('123', '2023-09-28', 5),
('123', '2023-10-03', 2),
('123', '2023-10-03', 3),
('123', '2023-10-03', 1),
('123', '2023-10-03', 4),
('123', '2023-10-03', 3),
('123', '2023-10-03', 1),
('123', '2023-10-03', 1),
('123', '2023-10-03', 1),
('123', '2023-10-03', 1),
('123', '2023-10-05', 3),
('edu', '2023-10-11', 5),
('edu', '2023-10-11', 2),
('edu', '2023-10-11', 11),
('dyego', '2023-12-12', 6),
('dyego', '2023-12-12', 3),
('dyego', '2023-12-12', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbcostas`
--

DROP TABLE IF EXISTS `tbcostas`;
CREATE TABLE IF NOT EXISTS `tbcostas` (
  `login_usuario` varchar(50) NOT NULL,
  `nome_personal` varchar(50) NOT NULL,
  `telefone_personal` varchar(30) NOT NULL,
  `email_personal` varchar(150) NOT NULL,
  `exercicio1` varchar(50) NOT NULL,
  `series1` varchar(10) NOT NULL,
  `repeticoes1` varchar(10) NOT NULL,
  `exercicio2` varchar(50) NOT NULL,
  `series2` varchar(10) NOT NULL,
  `repeticoes2` varchar(10) NOT NULL,
  `exercicio3` varchar(50) NOT NULL,
  `series3` varchar(10) NOT NULL,
  `repeticoes3` varchar(10) NOT NULL,
  `exercicio4` varchar(50) NOT NULL,
  `series4` varchar(10) NOT NULL,
  `repeticoes4` varchar(10) NOT NULL,
  `exercicio5` varchar(50) NOT NULL,
  `series5` varchar(10) NOT NULL,
  `repeticoes5` varchar(10) NOT NULL,
  `exercicio6` varchar(50) NOT NULL,
  `series6` varchar(10) NOT NULL,
  `repeticoes6` varchar(10) NOT NULL,
  `exercicio7` varchar(50) NOT NULL,
  `series7` varchar(10) NOT NULL,
  `repeticoes7` varchar(10) NOT NULL,
  `exercicio8` varchar(50) NOT NULL,
  `series8` varchar(10) NOT NULL,
  `repeticoes8` varchar(10) NOT NULL,
  `observacao` varchar(80) NOT NULL,
  UNIQUE KEY `login_usuario` (`login_usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tbcostas`
--

INSERT INTO `tbcostas` (`login_usuario`, `nome_personal`, `telefone_personal`, `email_personal`, `exercicio1`, `series1`, `repeticoes1`, `exercicio2`, `series2`, `repeticoes2`, `exercicio3`, `series3`, `repeticoes3`, `exercicio4`, `series4`, `repeticoes4`, `exercicio5`, `series5`, `repeticoes5`, `exercicio6`, `series6`, `repeticoes6`, `exercicio7`, `series7`, `repeticoes7`, `exercicio8`, `series8`, `repeticoes8`, `observacao`) VALUES
('dyego', 'Guilherme', '11975286494', 'gui@gmail.com', 'Puxador Frente ', '4', '12', 'Remada cavalinho', '4', '12', 'Remada Máquina ', '4', '12', 'Pulley articulado', '4', '12', 'Barra', '4', '12', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbequipamento`
--

DROP TABLE IF EXISTS `tbequipamento`;
CREATE TABLE IF NOT EXISTS `tbequipamento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `caminho` varchar(255) NOT NULL,
  `cpf_cnpj` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nome_equipamento` varchar(255) NOT NULL,
  `login_academia` varchar(255) NOT NULL,
  `qnt_equipamento` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tbequipamento`
--

INSERT INTO `tbequipamento` (`id`, `caminho`, `cpf_cnpj`, `nome_equipamento`, `login_academia`, `qnt_equipamento`) VALUES
(7, '../../../img/imgs/RTX (4).png', '2354265758356', 'Teste1', 'acad', 2),
(8, '../../../img/imgs/cadeira.jfif', '12.345.678/0003-00', 'Cadeira', 'brutos', 5),
(9, '../../../img/imgs/halter.jpeg', '12.345.678/0001-00', 'halter', 'workout', 22),
(10, '../../../img/imgs/halter.jpeg', '12.345.678/0003-00', 'halter', 'brutos', 22);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbficha`
--

DROP TABLE IF EXISTS `tbficha`;
CREATE TABLE IF NOT EXISTS `tbficha` (
  `id_pd` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `login` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nivel` varchar(30) NOT NULL,
  `plano` int NOT NULL,
  `academia_selecionada` varchar(30) NOT NULL,
  `data_registro` datetime DEFAULT NULL,
  PRIMARY KEY (`id_pd`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tbficha`
--

INSERT INTO `tbficha` (`id_pd`, `nome`, `login`, `nivel`, `plano`, `academia_selecionada`, `data_registro`) VALUES
(29, 'Dyego', 'dyego', 'usuario', 3, 'Brutos Academia', '2023-12-11 11:24:11'),
(31, 'Dyego', 'dyego', 'usuario', 3, 'Brutos Academia', '2023-12-11 11:24:17'),
(34, 'Eduardo', 'edu', 'usuario', 3, 'Brutos Academia', '2023-12-11 11:27:42'),
(35, 'Eduardo', 'edu', 'usuario', 3, 'Brutos Academia', '2023-12-11 11:27:46'),
(36, 'Eduardo', 'edu', 'usuario', 3, 'Workout Academy', '2023-12-11 11:28:19'),
(37, 'Eduardo', 'edu', 'usuario', 3, 'Brutos Academia', '2023-12-11 11:28:23'),
(38, 'Eduardo', 'edu', 'usuario', 3, 'Workout Academy', '2023-12-11 11:28:27'),
(39, 'Eduardo', 'edu', 'usuario', 3, 'Workout Academy', '2023-12-11 11:28:32'),
(40, 'Eduardo', 'edu', 'usuario', 3, 'Workout Academy', '2023-12-11 11:28:36'),
(41, 'Eduardo', 'edu', 'usuario', 3, 'Workout Academy', '2023-12-11 11:28:43'),
(42, 'Dyego', 'dyego', 'usuario', 3, 'Brutos Academia', '2023-12-12 19:53:15'),
(43, 'Dyego', 'dyego', 'usuario', 3, 'Brutos Academia', '2023-12-12 19:53:39');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbfichaof`
--

DROP TABLE IF EXISTS `tbfichaof`;
CREATE TABLE IF NOT EXISTS `tbfichaof` (
  `id_pd` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `login2` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nivel` varchar(30) NOT NULL,
  `plano` int NOT NULL,
  `nome_academia` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `data_hora` datetime DEFAULT NULL,
  PRIMARY KEY (`id_pd`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tbfichaof`
--

INSERT INTO `tbfichaof` (`id_pd`, `nome`, `login2`, `nivel`, `plano`, `nome_academia`, `data_hora`) VALUES
(24, 'Eduardo Neves ', 'edu', 'usuario', 3, 'Teste', '2023-10-05 00:12:32'),
(30, 'Dyego', 'dyego', 'usuario', 3, 'Brutos Academia', '2023-12-11 11:24:14'),
(33, 'Eduardo', 'edu', 'usuario', 3, 'Brutos Academia', '2023-12-11 11:27:39'),
(32, 'Eduardo', 'edu', 'usuario', 3, 'Brutos Academia', '2023-12-11 11:27:35'),
(27, 'Dyego', 'dyego', 'usuario', 3, 'Brutos Academia', '2023-12-11 11:24:04');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbfuncionario`
--

DROP TABLE IF EXISTS `tbfuncionario`;
CREATE TABLE IF NOT EXISTS `tbfuncionario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `login` varchar(30) NOT NULL,
  `senha` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `numero` char(30) NOT NULL,
  `data_registro` date NOT NULL,
  `palavra_chave` varchar(40) NOT NULL,
  `nome_academia` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `login_academia` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tbfuncionario`
--

INSERT INTO `tbfuncionario` (`id`, `nome`, `login`, `senha`, `email`, `numero`, `data_registro`, `palavra_chave`, `nome_academia`, `login_academia`) VALUES
(2, 'Guilherme', 'gui', '123', 'gui@gmail.com', '11975286494', '2023-12-11', 'gui', 'Brutos Academia', 'brutos'),
(11, 'Amauri Roberto Mori', 'amauri', '123', 'mori@gmail.com', '119111412312', '2023-12-10', 'mori', 'Brutos Academia', 'brutos'),
(16, 'Fabricio', 'fabricio', '123', 'fabricio@gmail.com', '1194365787', '2023-10-06', 'fabricio', 'Workout', 'workout');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbfundo_acad`
--

DROP TABLE IF EXISTS `tbfundo_acad`;
CREATE TABLE IF NOT EXISTS `tbfundo_acad` (
  `login` varchar(50) NOT NULL,
  `caminho` varchar(900) NOT NULL,
  UNIQUE KEY `login` (`login`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tbfundo_acad`
--

INSERT INTO `tbfundo_acad` (`login`, `caminho`) VALUES
('brutos', '../../../img/imgs/verde.avif'),
('workout', '../../../img/imgs/acadazul.jpeg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbimagens_acad`
--

DROP TABLE IF EXISTS `tbimagens_acad`;
CREATE TABLE IF NOT EXISTS `tbimagens_acad` (
  `login` varchar(50) NOT NULL,
  `caminho` varchar(900) NOT NULL,
  UNIQUE KEY `login` (`login`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tbimagens_acad`
--

INSERT INTO `tbimagens_acad` (`login`, `caminho`) VALUES
('brutos', '../../../img/imgs/brutos.webp'),
('workout', '../../../img/imgs/work.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbimagens_acad_funcionario`
--

DROP TABLE IF EXISTS `tbimagens_acad_funcionario`;
CREATE TABLE IF NOT EXISTS `tbimagens_acad_funcionario` (
  `login` varchar(50) NOT NULL,
  `caminho` varchar(900) NOT NULL,
  UNIQUE KEY `login` (`login`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tbimagens_acad_funcionario`
--

INSERT INTO `tbimagens_acad_funcionario` (`login`, `caminho`) VALUES
('123', '../../../img/651f67997b386_teste.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbimagens_usuario`
--

DROP TABLE IF EXISTS `tbimagens_usuario`;
CREATE TABLE IF NOT EXISTS `tbimagens_usuario` (
  `login` varchar(50) NOT NULL,
  `caminho` varchar(900) NOT NULL,
  UNIQUE KEY `login` (`login`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tbimagens_usuario`
--

INSERT INTO `tbimagens_usuario` (`login`, `caminho`) VALUES
('123', '../img/imgs/RTX (5).png'),
('edu', '../img/imgs/edu.webp'),
('dyego', '../img/imgs/dyeg.webp'),
('rafa', '../img/imgs/rafa.webp');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbombro`
--

DROP TABLE IF EXISTS `tbombro`;
CREATE TABLE IF NOT EXISTS `tbombro` (
  `login_usuario` varchar(50) NOT NULL,
  `nome_personal` varchar(50) NOT NULL,
  `telefone_personal` varchar(30) NOT NULL,
  `email_personal` varchar(150) NOT NULL,
  `exercicio1` varchar(50) NOT NULL,
  `series1` varchar(10) NOT NULL,
  `repeticoes1` varchar(10) NOT NULL,
  `exercicio2` varchar(50) NOT NULL,
  `series2` varchar(10) NOT NULL,
  `repeticoes2` varchar(10) NOT NULL,
  `exercicio3` varchar(50) NOT NULL,
  `series3` varchar(10) NOT NULL,
  `repeticoes3` varchar(10) NOT NULL,
  `exercicio4` varchar(50) NOT NULL,
  `series4` varchar(10) NOT NULL,
  `repeticoes4` varchar(10) NOT NULL,
  `exercicio5` varchar(50) NOT NULL,
  `series5` varchar(10) NOT NULL,
  `repeticoes5` varchar(10) NOT NULL,
  `exercicio6` varchar(50) NOT NULL,
  `series6` varchar(10) NOT NULL,
  `repeticoes6` varchar(10) NOT NULL,
  `exercicio7` varchar(50) NOT NULL,
  `series7` varchar(10) NOT NULL,
  `repeticoes7` varchar(10) NOT NULL,
  `exercicio8` varchar(50) NOT NULL,
  `series8` varchar(10) NOT NULL,
  `repeticoes8` varchar(10) NOT NULL,
  `observacao` varchar(80) NOT NULL,
  UNIQUE KEY `login_usuario` (`login_usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tbombro`
--

INSERT INTO `tbombro` (`login_usuario`, `nome_personal`, `telefone_personal`, `email_personal`, `exercicio1`, `series1`, `repeticoes1`, `exercicio2`, `series2`, `repeticoes2`, `exercicio3`, `series3`, `repeticoes3`, `exercicio4`, `series4`, `repeticoes4`, `exercicio5`, `series5`, `repeticoes5`, `exercicio6`, `series6`, `repeticoes6`, `exercicio7`, `series7`, `repeticoes7`, `exercicio8`, `series8`, `repeticoes8`, `observacao`) VALUES
('dyego', 'Guilherme', '11975286494', 'gui@gmail.com', 'Elevação Lateral', '4', '12', 'Desenvolvimento com Halter', '4', '12', 'Elevação Lateral Cross ', '4', '12', 'Arnold Press', '4', '10', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbparceiro`
--

DROP TABLE IF EXISTS `tbparceiro`;
CREATE TABLE IF NOT EXISTS `tbparceiro` (
  `nome` varchar(50) NOT NULL,
  `login` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `telefone` char(20) NOT NULL,
  `cpf_cnpj` varchar(20) NOT NULL,
  `cidade` varchar(80) NOT NULL,
  `bairro` varchar(80) NOT NULL,
  `rua` varchar(150) NOT NULL,
  `numero` int NOT NULL,
  `cep` char(18) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tipo` varchar(15) NOT NULL,
  `plano` int NOT NULL,
  `senha` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `palavra_chave` varchar(30) NOT NULL,
  UNIQUE KEY `cpf_cnpj` (`cpf_cnpj`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tbparceiro`
--

INSERT INTO `tbparceiro` (`nome`, `login`, `telefone`, `cpf_cnpj`, `cidade`, `bairro`, `rua`, `numero`, `cep`, `email`, `tipo`, `plano`, `senha`, `palavra_chave`) VALUES
('Brutos Academia', 'brutos', '11900000003', '12.345.678/0003-00', 'Poá-SP', 'Jardim Fonte Aurea', 'Rua Luiza Lamberti Rossi', 123, '08554410', 'Brutos@gmail.com', 'academia', 3, '123', 'brutos'),
('Workout Academy', 'workout', '11900000001', '12.345.678/0001-00', 'Mogi das Cruzes-SP', 'Parque Monte Líbano', 'Rua Duarte de Freitas', 456, '08674130', 'Workout@gmail.com,', 'academia', 3, '123', 'workout');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbpeito`
--

DROP TABLE IF EXISTS `tbpeito`;
CREATE TABLE IF NOT EXISTS `tbpeito` (
  `login_usuario` varchar(50) NOT NULL,
  `nome_personal` varchar(50) NOT NULL,
  `telefone_personal` varchar(30) NOT NULL,
  `email_personal` varchar(150) NOT NULL,
  `exercicio1` varchar(50) NOT NULL,
  `series1` varchar(10) NOT NULL,
  `repeticoes1` varchar(10) NOT NULL,
  `exercicio2` varchar(50) NOT NULL,
  `series2` varchar(10) NOT NULL,
  `repeticoes2` varchar(10) NOT NULL,
  `exercicio3` varchar(50) NOT NULL,
  `series3` varchar(10) NOT NULL,
  `repeticoes3` varchar(10) NOT NULL,
  `exercicio4` varchar(50) NOT NULL,
  `series4` varchar(10) NOT NULL,
  `repeticoes4` varchar(10) NOT NULL,
  `exercicio5` varchar(50) NOT NULL,
  `series5` varchar(10) NOT NULL,
  `repeticoes5` varchar(10) NOT NULL,
  `exercicio6` varchar(50) NOT NULL,
  `series6` varchar(10) NOT NULL,
  `repeticoes6` varchar(10) NOT NULL,
  `exercicio7` varchar(50) NOT NULL,
  `series7` varchar(10) NOT NULL,
  `repeticoes7` varchar(10) NOT NULL,
  `exercicio8` varchar(50) NOT NULL,
  `series8` varchar(10) NOT NULL,
  `repeticoes8` varchar(10) NOT NULL,
  `observacao` varchar(80) NOT NULL,
  UNIQUE KEY `login_usuario` (`login_usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tbpeito`
--

INSERT INTO `tbpeito` (`login_usuario`, `nome_personal`, `telefone_personal`, `email_personal`, `exercicio1`, `series1`, `repeticoes1`, `exercicio2`, `series2`, `repeticoes2`, `exercicio3`, `series3`, `repeticoes3`, `exercicio4`, `series4`, `repeticoes4`, `exercicio5`, `series5`, `repeticoes5`, `exercicio6`, `series6`, `repeticoes6`, `exercicio7`, `series7`, `repeticoes7`, `exercicio8`, `series8`, `repeticoes8`, `observacao`) VALUES
('dyego', 'Guilherme', '11975286494', 'gui@gmail.com', 'Supino Inclinado', '4', '12', 'Crucifixo ', '4', '12', 'Cross Over ', '4', '12', 'Supino Reto', '4', '12', 'flexão', '3', '10', '', '', '', '', '', '', '', '', '', 'Bisserie  ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbperguntasficha`
--

DROP TABLE IF EXISTS `tbperguntasficha`;
CREATE TABLE IF NOT EXISTS `tbperguntasficha` (
  `login` varchar(45) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `numero` char(30) NOT NULL,
  `data` date NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `altura` char(8) NOT NULL,
  `peso` char(8) NOT NULL,
  `objetivo` varchar(200) NOT NULL,
  `restricao` varchar(200) NOT NULL,
  `medicamento` varchar(200) NOT NULL,
  `experiencia` varchar(200) NOT NULL,
  `frequencia` varchar(200) NOT NULL,
  `dia` varchar(50) NOT NULL,
  `tempo` varchar(50) NOT NULL,
  `treinamento` varchar(100) NOT NULL,
  `alergia` varchar(200) NOT NULL,
  `extra` varchar(500) NOT NULL,
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tbperguntasficha`
--

INSERT INTO `tbperguntasficha` (`login`, `cpf`, `email`, `numero`, `data`, `sexo`, `altura`, `peso`, `objetivo`, `restricao`, `medicamento`, `experiencia`, `frequencia`, `dia`, `tempo`, `treinamento`, `alergia`, `extra`) VALUES
('dyego', '33333333333', 'dyego@gmail.com', '11900000003', '2005-05-05', 'masculino', '160', '90', 'Ganhar massa', 'não', 'sim', 'sim', 'todo dia', 'todos', '2 horas em média', 'Musculação', 'não', 'não');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbperna`
--

DROP TABLE IF EXISTS `tbperna`;
CREATE TABLE IF NOT EXISTS `tbperna` (
  `login_usuario` varchar(50) NOT NULL,
  `nome_personal` varchar(50) NOT NULL,
  `telefone_personal` varchar(30) NOT NULL,
  `email_personal` varchar(150) NOT NULL,
  `exercicio1` varchar(50) NOT NULL,
  `series1` varchar(10) NOT NULL,
  `repeticoes1` varchar(10) NOT NULL,
  `exercicio2` varchar(50) NOT NULL,
  `series2` varchar(10) NOT NULL,
  `repeticoes2` varchar(10) NOT NULL,
  `exercicio3` varchar(50) NOT NULL,
  `series3` varchar(10) NOT NULL,
  `repeticoes3` varchar(10) NOT NULL,
  `exercicio4` varchar(50) NOT NULL,
  `series4` varchar(10) NOT NULL,
  `repeticoes4` varchar(10) NOT NULL,
  `exercicio5` varchar(50) NOT NULL,
  `series5` varchar(10) NOT NULL,
  `repeticoes5` varchar(10) NOT NULL,
  `exercicio6` varchar(50) NOT NULL,
  `series6` varchar(10) NOT NULL,
  `repeticoes6` varchar(10) NOT NULL,
  `exercicio7` varchar(50) NOT NULL,
  `series7` varchar(10) NOT NULL,
  `repeticoes7` varchar(10) NOT NULL,
  `exercicio8` varchar(50) NOT NULL,
  `series8` varchar(10) NOT NULL,
  `repeticoes8` varchar(10) NOT NULL,
  `observacao` varchar(80) NOT NULL,
  UNIQUE KEY `login_usuario` (`login_usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tbperna`
--

INSERT INTO `tbperna` (`login_usuario`, `nome_personal`, `telefone_personal`, `email_personal`, `exercicio1`, `series1`, `repeticoes1`, `exercicio2`, `series2`, `repeticoes2`, `exercicio3`, `series3`, `repeticoes3`, `exercicio4`, `series4`, `repeticoes4`, `exercicio5`, `series5`, `repeticoes5`, `exercicio6`, `series6`, `repeticoes6`, `exercicio7`, `series7`, `repeticoes7`, `exercicio8`, `series8`, `repeticoes8`, `observacao`) VALUES
('dyego', 'Guilherme', '11975286494', 'gui@gmail.com', 'Leg Press', '4', '12', 'Agachamento Livre', '5', '10', 'Cadeira Extensora', '4', '12', 'Cadeira Flexora', '4', '12', 'Leg Press 90°', '5', '10', 'Bulgaro', '5', '10', 'Panturilha Smith', '10', '10', 'Panturrilha Máquina', '10', '10', 'Panturrilha treino GVT');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbtrapezio`
--

DROP TABLE IF EXISTS `tbtrapezio`;
CREATE TABLE IF NOT EXISTS `tbtrapezio` (
  `login_usuario` varchar(50) NOT NULL,
  `nome_personal` varchar(50) NOT NULL,
  `telefone_personal` varchar(30) NOT NULL,
  `email_personal` varchar(150) NOT NULL,
  `exercicio1` varchar(50) NOT NULL,
  `series1` varchar(10) NOT NULL,
  `repeticoes1` varchar(10) NOT NULL,
  `exercicio2` varchar(50) NOT NULL,
  `series2` varchar(10) NOT NULL,
  `repeticoes2` varchar(10) NOT NULL,
  `exercicio3` varchar(50) NOT NULL,
  `series3` varchar(10) NOT NULL,
  `repeticoes3` varchar(10) NOT NULL,
  `exercicio4` varchar(50) NOT NULL,
  `series4` varchar(10) NOT NULL,
  `repeticoes4` varchar(10) NOT NULL,
  `exercicio5` varchar(50) NOT NULL,
  `series5` varchar(10) NOT NULL,
  `repeticoes5` varchar(10) NOT NULL,
  `exercicio6` varchar(50) NOT NULL,
  `series6` varchar(10) NOT NULL,
  `repeticoes6` varchar(10) NOT NULL,
  `exercicio7` varchar(50) NOT NULL,
  `series7` varchar(10) NOT NULL,
  `repeticoes7` varchar(10) NOT NULL,
  `exercicio8` varchar(50) NOT NULL,
  `series8` varchar(10) NOT NULL,
  `repeticoes8` varchar(10) NOT NULL,
  `observacao` varchar(80) NOT NULL,
  UNIQUE KEY `login_usuario` (`login_usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tbtrapezio`
--

INSERT INTO `tbtrapezio` (`login_usuario`, `nome_personal`, `telefone_personal`, `email_personal`, `exercicio1`, `series1`, `repeticoes1`, `exercicio2`, `series2`, `repeticoes2`, `exercicio3`, `series3`, `repeticoes3`, `exercicio4`, `series4`, `repeticoes4`, `exercicio5`, `series5`, `repeticoes5`, `exercicio6`, `series6`, `repeticoes6`, `exercicio7`, `series7`, `repeticoes7`, `exercicio8`, `series8`, `repeticoes8`, `observacao`) VALUES
('dyego', 'Guilherme', '11975286494', 'gui@gmail.com', 'Encolhimento com halteres', '4', '12', 'Encolhimento com barra por trás', '4', '12', 'Encolhimento com barra pela frente', '4', '12', 'Remada alta', '4', '12', 'Crucifixo invertido na polia', '4', '12', '', '', '', '', '', '', '', '', '', 'nenhuma observação');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbtriceps`
--

DROP TABLE IF EXISTS `tbtriceps`;
CREATE TABLE IF NOT EXISTS `tbtriceps` (
  `login_usuario` varchar(50) NOT NULL,
  `nome_personal` varchar(50) NOT NULL,
  `telefone_personal` varchar(30) NOT NULL,
  `email_personal` varchar(150) NOT NULL,
  `exercicio1` varchar(50) NOT NULL,
  `series1` varchar(10) NOT NULL,
  `repeticoes1` varchar(10) NOT NULL,
  `exercicio2` varchar(50) NOT NULL,
  `series2` varchar(10) NOT NULL,
  `repeticoes2` varchar(10) NOT NULL,
  `exercicio3` varchar(50) NOT NULL,
  `series3` varchar(10) NOT NULL,
  `repeticoes3` varchar(10) NOT NULL,
  `exercicio4` varchar(50) NOT NULL,
  `series4` varchar(10) NOT NULL,
  `repeticoes4` varchar(10) NOT NULL,
  `exercicio5` varchar(50) NOT NULL,
  `series5` varchar(10) NOT NULL,
  `repeticoes5` varchar(10) NOT NULL,
  `exercicio6` varchar(50) NOT NULL,
  `series6` varchar(10) NOT NULL,
  `repeticoes6` varchar(10) NOT NULL,
  `exercicio7` varchar(50) NOT NULL,
  `series7` varchar(10) NOT NULL,
  `repeticoes7` varchar(10) NOT NULL,
  `exercicio8` varchar(50) NOT NULL,
  `series8` varchar(10) NOT NULL,
  `repeticoes8` varchar(10) NOT NULL,
  `observacao` varchar(80) NOT NULL,
  UNIQUE KEY `login_usuario` (`login_usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbusuario`
--

DROP TABLE IF EXISTS `tbusuario`;
CREATE TABLE IF NOT EXISTS `tbusuario` (
  `nome` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `login` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cpf` char(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `numero` char(25) NOT NULL,
  `senha` varchar(30) NOT NULL,
  `palavra_chave` varchar(30) NOT NULL,
  `plano` int NOT NULL,
  `nivel` varchar(30) NOT NULL,
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tbusuario`
--

INSERT INTO `tbusuario` (`nome`, `login`, `cpf`, `email`, `numero`, `senha`, `palavra_chave`, `plano`, `nivel`) VALUES
('ITSAS', 'adm', '000000000000', 'itsastech.ltda@gmail.com', '', '123', 'tcc2023', 0, 'adm'),
('Dyego', 'dyego', '33333333333', 'dyego@gmail.com', '11900000003', '123', 'dyego', 3, 'usuario'),
('Rafa', 'rafa', '22222222222', 'rafa@gmail.com', '11900000002', '123', 'rafa', 2, 'usuario'),
('Eduardo', 'edu', '51858954894', 'edu@gmail.com', '11998652718', '123', 'edu', 3, 'usuario');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
