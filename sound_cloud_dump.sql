-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: soun_final
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `galeria_scout`
--

DROP TABLE IF EXISTS `galeria_scout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galeria_scout` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `titulo` text DEFAULT NULL,
  `revista` varchar(50) DEFAULT NULL,
  `data` varchar(50) DEFAULT NULL,
  `fotografo` varchar(50) DEFAULT NULL,
  `capa` text DEFAULT NULL,
  `album` text DEFAULT NULL,
  `foto1` text DEFAULT NULL,
  `foto2` text DEFAULT NULL,
  `foto3` text DEFAULT NULL,
  `foto4` text DEFAULT NULL,
  `foto5` text DEFAULT NULL,
  `foto6` text DEFAULT NULL,
  `foto7` text DEFAULT NULL,
  `foto8` text DEFAULT NULL,
  `foto9` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galeria_scout`
--

LOCK TABLES `galeria_scout` WRITE;
/*!40000 ALTER TABLE `galeria_scout` DISABLE KEYS */;
/*!40000 ALTER TABLE `galeria_scout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galeria_sound`
--

DROP TABLE IF EXISTS `galeria_sound`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galeria_sound` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `titulo` text DEFAULT NULL,
  `revista` varchar(50) DEFAULT NULL,
  `data` varchar(50) DEFAULT NULL,
  `fotografo` varchar(50) DEFAULT NULL,
  `capa` text DEFAULT NULL,
  `album` varchar(100) DEFAULT NULL,
  `foto1` text DEFAULT NULL,
  `foto2` text DEFAULT NULL,
  `foto3` text DEFAULT NULL,
  `foto4` text DEFAULT NULL,
  `foto5` text DEFAULT NULL,
  `foto6` text DEFAULT NULL,
  `foto7` text DEFAULT NULL,
  `foto8` text DEFAULT NULL,
  `foto9` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galeria_sound`
--

LOCK TABLES `galeria_sound` WRITE;
/*!40000 ALTER TABLE `galeria_sound` DISABLE KEYS */;
/*!40000 ALTER TABLE `galeria_sound` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `musica`
--

DROP TABLE IF EXISTS `musica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `musica` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) DEFAULT NULL,
  `artista` varchar(100) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `cargo` varchar(100) DEFAULT NULL,
  `texto` varchar(100) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `capa` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musica`
--

LOCK TABLES `musica` WRITE;
/*!40000 ALTER TABLE `musica` DISABLE KEYS */;
/*!40000 ALTER TABLE `musica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) DEFAULT NULL,
  `texto` text DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `capa` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist`
--

LOCK TABLES `playlist` WRITE;
/*!40000 ALTER TABLE `playlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz` (
  `id` int(11) NOT NULL,
  `pergunta` varchar(45) NOT NULL,
  `resposta1` varchar(45) NOT NULL,
  `resposta2` varchar(45) NOT NULL,
  `resposta3` varchar(45) NOT NULL,
  `resposta4` varchar(45) NOT NULL,
  `certa` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz`
--

