-- MariaDB dump 10.18  Distrib 10.4.17-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: jetsaus
-- ------------------------------------------------------
-- Server version	10.4.17-MariaDB

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
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id товара',
  `id_category` smallint(5) NOT NULL COMMENT 'id категории товара',
  `url` varchar(255) NOT NULL COMMENT 'Место расположение демонстрационной картинки',
  `size` int(10) unsigned NOT NULL COMMENT 'Размер в байтах демонстрационной картинки',
  `name` varchar(255) NOT NULL COMMENT 'Наименование товара',
  `description` varchar(1024) DEFAULT NULL COMMENT 'Описание товара',
  `views` smallint(5) DEFAULT NULL COMMENT 'Количество просмотров',
  `price` decimal(5,2) unsigned NOT NULL COMMENT 'Цена товара',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery`
--

LOCK TABLES `gallery` WRITE;
/*!40000 ALTER TABLE `gallery` DISABLE KEYS */;
INSERT INTO `gallery` VALUES (1,1,'img/001.jpg',170934,'Дельфин','Дельфины (др.-греч. δελφῖνος, δελφίς) — водные млекопитающие инфраотряда китообразных, принадлежащие либо к семейству дельфиновых (Delphinidae) — морские, либо к надсемейству речных дельфинов (Platanistoidea) — пресноводные.',30,0.00),(2,2,'img/002.jpg',98882,'Лисица','Лисица — общее название нескольких видов млекопитающих семейства псовые. Лишь 10 видов этой группы относят к роду собственно лисиц (лат. Vulpes). Наиболее известный и распространённый представитель — обыкновенная лисица (Vulpes vulpes).',16,0.00),(3,3,'img/003.jpg',372746,'Коала','Коала (лат. Phascolarctos cinereus) — вид сумчатых, обитающий в Австралии. Единственный современный представитель семейства коаловых (Phascolarctidae) из отряда двурезцовых сумчатых (Diprotodontia).',16,0.00),(4,4,'img/004.jpg',339981,'Лев','Лев (лат. Panthera leo) — вид хищных млекопитающих, один из четырёх представителей рода пантер (Panthera), относящегося к подсемейству больших кошек (Pantherinae) в составе семейства кошачьих (Felidae). Наряду с тигром — самая крупная из ныне живущих кошек, масса некоторых самцов может достигать 250 кг.',17,0.00),(5,4,'img/005.jpg',442827,'Рысь','Рысь (лат. Lynx) — род хищных млекопитающих семейства кошачьих, наиболее близкий к роду кошек (Felis).',17,0.00),(6,5,'img/006.jpg',365881,'Панда','Панда (лат. Ailuridae) — семейство млекопитающих из подотряда псообразные (Caniformia) отряда хищных. Включает семь вымерших и один современный род. Единственный современный вид — малая, или красная панда (Ailurus fulgens).',18,0.00),(7,5,'img/007.jpg',254168,'Белый медведь','\'Белый медведь, или полярный медведь, северный медведь, ошкуй, нанук, умка (лат. Ursus maritimus — «медведь морской») — хищное млекопитающее семейства медвежьих, близкий родственник бурого медведя. Второй по величине сухопутный хищник планеты после гребнистого крокодила. Назван так из-за белой шерсти.',19,0.00),(8,4,'img/008.jpg',225933,'Пума','Пума (горный лев, кугуар) (лат. Puma concolor) — хищник рода Пумы семейства кошачьих. Обитает в Северной и Южной Америке. Самый крупный представитель рода пум. Длина тела животного составляет 100—180 см, при длине хвоста 60—75 см, высоте в холке 61—76 см при весе до 105 кг (самцы). Охотится преимущественно на оленей.',20,0.00),(9,4,'img/009.jpg',359751,'Тигр','Тигр (лат. Panthera tigris) — вид хищных млекопитающих семейства кошачьих, один из четырёх представителей рода пантера (лат. Panthera), который относится к подсемейству больших кошек. Слово «тигр» происходит от др.-греч. τίγρις, которое в свою очередь восходит к др.-перс. *tigri от корня «*taig» со значением «острый; быстрый».',18,0.00),(10,2,'img/010.jpg',220331,'Волки','Волк, или серый волк, или обыкновенный волк (лат. Canis lupus), — вид хищных млекопитающих из семейства псовых (Canidae). Наряду с койотом (Canis latrans), обыкновенным шакалом (Canis aureus) и ещё несколькими видами составляет род волков (Canis).Dолк — одно из самых крупных современных животных в своём семействе: длина его тела (без учёта хвоста) может достигать 160 см, длина хвоста — до 52 см, высота в холке — до 90 см; масса тела может доходить до 90—100 кг.',19,0.00);
/*!40000 ALTER TABLE `gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_category`
--

DROP TABLE IF EXISTS `gallery_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery_category` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_category`
--

