-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: intelequiz
-- ------------------------------------------------------
-- Server version	5.7.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `rel_professor_disciplina`
--

DROP TABLE IF EXISTS `rel_professor_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rel_professor_disciplina` (
  `DISCIPLINA_ID` int(11) NOT NULL,
  `PROFESSOR_MATRICULA` varchar(15) NOT NULL,
  PRIMARY KEY (`DISCIPLINA_ID`,`PROFESSOR_MATRICULA`),
  KEY `fk_TB_DISCIPLINA_has_TB_PROFESSOR_TB_PROFESSOR1_idx` (`PROFESSOR_MATRICULA`),
  KEY `fk_TB_DISCIPLINA_has_TB_PROFESSOR_TB_DISCIPLINA1_idx` (`DISCIPLINA_ID`),
  CONSTRAINT `FK_DISCIPLINA` FOREIGN KEY (`DISCIPLINA_ID`) REFERENCES `tb_disciplina` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_PROFESSOR` FOREIGN KEY (`PROFESSOR_MATRICULA`) REFERENCES `tb_professor` (`MATRICULA`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rel_professor_disciplina`
--

LOCK TABLES `rel_professor_disciplina` WRITE;
/*!40000 ALTER TABLE `rel_professor_disciplina` DISABLE KEYS */;
INSERT INTO `rel_professor_disciplina` VALUES (1,'MA123'),(2,'MA123');
/*!40000 ALTER TABLE `rel_professor_disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rel_questao_quiz`
--

DROP TABLE IF EXISTS `rel_questao_quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rel_questao_quiz` (
  `QUESTAO_ID` int(11) NOT NULL,
  `QUIZ_ID` int(11) NOT NULL,
  PRIMARY KEY (`QUESTAO_ID`,`QUIZ_ID`),
  KEY `fk_TB_MOD_QUIZ_has_TB_MOD_QUESTAO_TB_MOD_QUESTAO1_idx` (`QUESTAO_ID`),
  KEY `fk_TB_MOD_QUIZ_has_TB_MOD_QUESTAO_TB_MOD_QUIZ1_idx` (`QUIZ_ID`),
  CONSTRAINT `fk_TB_MOD_QUIZ_has_TB_MOD_QUESTAO_TB_MOD_QUESTAO1` FOREIGN KEY (`QUESTAO_ID`) REFERENCES `tb_questao` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_TB_MOD_QUIZ_has_TB_MOD_QUESTAO_TB_MOD_QUIZ1` FOREIGN KEY (`QUIZ_ID`) REFERENCES `tb_quiz` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rel_questao_quiz`
--

LOCK TABLES `rel_questao_quiz` WRITE;
/*!40000 ALTER TABLE `rel_questao_quiz` DISABLE KEYS */;
/*!40000 ALTER TABLE `rel_questao_quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rel_questao_tema`
--

DROP TABLE IF EXISTS `rel_questao_tema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rel_questao_tema` (
  `QUESTAO_ID` int(11) NOT NULL,
  `TEMA_ID` int(11) NOT NULL,
  PRIMARY KEY (`QUESTAO_ID`,`TEMA_ID`),
  KEY `fk_TB_TEMA_has_TB_QUESTAO_TB_TEMA1_idx` (`TEMA_ID`),
  CONSTRAINT `FK_QUESTAO` FOREIGN KEY (`QUESTAO_ID`) REFERENCES `tb_questao` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_TEMA` FOREIGN KEY (`TEMA_ID`) REFERENCES `tb_tema` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rel_questao_tema`
--

LOCK TABLES `rel_questao_tema` WRITE;
/*!40000 ALTER TABLE `rel_questao_tema` DISABLE KEYS */;
INSERT INTO `rel_questao_tema` VALUES (1,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1),(90,1);
/*!40000 ALTER TABLE `rel_questao_tema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rel_treino_resposta`
--

DROP TABLE IF EXISTS `rel_treino_resposta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rel_treino_resposta` (
  `RESPOSTA_ID` int(11) NOT NULL,
  `TREINO_ID` int(11) NOT NULL,
  PRIMARY KEY (`RESPOSTA_ID`,`TREINO_ID`),
  KEY `fk_TB_RESPOSTA_has_TB_TREINO_TB_TREINO1_idx` (`TREINO_ID`),
  CONSTRAINT `FK_RESPOSTA` FOREIGN KEY (`RESPOSTA_ID`) REFERENCES `tb_resposta` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_TREINO` FOREIGN KEY (`TREINO_ID`) REFERENCES `tb_treino` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rel_treino_resposta`
--

LOCK TABLES `rel_treino_resposta` WRITE;
/*!40000 ALTER TABLE `rel_treino_resposta` DISABLE KEYS */;
/*!40000 ALTER TABLE `rel_treino_resposta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rel_turma_aluno`
--

DROP TABLE IF EXISTS `rel_turma_aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rel_turma_aluno` (
  `TURMA_ID` int(11) NOT NULL,
  `ALUNO_RA` varchar(15) NOT NULL,
  PRIMARY KEY (`TURMA_ID`,`ALUNO_RA`),
  KEY `fk_TB_TURMA_has_TB_ALUNO_TB_ALUNO1_idx` (`ALUNO_RA`),
  KEY `fk_TB_TURMA_has_TB_ALUNO_TB_TURMA1_idx` (`TURMA_ID`),
  CONSTRAINT `fk_TB_TURMA_has_TB_ALUNO_TB_ALUNO1` FOREIGN KEY (`ALUNO_RA`) REFERENCES `tb_aluno` (`RA`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_TB_TURMA_has_TB_ALUNO_TB_TURMA1` FOREIGN KEY (`TURMA_ID`) REFERENCES `tb_turma` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rel_turma_aluno`
--

LOCK TABLES `rel_turma_aluno` WRITE;
/*!40000 ALTER TABLE `rel_turma_aluno` DISABLE KEYS */;
/*!40000 ALTER TABLE `rel_turma_aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_aluno`
--

DROP TABLE IF EXISTS `tb_aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_aluno` (
  `RA` varchar(15) NOT NULL,
  `NOME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`RA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_aluno`
--

LOCK TABLES `tb_aluno` WRITE;
/*!40000 ALTER TABLE `tb_aluno` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_disciplina`
--

DROP TABLE IF EXISTS `tb_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_disciplina` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOME` varchar(100) NOT NULL,
  `SIGLA` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_disciplina`
--

LOCK TABLES `tb_disciplina` WRITE;
/*!40000 ALTER TABLE `tb_disciplina` DISABLE KEYS */;
INSERT INTO `tb_disciplina` VALUES (1,'L�gica de Programa��o','LP'),(2,'Engenharia de Software','ES');
/*!40000 ALTER TABLE `tb_disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_professor`
--

DROP TABLE IF EXISTS `tb_professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_professor` (
  `MATRICULA` varchar(15) NOT NULL,
  `NOME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`MATRICULA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_professor`
--

LOCK TABLES `tb_professor` WRITE;
/*!40000 ALTER TABLE `tb_professor` DISABLE KEYS */;
INSERT INTO `tb_professor` VALUES ('MA123','Roberto Cantanhede');
/*!40000 ALTER TABLE `tb_professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_questao`
--

DROP TABLE IF EXISTS `tb_questao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_questao` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIPO` int(1) DEFAULT NULL,
  `NIVEL` int(1) DEFAULT NULL,
  `TEXTO` varchar(255) DEFAULT NULL,
  `STATUS` int(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_questao`
--

LOCK TABLES `tb_questao` WRITE;
/*!40000 ALTER TABLE `tb_questao` DISABLE KEYS */;
INSERT INTO `tb_questao` VALUES (1,0,0,'Java � orientado a objeto',1),(61,0,0,'Teste de quest�o com toaster',0),(62,0,0,'e agora com o toaster no centro',0),(63,0,0,'e agora com o redirecionamento',0),(64,0,0,'Automatico?',0),(65,0,0,'com a exception ajustada',0),(66,0,0,'hummm',0),(67,0,0,'Agora vai',0),(68,0,0,'nem que seja a for�a',0),(69,0,0,'so de teste',0),(70,0,0,'vamos ver',0),(71,0,0,'vamos ver',0),(72,0,0,'teste',0),(73,0,0,'teste',0),(74,0,0,'Teste 2334',0),(75,0,0,'teste 0032',0),(76,0,0,'teste 0034',0),(77,0,0,'teste 0040',0),(78,0,0,'teste 0056',0),(79,0,0,'teste 0059',0),(80,0,0,'teste 0100',0),(81,0,0,'teste 0102',0),(82,0,0,'teste 0104',0),(83,0,0,'teste 0109',0),(84,0,0,'teste 0109',0),(85,0,0,'teste 0124',0),(86,0,0,'teste 0125',0),(87,0,0,'TESTE 0127',0),(88,0,0,'TESTE 0128',0),(89,0,0,'TESTE 0129',0),(90,0,0,'teste from mobile',0);
/*!40000 ALTER TABLE `tb_questao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_quiz`
--

DROP TABLE IF EXISTS `tb_quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_quiz` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROFESSOR_MATRICULA` varchar(15) NOT NULL,
  `DISCIPLINA_ID` int(11) NOT NULL,
  `DESCRICAO` varchar(255) DEFAULT NULL,
  `STATUS` int(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_PROFESSOR_DISCIPLINA_idx` (`PROFESSOR_MATRICULA`,`DISCIPLINA_ID`),
  CONSTRAINT `FK_QUIZ_PROFESSOR_DISCIPLINA` FOREIGN KEY (`PROFESSOR_MATRICULA`, `DISCIPLINA_ID`) REFERENCES `rel_professor_disciplina` (`PROFESSOR_MATRICULA`, `DISCIPLINA_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_quiz`
--

LOCK TABLES `tb_quiz` WRITE;
/*!40000 ALTER TABLE `tb_quiz` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_resposta`
--

DROP TABLE IF EXISTS `tb_resposta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_resposta` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `QUESTAO_ID` int(11) NOT NULL,
  `TEXTO` varchar(255) DEFAULT NULL,
  `CERTA` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_TB_MOD_RESPOSTA_TB_MOD_QUESTAO1_idx` (`QUESTAO_ID`),
  CONSTRAINT `FK_RESPOSTA_QUESTAO` FOREIGN KEY (`QUESTAO_ID`) REFERENCES `tb_questao` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_resposta`
--

LOCK TABLES `tb_resposta` WRITE;
/*!40000 ALTER TABLE `tb_resposta` DISABLE KEYS */;
INSERT INTO `tb_resposta` VALUES (1,1,'Verdadeiro',1),(2,1,'Falso',0),(23,61,'Verdadeiro',1),(24,61,'Falso',0),(25,62,'Verdadeiro',1),(26,62,'Falso',0),(27,63,'Verdadeiro',0),(28,63,'Falso',1),(29,64,'Verdadeiro',1),(30,64,'Falso',0),(31,65,'Verdadeiro',1),(32,65,'Falso',0),(33,66,'Verdadeiro',0),(34,66,'Falso',1),(35,67,'Verdadeiro',1),(36,67,'Falso',0),(37,68,'Verdadeiro',1),(38,68,'Falso',0),(39,69,'Verdadeiro',0),(40,69,'Falso',1),(41,70,'Verdadeiro',1),(42,70,'Falso',0),(43,71,'Verdadeiro',1),(44,71,'Falso',0),(45,72,'Verdadeiro',1),(46,72,'Falso',0),(47,73,'Verdadeiro',1),(48,73,'Falso',0),(49,74,'Verdadeiro',1),(50,74,'Falso',0),(51,75,'Verdadeiro',1),(52,75,'Falso',0),(53,76,'Verdadeiro',0),(54,76,'Falso',1),(55,77,'Verdadeiro',1),(56,77,'Falso',0),(57,78,'Verdadeiro',0),(58,78,'Falso',1),(59,79,'Verdadeiro',1),(60,79,'Falso',0),(61,80,'Verdadeiro',1),(62,80,'Falso',0),(63,81,'Verdadeiro',1),(64,81,'Falso',0),(65,82,'Verdadeiro',1),(66,82,'Falso',0),(67,83,'Verdadeiro',1),(68,83,'Falso',0),(69,84,'Verdadeiro',1),(70,84,'Falso',0),(71,85,'Verdadeiro',1),(72,85,'Falso',0),(73,86,'Verdadeiro',1),(74,86,'Falso',0),(75,87,'Verdadeiro',1),(76,87,'Falso',0),(77,88,'Verdadeiro',1),(78,88,'Falso',0),(79,89,'Verdadeiro',1),(80,89,'Falso',0),(81,90,'Verdadeiro',1),(82,90,'Falso',0);
/*!40000 ALTER TABLE `tb_resposta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tema`
--

DROP TABLE IF EXISTS `tb_tema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_tema` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROFESSOR_MATRICULA` varchar(15) NOT NULL,
  `DISCIPLINA_ID` int(11) NOT NULL,
  `NOME` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_TB_TEMA_TB_DISCIPLINA_has_TB_PROFESSOR1_idx` (`DISCIPLINA_ID`,`PROFESSOR_MATRICULA`),
  CONSTRAINT `FK_TEMA_PROFESSOR_DISCIPLINA` FOREIGN KEY (`DISCIPLINA_ID`, `PROFESSOR_MATRICULA`) REFERENCES `rel_professor_disciplina` (`DISCIPLINA_ID`, `PROFESSOR_MATRICULA`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tema`
--

LOCK TABLES `tb_tema` WRITE;
/*!40000 ALTER TABLE `tb_tema` DISABLE KEYS */;
INSERT INTO `tb_tema` VALUES (1,'MA123',1,'Programa��o'),(2,'MA123',1,'Orienta��o a Objeto');
/*!40000 ALTER TABLE `tb_tema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_treino`
--

DROP TABLE IF EXISTS `tb_treino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_treino` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ALUNO_RA` varchar(15) NOT NULL,
  `TURMA_QUIZ_ID` int(11) NOT NULL,
  `TS_INICIO` datetime DEFAULT NULL,
  `TS_FIM` datetime DEFAULT NULL,
  `PONTUACAO` int(11) DEFAULT NULL,
  `APROVEITAMENTO` decimal(11,2) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_TB_TREINO_TB_ALUNO1_idx` (`ALUNO_RA`),
  KEY `FK_TURMA_QUIZ_idx` (`TURMA_QUIZ_ID`),
  CONSTRAINT `FK_ALUNO` FOREIGN KEY (`ALUNO_RA`) REFERENCES `tb_aluno` (`RA`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_TURMA_QUIZ` FOREIGN KEY (`TURMA_QUIZ_ID`) REFERENCES `tb_turma_quiz` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_treino`
--

LOCK TABLES `tb_treino` WRITE;
/*!40000 ALTER TABLE `tb_treino` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_treino` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_turma`
--

DROP TABLE IF EXISTS `tb_turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_turma` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROFESSOR_MATRICULA` varchar(15) NOT NULL,
  `DISCIPLINA_ID` int(11) NOT NULL,
  `TURNO` int(1) DEFAULT NULL,
  `ANO` int(4) DEFAULT NULL,
  `SEMESTRE` int(1) DEFAULT NULL,
  `LETRA` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_PROFESSOR_DISCIPLINA_idx` (`PROFESSOR_MATRICULA`,`DISCIPLINA_ID`),
  CONSTRAINT `FK_TURMA_PROFESSOR_DISCIPLINA` FOREIGN KEY (`PROFESSOR_MATRICULA`, `DISCIPLINA_ID`) REFERENCES `rel_professor_disciplina` (`PROFESSOR_MATRICULA`, `DISCIPLINA_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_turma`
--

LOCK TABLES `tb_turma` WRITE;
/*!40000 ALTER TABLE `tb_turma` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_turma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_turma_quiz`
--

DROP TABLE IF EXISTS `tb_turma_quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_turma_quiz` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TURMA_ID` int(11) NOT NULL,
  `QUIZ_ID` int(11) NOT NULL,
  `TS_PUBLICACAO` datetime DEFAULT NULL,
  `TS_ENCERRAMENTO` datetime DEFAULT NULL,
  `STATUS` int(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_TB_QUIZ_has_TB_TURMA_TB_TURMA1_idx` (`TURMA_ID`),
  KEY `fk_TB_QUIZ_has_TB_TURMA_TB_QUIZ1_idx` (`QUIZ_ID`),
  CONSTRAINT `fk_TB_QUIZ_has_TB_TURMA_TB_QUIZ1` FOREIGN KEY (`QUIZ_ID`) REFERENCES `tb_quiz` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_TB_QUIZ_has_TB_TURMA_TB_TURMA1` FOREIGN KEY (`TURMA_ID`) REFERENCES `tb_turma` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_turma_quiz`
--

LOCK TABLES `tb_turma_quiz` WRITE;
/*!40000 ALTER TABLE `tb_turma_quiz` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_turma_quiz` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-19  1:43:15