LOCK TABLES `quiz` WRITE;
/*!40000 ALTER TABLE `quiz` DISABLE KEYS */;
INSERT INTO `quiz` VALUES (1,'vitoria campeao?','nao','sim','vitoria merda','vitoria top','a'),(2,'braga campeao?','sim ','nao','braga é merda','braga é top','c'),(3,'bayern campeao','sim','nao','talvez','fraco','a'),(4,'real campeao','sim','nao','talvez','fraco','c'),(5,'barcelona campeao','sim','nao','talvez','fraco','d'),(6,'city campeao','sim','nao','talvez','fraco','a'),(7,'luiz dias melhor do mundo?','sim','obviamente','craque','parte todos','d'),(8,'sherif qui puta de besta?','sim','obviamente','god','partiu o real','b'),(9,'vitoria clown?','sim','obviamente','ate gosto','ganhou ao braga','d');
/*!40000 ALTER TABLE `quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `redes`
--

DROP TABLE IF EXISTS `redes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `redes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_revista` int(20) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `imagem` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `redes`
--

LOCK TABLES `redes` WRITE;
/*!40000 ALTER TABLE `redes` DISABLE KEYS */;
INSERT INTO `redes` VALUES (1,1,'https://www.youtube.com/embed/-v6S0V1tVfs','Capa_redes_sound_igsound.PNG'),(2,2,'https://www.youtube.com/embed/7GBT4ORpyjM','Capa_redes_scout_igscout.PNG');
/*!40000 ALTER TABLE `redes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revista_scout`
--

DROP TABLE IF EXISTS `revista_scout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revista_scout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `edicao` varchar(100) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `capa` varchar(200) DEFAULT NULL,
  `revista` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revista_scout`
--

LOCK TABLES `revista_scout` WRITE;
/*!40000 ALTER TABLE `revista_scout` DISABLE KEYS */;
INSERT INTO `revista_scout` VALUES (1,'Novembro 2021','26','https://online.fliphtml5.com/lupzu/bwyb/','public/imagens/capa_scout_1647189946575_Scout_2021_Novembro_Capa (1)-min.jpg','scout'),(2,'Dezembro 2021','27','https://online.fliphtml5.com/lupzu/yeau/','public/imagens/capa_scout_1647189980632_Scout_2021_Dezembro_Capa (1)-min.jpg','scout'),(3,'Janeiro 2022','28','https://online.fliphtml5.com/lupzu/wjgm/','public/imagens/capa_scout_1647190056254_Scout_2022_Janeiro_Capa (1)-min.jpg','scout'),(4,'Fevereiro 2022','29','https://online.fliphtml5.com/lupzu/zzha/','public/imagens/capa_scout_1647190080188_Scout_2022_Fevereiro-min.jpg','scout'),(5,'Março 2022','30','https://online.fliphtml5.com/lupzu/bpdr/','public/imagens/capa_scout_1647197956438_Scout_2022_Marco (1).jpg','scout'),(6,'Abril 2022','31','https://online.fliphtml5.com/lupzu/ifuk/','public/imagens/capa_scout_1649471444205_WhatsApp Image 2022-04-08 at 18.50.54-min.jpeg','scout'),(7,'Maio 2022','32','https://online.fliphtml5.com/lupzu/ybon/','public/imagens/capa_scout_1652465774946_Scout_2022_Maio.jpg','scout'),(8,'Junho 2022','33','https://online.fliphtml5.com/lupzu/dinv/','public/imagens/capa_scout_1655745219676_Scout_2022_Junho.jpg','scout'),(9,'Julho 2022','34','https://online.fliphtml5.com/lupzu/brts/','public/imagens/capa_scout_1657999997955_Scout_2022_Julho.jpg','scout'),(10,'Agosto 2022','35','https://online.fliphtml5.com/lupzu/napa/','public/imagens/capa_scout_1660576048640_Scout_2022_Agosto.jpg','scout'),(11,'Setembro 2022','36','https://online.fliphtml5.com/lupzu/okov/','public/imagens/capa_scout_1663289008829_WhatsApp Image 2022-09-13 at 13.39.53-min.jpeg','scout'),(12,'Outubro 2022','37','https://online.fliphtml5.com/lupzu/iwjv/','public/imagens/capa_scout_1666542804432_Scout_2022_Outubro-min.jpg','scout'),(13,'Novembro 2022','38','https://online.fliphtml5.com/lupzu/iuef/','public/imagens/capa_scout_1668792980854_Scout_2022_Novembro-min.jpg','scout'),(14,'Dezembro 2022','39','https://online.fliphtml5.com/lupzu/krtr/','public/imagens/capa_scout_1672091324983_Scout_2022_Dezembro_page-0001-min.jpg','scout'),(15,'Janeiro 2023','40','https://online.fliphtml5.com/lupzu/qqhx/','public/imagens/capa_scout_1674913393113_Scout_2023_Janeiro-min.jpg','scout'),(16,'Fevereiro 2023','41','https://online.fliphtml5.com/lupzu/oxhk/','public/imagens/capa_scout_1676552453231_Scout_2023_Fevereiro-min.jpg','scout'),(17,'Março 2023','42','https://online.fliphtml5.com/lupzu/ypgk/','public/imagens/capa_scout_1678954158402_Scout_2023_Marco-min.jpg','scout'),(18,'Abril 2023','43','https://online.fliphtml5.com/lupzu/lsay/','public/imagens/capa_scout_1681853106596_Scout_2023_Abril-min.jpg','scout'),(19,'Maio 2023','44','https://online.fliphtml5.com/lupzu/urjm/','public/imagens/capa_scout_1684516140560_Scout_2023_Maio-min.jpg','scout'),(20,'Junho 2023','45','https://online.fliphtml5.com/lupzu/tijx/','public/imagens/capa_scout_1686672077788_Scout_2023_Junho-min.jpg','scout'),(21,'Julho 2023','46','https://online.fliphtml5.com/lupzu/hmny/','public/imagens/capa_scout_1689960120415_Scout_2023_Julho-min.jpg','scout'),(22,'Agosto 2023','47','https://online.fliphtml5.com/lupzu/jlbi/','public/imagens/capa_scout_1692739219371_Scout_2023_Agosto-min.jpg','scout'),(23,'Setembro 2023','48','https://online.fliphtml5.com/lupzu/lrnm/','public/imagens/capa_scout_1696778702762_Scout_2023_Setembro_v2-min.jpg','scout'),(24,'Outubro 2023','49','https://online.fliphtml5.com/lupzu/otoq/','public/imagens/capa_scout_1698943128982_Scout_2023_Outubro-min.jpg','scout'),(25,'Novembro/Dezembro 2023','50','https://online.fliphtml5.com/iydxi/shao/','public/imagens/capa_scout_1703538267132_Scout_2023_Novembro-Dezembro-min.jpg','scout'),(26,'Fevereiro/Março 2024','51','https://online.fliphtml5.com/lupzu/roqz/','public/imagens/capa_scout_1709589516483_scout_fevereiro24 (2)-min.jpg','scout'),(27,'Abril/Maio 2024','52','https://online.fliphtml5.com/lupzu/ugsq/','public/imagens/capa_scout_1716254372005_mai24scout.jpg','scout'),(28,'Junho/Julho 2024','53','https://online.fliphtml5.com/lupzu/pjqv/','public/imagens/capa_scout_1721480245701_julho_scout_24-min.jpg','scout'),(29,'Especial Transferências','54','https://online.fliphtml5.com/lupzu/onal/','public/imagens/capa_scout_1729174444149_especial_atualizada-min.jpg','scout'),(30,'Dezembro/Janeiro 2025','55','https://online.fliphtml5.com/lupzu/woak/','public/imagens/capa_scout_1736805646473_jan-min25.jpg','scout'),(31,'Fevereiro/Março 2025','56','https://online.fliphtml5.com/lupzu/gclv/','public/imagens/capa_scout_1743254772219_media.jpg','scout'),(32,'Abril/Maio 2025','57','https://online.fliphtml5.com/lupzu/mryv/','public/imagens/capa_scout_1748562189407_mai25-min.jpg','scout'),(33,'Julho 2025','58','https://online.fliphtml5.com/lupzu/issn/','public/imagens/capa_scout_1777298313344_scout 58.jpg','scout'),(34,'Setembro 2025','59','https://online.fliphtml5.com/lupzu/qsnk/','public/imagens/capa_scout_1777298367722_scout 59.jpg','scout'),(35,'Dezembro 2025','60','https://online.fliphtml5.com/lupzu/scvt/','public/imagens/capa_scout_1777298416305_scout 60.jpg','scout'),(36,'Fevereiro 2026','61','https://online.fliphtml5.com/lupzu/fev26/','public/imagens/capa_scout_1777298456515_scout 61 (1).jpg','scout');
/*!40000 ALTER TABLE `revista_scout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revista_sound`
--

DROP TABLE IF EXISTS `revista_sound`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revista_sound` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `edicao` varchar(100) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `capa` varchar(100) DEFAULT NULL,
  `revista` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revista_sound`
--

LOCK TABLES `revista_sound` WRITE;
/*!40000 ALTER TABLE `revista_sound` DISABLE KEYS */;
INSERT INTO `revista_sound` VALUES (1,'Novembro 2021','26','https://online.fliphtml5.com/lupzu/gkik/','public/imagens/capa_sound_1647183378460_sound2021novembro.jpg','sound'),(2,'Dezembro 2021','27','https://online.fliphtml5.com/lupzu/dvwx/','public/imagens/capa_sound_1647183407888_sound2021dezembro.jpg','sound'),(3,'Janeiro 2022','28','https://online.fliphtml5.com/lupzu/ibay/','public/imagens/capa_sound_1647183443009_sound2022janeiro.jpg','sound'),(4,'Fevereiro 2022','29','https://online.fliphtml5.com/lupzu/ckdx/','public/imagens/capa_sound_1647183466698_sound2022fevereiro.jpg','sound'),(5,'Março 2022','30','https://online.fliphtml5.com/lupzu/ihbi/','public/imagens/capa_sound_1648687171943_capa marco.jpg','sound'),(6,'Abril 2022','31','https://online.fliphtml5.com/lupzu/dbnz/','public/imagens/capa_sound_1651167597842_abril_22.jpg','sound'),(7,'Maio 2022','32','https://online.fliphtml5.com/lupzu/gkku/','public/imagens/capa_sound_1654031620296_soundmaio-min.jpg','sound'),(8,'Junho 2022','33','https://online.fliphtml5.com/lupzu/dlrl/','public/imagens/capa_sound_1656629574302_SOUNDJunho-min.jpg','sound'),(9,'Julho 2022','34','https://online.fliphtml5.com/lupzu/rshs/','public/imagens/capa_sound_1658947824943_julho22-min.jpg','sound'),(10,'Agosto 2022','35','https://online.fliphtml5.com/lupzu/apkw/','public/imagens/capa_sound_1661978132721_agosto22.jpg','sound'),(11,'Setembro 2022','36','https://online.fliphtml5.com/lupzu/vjfr/','public/imagens/capa_sound_1664571231285_setembro.jpg','sound'),(12,'Outubro/Novembro 2022','37','https://online.fliphtml5.com/wihsh/kggu/','public/imagens/capa_sound_1669320344342_outnov22.jpg','sound'),(13,'Dezembro 2022','38','https://online.fliphtml5.com/lupzu/kjzu/','public/imagens/capa_sound_1672519309936_dez1-min.jpg','sound'),(14,'Janeiro/Fevereiro 2023','39','https://online.fliphtml5.com/lupzu/oqdb/','public/imagens/capa_sound_1676553021063_fev23.jpg','sound'),(15,'Março 2023','40','https://online.fliphtml5.com/lupzu/hyin/','public/imagens/capa_sound_1680540054686_souundmaa-min.jpg','sound'),(16,'Abril/Maio 2023','41','https://online.fliphtml5.com/lupzu/jqib/','public/imagens/capa_sound_1685553407309_abril-mai23min.jpg','sound'),(17,'Junho 2023','42','https://online.fliphtml5.com/lupzu/voki/','public/imagens/capa_sound_1688244682437_junho-min-23.jpg','sound'),(18,'Julho/Agosto','43','https://online.fliphtml5.com/lupzu/skbl/','public/imagens/capa_sound_1692459172064_agosto23-min.jpg','sound'),(19,'Setembro/Outubro 2023','44','https://online.fliphtml5.com/iydxi/unde/','public/imagens/capa_sound_1698946715650_outubro23.jpg','sound'),(20,'Novembro/Dezembro 2023','45','https://online.fliphtml5.com/iydxi/qshm/','public/imagens/capa_sound_1704319569862_dez_revisão-min.jpg','sound'),(21,'Janeiro/Fevereiro 2024','46','https://online.fliphtml5.com/lupzu/hiut/','public/imagens/capa_sound_1709329801539_24fev-min.jpg','sound'),(23,'Março/Abril','47','https://online.fliphtml5.com/lupzu/ljac/','public/imagens/capa_sound_1714441921806_revistasoundabril2024-1_pages-to-jpg-0001-min.jpg','sound'),(24,'Maio 2024','48','https://online.fliphtml5.com/lupzu/wlrm/','public/imagens/capa_sound_1717347522905_maio24.jpg','sound'),(25,'Primavera Sound Porto 2024','49','https://online.fliphtml5.com/lupzu/dnou/','public/imagens/capa_sound_1718584779735_junho_primavera_sound-min.jpg','sound'),(26,'Julho/Agosto 2024','50','https://online.fliphtml5.com/lupzu/zssk/','public/imagens/capa_sound_1723428147441_julho_agosto-min.jpg','sound'),(27,'Setembro 2024','51','https://online.fliphtml5.com/lupzu/reiv/','public/imagens/capa_sound_1727054679775_set24.jpg','sound'),(28,'Novembro/Dezembro 2024','52','https://online.fliphtml5.com/lupzu/htwm/','public/imagens/capa_sound_1734061289872_24nov1-min.jpg','sound'),(29,'Janeiro/Fevereiro 2025','53','https://online.fliphtml5.com/lupzu/miys/','public/imagens/capa_sound_1741276765832_sound alta-min.jpg','sound'),(30,'Março/Abril 2025','54','https://online.fliphtml5.com/lupzu/huug/','public/imagens/capa_sound_1747061413870_IMG-20250512-WA0012.jpg','sound'),(31,'Maio/Junho 2025','55','https://online.fliphtml5.com/lupzu/qemx/','public/imagens/capa_sound_1751286511372_soundmaiojunho25.jpg','sound'),(32,'Setembro 2025','56','https://online.fliphtml5.com/lupzu/sekd/','public/imagens/capa_sound_1777298572309_sound 56.jpg','sound'),(33,'Novembro 2025','57','https://online.fliphtml5.com/lupzu/swfz/','public/imagens/capa_sound_1777298620297_sound 57.jpg','sound'),(34,'Janeiro 2026','58','https://online.fliphtml5.com/lupzu/sound_Final-Nov-Dec2025/','public/imagens/capa_sound_1777298661440_sound 58.jpg','sound');
/*!40000 ALTER TABLE `revista_sound` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revistas`
--

DROP TABLE IF EXISTS `revistas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revistas` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `edicao` varchar(50) DEFAULT NULL,
  `nome_revista` varchar(50) DEFAULT NULL,
  `capa` varchar(100) DEFAULT NULL,
  `banner` varchar(100) DEFAULT NULL,
  `slider1` varchar(100) DEFAULT NULL,
  `slider2` varchar(100) DEFAULT NULL,
  `slider3` varchar(100) DEFAULT NULL,
  `titulo` text DEFAULT NULL,
  `texto` text DEFAULT NULL,
  `cargoS` varchar(90) DEFAULT NULL,
  `nome_cria_txt` varchar(60) DEFAULT NULL,
  `revista` varchar(100) DEFAULT NULL,
  `link` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revistas`
--

LOCK TABLES `revistas` WRITE;
/*!40000 ALTER TABLE `revistas` DISABLE KEYS */;
INSERT INTO `revistas` VALUES (1,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,'PLAYLIST','Estás indeciso se vais ao Primavera Sound Porto? Tira aqui as tuas dúvidas através desta playlist que contém todos os artistas que vão estar presentes.','','Primavera Sound Porto 2024',NULL,'https://open.spotify.com/embed/playlist/7oE8UC61bAyT8t3JwiJQ6C?utm_source=generator'),(2,NULL,NULL,'2',NULL,NULL,NULL,NULL,NULL,'XI do Ano Liga Betclic','Finalizado o ano de 2023, elegemos aquele que foi o melhor XI da Liga Betclic.','','2023',NULL,''),(4,NULL,NULL,NULL,NULL,NULL,'sound_slider3_sound_slider3.jpg','sound_slider3_sound_slider3.jpg','sound_slider3_sound_slider3.jpg',NULL,NULL,NULL,NULL,NULL,NULL),(5,NULL,NULL,NULL,NULL,NULL,'scout_slider1_scout_slider1.jpg','scout_slider1_scout_slider1.jpg','scout_slider1_scout_slider1.jpg',NULL,NULL,NULL,NULL,NULL,NULL),(23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,NULL,NULL,'1',NULL,'banner_sound_banner_sound.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `revistas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) unsigned NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('3xMoZeGhMJzi07SW1ns4WHqrKpvl2J03',1777385069,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":27}}');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscritores`
--

DROP TABLE IF EXISTS `subscritores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscritores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscritores`
--

LOCK TABLES `subscritores` WRITE;
/*!40000 ALTER TABLE `subscritores` DISABLE KEYS */;
INSERT INTO `subscritores` VALUES (1,'PMMGONCALVES0@GMAIL.COM'),(2,'joaolemos@soundscout.pt'),(3,'pedrogoncalves@soundscout.pt'),(4,'duartebrandao@soundscout.pt'),(5,'tiagolopes@soundscout.pt'),(6,'pedrocarvalho@soundscout.pt'),(7,'filipecarvalho@soundscout.pt'),(8,'matildeferreira@soundscout.pt'),(9,'guilhermekunsler@soundscout.pt'),(10,'beatrizpequeno@soundscout.pt'),(11,'andremorais@soundscout.pt'),(12,'matildeoliveira@soundscout.pt'),(13,'franciscocanais@soundscout.pt'),(14,'diogoteixeira@soundscout.pt'),(15,'rodrigoferreira@soundscout.pt'),(16,'a92930@alunos.uminho.pt'),(17,'oficialnunomoreira@gmail.com'),(18,'onunomoreira@gmail.com'),(19,'nunomoreirac@gmail.com'),(20,'nunomiguelmoreira9@hotmail.com'),(21,'nunodoesitall@outlook.pt'),(22,'ines_costa16@hotmail.com'),(23,'joao10lemos10@gmail.com'),(24,'matildecamachoferreira@gmail.com'),(25,'Guilhermevkunsler@gmail.com'),(26,'margaridasimoes180@gmail.com'),(27,'ricardo01silva@hotmail.com'),(28,'ricardo01silva@hotmail.com'),(29,'ricardinho01silva@gmail.com'),(30,''),(31,'miguelantoniooliveirarocha@gmail.com'),(32,'damatarod@gmail.com'),(33,'cccabrita@hotmail.com'),(34,'pedrazza77@gmail.com'),(35,''),(36,''),(37,'pereirafaria@gmail.com'),(38,'heartbeatptoficial@gmail.com'),(39,'psuissas4@gmail.com'),(40,'hugomcastro@gmail.com'),(41,'joao@omnisonic-international.com'),(42,'to.parente@ulsne.min-saude.PT'),(43,'darksunn@gmail.com'),(44,'Magdavcosta@gmail.com'),(45,'joaofcrangel@gmail.com'),(46,'francisco.bacelar@crowdmusic.pt'),(47,''),(48,'diiogoo_17@hotmail.com'),(49,'jorgemcabreu@gmail.com'),(50,'pecegueirocosta@outlook.pt'),(51,'wruigomes@gmail.com'),(52,'jorgepereiraa@gmail.com'),(53,''),(54,'CASIMIROJPSILVA@HOTMAIL.COM'),(55,'mtegb@hotmail.com'),(56,'joanam.rmeneses@gmail.com'),(57,'tiagojoaquim@live.com.pt'),(58,'tiagojoaquim@live.com.pt'),(59,'tiagojoaquim@live.com.pt'),(60,''),(61,'saracmferreira9@gmail.com'),(62,'claudio.carolino@hotmail.com'),(63,'sandrooliveirinha@msn.com'),(64,'rjsvieira@gmail.com'),(65,'rjsvieira@gmail.com'),(66,''),(67,''),(68,'miguel@universalsg.net'),(69,'football.total11@gmail.com'),(70,'fjle2015@gmail.com'),(71,'afonsoript@gmail.com'),(72,'geral@flamingo44.pt');
/*!40000 ALTER TABLE `subscritores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `numero` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cargo` varchar(255) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (23,'Duarte Brandão','duartebrandao511@gmail.com',1,'$2a$08$F3F2bM.UjcyIZ3sSpdLPPu0EIks8uUYFthpDz/rGgxsfnqhYXUZ8m','Backend',NULL,'active','2022-02-08 22:19:40','2022-02-08 22:19:40'),(27,'Joao Lemos','joaolemos@soundscout.pt',1,'$2a$08$Osgwcy2dFXMzbFuzSBUlne9U4aF/2OAgtpuIvDWuoIeF7WB2Nsa8i','Diretor e Co-Fundador',NULL,'active','2022-03-13 19:40:47','2022-03-13 19:40:47'),(28,'Pedro Gonçalves','pedrogoncalves@soundscout.pt',1,'$2a$08$pITj5kowkCkVfQBVW/Wmt.7ogP2kxvrO/vqu4CxtcORKd0Qum9UJ6','Web Developer',NULL,'active','2022-03-13 19:45:46','2022-03-13 19:45:46'),(29,'Tiago Lopes','tiagolopes@soundscout.pt',1,'$2a$08$Awea6F9RWzV8MpQtd8lgxOxt9zAot40K7qNy3h7phCqjCvZoO0X8m','Web Developer',NULL,'active','2022-03-13 19:47:08','2022-03-13 19:47:08'),(30,'Filipe Carvalho','filipecarvalho@soundscout.pt',1,'$2a$08$EvDQf06jepStR7kd4go.AOf/qpHQGXqCYt/bRoWQoMtCEK9tnxCAC','Diretor e Co-Fundador',NULL,'active','2022-03-13 19:49:22','2022-03-13 19:49:22'),(32,'Guilherme Kunsler','guilhermekunsler@soundscout.pt',1,'$2a$08$gwPlWCnWRR4FSYCtdV8LGuHep0Lv.SHLfkYIZumaOjk3vU2uWs30G','Comunicação',NULL,'active','2022-03-13 19:52:23','2022-03-13 19:52:23'),(33,'Beatriz Pequeno','beatrizpequeno@soundscout.pt',1,'$2a$08$s4Nl253jjp7uDT3irBt8j.4iVbXLRKak7ErLLRMpJF28gjsOhNS52','Fotógrafa',NULL,'active','2022-03-13 19:53:21','2022-03-13 19:53:21'),(34,'André Morais','andremorais@soundscout.pt',1,'$2a$08$sgM1kAdVqfznKE0Rs6PA3uyGLY2CLvOUaT.ti46nMtdhDu8wXnDJy','Redator',NULL,'active','2022-03-13 19:54:03','2022-03-13 19:54:03'),(35,'Matilde Oliveira','matildeoliveira@soundscout.pt',1,'$2a$08$ZIrB5Rq1PetpgQRsyj8sNOHz59033ijqIzUbj8hjq0dYZIgKqjp56','Revisora',NULL,'active','2022-03-13 19:55:11','2022-03-13 19:55:11'),(36,'Francisco Canais','franciscocanais@soundscout.pt',1,'$2a$08$iI.tLnS1pA.88J8N3J4mI.sTAa1bGNl.gYZI1KYcrxRc059IjbI.G','Designer',NULL,'active','2022-03-13 19:56:57','2022-03-13 19:56:57'),(37,'Diogo Teixeira','diogoteixeira@soundscout.pt',1,'$2a$08$IxZBe62vvpnUdUuO9jc1P.mkSiaRKq89TFUSZRREXWqbc4zcmZjDe','Revisor',NULL,'active','2022-03-13 19:58:05','2022-03-13 19:58:05'),(38,'Rodrigo Ferreira','rodrigoferreira@soundscout.pt',1,'$2a$08$sr/cXWHPIdmVqOKXTYBoDeZFjpWPxQjvHnFJYI6kWEifrPmXLlVnC','Redator',NULL,'active','2022-03-13 19:59:17','2022-03-13 19:59:17'),(40,'Pedro Carvalho','pedrocarvalho@soundscout.pt',1,'$2a$08$cF4yKFafzi8Gq/4d8UEuHOttsj7p/qPQ5LXCNoZBqE9Jqju4A5IcS','Co-Fundador',NULL,'active','2022-03-16 21:41:15','2022-03-16 21:41:15'),(41,'Matilde Ferreira','matildeferreira@soundscout.pt',1,'$2a$08$e/TBneH68DoFJ2umR9zMwelIEMrSC2suUwr5jKCvns5RSnOHzpCyO','Redatora',NULL,'active','2022-03-16 21:42:55','2022-03-16 21:42:55');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-27 21:30:25
