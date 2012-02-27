-- MySQL dump 10.13  Distrib 5.1.58, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: gucken_org
-- ------------------------------------------------------
-- Server version	5.1.58-1ubuntu1

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
-- Table structure for table `org_gucken_events_domain_model_document`
--

DROP TABLE IF EXISTS `org_gucken_events_domain_model_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org_gucken_events_domain_model_document` (
  `flow3_persistence_identifier` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `requestedurl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fetchedurl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `localdate` datetime NOT NULL,
  `serverdate` datetime NOT NULL,
  `lastmodified` datetime DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `etag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  `content` longblob NOT NULL,
  PRIMARY KEY (`flow3_persistence_identifier`),
  KEY `url_idx` (`requestedurl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_gucken_events_domain_model_document`
--

LOCK TABLES `org_gucken_events_domain_model_document` WRITE;
/*!40000 ALTER TABLE `org_gucken_events_domain_model_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `org_gucken_events_domain_model_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_gucken_events_domain_model_event`
--

DROP TABLE IF EXISTS `org_gucken_events_domain_model_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org_gucken_events_domain_model_event` (
  `flow3_persistence_identifier` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startdatetime` datetime DEFAULT NULL,
  `enddatetime` datetime DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `shortdescription` longtext COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`flow3_persistence_identifier`),
  KEY `IDX_43820B575E9E89CB` (`location`),
  CONSTRAINT `FK_43820B575E9E89CB` FOREIGN KEY (`location`) REFERENCES `org_gucken_events_domain_model_location` (`flow3_persistence_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_gucken_events_domain_model_event`
--

LOCK TABLES `org_gucken_events_domain_model_event` WRITE;
/*!40000 ALTER TABLE `org_gucken_events_domain_model_event` DISABLE KEYS */;
INSERT INTO `org_gucken_events_domain_model_event` VALUES ('2ed322d0-c5eb-4ed4-a018-bd7206fe31bc','30957780-3b99-43b9-bab3-b506312aec1d','Thank god it´s friday','2012-03-02 22:00:00',NULL,'','Rock Classics, Students Rock\r\n\r\n \r\n\r\nAb 22.00 h','http://www.movie-bielefeld.de/party/freitags'),('396b2480-569c-4fd3-92fc-433804ae47d4','0f6acb59-9792-408d-a2bd-8431076ffcfa','Standardtanz','2012-03-02 20:30:00','2012-03-02 22:30:00','','jeden Freitag 20:30-22:30','http://www.zweischlingen-gastro.de/'),('4c1ce167-8a90-470d-a966-355361b6b64f','30957780-3b99-43b9-bab3-b506312aec1d','No compromise','2012-02-29 22:00:00',NULL,'','Mit den DJs Mr. Freeze & Heiko.\r\nEinlass ab 22 Uhr, kein Eintritt – nur Verzehr (bis 24:00)\r\nJeden Mittwoch bieten wir ein Musikprogramm für Freunde und Freundinnen der härteren Gangart. Besonders hier gilt unser Motto: keine Kompromisse!','http://www.movie-bielefeld.de/party/mittwochs'),('573707db-3e51-47f5-9f2b-48ee825bc5fd','0f6acb59-9792-408d-a2bd-8431076ffcfa','Salsa-Party','2012-02-27 21:00:00',NULL,'ab 18 Uhr Salsa Tanzkurse\r\nBeginner 18 Uhr, Intermediate 19 Uhr, Master 20 Uhr\r\n(Anmeldung Tanzkurse unter 0177 / 2858850 Stefanie Thoms)','Salsa-Disco mit DJ Michael, jeden Montag','http://www.zweischlingen-gastro.de/'),('703da65a-70ee-40ef-9ffa-41ff3e8d52a7','30957780-3b99-43b9-bab3-b506312aec1d','aTRocKX - The Dark Exit','2012-03-11 21:30:00',NULL,'\r\n\r\n','Alle 2 Wochen  |  immer sonntags  |  immer ab 21.13h –\r\nebm | dark wave | indietronic | alternative | progressive','http://www.movie-bielefeld.de/party/sonntags'),('7aa44ed3-eb4b-4609-b9d9-761e8fc3c50b','30957780-3b99-43b9-bab3-b506312aec1d','Easy skanking','2012-03-01 23:00:00',NULL,'','Jeden 1. und 3. Donnerstag mit Selecta Jahweed und Co grooven im movie.','http://www.movie-bielefeld.de/party/donnerstags'),('bf33d5cb-2f98-46e6-829e-f54a7b250e48','dcda96ab-e236-4c97-9029-0a3f0c857df8','Siggi-Flohmarkt','2012-03-31 15:00:00',NULL,'Flohmarkt auf dem Siegfriedplatz\r\n\r\nDer traditionelle Tausch- und Trödelmarkt findet von März bis Oktober immer am letzten Samstag im Monat von 15 bis 18 Uhr statt. (Ausnahme: zum Stadtteilfest findet der Tausch- und Trödelmarkt am Sonntag statt). Er wird komplett ehrenamtlich organisiert und durchgeführt. Wenn Sie Lust haben mitzuhelfen, sprechen Sie uns einfach an!','jeden letzten Samstag im Monat von März bis Oktober','http://www.bi-buergerwache.de/seiten/floh.php'),('cafab228-0920-49b0-a069-c8a5f3299363','0f6acb59-9792-408d-a2bd-8431076ffcfa','Der Freitag','2012-03-02 22:30:00',NULL,'Ü30 mit DJ Thorsten & Acka & DJane Ulli\r\nCharts & Classics','jeden Freitag ab 22:30','http://www.zweischlingen-gastro.de/'),('fe585dcd-bd1e-4154-bc82-ada737c73a07','30957780-3b99-43b9-bab3-b506312aec1d','Twenty 7 Up','2012-03-03 22:00:00',NULL,'','DJs Acka & Claudi.\r\nab 22 Uhr, bis 22.30 freier Eintritt für Ü 27','http://www.movie-bielefeld.de/party/samstags');
/*!40000 ALTER TABLE `org_gucken_events_domain_model_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_gucken_events_domain_model_event_types_join`
--

DROP TABLE IF EXISTS `org_gucken_events_domain_model_event_types_join`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org_gucken_events_domain_model_event_types_join` (
  `events_event` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `events_type` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`events_event`,`events_type`),
  KEY `IDX_2EB9C4998B12C281` (`events_event`),
  KEY `IDX_2EB9C499E08E5353` (`events_type`),
  CONSTRAINT `FK_2EB9C4998B12C281` FOREIGN KEY (`events_event`) REFERENCES `org_gucken_events_domain_model_event` (`flow3_persistence_identifier`),
  CONSTRAINT `FK_2EB9C499E08E5353` FOREIGN KEY (`events_type`) REFERENCES `org_gucken_events_domain_model_type` (`flow3_persistence_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_gucken_events_domain_model_event_types_join`
--

LOCK TABLES `org_gucken_events_domain_model_event_types_join` WRITE;
/*!40000 ALTER TABLE `org_gucken_events_domain_model_event_types_join` DISABLE KEYS */;
INSERT INTO `org_gucken_events_domain_model_event_types_join` VALUES ('2ed322d0-c5eb-4ed4-a018-bd7206fe31bc','b44bb566-abb5-4c8a-905f-522076315218'),('396b2480-569c-4fd3-92fc-433804ae47d4','b44bb566-abb5-4c8a-905f-522076315218'),('4c1ce167-8a90-470d-a966-355361b6b64f','b44bb566-abb5-4c8a-905f-522076315218'),('573707db-3e51-47f5-9f2b-48ee825bc5fd','b44bb566-abb5-4c8a-905f-522076315218'),('703da65a-70ee-40ef-9ffa-41ff3e8d52a7','b44bb566-abb5-4c8a-905f-522076315218'),('7aa44ed3-eb4b-4609-b9d9-761e8fc3c50b','b44bb566-abb5-4c8a-905f-522076315218'),('bf33d5cb-2f98-46e6-829e-f54a7b250e48','0b9a2147-fa10-45f4-a725-129922aecd42'),('cafab228-0920-49b0-a069-c8a5f3299363','b44bb566-abb5-4c8a-905f-522076315218'),('fe585dcd-bd1e-4154-bc82-ada737c73a07','b44bb566-abb5-4c8a-905f-522076315218');
/*!40000 ALTER TABLE `org_gucken_events_domain_model_event_types_join` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_gucken_events_domain_model_eventfactoid`
--

DROP TABLE IF EXISTS `org_gucken_events_domain_model_eventfactoid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org_gucken_events_domain_model_eventfactoid` (
  `flow3_persistence_identifier` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `identity` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startdatetime` datetime DEFAULT NULL,
  `enddatetime` datetime DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shortdescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `proof` longtext COLLATE utf8_unicode_ci NOT NULL,
  `importdatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`flow3_persistence_identifier`),
  KEY `IDX_FF348A615E9E89CB` (`location`),
  KEY `IDX_FF348A618CDE5729` (`type`),
  KEY `IDX_FF348A616A95E9C4` (`identity`),
  CONSTRAINT `FK_FF348A615E9E89CB` FOREIGN KEY (`location`) REFERENCES `org_gucken_events_domain_model_location` (`flow3_persistence_identifier`),
  CONSTRAINT `FK_FF348A616A95E9C4` FOREIGN KEY (`identity`) REFERENCES `org_gucken_events_domain_model_eventfactoididentity` (`flow3_persistence_identifier`),
  CONSTRAINT `FK_FF348A618CDE5729` FOREIGN KEY (`type`) REFERENCES `org_gucken_events_domain_model_type` (`flow3_persistence_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_gucken_events_domain_model_eventfactoid`
--

LOCK TABLES `org_gucken_events_domain_model_eventfactoid` WRITE;
/*!40000 ALTER TABLE `org_gucken_events_domain_model_eventfactoid` DISABLE KEYS */;
/*!40000 ALTER TABLE `org_gucken_events_domain_model_eventfactoid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_gucken_events_domain_model_eventfactoididentity`
--

DROP TABLE IF EXISTS `org_gucken_events_domain_model_eventfactoididentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org_gucken_events_domain_model_eventfactoididentity` (
  `flow3_persistence_identifier` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startdatetime` datetime DEFAULT NULL,
  `shouldskip` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`flow3_persistence_identifier`),
  UNIQUE KEY `UNIQ_F3D7E6A36AC99F1` (`link`),
  KEY `IDX_F3D7E6A5E9E89CB` (`location`),
  KEY `IDX_F3D7E6A5F8A7F73` (`source`),
  CONSTRAINT `FK_F3D7E6A36AC99F1` FOREIGN KEY (`link`) REFERENCES `org_gucken_events_domain_model_eventlink` (`flow3_persistence_identifier`) ON DELETE SET NULL,
  CONSTRAINT `FK_F3D7E6A5E9E89CB` FOREIGN KEY (`location`) REFERENCES `org_gucken_events_domain_model_location` (`flow3_persistence_identifier`),
  CONSTRAINT `FK_F3D7E6A5F8A7F73` FOREIGN KEY (`source`) REFERENCES `org_gucken_events_domain_model_eventsource` (`flow3_persistence_identifier`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_gucken_events_domain_model_eventfactoididentity`
--

LOCK TABLES `org_gucken_events_domain_model_eventfactoididentity` WRITE;
/*!40000 ALTER TABLE `org_gucken_events_domain_model_eventfactoididentity` DISABLE KEYS */;
/*!40000 ALTER TABLE `org_gucken_events_domain_model_eventfactoididentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_gucken_events_domain_model_eventlink`
--

DROP TABLE IF EXISTS `org_gucken_events_domain_model_eventlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org_gucken_events_domain_model_eventlink` (
  `flow3_persistence_identifier` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `event` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `factoididentity` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`flow3_persistence_identifier`),
  UNIQUE KEY `UNIQ_8A43ABE8D2565BF3` (`factoididentity`),
  KEY `IDX_8A43ABE83BAE0AA7` (`event`),
  CONSTRAINT `FK_8A43ABE83BAE0AA7` FOREIGN KEY (`event`) REFERENCES `org_gucken_events_domain_model_event` (`flow3_persistence_identifier`),
  CONSTRAINT `FK_8A43ABE8D2565BF3` FOREIGN KEY (`factoididentity`) REFERENCES `org_gucken_events_domain_model_eventfactoididentity` (`flow3_persistence_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_gucken_events_domain_model_eventlink`
--

LOCK TABLES `org_gucken_events_domain_model_eventlink` WRITE;
/*!40000 ALTER TABLE `org_gucken_events_domain_model_eventlink` DISABLE KEYS */;
/*!40000 ALTER TABLE `org_gucken_events_domain_model_eventlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_gucken_events_domain_model_eventsource`
--

DROP TABLE IF EXISTS `org_gucken_events_domain_model_eventsource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org_gucken_events_domain_model_eventsource` (
  `flow3_persistence_identifier` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  `implementationclass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`flow3_persistence_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_gucken_events_domain_model_eventsource`
--

LOCK TABLES `org_gucken_events_domain_model_eventsource` WRITE;
/*!40000 ALTER TABLE `org_gucken_events_domain_model_eventsource` DISABLE KEYS */;
INSERT INTO `org_gucken_events_domain_model_eventsource` VALUES ('01f23404-ad57-469d-b557-c549cd0cc10c','Facebook: IBZ','a:2:{s:4:\"page\";s:15:\"147162748725686\";s:4:\"type\";s:36:\"b44bb566-abb5-4c8a-905f-522076315218\";}','Org\\Gucken\\Events\\Domain\\Model\\EventSource\\Facebook',1),('0fc80cb3-d28e-4a8f-864a-57f88d5beb40','Offkino','a:3:{s:8:\"location\";s:36:\"00dea64e-9c56-40da-8b07-106035ddc293\";s:4:\"type\";s:36:\"6fd35b14-6e75-4b52-94cc-b6403a4fc57e\";s:3:\"url\";s:22:\"http://www.offkino.de/\";}','Org\\Gucken\\Bielefeld\\Domain\\Model\\Offkino',1),('11340969-a1f1-4352-a062-bdc2d5bc9f00','Deine Eisbar','a:2:{s:8:\"location\";s:36:\"8f026617-48ea-41c2-8a0b-7d4c2173ea09\";s:3:\"url\";s:113:\"http://www.deine-eisbar.de/index.php?option=com_jevents&task=modlatest.rss&format=feed&type=rss&Itemid=96&modid=0\";}','Org\\Gucken\\Bielefeld\\Domain\\Model\\DeineEisbar',1),('16654daf-d1ce-489f-a704-ae770684b39e','Movie Regelmässig, Thank god it\'s friday, Freitags','a:2:{s:9:\"baseEvent\";s:36:\"2ed322d0-c5eb-4ed4-a018-bd7206fe31bc\";s:13:\"dateCondition\";s:15:\"DayOfWeek = FRI\";}','Org\\Gucken\\Events\\Domain\\Model\\EventSource\\RegularEvent',1),('1dfdec1a-3dee-470e-bdae-ccfb4884425a','Kunstverein','a:3:{s:8:\"location\";s:36:\"9bae70f6-4824-418f-b78d-617471d64862\";s:4:\"type\";s:36:\"bce98474-9d82-47dc-a0fd-d5ae80ff686e\";s:3:\"url\";s:52:\"http://www.bielefelder-kunstverein.de/?id=8&type=100\";}','Org\\Gucken\\Bielefeld\\Domain\\Model\\Kunstverein',1),('20fce972-96e7-46f7-a4bc-4e06a1c1ed97','Facebook: Nummer zu Platz','a:2:{s:4:\"page\";s:13:\"nummerzuplatz\";s:4:\"type\";s:36:\"b44bb566-abb5-4c8a-905f-522076315218\";}','Org\\Gucken\\Events\\Domain\\Model\\EventSource\\Facebook',1),('26b1c3d1-a3a5-440c-bfde-df1aadc6b09d','Zweischlingen Regelmässig, Salsa-Party, Montags','a:2:{s:9:\"baseEvent\";s:36:\"573707db-3e51-47f5-9f2b-48ee825bc5fd\";s:13:\"dateCondition\";s:15:\"DayOfWeek = MON\";}','Org\\Gucken\\Events\\Domain\\Model\\EventSource\\RegularEvent',1),('27aed2b3-a290-40b3-bf75-d9038303318d','Movie Regelmässig, Twenty 7 Up, Samstags','a:2:{s:9:\"baseEvent\";s:36:\"fe585dcd-bd1e-4154-bc82-ada737c73a07\";s:13:\"dateCondition\";s:15:\"DayOfWeek = SAT\";}','Org\\Gucken\\Events\\Domain\\Model\\EventSource\\RegularEvent',1),('303ee012-4fe1-434a-9e38-3d5481134291','Movie Konzerte','a:3:{s:8:\"location\";s:36:\"30957780-3b99-43b9-bab3-b506312aec1d\";s:4:\"type\";s:36:\"85666351-5861-4f7a-a253-6de31fc613c8\";s:3:\"url\";s:60:\"http://www.movie-bielefeld.de/konzerte-a-live-events/aktuell\";}','Org\\Gucken\\Bielefeld\\Domain\\Model\\Movie',1),('347504e9-b21d-4b95-b4d0-3b32a1ab993d','Neue Schmiede: Kultur Pur','a:2:{s:8:\"location\";s:36:\"270f0ffe-6120-4ba3-bd6d-45da1d88a310\";s:3:\"url\";s:47:\"http://www.neue-schmiede.de/dom/2kultur_pur.php\";}','Org\\Gucken\\Bielefeld\\Domain\\Model\\NeueSchmiede',1),('38c79451-d7e5-44f1-86bb-96d7ec78f602','Theaterlabor','a:3:{s:8:\"location\";s:36:\"4fc28e83-0cbb-4fa6-9580-84ac8b4377dc\";s:4:\"type\";s:36:\"ee7c2376-b51f-4979-9a2b-b5dbadf8863c\";s:3:\"url\";s:79:\"http://theaterlabor.de/index.php?option=com_content&view=article&id=71&Itemid=2\";}','Org\\Gucken\\Bielefeld\\Domain\\Model\\Theaterlabor',1),('40174d49-9e13-476c-902c-0f9b247fc5c0','Neue Schmiede: Kultur Brunch','a:2:{s:8:\"location\";s:36:\"270f0ffe-6120-4ba3-bd6d-45da1d88a310\";s:3:\"url\";s:43:\"www.neue-schmiede.de/dom/2kultur_brunch.php\";}','Org\\Gucken\\Bielefeld\\Domain\\Model\\NeueSchmiede',1),('510c272d-e50d-4d31-986f-4ab314156953','Facebook: Stereo Bielefeld','a:2:{s:4:\"page\";s:16:\"stereo.bielefeld\";s:4:\"type\";s:36:\"b44bb566-abb5-4c8a-905f-522076315218\";}','Org\\Gucken\\Events\\Domain\\Model\\EventSource\\Facebook',1),('534d9f2d-7181-4e2c-99c7-27db5afd0b92','Movie Regelmässig, aTRockX, alle 14 Tage Sonntags','a:2:{s:9:\"baseEvent\";s:36:\"703da65a-70ee-40ef-9ffa-41ff3e8d52a7\";s:13:\"dateCondition\";s:26:\"DateModulo = 2012-02-26%14\";}','Org\\Gucken\\Events\\Domain\\Model\\EventSource\\RegularEvent',1),('591efc26-99e0-462b-aca2-5441f5069e20','Kunsthalle','a:2:{s:8:\"location\";s:36:\"18635b3c-fc52-4f74-93c5-034fc1bd5b4b\";s:3:\"url\";s:50:\"http://www.kunsthalle-bielefeld.de/index.php?id=64\";}','Org\\Gucken\\Bielefeld\\Domain\\Model\\Kunsthalle',1),('6d662a60-1e2d-480c-92a5-15946cfacc49','LastFm Bielefeld','a:2:{s:4:\"city\";s:18:\"Bielefeld, Germany\";s:4:\"type\";s:36:\"85666351-5861-4f7a-a253-6de31fc613c8\";}','Org\\Gucken\\Events\\Domain\\Model\\EventSource\\LastFm',1),('6ea7a40d-59ec-4664-9df0-e4ce67c6e23e','ZAZ','a:1:{s:3:\"url\";s:34:\"http://zaz.zentren.org/zaz_rdf.php\";}','Org\\Gucken\\Bielefeld\\Domain\\Model\\Zaz',1),('6ef07479-a107-439b-ba5b-2f537188f60a','Fahrradversteigerung','a:3:{s:8:\"location\";s:36:\"56b9a597-b0a7-406f-ba8d-ecec0f5db46d\";s:4:\"type\";s:36:\"0b9a2147-fa10-45f4-a725-129922aecd42\";s:3:\"url\";s:62:\"http://www.bielefeld.de/de/rv/ds_stadtverwaltung/ordg/suo/ver/\";}','Org\\Gucken\\Bielefeld\\Domain\\Model\\Fahrradversteigerung',1),('72d402ce-eb14-4bcb-bd4e-d04e558e5ff3','PopSecret','a:3:{s:8:\"location\";s:36:\"c980fce7-ef7b-4195-9020-b29b87a8ec55\";s:4:\"type\";s:36:\"85666351-5861-4f7a-a253-6de31fc613c8\";s:3:\"url\";s:99:\"http://www.popsecret-bielefeld.de/component/option,com_eventlist/Itemid,63/func,shcatev1/categid,2/\";}','Org\\Gucken\\Events\\Domain\\Model\\EventSource\\JoomlaEventListAncient',1),('7343ce2d-b969-4f77-bf95-afab678e7005','Eulenspiegel','a:3:{s:4:\"type\";s:36:\"62df999f-056e-4f0b-976c-0c4f48f449a0\";s:7:\"linkUrl\";s:37:\"http://www.buchladen-eulenspiegel.de/\";s:3:\"url\";s:76:\"http://www.buchladen-eulenspiegel.de/lib/dispatch.php?thema=lesung&page=null\";}','Org\\Gucken\\Bielefeld\\Domain\\Model\\Eulenspiegel',1),('75ce17e7-3607-49fe-8970-7578d973e4a3','Bunker Lesung','a:3:{s:8:\"location\";s:36:\"fd21481d-9879-4ebb-9b99-2bbbca441c17\";s:4:\"type\";s:36:\"62df999f-056e-4f0b-976c-0c4f48f449a0\";s:3:\"url\";s:75:\"www.bunker-ulmenwall.de/scripts/CreateContentMain.php?myId=ProgrammView,lit\";}','Org\\Gucken\\Bielefeld\\Domain\\Model\\Bunker',1),('7666cdc3-414e-4e73-9b3b-e268ae851ab5','Stereo ','a:3:{s:8:\"location\";s:36:\"b33d5023-197a-4f9a-8ee2-6b18c7b7a052\";s:4:\"type\";s:36:\"b44bb566-abb5-4c8a-905f-522076315218\";s:3:\"url\";s:45:\"http://www.stereo-bielefeld.de/uebersicht.php\";}','Org\\Gucken\\Bielefeld\\Domain\\Model\\Stereo',1),('76b2f0ed-f392-46dc-b340-66a5c65769b9','Falkendom','a:2:{s:8:\"location\";s:36:\"8fb243cc-a519-4f0f-9a04-6b0bc122e3d2\";s:3:\"url\";s:33:\"http://falkendom.de/newsfeed.php5\";}','Org\\Gucken\\Bielefeld\\Domain\\Model\\Falkendom',1),('780ab8a2-cb0e-4e61-a287-92742d730fb2','Die Weberei','a:2:{s:8:\"location\";s:36:\"c47fe677-3d2e-4fc6-bad8-4ebfa6d4cbd5\";s:3:\"url\";s:39:\"http://www.die-weberei.de/rss/index.xml\";}','Org\\Gucken\\Bielefeld\\Domain\\Model\\Weberei',1),('79bd75e1-9b7f-4af1-b9aa-253e2b683c71','Zweischlingen Regelmässig, Der Freitag, Freitag','a:2:{s:9:\"baseEvent\";s:36:\"cafab228-0920-49b0-a069-c8a5f3299363\";s:13:\"dateCondition\";s:15:\"DayOfWeek = FRI\";}','Org\\Gucken\\Events\\Domain\\Model\\EventSource\\RegularEvent',1),('8b1c54fc-ff3e-4919-a44a-730d3245a420','JZ Kamp','a:2:{s:8:\"location\";s:36:\"2669e4d0-40ec-4765-a3aa-6b4d1010e4c4\";s:3:\"url\";s:45:\"http://www.jz-kamp.de/veranstaltungen_rss.php\";}','Org\\Gucken\\Bielefeld\\Domain\\Model\\Kamp',1),('8bad57f5-b73d-4290-b846-2372146da18a','Facebook: Verve Bielefeld','a:2:{s:4:\"page\";s:15:\"VERVE.Bielefeld\";s:4:\"type\";s:36:\"85666351-5861-4f7a-a253-6de31fc613c8\";}','Org\\Gucken\\Events\\Domain\\Model\\EventSource\\Facebook',1),('916843ca-50f8-4227-9848-4eaeb484889a','Facebook: Augustus','a:2:{s:4:\"page\";s:12:\"310015978436\";s:4:\"type\";s:36:\"85666351-5861-4f7a-a253-6de31fc613c8\";}','Org\\Gucken\\Events\\Domain\\Model\\EventSource\\Facebook',1),('91c1c8fd-8e2c-426c-9aef-57d630f5a9a1','Neue Schmiede: Feste','a:2:{s:8:\"location\";s:36:\"270f0ffe-6120-4ba3-bd6d-45da1d88a310\";s:3:\"url\";s:58:\"http://www.neue-schmiede.de/dom/2kultur_tanz_und_feste.php\";}','Org\\Gucken\\Bielefeld\\Domain\\Model\\NeueSchmiede',1),('924a2bbe-4f52-44ff-b138-d0078960f2ec','Neue Schmiede: Kultur PM','a:2:{s:8:\"location\";s:36:\"270f0ffe-6120-4ba3-bd6d-45da1d88a310\";s:3:\"url\";s:57:\"http://www.neue-schmiede.de/dom/2kultur_am_nachmittag.php\";}','Org\\Gucken\\Bielefeld\\Domain\\Model\\NeueSchmiede',1),('a61fcd3e-6af6-48f3-9583-5a79d493a0da','Forum Bielefeld: Parties','a:3:{s:8:\"location\";s:36:\"da1a12cc-b9de-4568-9dae-437c106896cb\";s:4:\"type\";s:36:\"b44bb566-abb5-4c8a-905f-522076315218\";s:3:\"url\";s:43:\"http://www.forum-bielefeld.com/parties.html\";}','Org\\Gucken\\Bielefeld\\Domain\\Model\\Forum',1),('ab9871c8-5296-432c-8f48-1847d1b78564','Ringlokschuppen Disco','a:3:{s:8:\"location\";s:36:\"8f353756-0ee1-493b-aff4-f68781f6a031\";s:4:\"type\";s:36:\"b44bb566-abb5-4c8a-905f-522076315218\";s:3:\"url\";s:106:\"http://www.ringlokschuppen-bielefeld.com/index.php?view=categoryevents&id=1&option=com_eventlist&Itemid=54\";}','Org\\Gucken\\Events\\Domain\\Model\\EventSource\\JoomlaEventList',1),('b378f226-b403-4044-9e98-6d6878d1251b','Sam\'s','a:3:{s:8:\"location\";s:36:\"c0d0e123-e406-4c17-906b-e6baf2a3c918\";s:4:\"type\";s:36:\"b44bb566-abb5-4c8a-905f-522076315218\";s:3:\"url\";s:27:\"http://club-sams.de/events/\";}','Org\\Gucken\\Bielefeld\\Domain\\Model\\Sams',1),('cc4194c3-385a-4bba-bbda-397556579bff','Facebook: Forum Bielefeld','a:2:{s:4:\"page\";s:12:\"281845850597\";s:4:\"type\";s:36:\"85666351-5861-4f7a-a253-6de31fc613c8\";}','Org\\Gucken\\Events\\Domain\\Model\\EventSource\\Facebook',1),('cd34b144-dd58-43bc-9aa9-740b32a98bee','Forum Bielefeld: Konzerte','a:3:{s:8:\"location\";s:36:\"da1a12cc-b9de-4568-9dae-437c106896cb\";s:4:\"type\";s:36:\"85666351-5861-4f7a-a253-6de31fc613c8\";s:3:\"url\";s:44:\"http://www.forum-bielefeld.com/konzerte.html\";}','Org\\Gucken\\Bielefeld\\Domain\\Model\\Forum',1),('d04e90fd-49c9-4fac-90cc-7c6e22ec8d4f','Siggi-Flohmarkt, Regelmässig','a:2:{s:9:\"baseEvent\";s:36:\"bf33d5cb-2f98-46e6-829e-f54a7b250e48\";s:13:\"dateCondition\";s:41:\"DayOfWeekOfMonth = -1SAT AND Month = 3-10\";}','Org\\Gucken\\Events\\Domain\\Model\\EventSource\\RegularEvent',1),('d06a2190-5afa-4bda-9880-8f59bbbd5269','Movie Regelmässig, No Compromise, Mittwochs','a:2:{s:9:\"baseEvent\";s:36:\"4c1ce167-8a90-470d-a966-355361b6b64f\";s:13:\"dateCondition\";s:15:\"DayOfWeek = WED\";}','Org\\Gucken\\Events\\Domain\\Model\\EventSource\\RegularEvent',1),('d6e9d63e-c8ca-40db-ad4b-9a7ca3f16900','Zweischlingen Events','a:2:{s:8:\"location\";s:36:\"0f6acb59-9792-408d-a2bd-8431076ffcfa\";s:3:\"url\";s:47:\"http://www.newtone.de/veranstaltungen_zwei.php3\";}','Org\\Gucken\\Bielefeld\\Domain\\Model\\Zweischlingen',1),('e9893f3b-184b-4da0-ace4-405e43070647','Movie Comedy','a:3:{s:8:\"location\";s:36:\"30957780-3b99-43b9-bab3-b506312aec1d\";s:4:\"type\";s:36:\"70daf7cc-e3b1-4d39-975e-2975ff861a8e\";s:3:\"url\";s:36:\"http://www.movie-bielefeld.de/comedy\";}','Org\\Gucken\\Bielefeld\\Domain\\Model\\Movie',1),('eb776f79-1a0f-4f7b-a03b-4dae90017ea5','Zweischlingen Regelmässig, Standardtanz, Freitag','a:2:{s:9:\"baseEvent\";s:36:\"396b2480-569c-4fd3-92fc-433804ae47d4\";s:13:\"dateCondition\";s:15:\"DayOfWeek = FRI\";}','Org\\Gucken\\Events\\Domain\\Model\\EventSource\\RegularEvent',1),('ec5bde5b-c1ce-4233-a2f8-f64aeebe389e','Neue Schmiede: Cafe','a:2:{s:8:\"location\";s:36:\"270f0ffe-6120-4ba3-bd6d-45da1d88a310\";s:3:\"url\";s:51:\"http://www.neue-schmiede.de/dom/2kultur_im_cafe.php\";}','Org\\Gucken\\Bielefeld\\Domain\\Model\\NeueSchmiede',1),('ed4b9844-199c-4c6e-b955-b1e39beb1d0a','Ringlokschuppen Konzerte','a:3:{s:8:\"location\";s:36:\"8f353756-0ee1-493b-aff4-f68781f6a031\";s:4:\"type\";s:36:\"85666351-5861-4f7a-a253-6de31fc613c8\";s:3:\"url\";s:106:\"http://www.ringlokschuppen-bielefeld.com/index.php?option=com_eventlist&view=categoryevents&id=2&Itemid=55\";}','Org\\Gucken\\Events\\Domain\\Model\\EventSource\\JoomlaEventList',1),('f5578fa0-ad6b-4568-aa70-090b09b77a5e','Bunker Konzerte','a:3:{s:8:\"location\";s:36:\"fd21481d-9879-4ebb-9b99-2bbbca441c17\";s:4:\"type\";s:36:\"85666351-5861-4f7a-a253-6de31fc613c8\";s:3:\"url\";s:82:\"http://www.bunker-ulmenwall.de/scripts/CreateContentMain.php?myId=ProgrammView,con\";}','Org\\Gucken\\Bielefeld\\Domain\\Model\\Bunker',1),('f5730058-cada-4820-8479-782ed9563c2a','Movie Regelmässig, Easy Skanking, 1./ 3. Donnerstag','a:2:{s:9:\"baseEvent\";s:36:\"7aa44ed3-eb4b-4609-b9d9-761e8fc3c50b\";s:13:\"dateCondition\";s:25:\"DayOfWeekOfMonth = 1,3THU\";}','Org\\Gucken\\Events\\Domain\\Model\\EventSource\\RegularEvent',1);
/*!40000 ALTER TABLE `org_gucken_events_domain_model_eventsource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_gucken_events_domain_model_externallocationidentifier`
--

DROP TABLE IF EXISTS `org_gucken_events_domain_model_externallocationidentifier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org_gucken_events_domain_model_externallocationidentifier` (
  `flow3_persistence_identifier` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scheme` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`flow3_persistence_identifier`),
  KEY `IDX_C4B52F505E9E89CB` (`location`),
  CONSTRAINT `FK_C4B52F505E9E89CB` FOREIGN KEY (`location`) REFERENCES `org_gucken_events_domain_model_location` (`flow3_persistence_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_gucken_events_domain_model_externallocationidentifier`
--

LOCK TABLES `org_gucken_events_domain_model_externallocationidentifier` WRITE;
/*!40000 ALTER TABLE `org_gucken_events_domain_model_externallocationidentifier` DISABLE KEYS */;
INSERT INTO `org_gucken_events_domain_model_externallocationidentifier` VALUES ('025331b3-a638-42b6-bf53-ebe150d97f9a','9bae70f6-4824-418f-b78d-617471d64862','97856448379','','org_gucken_events_facebooklocationidentifier'),('07e28715-a999-49d2-88d8-cc4ffc606976','0f6acb59-9792-408d-a2bd-8431076ffcfa','9001589','','org_gucken_events_lastfmlocationidentifier'),('1ffeb147-dcf8-48ef-b529-af96a6561ef8','da1a12cc-b9de-4568-9dae-437c106896cb','8781430',NULL,'org_gucken_events_lastfmlocationidentifier'),('206a2ddf-5aa4-4541-8e73-045bbc833fb4','ee197266-c8a7-4a78-86ae-ad70f61b08b7','100001969977918','','org_gucken_events_facebooklocationidentifier'),('28d28706-b2ca-4a02-84b3-af94bf6bf7b2','efbcb6f3-4343-4110-952e-c30cf3f90dec','171799939538842','','org_gucken_events_facebooklocationidentifier'),('290a6a1d-0857-43ef-8969-fb8da6474dd7','b7fea6a4-3dd3-4a89-a170-0124864df6ee','10239125','','org_gucken_events_lastfmlocationidentifier'),('345116fe-3b82-4259-8875-a9d62fc4ee55','0f6acb59-9792-408d-a2bd-8431076ffcfa','180847638608892','','org_gucken_events_facebooklocationidentifier'),('34c4b263-c5a5-4c63-b584-d20cf356af22','30957780-3b99-43b9-bab3-b506312aec1d','117572284980756','','org_gucken_events_facebooklocationidentifier'),('39b930d1-62d9-4ad7-ad8a-162b4fe2d1bf','7a67f051-fc42-4d44-955e-a5073f2a1878','62020924674','','org_gucken_events_facebooklocationidentifier'),('3e24dd6c-e845-4635-84ca-96587067cc31','c47fe677-3d2e-4fc6-bad8-4ebfa6d4cbd5','111826568918027','','org_gucken_events_facebooklocationidentifier'),('43fca8df-cedb-4b40-bd0f-c099fd4a883c','fd21481d-9879-4ebb-9b99-2bbbca441c17','342829885745242','','org_gucken_events_facebooklocationidentifier'),('4fcefc84-b297-431d-8799-1082d6122d78','00dea64e-9c56-40da-8b07-106035ddc293','8955906','','org_gucken_events_lastfmlocationidentifier'),('58984801-2bf3-473b-ae59-d42acf4c61cc','da1a12cc-b9de-4568-9dae-437c106896cb','281845850597','','org_gucken_events_facebooklocationidentifier'),('6a19bc39-71ef-4bd4-bc41-95e82ccbff09','ae67af29-3256-45d8-a4b6-c1453cc9ac98','113357165384191','','org_gucken_events_facebooklocationidentifier'),('6cb05205-2679-41b3-9c9b-2a30fedd5c46','c980fce7-ef7b-4195-9020-b29b87a8ec55','112237448826916','','org_gucken_events_facebooklocationidentifier'),('7ee7e61c-b4cc-4482-a74f-24a7939b2278','b33d5023-197a-4f9a-8ee2-6b18c7b7a052','103329596370161','','org_gucken_events_facebooklocationidentifier'),('7f4f4ca1-ba22-4723-b520-15db8b3d8307','8f353756-0ee1-493b-aff4-f68781f6a031','8781679',NULL,'org_gucken_events_lastfmlocationidentifier'),('8571c367-7571-42c8-9ef7-9eb18836c72e','2669e4d0-40ec-4765-a3aa-6b4d1010e4c4','8780886','','org_gucken_events_lastfmlocationidentifier'),('8acdd963-7bf4-4a43-9242-b37aa2b33885','30957780-3b99-43b9-bab3-b506312aec1d','8779658','','org_gucken_events_lastfmlocationidentifier'),('8cc9c7d7-e226-4216-beda-de68e2c27cb8','62e01f56-9f5c-44d1-974d-884521b0645a','8779750','Rudolf Oetker Halle, Bielefeld','org_gucken_events_lastfmlocationidentifier'),('8f7bd66f-ed92-4647-8d7e-52ea460a9aaa','7d76253a-db11-4db4-8047-d7fb4b9bfbbe','8781377','','org_gucken_events_lastfmlocationidentifier'),('8fc90149-52e7-4890-8b6b-8509efbc7559','efbcb6f3-4343-4110-952e-c30cf3f90dec','8780622',NULL,'org_gucken_events_lastfmlocationidentifier'),('91c09032-fa19-4627-a1e7-147f5ee88107','8fe3046a-a251-44f3-9524-4e39e4da30fa','8998716',NULL,'org_gucken_events_lastfmlocationidentifier'),('999c532b-e009-4c6e-884a-8fa073989d3c','62e01f56-9f5c-44d1-974d-884521b0645a','166190053398989','','org_gucken_events_facebooklocationidentifier'),('a16a7b91-a062-4900-b7e4-bcfa25796379','f5c9260e-f493-4f83-aec4-e2b0fad0f6de','9009276','','org_gucken_events_lastfmlocationidentifier'),('a2cc771a-3cf3-40b1-b424-0631e62be4f3','15fc9f2d-6228-43d2-b20c-6e420d5d0f3a','310015978436','','org_gucken_events_facebooklocationidentifier'),('aa21dadd-4da7-40bf-a4c5-22a3b0a5cee0','2669e4d0-40ec-4765-a3aa-6b4d1010e4c4','154575301251663','','org_gucken_events_facebooklocationidentifier'),('adb972eb-8940-42d6-bc2b-3406defd9482','18635b3c-fc52-4f74-93c5-034fc1bd5b4b','110731899019322','','org_gucken_events_facebooklocationidentifier'),('b08786a2-6006-4819-9a2d-f369850b6118','fd21481d-9879-4ebb-9b99-2bbbca441c17','8796429','','org_gucken_events_lastfmlocationidentifier'),('b3975ea6-27fc-477a-b64c-f700180acdb2','270f0ffe-6120-4ba3-bd6d-45da1d88a310','8791027',NULL,'org_gucken_events_lastfmlocationidentifier'),('b4b75f28-6b7b-4fd3-92ad-7d8f08a3f1ef','da1a12cc-b9de-4568-9dae-437c106896cb','149960588366825','','org_gucken_events_facebooklocationidentifier'),('b5b88d0b-cf32-4cd1-b423-b121ef3b117a','ae67af29-3256-45d8-a4b6-c1453cc9ac98','8875993','Extra Blues Bar, Bielefeld','org_gucken_events_lastfmlocationidentifier'),('b653a349-24ae-41a4-ae3f-3da33dc299af','c980fce7-ef7b-4195-9020-b29b87a8ec55','9154481',NULL,'org_gucken_events_lastfmlocationidentifier'),('bde873b4-c17a-4eeb-95c6-a8e092970553','8f353756-0ee1-493b-aff4-f68781f6a031','150874148263192','','org_gucken_events_facebooklocationidentifier'),('bed93ff6-7af6-4d5a-bb5e-0696ca07302c','ee197266-c8a7-4a78-86ae-ad70f61b08b7','8814071','Black Sabbath, Bad Oeynhausen','org_gucken_events_lastfmlocationidentifier'),('c1e31df9-dae8-4556-8b66-0a1c072fe738','15fc9f2d-6228-43d2-b20c-6e420d5d0f3a','9215655','','org_gucken_events_lastfmlocationidentifier'),('c6089438-a303-4cf6-8b7e-d9c67c41544a','c47fe677-3d2e-4fc6-bad8-4ebfa6d4cbd5','8789280','Die Weberei, Gütersloh','org_gucken_events_lastfmlocationidentifier'),('c8137b53-14dc-4e33-83d7-000243663b35','b7fea6a4-3dd3-4a89-a170-0124864df6ee','169288246467765','','org_gucken_events_facebooklocationidentifier'),('d75cb9ce-3d93-4f29-a4c2-02e4168e171d','7a67f051-fc42-4d44-955e-a5073f2a1878','8955966',NULL,'org_gucken_events_lastfmlocationidentifier'),('df60fc75-9796-4779-b67e-b25fbab9476d','8fb243cc-a519-4f0f-9a04-6b0bc122e3d2','244419856757','','org_gucken_events_facebooklocationidentifier'),('e9e9f8f9-4630-4a4b-8bf5-b9a4ec9c505f','270f0ffe-6120-4ba3-bd6d-45da1d88a310','201935956499051','','org_gucken_events_facebooklocationidentifier'),('f878fe75-0205-47f5-a40d-f7ec6ac2b669','0f6acb59-9792-408d-a2bd-8431076ffcfa','199190830113670','','org_gucken_events_facebooklocationidentifier'),('fdcd1640-752c-425c-bab7-d53453a48ee2','8fb243cc-a519-4f0f-9a04-6b0bc122e3d2','8780380','','org_gucken_events_lastfmlocationidentifier'),('fe99a194-12c2-4c01-88a7-c9b8f511de0f','b33d5023-197a-4f9a-8ee2-6b18c7b7a052','8808656','','org_gucken_events_lastfmlocationidentifier');
/*!40000 ALTER TABLE `org_gucken_events_domain_model_externallocationidentifier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_gucken_events_domain_model_geocoordinates`
--

DROP TABLE IF EXISTS `org_gucken_events_domain_model_geocoordinates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org_gucken_events_domain_model_geocoordinates` (
  `flow3_persistence_identifier` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `elevation` double DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  PRIMARY KEY (`flow3_persistence_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_gucken_events_domain_model_geocoordinates`
--

LOCK TABLES `org_gucken_events_domain_model_geocoordinates` WRITE;
/*!40000 ALTER TABLE `org_gucken_events_domain_model_geocoordinates` DISABLE KEYS */;
INSERT INTO `org_gucken_events_domain_model_geocoordinates` VALUES ('141d94cb-ccc0-4fa4-a960-8a2879377405',0,52.0208,8.52771),('3f412a97-9e57-4be1-b8b6-7cd030cae1be',0,52.030382,8.529137),('3f483a9b-8253-40bd-882a-bd87c895b754',0,51.901998,8.377604),('55f69d36-a035-42c1-bcde-45f31e59dcc5',0,52.021277,8.546171),('6ce9043a-db0e-4b6e-bf52-6fab70ccfb08',0,52.13058,8.66715),('87fc6b81-75d3-42c2-8e4c-59a3b1ed99a8',0,52.029228,8.513203),('8a1bb520-384b-473c-930f-fb1f57af5fc1',0,52.02991,8.531795),('a383d72a-52ef-4fa4-991f-dd73d82a4eac',0,52.03708,8.55136),('d71d285e-217d-42d1-966f-3a601eed0f98',0,52.016348,8.531064),('e041f8db-9226-4ce3-ac6d-3bd0cf4ea669',0,52.021277,8.546171),('ee3c3f47-9f8e-4290-91b9-4d4e3c224e14',0,52.008909,8.523443);
/*!40000 ALTER TABLE `org_gucken_events_domain_model_geocoordinates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_gucken_events_domain_model_importlogentry`
--

DROP TABLE IF EXISTS `org_gucken_events_domain_model_importlogentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org_gucken_events_domain_model_importlogentry` (
  `flow3_persistence_identifier` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `source` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `starttime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `importcount` int(11) DEFAULT NULL,
  `duplicatecount` int(11) DEFAULT NULL,
  `messages` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  `errors` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  PRIMARY KEY (`flow3_persistence_identifier`),
  KEY `IDX_B50254CF5F8A7F73` (`source`),
  CONSTRAINT `FK_B50254CF5F8A7F73` FOREIGN KEY (`source`) REFERENCES `org_gucken_events_domain_model_eventsource` (`flow3_persistence_identifier`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_gucken_events_domain_model_importlogentry`
--

LOCK TABLES `org_gucken_events_domain_model_importlogentry` WRITE;
/*!40000 ALTER TABLE `org_gucken_events_domain_model_importlogentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `org_gucken_events_domain_model_importlogentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_gucken_events_domain_model_location`
--

DROP TABLE IF EXISTS `org_gucken_events_domain_model_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org_gucken_events_domain_model_location` (
  `flow3_persistence_identifier` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `geo` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `faxnumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`flow3_persistence_identifier`),
  UNIQUE KEY `UNIQ_C099A7C1C53D045F` (`image`),
  UNIQUE KEY `UNIQ_C099A7C1D4E6F81` (`address`),
  UNIQUE KEY `UNIQ_C099A7C1775EE79C` (`geo`),
  CONSTRAINT `FK_C099A7C1775EE79C` FOREIGN KEY (`geo`) REFERENCES `org_gucken_events_domain_model_geocoordinates` (`flow3_persistence_identifier`),
  CONSTRAINT `FK_C099A7C1C53D045F` FOREIGN KEY (`image`) REFERENCES `typo3_flow3_resource_resource` (`flow3_persistence_identifier`),
  CONSTRAINT `FK_C099A7C1D4E6F81` FOREIGN KEY (`address`) REFERENCES `org_gucken_events_domain_model_postaladdress` (`flow3_persistence_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_gucken_events_domain_model_location`
--

LOCK TABLES `org_gucken_events_domain_model_location` WRITE;
/*!40000 ALTER TABLE `org_gucken_events_domain_model_location` DISABLE KEYS */;
INSERT INTO `org_gucken_events_domain_model_location` VALUES ('00dea64e-9c56-40da-8b07-106035ddc293',NULL,'d545c99a-4ee9-4430-b1e2-077dfa2fce9c',NULL,'Filmhaus','','http://www.filmhaus-bielefeld.de/','0521 137574','0521 177757','mail@filmhaus-bielefeld.de'),('0f6acb59-9792-408d-a2bd-8431076ffcfa',NULL,'5c015ad8-0e62-4f81-85ae-3d965f070678',NULL,'Zweischlingen','Öffnungszeiten\r\nMo - Fr: ab 17:00\r\nSa: ab 15:00\r\nSo: ab 10:00 Frühstück','http://www.zweischlingen-gastro.de/','','0521 4042059','kontakt@zweischlingen-gastro.de'),('15fc9f2d-6228-43d2-b20c-6e420d5d0f3a',NULL,'3f61bc8b-b161-4e46-96b1-d514f98e6993',NULL,'Augustus','','http://www.facebook.com/pages/Augustus-Bielefeld/310015978436','','0521 170368',''),('18635b3c-fc52-4f74-93c5-034fc1bd5b4b',NULL,'b5a1eb82-128d-4b5e-9020-af453ac3daed',NULL,'Kunsthalle','','http://www.kunsthalle-bielefeld.de/','0521 / 3299950-50','0521 / 3299950-0','info@kunsthalle-bielefeld.de'),('2669e4d0-40ec-4765-a3aa-6b4d1010e4c4',NULL,'4026a1c2-b3de-4679-a3b2-78f62cd24a9d',NULL,'JZ Kamp','','http://www.jz-kamp.de/','0521 / 5609890','0521 / 5609889','info@jz-kamp.de'),('270f0ffe-6120-4ba3-bd6d-45da1d88a310',NULL,'c98bd6ba-70dd-4600-82ff-dbf6527e6680','ee3c3f47-9f8e-4290-91b9-4d4e3c224e14','Neue Schmiede','','http://www.neue-schmiede.de/','0521/144-3615','0521/144-3117   ','info@neue-schmiede.de'),('30957780-3b99-43b9-bab3-b506312aec1d',NULL,'266f2677-9c8b-420e-b771-7365a39a3ace',NULL,'Movie','','http://www.movie-bielefeld.de/','05 21 - 967 93 82  ','05 21 - 967 93 69','info@movie-bielefeld.de'),('4fc28e83-0cbb-4fa6-9580-84ac8b4377dc',NULL,'5466c149-4c04-4acc-a474-1497094730f5',NULL,'Theaterlabor','','http://theaterlabor.de','','0521 – 28 78 56','info@theaterlabor.de'),('56b9a597-b0a7-406f-ba8d-ecec0f5db46d',NULL,'1caab2bc-8d10-4019-916d-eb6f38099e7a',NULL,'Ordnungsamt','Öffnungszeiten:\r\nMo-Fr 8-12 Uhr\r\nDo 14:30-18 Uhr','http://www.bielefeld.de/de/rv/ds_stadtverwaltung/ordg/','0521 / 513315','0521 / 518600','ordnungsamt@bielefeld.de'),('62e01f56-9f5c-44d1-974d-884521b0645a',NULL,'605975e6-a091-46e3-baab-b0b4a602b3bd','87fc6b81-75d3-42c2-8e4c-59a3b1ed99a8','Rudolf Oetker Halle','','http://www.rudolf-oetker-halle.de/','0521 / 51-80 30','0521 / 51-21 87','info@rudolf-oetker-halle.de'),('7a67f051-fc42-4d44-955e-a5073f2a1878',NULL,'dfcc1e94-4b31-4d7e-8fb8-f8150d9792f0','8a1bb520-384b-473c-930f-fb1f57af5fc1','Elephant Club','','http://www.elephant-club.de/','0521 16465-10','0521 16465-0','info@elephant-club.de'),('7d76253a-db11-4db4-8047-d7fb4b9bfbbe',NULL,'0efc1372-fec5-4bcf-871f-d42e2eb33909',NULL,'AJZ','','http://ajz-bielefeld.de','','0521 / 6 33 77','mail@ajz-bielefeld.de'),('88be6420-44e1-4c5a-9246-ee2f38f09cdc',NULL,'6742fc09-e7d1-4ddd-9332-3cc2f7cef3de',NULL,'Eulenspiegel','Öffnungszeiten\r\nMontag - Freitag: 9.30 - 18.30 Uhr\r\nSamstag: 10.00 - 16.00 Uhr ','http://www.buchladen-eulenspiegel.de/','0521 133510','0521 175049','Buch_eulenspiegel@gmx.de'),('8f026617-48ea-41c2-8a0b-7d4c2173ea09',NULL,'bccc803a-1a8d-4b83-86dd-f4edc4487906',NULL,'Deine Eisbar','Öffnungszeiten \r\nDo-So von 12.00-22.00 Uhr','http://deine-eisbar.de','','','info@deine-eisbar.de'),('8f353756-0ee1-493b-aff4-f68781f6a031',NULL,'fd0a0c36-aa89-42d2-9c0d-839085fe2ab9','a383d72a-52ef-4fa4-991f-dd73d82a4eac','Ringlokschuppen','','http://www.ringlokschuppen-bielefeld.com/','0521 / 55 73 88 99','0521 / 55 73 88 0','info@ringlokschuppen.com'),('8fb243cc-a519-4f0f-9a04-6b0bc122e3d2',NULL,'101ea987-0c88-4d17-beb3-3eedd113695b',NULL,'Falkendom','','http://falkendom.de/','0521 137318','0521 62277','info@falkendom.de'),('8fe3046a-a251-44f3-9524-4e39e4da30fa',NULL,'3352254a-33ab-4d4b-bdc8-dff3d7e032d5','55f69d36-a035-42c1-bcde-45f31e59dcc5','Black Rose','','http://www.black-rose-bielefeld.de/','','0521 / 66534','team@black-rose-bielefeld.de'),('9bae70f6-4824-418f-b78d-617471d64862',NULL,'7c87abe9-6510-4c6b-a64f-3f0d38f08a6f',NULL,'Bielefelder Kunstverein','im Waldhof\r\n\r\nÖFFNUNGSZEITEN\r\nDo, Fr, 15–19 Uhr\r\nSa, So, 12–19 Uhr\r\nMo–Mi, nach telefonischer Vereinbarung ','http://www.bielefelder-kunstverein.de/','0521 /17 88 10',' 0521 /17 88 06','kontakt@bielefelder-kunstverein.de'),('ae67af29-3256-45d8-a4b6-c1453cc9ac98',NULL,'ed32fc54-a061-4fe0-892d-e8b43c048083','d71d285e-217d-42d1-966f-3a601eed0f98','Extra Blues Bar','','http://extrablues.wordpress.com/','','0521 / 62323',''),('b33d5023-197a-4f9a-8ee2-6b18c7b7a052',NULL,'a98c686e-525b-4aaa-917f-1b0e3297ebb4',NULL,'Stereo','','http://www.stereo-bielefeld.de/','','0521-9679293','info@stereo-bielefeld.de'),('b7fea6a4-3dd3-4a89-a170-0124864df6ee',NULL,'3ac3ac3b-f304-466b-ba32-65dc1bfa434a',NULL,'Nr. z. P.','Eine Einrichtung der Initiative Bielefelder Subkultur.\r\n\r\n','http://bielefeldersubkultur.blogspot.com/','','','ibs@unterderbruecke.de'),('c0d0e123-e406-4c17-906b-e6baf2a3c918',NULL,'1731e593-79a4-4782-9d6e-2d0e2a6e1e45',NULL,'Sam`s','','http://club-sams.de','','0521 – 94 98 66 93','info@club-sams.de'),('c47fe677-3d2e-4fc6-bad8-4ebfa6d4cbd5',NULL,'2485ede0-01b5-4186-a075-9cec2e5559b5','3f483a9b-8253-40bd-882a-bd87c895b754','Die Weberei','Gastronomie 	 \r\nMo. 	geschlossen\r\nDi. - Sa. 	18:00 Uhr\r\nSo. 	10.00 Uhr\r\n\r\n31.10.2011\r\n	18:00 Uhr\r\n01.11.2011 	geschlossen\r\n  	 \r\nVerwaltung: 	 \r\nMo - Fr 	9.00 - 16.30 Uhr','http://www.die-weberei.de/','05241 26019','05241 234780',''),('c980fce7-ef7b-4195-9020-b29b87a8ec55',NULL,'1e0a4916-fcaa-42f4-adb7-e5d18bcbac90','141d94cb-ccc0-4fa4-a960-8a2879377405','Verve','Öffnungszeiten\r\nMi-So ab 17:00','http://verve-bielefeld.de/','','0521 / 32910606','info@verve-bielefeld.de'),('da1a12cc-b9de-4568-9dae-437c106896cb',NULL,'d86881b8-5543-4f68-b031-c616b57d83bf','3f412a97-9e57-4be1-b8b6-7cd030cae1be','Forum','','http://www.forum-bielefeld.com','','0521 9679977','info@forum-bielefeld.com'),('dcda96ab-e236-4c97-9029-0a3f0c857df8',NULL,'e2420efe-729d-4c94-8332-19f663ff8ee0',NULL,'Bürgerwache','Bürgerinitiative Bürgerwache e.V.\r\n\r\nÖffnungszeiten KaffeeWirtschaft:\r\nMittwochs und Freitags ab 10 Uhr\r\n\r\nÖffnungszeiten Biergarten:\r\nbei gutem Wetter ab 15 Uhr','http://bi-buergerwache.de/','0521-67219','0521-132737','info@bi-buergerwache.de'),('ee197266-c8a7-4a78-86ae-ad70f61b08b7',NULL,'2be24451-ec6e-40f0-b94e-44998834d743','e041f8db-9226-4ce3-ac6d-3bd0cf4ea669','Black Sabbath','','http://www.blacksabbath.biz/','','0157 757 85 90 1','info@blacksabbath.biz'),('efbcb6f3-4343-4110-952e-c30cf3f90dec',NULL,'e79c5d15-8f28-4553-b328-9b24c03313ec','6ce9043a-db0e-4b6e-bf52-6fab70ccfb08','X','','http://www.x-herford.de/','','0177 / 2727787','info@x-herford.de'),('f5c9260e-f493-4f83-aec4-e2b0fad0f6de',NULL,'13420447-0285-41ef-90bc-ee9eb4a13df9',NULL,'JZ','JZO e.V.\r\n\r\nREGELMÄßIGES:\r\ndienstags ab 19ooh · essenscnaipe (vokü)\r\nmittwochs ab 183oh · mensch-ärgere-dich-nicht-cnaipe\r\ndonnerstags ab 19ooh · Hausversammlung\r\n\r\nGRUPPENTREFFEN:\r\nKonzertgruppe · sonntags um 15ooh\r\nPromotiongruppe · sonntags um 16ooh\r\nF','http://jzo.de/','','','hv@jzo.de'),('fd21481d-9879-4ebb-9b99-2bbbca441c17',NULL,'5febe5a6-729f-4dfc-b55b-287a881a11f6',NULL,'Bunker Ulmenwall','','http://www.bunker-ulmenwall.de','','0521 / 136 81 69','info@bunker-ulmenwall.de');
/*!40000 ALTER TABLE `org_gucken_events_domain_model_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_gucken_events_domain_model_locationkeyword`
--

DROP TABLE IF EXISTS `org_gucken_events_domain_model_locationkeyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org_gucken_events_domain_model_locationkeyword` (
  `flow3_persistence_identifier` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locationid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`flow3_persistence_identifier`),
  KEY `IDX_9EBB6F355E9E89CB` (`location`),
  CONSTRAINT `FK_9EBB6F355E9E89CB` FOREIGN KEY (`location`) REFERENCES `org_gucken_events_domain_model_location` (`flow3_persistence_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_gucken_events_domain_model_locationkeyword`
--

LOCK TABLES `org_gucken_events_domain_model_locationkeyword` WRITE;
/*!40000 ALTER TABLE `org_gucken_events_domain_model_locationkeyword` DISABLE KEYS */;
INSERT INTO `org_gucken_events_domain_model_locationkeyword` VALUES ('03b357034681624efa444432fdaf32675e1cedc2','f5c9260e-f493-4f83-aec4-e2b0fad0f6de','Jugendzentrum','JZ'),('041c1152c84ce0bacfc78e96f3189784633f51a4','8fe3046a-a251-44f3-9524-4e39e4da30fa','Black Rose','Black Rose'),('057c1f19e3b476f60f372ca072a611c42858da66','56b9a597-b0a7-406f-ba8d-ecec0f5db46d','Bielefeld','Ordnungsamt'),('0715685554f5b93fb865203b8a85a4b13eb1c4c7','b33d5023-197a-4f9a-8ee2-6b18c7b7a052','Stereo','Stereohttp://www.stereo-bielefeld.de/'),('07dd51a43d8a6670fbc3e6520eca5b2ba5d84c93','c47fe677-3d2e-4fc6-bad8-4ebfa6d4cbd5','Die Weberei','Die Weberei'),('08058bb1e5394394f7d6212f69cc7e5422274d7e','7a67f051-fc42-4d44-955e-a5073f2a1878','Bielefeld','Elephant Club'),('0b1cfa4263f30a3a6a9ba5edc677a2d8b9e8f830','dcda96ab-e236-4c97-9029-0a3f0c857df8','Bürgerwache','Siegfriedplatz, Bürgerwachehttp://bi-buergerwache.de/'),('0d2ead62d0770ab96b2844117abe9e145751f0db','270f0ffe-6120-4ba3-bd6d-45da1d88a310','Bethel','Neue Schmiede'),('10d6affd6fac6ec67a55cf33a945be869364400e','c47fe677-3d2e-4fc6-bad8-4ebfa6d4cbd5','Weberei','Die Webereihttp://www.die-weberei.de'),('116318ff6aab64337664cffd78e5f7249e2b9c57','2669e4d0-40ec-4765-a3aa-6b4d1010e4c4','Bielefeld','JZ Kamp'),('132fc4b7abe79e7cea7073353253843019fc5aff','ee197266-c8a7-4a78-86ae-ad70f61b08b7','Oeynhausen','Black Sabbathhttp:///home/jk/Projekte/FLOW3/Web/'),('16826df2fa626e8e05a7c772c4e1a8c9260dc2b9','b7fea6a4-3dd3-4a89-a170-0124864df6ee','Nr.','Nr. z. P.http://bielefeldersubkultur.blogspot.com/'),('1a6eaa3f4e7b52fdd0f64257c40ad36e69141194','00dea64e-9c56-40da-8b07-106035ddc293','Bielefeld','Filmhaus'),('1ae46277f83060a98e63b5f9784a6b4bbaedacc9','9bae70f6-4824-418f-b78d-617471d64862','Bielefelder','Bielefelder Kunstvereinhttp://www.bielefelder-kunstverein.de/'),('1bc4bc680e6f83143e20837ee6d78319d0b091eb','8f026617-48ea-41c2-8a0b-7d4c2173ea09','Eisb@r','Deine Eisbar'),('1cc05f20fd041947490a396efd844f28f363cd79','62e01f56-9f5c-44d1-974d-884521b0645a','Rudolf Oetker Halle','Rudolf Oetker Halle'),('1fd659bbd850bb47b3bdcb7b16a9c40b20a6563a','f5c9260e-f493-4f83-aec4-e2b0fad0f6de','Oerlinghausen','JZ Oerlinghausen'),('206df2c4c2bfbfc755ae5f8d1faeebb0af901034','8f026617-48ea-41c2-8a0b-7d4c2173ea09','Bielefeld','Deine Eisbar'),('21cad991d898d912eaa8cf7e5c0ceb49c04d6628','15fc9f2d-6228-43d2-b20c-6e420d5d0f3a','Bielefeld','Augustushttp://www.facebook.com/pages/Augustus-Bielefeld/310015978436'),('2436088a82114c916af8da78a458e729099defc4','b7fea6a4-3dd3-4a89-a170-0124864df6ee','Nummer','Nr. z. P.http://bielefeldersubkultur.blogspot.com/'),('2999388937e4cd54809bbba12afd192b37ecdd0e','dcda96ab-e236-4c97-9029-0a3f0c857df8','Bielefeld','Siegfriedplatz, Bürgerwachehttp://bi-buergerwache.de/'),('29bdc7f317c2449871dcd4b1d397767a2ea6d021','88be6420-44e1-4c5a-9246-ee2f38f09cdc','Bielefeld','Eulenspiegel'),('30d5d05e57604794989c82705beb60616436f0b2','62e01f56-9f5c-44d1-974d-884521b0645a','Bielefeld','Rudolf Oetker Hallehttp://www.rudolf-oetker-halle.de/'),('39480d95ba60ce08cc45fe598d19c332032b9337','efbcb6f3-4343-4110-952e-c30cf3f90dec','Kick','Xhttp://www.x-herford.de/'),('3955febde630553576d8d0a4ffcfb45ae81309ad','fd21481d-9879-4ebb-9b99-2bbbca441c17','Bunker','Bunker Ulmenwall'),('406a11f778b2dd9d880b54c91ebfae072d4bf51e','8f026617-48ea-41c2-8a0b-7d4c2173ea09','Heissb@r','Deine Eisbar'),('40f9424c7a9bf7845e61d851c40c89ed6529611d','dcda96ab-e236-4c97-9029-0a3f0c857df8','Siegfriedplatz','Siegfriedplatz, Bürgerwachehttp://bi-buergerwache.de/'),('43430710ab3cca0f96fcd9eecd7a6b932041811d','270f0ffe-6120-4ba3-bd6d-45da1d88a310','Bielefeld','Neue Schmiede'),('43827362d0e07b5d51b0054fe2b46c8fc0edb924','fd21481d-9879-4ebb-9b99-2bbbca441c17','Bielefeld','Bunker Ulmenwall'),('4690106a6a642c477921cdf2b58cfa39ed1960c9','18635b3c-fc52-4f74-93c5-034fc1bd5b4b','Bielefeld','Kunsthalle'),('47e252017e4c1023ee5fb2087204975937f751e2','8fe3046a-a251-44f3-9524-4e39e4da30fa','Rose','Black Rosehttp:///home/jk/Projekte/FLOW3/Web/'),('48cdc24f8c0e2774f240ad94a7a497f7ff82edac','7d76253a-db11-4db4-8047-d7fb4b9bfbbe','Bielefeld','AJZ'),('4957e2d0fe1fe80bf01d9ff90b9426484705f7db','ae67af29-3256-45d8-a4b6-c1453cc9ac98','Blues','Extra Blues Bar'),('4b5cb8acc0a8d812074b9fbd6e0fd8b550ccc22a','56b9a597-b0a7-406f-ba8d-ecec0f5db46d','Ordnungsamt','Ordnungsamt'),('4b8b26a4b2f93270c7d7796cd60358af8cb8d35f','7d76253a-db11-4db4-8047-d7fb4b9bfbbe','Arbeiterjugendzentrum','AJZ'),('53a1d864d8ec0e5b5c87852ec2093c00f2f0d2ad','b7fea6a4-3dd3-4a89-a170-0124864df6ee','Bielefelder','Nr. z. P.http://bielefeldersubkultur.blogspot.com/'),('53b0ce8fae3ffdebf8b0023c5554bbaffe4770e0','ee197266-c8a7-4a78-86ae-ad70f61b08b7','Black Sabbath','Black Sabbath'),('587fcfc29ee4e6a01d951067a0420d3da01eb593','f5c9260e-f493-4f83-aec4-e2b0fad0f6de','JZO','JZ Oerlinghausen'),('59eba5a51b0b7a87788143fed23f428b597797f0','fd21481d-9879-4ebb-9b99-2bbbca441c17','Ulmenwall','Bunker Ulmenwall'),('5a9fcc0c1d9e20a1c9580b3f9e74caebfed69d3f','f5c9260e-f493-4f83-aec4-e2b0fad0f6de','JZ','JZ Oerlinghausen'),('60576f6e3ee75ace538fc5ca5a16a8ebc2e2bb0f','88be6420-44e1-4c5a-9246-ee2f38f09cdc','Buchladen','Eulenspiegel'),('610d82628d8c7a957b39abf7dea6c12f2840ae3f','30957780-3b99-43b9-bab3-b506312aec1d','Bielefeld','Moviehttp://www.movie-bielefeld.de/'),('61798e5955480113f1c93825b52dcdda2d3cd898','c980fce7-ef7b-4195-9020-b29b87a8ec55','Verve','Verve'),('654fc4ebbaad2a3cafb21713bca80f18b2e57fd8','8fb243cc-a519-4f0f-9a04-6b0bc122e3d2','Falkendom','Falkendom'),('67e6fb08ff22e63549e715ebcbfcf9a76f0b6eef','4fc28e83-0cbb-4fa6-9580-84ac8b4377dc','Theaterlabor','Theaterlaborhttp://theaterlabor.de'),('6e43e6994806304cab945b662f538393faaccf7d','8f353756-0ee1-493b-aff4-f68781f6a031','Ringlokschuppen','Ringlokschuppen'),('7b442e40ffd4e20e494dd611130e3f87220eb807','ee197266-c8a7-4a78-86ae-ad70f61b08b7','Sabbath','Black Sabbathhttp:///home/jk/Projekte/FLOW3/Web/'),('848d5ac7c6131a85a2e77fbd6657d289ca713348','b7fea6a4-3dd3-4a89-a170-0124864df6ee','Subkultur','Nr. z. P.http://bielefeldersubkultur.blogspot.com/'),('877db0588b2f471e7139450923faf6893576805a','18635b3c-fc52-4f74-93c5-034fc1bd5b4b','Kunsthalle','Kunsthalle'),('8b46a1a02c6a278a4b5e6508060ffa455e95a2db','b7fea6a4-3dd3-4a89-a170-0124864df6ee','Bielefeld','Nr. z. P.http://bielefeldersubkultur.blogspot.com/'),('8c1d98bec146a8b705a0577134230042f4631b80','da1a12cc-b9de-4568-9dae-437c106896cb','Forum','Forum'),('8ca8a504ae4e7d52899ee347856de13c38fc5056','7a67f051-fc42-4d44-955e-a5073f2a1878','Elephant','Elephant Club'),('8f44b6b6d5274efc51d9c7548e271f15a77df13e','2669e4d0-40ec-4765-a3aa-6b4d1010e4c4','Kulturkombinat','JZ Kamp'),('8fa303656f39bae6dcf5816f421fdc23816a7edf','7a67f051-fc42-4d44-955e-a5073f2a1878','Elephant Club','Elephant Club'),('9673bdb2083749799dab440713aafa9708a917bc','ae67af29-3256-45d8-a4b6-c1453cc9ac98','Extra','Extra Blues Bar'),('96a10b70a08824af621e5f7c22bd0dc5c85f5933','62e01f56-9f5c-44d1-974d-884521b0645a','Halle','Rudolf Oetker Hallehttp://www.rudolf-oetker-halle.de/'),('991c7d9da2982aa2ec09c37188b55ab6fc2b2eeb','4fc28e83-0cbb-4fa6-9580-84ac8b4377dc','Bielefeld','Theaterlaborhttp://theaterlabor.de'),('9bd106aca21cb5447385576b27a2032726827d45','62e01f56-9f5c-44d1-974d-884521b0645a','Rudolf','Rudolf Oetker Hallehttp://www.rudolf-oetker-halle.de/'),('9eac6c8ad43135da60818faf34c01882ea12317f','30957780-3b99-43b9-bab3-b506312aec1d','Movie','Moviehttp://www.movie-bielefeld.de/'),('a0e98879744eb67d4f170bf1c741adaf1b53210c','15fc9f2d-6228-43d2-b20c-6e420d5d0f3a','Augustus','Augustushttp://www.facebook.com/pages/Augustus-Bielefeld/310015978436'),('a0fff8c5a0d2a6cdd4208ccd88f407e0b336eb9f','b33d5023-197a-4f9a-8ee2-6b18c7b7a052','Bielefeld','Stereohttp://www.stereo-bielefeld.de/'),('a891d03a9148334d98998b8e5ad5bd770191e27e','2669e4d0-40ec-4765-a3aa-6b4d1010e4c4','Kamp','JZ Kamp'),('af9cbf966cff410f9fc5cd8f48d6d98841088d32','8fb243cc-a519-4f0f-9a04-6b0bc122e3d2','Falken','Falkendom'),('b038e006608e787ead8a234b0f06853b5539f8e9','da1a12cc-b9de-4568-9dae-437c106896cb','Enger','Forum'),('b07836054089f80e4c710503c4b6bf72420f5331','8f026617-48ea-41c2-8a0b-7d4c2173ea09','Deine','Deine Eisbar'),('b552683438b9172c9ef6166d599d63632370f96d','c980fce7-ef7b-4195-9020-b29b87a8ec55','Bielefeld','VERVE Bar/Grill/Venue'),('b5849adb4e987e41b230749dde2bdcc7ffb498aa','efbcb6f3-4343-4110-952e-c30cf3f90dec','Herford','Xhttp://www.x-herford.de/'),('ba9864e56284596af786652a9d6b8513595f60b2','270f0ffe-6120-4ba3-bd6d-45da1d88a310','Neue Schmiede','Neue Schmiede'),('baace9ab227cb7b01b269131f6cba10531175b6a','88be6420-44e1-4c5a-9246-ee2f38f09cdc','Eulenspiegel','Eulenspiegel'),('c311a9544774c431c48d1a246f968d9f9c4c6b76','8f026617-48ea-41c2-8a0b-7d4c2173ea09','Eisbar','Deine Eisbar'),('c36091c4ce6aa570e95f6fc9b2185f675c0da1f4','62e01f56-9f5c-44d1-974d-884521b0645a','Oetker','Rudolf Oetker Hallehttp://www.rudolf-oetker-halle.de/'),('c370616f201b50b9b3dc9380645d9efc4928ed84','ae67af29-3256-45d8-a4b6-c1453cc9ac98','Extra Blues Bar','Extra Blues Bar'),('c392135fb63f55b9f27ca6caa3ae6699443cfafc','b7fea6a4-3dd3-4a89-a170-0124864df6ee','Initiative','Nr. z. P.http://bielefeldersubkultur.blogspot.com/'),('c52410225296f335bce4e24e641db70b4b3580a2','da1a12cc-b9de-4568-9dae-437c106896cb','Bielefeld','Forum'),('cea57f66bc6c53476599aff188cf9efb8e2b585a','ee197266-c8a7-4a78-86ae-ad70f61b08b7','Black','Black Sabbathhttp:///home/jk/Projekte/FLOW3/Web/'),('d026030d7a32d3f894ecbb532382634e0c27d161','0f6acb59-9792-408d-a2bd-8431076ffcfa','Zweischlingen','Zweischlingenhttp://www.zweischlingen-gastro.de/'),('d0cb5596121187c2207a8ee108d0240029e5bca8','8f353756-0ee1-493b-aff4-f68781f6a031','Bielefeld','Ringlokschuppenhttp://www.ringlokschuppen.com/'),('d0fdfd4ea61dc94fba9264779eb3d8549405c647','c47fe677-3d2e-4fc6-bad8-4ebfa6d4cbd5','Gütersloh','Die Webereihttp://www.die-weberei.de'),('d73a0c91c59f3a829bebfd3d086655437bfd7869','8fe3046a-a251-44f3-9524-4e39e4da30fa','Black','Black Rosehttp:///home/jk/Projekte/FLOW3/Web/'),('d7971a2e46d8111646a4bdf0718ba8aedc51b492','b7fea6a4-3dd3-4a89-a170-0124864df6ee','P.','Nr. z. P.http://bielefeldersubkultur.blogspot.com/'),('d7f606035cc7c089f1555f6f2cd7e56b29b2d8a5','efbcb6f3-4343-4110-952e-c30cf3f90dec','X Herford','Xhttp://www.x-herford.de/'),('d8e4ab665a775161b2bfbc893a9e0417e2d1077a','7d76253a-db11-4db4-8047-d7fb4b9bfbbe','AJZ','AJZ'),('dadeccdb6f8519e96b77f651e5dd8cb649829b0a','8fe3046a-a251-44f3-9524-4e39e4da30fa','Bielefeld','Black Rosehttp:///home/jk/Projekte/FLOW3/Web/'),('db71bda1b03d84c08293f32f57e0779ff393292f','270f0ffe-6120-4ba3-bd6d-45da1d88a310','Neue','Neue Schmiede'),('e27ff7ae1b3283e3c93b589400f5a35f1132b588','efbcb6f3-4343-4110-952e-c30cf3f90dec','X','X'),('e60b0d12f6a453946befee624c75439f5f6325cd','8f026617-48ea-41c2-8a0b-7d4c2173ea09','Heissbar','Deine Eisbar'),('e7c22642db5dbec76a3387764cd75feae5bf0d0a','b7fea6a4-3dd3-4a89-a170-0124864df6ee','Platz','Nr. z. P.http://bielefeldersubkultur.blogspot.com/'),('e8466cd0ac8531e764677b13c417d4b95b267f43','2669e4d0-40ec-4765-a3aa-6b4d1010e4c4','JZ','JZ Kamp'),('e9c93facab5a8202f46ea89bce4ee6f449a46266','00dea64e-9c56-40da-8b07-106035ddc293','Offkino','Filmhaus'),('ebb26d802914d532e78ad72c665e880388eebcfd','9bae70f6-4824-418f-b78d-617471d64862','Kunstverein','Bielefelder Kunstvereinhttp://www.bielefelder-kunstverein.de/'),('ec3b28b52ed8bc3bb6faa37262fa14d039355203','0f6acb59-9792-408d-a2bd-8431076ffcfa','Bielefeld','Zweischlingenhttp://www.zweischlingen-gastro.de/'),('f234d30584e5d8075953eeca266bbed446dee291','00dea64e-9c56-40da-8b07-106035ddc293','Filmhaus','Filmhaus'),('f2ed8b01e309416d1c041b4c3f8de3578bcc5340','7d76253a-db11-4db4-8047-d7fb4b9bfbbe','AJO','AJZ'),('f30dc5649b1fbb306c356ae1e0ec98b93086d6e2','270f0ffe-6120-4ba3-bd6d-45da1d88a310','Schmiede','Neue Schmiede'),('f94bebe1ce09f4553e48634dde874604200a231f','8fb243cc-a519-4f0f-9a04-6b0bc122e3d2','Bielefeld','Falkendom'),('fb2191ca05ef81d4fa8c45433ce67a04a6b7a071','9bae70f6-4824-418f-b78d-617471d64862','Bielefeld','Bielefelder Kunstvereinhttp://www.bielefelder-kunstverein.de/'),('fc6c2493da4af8ba9b98a692ea4fe81ec179279b','ae67af29-3256-45d8-a4b6-c1453cc9ac98','Bielefeld','Extra Blues Bar');
/*!40000 ALTER TABLE `org_gucken_events_domain_model_locationkeyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_gucken_events_domain_model_postaladdress`
--

DROP TABLE IF EXISTS `org_gucken_events_domain_model_postaladdress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org_gucken_events_domain_model_postaladdress` (
  `flow3_persistence_identifier` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `addresscountry` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addresslocality` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addressregion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postofficeboxnumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postalcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `streetaddress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`flow3_persistence_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_gucken_events_domain_model_postaladdress`
--

LOCK TABLES `org_gucken_events_domain_model_postaladdress` WRITE;
/*!40000 ALTER TABLE `org_gucken_events_domain_model_postaladdress` DISABLE KEYS */;
INSERT INTO `org_gucken_events_domain_model_postaladdress` VALUES ('0efc1372-fec5-4bcf-871f-d42e2eb33909','DE','Bielefeld','NRW','','33607','Heeper Straße 132'),('101ea987-0c88-4d17-beb3-3eedd113695b','DE','Bielefeld','NRW','','33613','Meller Str. 77'),('13420447-0285-41ef-90bc-ee9eb4a13df9','DE','Oerlinghausen','NRW','','33813','Detmolder Straße 102'),('1731e593-79a4-4782-9d6e-2d0e2a6e1e45','DE','Bielefeld','NRW','','33602','Mauerstr. 44'),('1caab2bc-8d10-4019-916d-eb6f38099e7a','DE','Bielefeld','NRW','','33607','Ravensberger Park 5'),('1e0a4916-fcaa-42f4-adb7-e5d18bcbac90','Germany','Bielefeld','NRW','','33602','Klosterplatz 13'),('2485ede0-01b5-4186-a075-9cec2e5559b5','Germany','Gütersloh','NRW','','33330','Bogenstr. 1 - 8'),('266f2677-9c8b-420e-b771-7365a39a3ace','DE','Bielefeld','NRW','','33602','Am Bahnhof 6'),('2be24451-ec6e-40f0-b94e-44998834d743','Germany','Bad Oeynhausen','NRW','','32545','Weserstr.12'),('3352254a-33ab-4d4b-bdc8-dff3d7e032d5','Germany','Bielefeld','NRW','','33607','Heeper Straße 52'),('3ac3ac3b-f304-466b-ba32-65dc1bfa434a','DE','Bielefeld','NRW','','33615','Große-Kurfürsten-Straße 81'),('3f61bc8b-b161-4e46-96b1-d514f98e6993','DE','Bielefeld','NRW','','33602','August-Bebel-Straße 47'),('4026a1c2-b3de-4679-a3b2-78f62cd24a9d','DE','Bielefeld','NRW','','33604','Niedermühlenkamp 43'),('5466c149-4c04-4acc-a474-1497094730f5','DE','Bielefeld','NRW','','33602','Hermann-Kleinewächter-Str. 4'),('5c015ad8-0e62-4f81-85ae-3d965f070678','DE','Bielefeld','NRW','','33649','Osnabrücker Str. 200'),('5febe5a6-729f-4dfc-b55b-287a881a11f6','DE','Bielefeld','NRW','','33602','Kreuzstraße 1'),('605975e6-a091-46e3-baab-b0b4a602b3bd','Germany','Bielefeld','NRW','','33615','Lampingstraße 16'),('6742fc09-e7d1-4ddd-9332-3cc2f7cef3de','DE','Bielefeld','NRW','','33602','Hagenbruchstr. 7'),('7c87abe9-6510-4c6b-a64f-3f0d38f08a6f','DE','Bielefeld','NRW','','33602','Welle 61'),('a98c686e-525b-4aaa-917f-1b0e3297ebb4','DE','Bielefeld','NRW','','33613','Am Boulevard 1'),('b5a1eb82-128d-4b5e-9020-af453ac3daed','DE','Bielefeld','NRW','','33602','Artur-Ladebeck-Straße 5'),('bccc803a-1a8d-4b83-86dd-f4edc4487906','DE','Bielefeld','NRW','','33602',' Ritterstr. 6'),('c98bd6ba-70dd-4600-82ff-dbf6527e6680','Germany','Bielefeld','NRW','','33617','Handwerkerstr. 7'),('d545c99a-4ee9-4430-b1e2-077dfa2fce9c','DE','Bielefeld','NRW','','33602','August-Bebel-Str. 94'),('d86881b8-5543-4f68-b031-c616b57d83bf','Germany','Bielefeld','NRW','','33613','Meller Straße 2'),('dfcc1e94-4b31-4d7e-8fb8-f8150d9792f0','Germany','Bielefeld','NRW','','33613','Boulevard 1'),('e2420efe-729d-4c94-8332-19f663ff8ee0','DE','Bielefeld','NRW','','33615','Rolandstr. 16'),('e79c5d15-8f28-4553-b328-9b24c03313ec','Germany','Herford','NRW','','32051','Bünder Str. 82-86'),('ed32fc54-a061-4fe0-892d-e8b43c048083','Germany','Bielefeld','NRW','','33602','Siekerstraße 20'),('fd0a0c36-aa89-42d2-9c0d-839085fe2ab9','Germany','Bielefeld','NRW','','33609','Stadtheider Str. 11');
/*!40000 ALTER TABLE `org_gucken_events_domain_model_postaladdress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_gucken_events_domain_model_type`
--

DROP TABLE IF EXISTS `org_gucken_events_domain_model_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org_gucken_events_domain_model_type` (
  `flow3_persistence_identifier` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pluraltitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`flow3_persistence_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_gucken_events_domain_model_type`
--

LOCK TABLES `org_gucken_events_domain_model_type` WRITE;
/*!40000 ALTER TABLE `org_gucken_events_domain_model_type` DISABLE KEYS */;
INSERT INTO `org_gucken_events_domain_model_type` VALUES ('0b9a2147-fa10-45f4-a725-129922aecd42','Sonstiges','Veranstaltungen, die sonst nirgendwo reinpassen',''),('62df999f-056e-4f0b-976c-0c4f48f449a0','Lesung','Lesungen',''),('6fd35b14-6e75-4b52-94cc-b6403a4fc57e','Kino','Filmvorstellungen',''),('70daf7cc-e3b1-4d39-975e-2975ff861a8e','Spasz','Kabarett- oder Comedy-Veranstaltungen',''),('80205cbf-6372-4c8f-a5eb-7ec0e112cd45','Diskussion','Diskussionen ',''),('85666351-5861-4f7a-a253-6de31fc613c8','Konzert','Konzerte',''),('b44bb566-abb5-4c8a-905f-522076315218','Party','Parties',''),('bb5dd62b-8f8c-43a6-bfea-b48efe101c9a','Kinder','Kinderveranstaltungen',''),('bce98474-9d82-47dc-a0fd-d5ae80ff686e','Kunst','Austellungseröffnungen, Workshops und Performances',''),('c772134c-c7aa-4516-a8b5-d5aec1a6ddc0','Kneipe','Kneipe',''),('ee7c2376-b51f-4979-9a2b-b5dbadf8863c','Theater','Theatervorstellungen','');
/*!40000 ALTER TABLE `org_gucken_events_domain_model_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_gucken_events_domain_model_typekeyword`
--

DROP TABLE IF EXISTS `org_gucken_events_domain_model_typekeyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org_gucken_events_domain_model_typekeyword` (
  `flow3_persistence_identifier` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `typeid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`flow3_persistence_identifier`),
  KEY `IDX_1883E4478CDE5729` (`type`),
  CONSTRAINT `FK_1883E4478CDE5729` FOREIGN KEY (`type`) REFERENCES `org_gucken_events_domain_model_type` (`flow3_persistence_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_gucken_events_domain_model_typekeyword`
--

LOCK TABLES `org_gucken_events_domain_model_typekeyword` WRITE;
/*!40000 ALTER TABLE `org_gucken_events_domain_model_typekeyword` DISABLE KEYS */;
INSERT INTO `org_gucken_events_domain_model_typekeyword` VALUES ('00c8c2a93c5c437300373bcabee621159f5674ff','62df999f-056e-4f0b-976c-0c4f48f449a0','Lesung','Lesung'),('0490f4bc5b0d63e20847eb32ffcdf00d94ea86f8','bce98474-9d82-47dc-a0fd-d5ae80ff686e','Museum','Kunst'),('06c4df7d0201bd9285b33331be5f1880bfbc253f','b44bb566-abb5-4c8a-905f-522076315218','Partys','Party'),('0740f7568576356d6a1b06f72f705b8a309dfcb3','c772134c-c7aa-4516-a8b5-d5aec1a6ddc0','Kneipe','Kneipe'),('093da31f17585a3c52c3b7ff3a15883421ad5464','85666351-5861-4f7a-a253-6de31fc613c8','freedom','Konzert'),('190449f07e91c084eba30a5e255dadae8ea1f63b','85666351-5861-4f7a-a253-6de31fc613c8','freedom run','Konzert'),('220938b960e5fe444507f9940428c2b82ba7dda8','ee7c2376-b51f-4979-9a2b-b5dbadf8863c','Theateraufführung','Theater'),('282de40b7860954a0bce2400d0ae377fc9688508','85666351-5861-4f7a-a253-6de31fc613c8','Folk','Konzert'),('2fcd7b0bdde46db3500c8ed25cd6e3ae1fb8fc92','c772134c-c7aa-4516-a8b5-d5aec1a6ddc0','Gastronomie','Kneipe'),('3cd73be2e86066b22f52a71100aa2be38282297b','70daf7cc-e3b1-4d39-975e-2975ff861a8e','kasperett','Spasz'),('474e3bfb5b36df35eca5ed37b6de1c18f12f3136','85666351-5861-4f7a-a253-6de31fc613c8','frc','Konzert'),('5579797c8f9dce541f563dad936bf1d595006df9','85666351-5861-4f7a-a253-6de31fc613c8','Live','Konzert'),('5bcfe14193dc2d2807bc6a279314f04febb65411','80205cbf-6372-4c8f-a5eb-7ec0e112cd45','Vortrag','Diskussion'),('5dbb1b68f4000de3582fa5ab9e27022cd8431f04','bb5dd62b-8f8c-43a6-bfea-b48efe101c9a','Puppentheater','Kinder'),('693ff48db8ba27c0cbfc6df3d31a6d37830db599','85666351-5861-4f7a-a253-6de31fc613c8','rituals','Konzert'),('697f938117f7293188217c764bc284d19514d9d5','70daf7cc-e3b1-4d39-975e-2975ff861a8e','coemdy','Spasz'),('6f2dd933cbf7ef40e35f93ceca5720fc0ae8ea2c','85666351-5861-4f7a-a253-6de31fc613c8','hr','Konzert'),('724913da0aa92a8a9d1ed422e6dc41da16e320fe','bce98474-9d82-47dc-a0fd-d5ae80ff686e','Austellungseröffnungen','Kunst'),('79107f0815231cd7a682caa5173e86632ed28a50','85666351-5861-4f7a-a253-6de31fc613c8','run','Konzert'),('7a873a1b96443abf6dd0c0a522b036f7c08d9aef','85666351-5861-4f7a-a253-6de31fc613c8','pres','Konzert'),('856726d9b2484929b191037e95692bd3d1fc0a1f','62df999f-056e-4f0b-976c-0c4f48f449a0','Autor','Lesung'),('8a8378e684d213d1ec364465a57307bf013ffe83','bb5dd62b-8f8c-43a6-bfea-b48efe101c9a','Baby','Kinder'),('8c61ca712fa32ae67cd2b693a0cf243904aa9e1c','ee7c2376-b51f-4979-9a2b-b5dbadf8863c','Premiere','Theater'),('8d63f90a787ddbe190cd5d0f980fffcb49734550','6fd35b14-6e75-4b52-94cc-b6403a4fc57e','Filmabend','Kino'),('8f6fd9dff5f1bd786d2cc8331583331ec86d08f6','bce98474-9d82-47dc-a0fd-d5ae80ff686e','Vernissage','Kunst'),('986b062233cee18017a241fba79dbad864148b4a','6fd35b14-6e75-4b52-94cc-b6403a4fc57e','Kino','Kino'),('9888cf1fc158f952277f648725a84e5c9648f41d','85666351-5861-4f7a-a253-6de31fc613c8','Headache Rituals','Konzert'),('988ab61e9c0159f9ed32386935f89254782f47f4','70daf7cc-e3b1-4d39-975e-2975ff861a8e','Kabarett','Spasz'),('a07b9514270c0bdcb18aab1472ac3af906a1073b','85666351-5861-4f7a-a253-6de31fc613c8','Stage','Konzert'),('a1b817aa4f141342c03679dee0717067017ae576','b44bb566-abb5-4c8a-905f-522076315218','Party','Party'),('a1e49e7a8605c90b13ff7a402fef7ea9010b267d','bb5dd62b-8f8c-43a6-bfea-b48efe101c9a','Kinder','Kinder'),('a7fd919f98d7513ce171539c4b4a29dc8c7198e2','ee7c2376-b51f-4979-9a2b-b5dbadf8863c','Theater','Theater'),('a854d50c1797436faf72a83ccf9ec42c2ad98ff1','85666351-5861-4f7a-a253-6de31fc613c8','Band','Konzert'),('a9eaa7332d3985b458b7f3ff505eef98c5792a34','bce98474-9d82-47dc-a0fd-d5ae80ff686e','Performance','Kunst'),('c2c1099c720e6d9667c303b153f4e8018e60e8d5','bb5dd62b-8f8c-43a6-bfea-b48efe101c9a','Familie','Kinder'),('c493c7a08d05799a09c308c50db7f2b7b5a33c3a','85666351-5861-4f7a-a253-6de31fc613c8','Solo','Konzert'),('d13c8180e109c5b49649dc2c0f4fbca9b6c7a338','85666351-5861-4f7a-a253-6de31fc613c8','Songwriter','Konzert'),('d68ac887c13f9fc9b3d5caa0c42846a9c76012e8','80205cbf-6372-4c8f-a5eb-7ec0e112cd45','Diskussion','Diskussion'),('e01257b405f562eef39c90e7404da6681a8ebd48','bce98474-9d82-47dc-a0fd-d5ae80ff686e','Kunst','Kunst'),('e3abcc36b5717b20ed5aa23ad22f9c8438426688','6fd35b14-6e75-4b52-94cc-b6403a4fc57e','Film','Kino'),('e669b793dd6a6087a4b94ea7e35ba7d1dd2019a1','bce98474-9d82-47dc-a0fd-d5ae80ff686e','Workshops','Kunst'),('eb01107953b1d99203f11ace51051e24018ccb0f','85666351-5861-4f7a-a253-6de31fc613c8','Musik','Konzert'),('ee0f25d28df7c0c41abaf76a8d0e9e80be0bb8a3','bb5dd62b-8f8c-43a6-bfea-b48efe101c9a','Kind','Kinder'),('eef63615e8c85d1e5f0c0524a11a6a93e027319b','85666351-5861-4f7a-a253-6de31fc613c8','headache','Konzert'),('f14938e9efbfaf192a23c4fa3a99d390ac6a63e7','b44bb566-abb5-4c8a-905f-522076315218','Tanzbares','Party'),('f234c5587298eb3ca029ec7e9fa0e44591bd53b1','bb5dd62b-8f8c-43a6-bfea-b48efe101c9a','Kleinkind','Kinder'),('f4a2e2793ba92f5aec644a535f5c897344e4dd57','bce98474-9d82-47dc-a0fd-d5ae80ff686e','Finissage','Kunst'),('f62b0d2a04f03813a5c5036b126b10b20f848acf','85666351-5861-4f7a-a253-6de31fc613c8','Konzert','Konzert'),('f81839f820f161d0b538484965bd47698b956ff3','b44bb566-abb5-4c8a-905f-522076315218','Disco','Party'),('f89a9fca9e570454fbb69c9770dc5b9b6e0c15fa','85666351-5861-4f7a-a253-6de31fc613c8','Konzerte','Konzert'),('fea74346166749fd790f19410140b1389a23c723','70daf7cc-e3b1-4d39-975e-2975ff861a8e','Comedy','Spasz');
/*!40000 ALTER TABLE `org_gucken_events_domain_model_typekeyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typo3_flow3_mvc_web_routing_objectpathmapping`
--

DROP TABLE IF EXISTS `typo3_flow3_mvc_web_routing_objectpathmapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typo3_flow3_mvc_web_routing_objectpathmapping` (
  `objecttype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uripattern` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pathsegment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`objecttype`,`uripattern`,`pathsegment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typo3_flow3_mvc_web_routing_objectpathmapping`
--

LOCK TABLES `typo3_flow3_mvc_web_routing_objectpathmapping` WRITE;
/*!40000 ALTER TABLE `typo3_flow3_mvc_web_routing_objectpathmapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `typo3_flow3_mvc_web_routing_objectpathmapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typo3_flow3_resource_resource`
--

DROP TABLE IF EXISTS `typo3_flow3_resource_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typo3_flow3_resource_resource` (
  `flow3_persistence_identifier` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `resourcepointer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fileextension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`flow3_persistence_identifier`),
  KEY `IDX_B4D45B323CB65D1` (`resourcepointer`),
  CONSTRAINT `FK_B4D45B323CB65D1` FOREIGN KEY (`resourcepointer`) REFERENCES `typo3_flow3_resource_resourcepointer` (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typo3_flow3_resource_resource`
--

LOCK TABLES `typo3_flow3_resource_resource` WRITE;
/*!40000 ALTER TABLE `typo3_flow3_resource_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `typo3_flow3_resource_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typo3_flow3_resource_resourcepointer`
--

DROP TABLE IF EXISTS `typo3_flow3_resource_resourcepointer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typo3_flow3_resource_resourcepointer` (
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typo3_flow3_resource_resourcepointer`
--

LOCK TABLES `typo3_flow3_resource_resourcepointer` WRITE;
/*!40000 ALTER TABLE `typo3_flow3_resource_resourcepointer` DISABLE KEYS */;
/*!40000 ALTER TABLE `typo3_flow3_resource_resourcepointer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typo3_flow3_security_account`
--

DROP TABLE IF EXISTS `typo3_flow3_security_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typo3_flow3_security_account` (
  `flow3_persistence_identifier` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `party` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accountidentifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `authenticationprovidername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `credentialssource` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creationdate` datetime DEFAULT NULL,
  `expirationdate` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  PRIMARY KEY (`flow3_persistence_identifier`),
  KEY `IDX_65EFB31C89954EE0` (`party`),
  CONSTRAINT `FK_65EFB31C89954EE0` FOREIGN KEY (`party`) REFERENCES `typo3_party_domain_model_abstractparty` (`flow3_persistence_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typo3_flow3_security_account`
--

LOCK TABLES `typo3_flow3_security_account` WRITE;
/*!40000 ALTER TABLE `typo3_flow3_security_account` DISABLE KEYS */;
INSERT INTO `typo3_flow3_security_account` VALUES ('bec637df-bcc3-4183-bb2c-09dd2fb86e0d',NULL,'hnesk','DefaultProvider','pbkdf2=>28eRHF7UvdU=,C3x19NDrTuVkOPZqRdXg2jZH4Sy1T21ArA0hch+Z4PaejOvNQXb/fuSz0ZmlbVmdqZRKH+MUJqaJcHl5SYbDgQ==','2012-02-24 13:58:30',NULL,'a:2:{i:0;s:13:\"Administrator\";i:1;s:4:\"User\";}');
/*!40000 ALTER TABLE `typo3_flow3_security_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typo3_flow3_security_authorization_resource_securitypublis_6180a`
--

DROP TABLE IF EXISTS `typo3_flow3_security_authorization_resource_securitypublis_6180a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typo3_flow3_security_authorization_resource_securitypublis_6180a` (
  `flow3_persistence_identifier` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `allowedroles` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  PRIMARY KEY (`flow3_persistence_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typo3_flow3_security_authorization_resource_securitypublis_6180a`
--

LOCK TABLES `typo3_flow3_security_authorization_resource_securitypublis_6180a` WRITE;
/*!40000 ALTER TABLE `typo3_flow3_security_authorization_resource_securitypublis_6180a` DISABLE KEYS */;
/*!40000 ALTER TABLE `typo3_flow3_security_authorization_resource_securitypublis_6180a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typo3_flow3_security_policy_role`
--

DROP TABLE IF EXISTS `typo3_flow3_security_policy_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typo3_flow3_security_policy_role` (
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typo3_flow3_security_policy_role`
--

LOCK TABLES `typo3_flow3_security_policy_role` WRITE;
/*!40000 ALTER TABLE `typo3_flow3_security_policy_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `typo3_flow3_security_policy_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typo3_party_domain_model_abstractparty`
--

DROP TABLE IF EXISTS `typo3_party_domain_model_abstractparty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typo3_party_domain_model_abstractparty` (
  `flow3_persistence_identifier` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `dtype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`flow3_persistence_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typo3_party_domain_model_abstractparty`
--

LOCK TABLES `typo3_party_domain_model_abstractparty` WRITE;
/*!40000 ALTER TABLE `typo3_party_domain_model_abstractparty` DISABLE KEYS */;
/*!40000 ALTER TABLE `typo3_party_domain_model_abstractparty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typo3_party_domain_model_electronicaddress`
--

DROP TABLE IF EXISTS `typo3_party_domain_model_electronicaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typo3_party_domain_model_electronicaddress` (
  `flow3_persistence_identifier` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `usagetype` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `approved` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`flow3_persistence_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typo3_party_domain_model_electronicaddress`
--

LOCK TABLES `typo3_party_domain_model_electronicaddress` WRITE;
/*!40000 ALTER TABLE `typo3_party_domain_model_electronicaddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `typo3_party_domain_model_electronicaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typo3_party_domain_model_person`
--

DROP TABLE IF EXISTS `typo3_party_domain_model_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typo3_party_domain_model_person` (
  `flow3_persistence_identifier` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primaryelectronicaddress` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`flow3_persistence_identifier`),
  UNIQUE KEY `UNIQ_C60479E15E237E06` (`name`),
  KEY `IDX_C60479E1A7CECF13` (`primaryelectronicaddress`),
  CONSTRAINT `FK_C60479E121E3D446` FOREIGN KEY (`flow3_persistence_identifier`) REFERENCES `typo3_party_domain_model_abstractparty` (`flow3_persistence_identifier`) ON DELETE CASCADE,
  CONSTRAINT `FK_C60479E15E237E06` FOREIGN KEY (`name`) REFERENCES `typo3_party_domain_model_personname` (`flow3_persistence_identifier`),
  CONSTRAINT `FK_C60479E1A7CECF13` FOREIGN KEY (`primaryelectronicaddress`) REFERENCES `typo3_party_domain_model_electronicaddress` (`flow3_persistence_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typo3_party_domain_model_person`
--

LOCK TABLES `typo3_party_domain_model_person` WRITE;
/*!40000 ALTER TABLE `typo3_party_domain_model_person` DISABLE KEYS */;
/*!40000 ALTER TABLE `typo3_party_domain_model_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typo3_party_domain_model_person_electronicaddresses_join`
--

DROP TABLE IF EXISTS `typo3_party_domain_model_person_electronicaddresses_join`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typo3_party_domain_model_person_electronicaddresses_join` (
  `party_person` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `party_electronicaddress` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`party_person`,`party_electronicaddress`),
  KEY `IDX_BE7D49F772AAAA2F` (`party_person`),
  KEY `IDX_BE7D49F7B06BD60D` (`party_electronicaddress`),
  CONSTRAINT `FK_BE7D49F772AAAA2F` FOREIGN KEY (`party_person`) REFERENCES `typo3_party_domain_model_person` (`flow3_persistence_identifier`),
  CONSTRAINT `FK_BE7D49F7B06BD60D` FOREIGN KEY (`party_electronicaddress`) REFERENCES `typo3_party_domain_model_electronicaddress` (`flow3_persistence_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typo3_party_domain_model_person_electronicaddresses_join`
--

LOCK TABLES `typo3_party_domain_model_person_electronicaddresses_join` WRITE;
/*!40000 ALTER TABLE `typo3_party_domain_model_person_electronicaddresses_join` DISABLE KEYS */;
/*!40000 ALTER TABLE `typo3_party_domain_model_person_electronicaddresses_join` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typo3_party_domain_model_personname`
--

DROP TABLE IF EXISTS `typo3_party_domain_model_personname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typo3_party_domain_model_personname` (
  `flow3_persistence_identifier` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middlename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `othername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`flow3_persistence_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typo3_party_domain_model_personname`
--

LOCK TABLES `typo3_party_domain_model_personname` WRITE;
/*!40000 ALTER TABLE `typo3_party_domain_model_personname` DISABLE KEYS */;
/*!40000 ALTER TABLE `typo3_party_domain_model_personname` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-02-27 23:02:19