LOCK TABLES `gallery_category` WRITE;
/*!40000 ALTER TABLE `gallery_category` DISABLE KEYS */;
INSERT INTO `gallery_category` VALUES (1,'Дельфиновые','Дельфи́новые, или дельфи́ны (лат. Delphinidae, от др.-греч. δελφίς, gen. δελφῖνος ‘дельфин’), — семейство морских млекопитающих из парвотряда зубатых китов инфраотряда китообразных.'),(2,'Псовые','Псо́вые, или соба́чьи, или во́лчьи, или соба́ки, или кани́ды (лат. Canidae), — семейство млекопитающих отряда хищных, включающее в себя ныне три подсемейства: волчьи (Caninae), собачьи (Simocyoninae) и большеухие лисицы (Otocyoninae). Длина тела от 18—22 см до 160 см. Насчитывают 14 родов и около 35 видов. Распространены на всех материках, за исключением Антарктиды[5]. Некоторые виды псовых являются объектами пушного промысла и звероводства.'),(3,'Коаловые','Коаловые (ранее — коалы, лат. Phascolarctidae) — семейство двурезцовых сумчатых, содержащее один современный вид — коалу (Phascolarctos cinereus). Название типового рода Phascolarctos происходит от лат. phasco — «сумка» и др.-греч. arctos — «медведь». К середине XX века это был единственный известный вид рода, который иногда относили к семейству кускусовых (Phalangeridae). Затем наступил период масштабных исследований ископаемых остатков в Южной Австралии и Квинсленде, в результате чего семейство коаловых пополнилось многими впервые описанными видами и несколькими родами. Некоторые из них ещё не имеют названия, а некоторые известны только по отдельным молярам.'),(4,'Кошачьи','Коша́чьи, или ко́шки, или фели́ды (лат. Felidae), — семейство млекопитающих отряда хищных. Наиболее специализированные из хищников, приспособленные к добыванию животной пищи путём подкрадывания, подкарауливания, реже — преследования.'),(5,'Медвежьи','Медве́жьи (лат. Ursidae) — семейство млекопитающих отряда хищных. Отличаются от других представителей псообразных более коренастым телосложением. Медведи всеядны, хорошо лазают и плавают, быстро бегают, могут стоять и проходить короткие расстояния на задних лапах. Имеют короткий хвост, длинную и густую шерсть, а также отличное обоняние. Охотятся вечером или на рассвете.  Обычно остерегаются человека, но могут быть опасными в тех местах, где они привыкли к людям, особенно белый медведь и медведь гризли. Мало восприимчивы к пчелиным укусам из-за своей густой шерсти, чувствительны для медведей укусы пчёл в нос. В природе естественных врагов почти не имеют (на юге Дальнего Востока России и в Маньчжурии на них могут нападать взрослые тигры).');
/*!40000 ALTER TABLE `gallery_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_news`
--

DROP TABLE IF EXISTS `gallery_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery_news` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_news`
--

LOCK TABLES `gallery_news` WRITE;
/*!40000 ALTER TABLE `gallery_news` DISABLE KEYS */;
INSERT INTO `gallery_news` VALUES (1,'Открытие фото-зоопарка','Произошло знаменательное событие - в сети открыт доступ для посещения нашего зоопарка','2021-01-03 15:18:16'),(2,'Заселение животных','Уже первые девять животных уютно размещены в нашем зоопарке','2021-01-19 15:18:16'),(3,'Поступление волков','Семейная парочка лесных хищников обосновалась в наших пенатах','2021-01-21 15:18:16');
/*!40000 ALTER TABLE `gallery_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_reviews`
--

DROP TABLE IF EXISTS `gallery_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery_reviews` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `author` varchar(255) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_reviews`
--

LOCK TABLES `gallery_reviews` WRITE;
/*!40000 ALTER TABLE `gallery_reviews` DISABLE KEYS */;
INSERT INTO `gallery_reviews` VALUES (1,'2021-01-20 15:18:16','Незнакомец','Классный зоопарк!'),(2,'2021-01-21 15:18:16','Незнакомка','О, боже, как здесь восхитительно'),(3,'2021-02-08 12:43:40','Хакер','Стрёмный зверинец! Счас всех выпущу из клеток!'),(4,'2021-02-10 14:08:25','Иван','В общем-то ловкие картинки зверушек :)'),(5,'2021-02-11 14:46:25','Петр Иванович','Хороший фото-зоопарк!');
/*!40000 ALTER TABLE `gallery_reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-26 22:22:13
