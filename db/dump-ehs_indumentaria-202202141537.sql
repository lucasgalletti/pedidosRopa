-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: 192.168.50.30    Database: ehs_indumentaria
-- ------------------------------------------------------
-- Server version	5.7.31-log

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
-- Table structure for table `art_x_sector`
--

DROP TABLE IF EXISTS `art_x_sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `art_x_sector` (
  `id_artsect` int(11) NOT NULL AUTO_INCREMENT,
  `id_art` int(11) NOT NULL,
  `id_sect` int(11) NOT NULL,
  PRIMARY KEY (`id_artsect`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `art_x_sector`
--

LOCK TABLES `art_x_sector` WRITE;
/*!40000 ALTER TABLE `art_x_sector` DISABLE KEYS */;
INSERT INTO `art_x_sector` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16),(17,2,1),(18,2,2),(19,2,3),(20,2,4),(21,2,10),(22,2,11),(23,2,12),(24,2,13),(25,2,14),(26,2,15),(27,2,16),(28,3,6),(29,3,7),(30,3,8),(31,3,9),(32,4,6),(33,4,7),(34,4,8),(35,4,9),(36,5,5),(37,6,5),(38,7,6),(39,8,10),(40,8,11),(41,8,12),(42,8,13),(43,8,14),(44,8,15),(45,8,16),(46,9,6),(47,9,8),(48,9,9),(49,10,1),(50,10,2),(51,10,3),(52,10,4),(53,10,10),(54,10,11),(55,10,12),(56,10,13),(57,10,14),(58,10,15),(59,10,16),(60,11,5),(61,12,1),(62,12,3),(63,12,11),(64,12,12),(65,14,1),(66,14,2),(67,14,5),(68,14,8),(69,14,10),(70,14,11),(71,14,12),(72,14,13),(73,14,14),(74,14,15),(75,14,16),(76,14,3),(77,13,9),(78,1,17),(79,2,17),(80,10,17),(81,12,17),(82,14,17),(83,1,18),(84,2,18),(85,10,18),(86,12,18),(87,14,18),(88,1,19),(89,2,19),(90,10,19),(91,12,19),(92,14,19),(93,15,6),(94,12,4),(95,14,4),(96,7,4),(97,13,7);
/*!40000 ALTER TABLE `art_x_sector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articulos`
--

DROP TABLE IF EXISTS `articulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articulos` (
  `id_articulo` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_talle` int(2) NOT NULL,
  `articulo` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `vcant` int(2) NOT NULL,
  PRIMARY KEY (`id_articulo`),
  UNIQUE KEY `ID` (`id_articulo`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulos`
--

LOCK TABLES `articulos` WRITE;
/*!40000 ALTER TABLE `articulos` DISABLE KEYS */;
INSERT INTO `articulos` VALUES (1,2,'Buzo Azul',1),(2,2,'Chaqueta Celeste',2),(3,2,'Chomba Azul Manga Corta',2),(4,2,'Chomba Azul Manga larga',2),(5,2,'Chomba Marron Manga Corta',2),(6,2,'Chomba Marron Manga larga',2),(7,2,'Delantal',2),(8,2,'Guardapolvo Blanco Cuello Azul ',2),(9,1,'Pantalon Azul',2),(10,2,'Pantalon Celeste',2),(11,1,'Pantalon Marron',2),(12,3,'Zapato Blanco sin Cordones',3),(13,3,'Zapato Marron con Cordones',1),(14,3,'Zapato Marron sin Cordones',1),(15,2,'Ambo',2);
/*!40000 ALTER TABLE `articulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidos` (
  `id_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `id_articulo` int(11) NOT NULL,
  `id_talle` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id_pedido`,`id_usuario`,`id_articulo`,`cantidad`),
  UNIQUE KEY `ID` (`id_pedido`),
  UNIQUE KEY `block` (`id_usuario`,`id_articulo`),
  KEY `id_usuario` (`id_usuario`),
  KEY `fk_art_idx` (`id_articulo`),
  CONSTRAINT `fk_art` FOREIGN KEY (`id_articulo`) REFERENCES `articulos` (`id_articulo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2060 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1135,293,5,16,2),(1136,385,2,15,2),(1137,385,10,14,2),(1138,385,14,24,1),(1139,293,1,16,1),(1140,293,14,27,1),(1141,288,14,26,1),(1142,288,5,16,2),(1143,288,1,16,1),(1144,288,11,7,2),(1145,288,6,16,2),(1146,287,1,14,1),(1147,287,5,14,2),(1148,287,6,14,2),(1149,287,14,22,1),(1150,287,11,3,2),(1151,289,14,26,1),(1152,289,5,17,2),(1153,289,1,17,1),(1154,289,6,17,2),(1155,289,11,11,2),(1156,290,11,1,2),(1157,290,14,21,1),(1158,290,5,13,2),(1159,290,6,13,2),(1160,290,1,14,1),(1161,292,1,16,1),(1162,292,5,15,2),(1163,292,6,15,2),(1164,292,11,5,2),(1165,292,14,27,1),(1166,291,5,14,2),(1167,291,6,14,2),(1168,291,11,1,2),(1169,291,14,23,1),(1170,291,1,14,1),(1171,294,1,16,1),(1172,294,5,16,2),(1173,294,6,16,2),(1174,294,11,6,2),(1175,294,14,24,1),(1176,295,14,26,1),(1177,295,5,15,2),(1178,295,6,15,2),(1179,295,1,16,1),(1180,295,11,5,2),(1183,296,1,15,1),(1184,296,5,15,2),(1185,296,6,15,2),(1186,296,14,22,1),(1187,434,2,15,2),(1188,434,10,15,2),(1189,434,1,16,1),(1190,434,14,21,1),(1191,434,12,21,3),(1192,457,2,13,2),(1193,457,10,13,2),(1194,457,1,13,1),(1195,457,14,18,1),(1196,457,12,18,3),(1197,435,2,15,2),(1198,435,10,15,2),(1199,435,1,15,1),(1200,435,12,25,3),(1201,435,14,25,1),(1202,436,2,16,2),(1203,436,10,15,2),(1204,436,1,16,1),(1205,436,12,24,3),(1206,436,14,24,1),(1207,437,2,16,2),(1208,437,10,15,2),(1209,437,1,15,1),(1210,437,12,19,3),(1211,437,14,19,1),(1212,438,2,16,2),(1213,438,10,16,2),(1214,438,1,16,1),(1215,438,12,23,3),(1216,438,14,23,1),(1217,439,2,14,2),(1218,439,10,14,2),(1219,439,1,14,1),(1220,439,12,21,3),(1221,439,14,21,1),(1222,440,2,14,2),(1223,440,10,14,2),(1224,440,1,14,1),(1225,440,12,23,3),(1226,440,14,23,1),(1227,441,2,15,2),(1228,441,10,15,2),(1229,441,1,15,1),(1232,441,12,25,3),(1233,441,14,25,1),(1234,443,2,17,2),(1235,443,10,17,2),(1236,443,1,17,1),(1237,443,12,23,3),(1238,443,14,23,1),(1239,444,2,15,2),(1240,444,10,14,2),(1241,444,1,15,1),(1242,444,12,23,3),(1243,444,14,18,1),(1244,445,2,13,2),(1245,445,10,13,2),(1246,445,1,13,1),(1248,445,12,20,3),(1249,445,14,20,1),(1250,446,2,14,2),(1251,446,10,14,2),(1252,446,1,14,1),(1254,446,12,19,3),(1255,446,14,19,1),(1256,447,2,14,2),(1257,447,10,14,2),(1258,447,1,14,1),(1259,447,12,21,3),(1260,447,14,21,1),(1261,448,2,14,2),(1262,448,10,14,2),(1263,448,1,14,1),(1264,448,12,24,3),(1265,448,14,24,1),(1266,449,2,15,2),(1267,449,10,15,2),(1268,449,1,15,1),(1269,449,12,20,3),(1270,449,14,20,1),(1271,450,2,15,2),(1272,450,10,15,2),(1273,450,1,15,1),(1274,450,12,22,3),(1275,450,14,22,1),(1276,464,2,14,2),(1277,464,10,14,2),(1278,464,1,14,1),(1280,464,12,21,3),(1281,464,14,21,1),(1282,451,2,14,2),(1283,451,10,14,2),(1284,451,1,14,1),(1285,451,12,21,3),(1286,451,14,21,1),(1287,452,2,14,2),(1288,452,10,13,2),(1289,452,1,14,1),(1290,452,12,22,3),(1291,452,14,22,1),(1292,462,2,14,2),(1293,462,10,14,2),(1294,462,1,15,1),(1295,462,12,21,3),(1296,462,14,21,1),(1297,453,2,13,2),(1298,453,10,13,2),(1299,453,1,13,1),(1300,453,12,20,3),(1301,453,14,20,1),(1302,454,2,14,2),(1303,454,10,14,2),(1304,454,1,14,1),(1305,454,12,25,3),(1306,454,14,25,1),(1307,256,1,15,1),(1308,455,2,15,2),(1309,455,10,14,2),(1310,256,2,15,2),(1311,455,1,15,1),(1312,256,10,15,2),(1313,455,12,21,3),(1314,455,14,21,1),(1315,256,14,25,1),(1316,456,2,14,2),(1317,456,10,14,2),(1318,456,1,14,1),(1319,456,12,22,3),(1320,456,14,22,1),(1321,459,2,14,2),(1322,459,10,14,2),(1323,459,1,14,1),(1324,254,2,14,2),(1325,459,14,23,1),(1326,254,1,14,1),(1327,460,2,14,2),(1328,254,10,14,2),(1329,460,10,14,2),(1330,254,14,25,1),(1331,460,1,15,1),(1332,460,12,23,3),(1333,252,2,15,2),(1334,460,14,23,1),(1335,252,1,15,1),(1336,252,10,15,2),(1337,461,2,15,2),(1338,461,10,15,2),(1339,253,1,14,1),(1340,461,1,15,1),(1341,253,2,14,2),(1342,461,12,25,3),(1343,253,10,14,2),(1344,461,14,25,1),(1345,257,1,17,1),(1346,463,2,16,2),(1347,463,10,15,2),(1348,463,1,16,1),(1349,257,2,15,2),(1350,463,12,21,3),(1351,463,14,21,1),(1352,257,10,15,2),(1353,255,1,16,1),(1354,467,2,14,2),(1355,467,10,14,2),(1356,255,2,16,2),(1357,467,1,14,1),(1358,255,10,16,2),(1359,467,12,20,3),(1360,250,1,15,1),(1361,467,14,20,1),(1362,250,2,15,2),(1363,250,10,15,2),(1364,458,2,16,2),(1365,458,10,16,2),(1366,251,1,17,1),(1367,458,1,16,1),(1368,251,2,17,2),(1369,458,12,25,3),(1370,458,14,25,1),(1371,251,10,17,2),(1372,258,1,16,1),(1373,466,2,14,2),(1374,258,2,16,2),(1375,466,10,14,2),(1376,258,10,16,2),(1377,466,1,15,1),(1378,466,12,20,3),(1379,249,1,14,1),(1380,466,14,20,1),(1381,442,2,16,2),(1382,442,10,16,2),(1383,442,1,16,1),(1384,442,12,26,3),(1385,442,14,26,1),(1386,468,2,15,2),(1387,468,10,15,2),(1388,468,1,15,1),(1389,468,12,26,3),(1390,468,14,26,1),(1391,469,2,15,2),(1392,469,10,15,2),(1393,469,1,15,1),(1394,469,12,26,3),(1395,469,14,26,1),(1396,470,2,15,2),(1397,470,10,15,2),(1398,470,1,15,1),(1399,470,12,24,3),(1400,470,14,24,1),(1401,249,2,15,2),(1403,249,10,15,2),(1406,252,14,24,1),(1407,253,14,20,1),(1408,257,14,26,1),(1409,249,14,23,1),(1410,255,14,25,1),(1411,250,14,24,1),(1412,251,14,29,1),(1413,258,14,27,1),(1414,250,12,24,3),(1415,252,12,24,3),(1416,258,12,27,3),(1417,297,4,14,2),(1418,299,4,13,2),(1419,298,4,12,2),(1420,300,3,16,2),(1424,280,14,24,1),(1425,281,2,14,1),(1427,281,1,15,1),(1428,281,10,14,1),(1429,281,14,21,1),(1430,282,2,13,1),(1431,282,1,13,1),(1432,282,10,13,1),(1433,282,14,18,1),(1436,283,10,15,1),(1437,280,10,15,1),(1438,283,14,27,1),(1439,284,1,14,1),(1440,284,2,14,1),(1441,284,10,14,1),(1442,284,14,18,1),(1443,280,1,16,1),(1444,280,2,16,1),(1445,283,1,16,1),(1446,283,2,16,1),(1447,269,1,16,1),(1448,269,2,16,1),(1449,269,10,16,1),(1450,269,14,24,1),(1451,276,1,15,1),(1453,276,14,26,1),(1454,274,1,16,1),(1455,261,1,16,1),(1456,262,1,15,1),(1457,262,14,21,1),(1458,268,1,15,1),(1459,268,2,15,1),(1460,268,10,15,1),(1461,268,14,23,1),(1462,277,1,15,1),(1463,277,2,15,1),(1464,277,10,15,1),(1465,277,14,23,1),(1466,259,1,15,1),(1467,259,2,15,1),(1468,259,10,15,1),(1469,259,14,24,1),(1470,275,1,15,1),(1471,275,14,22,1),(1472,270,1,15,1),(1473,270,2,15,1),(1474,270,10,15,1),(1475,270,14,24,1),(1476,264,1,15,1),(1477,264,2,15,1),(1478,264,10,15,1),(1479,264,14,23,1),(1480,263,1,15,1),(1481,263,2,14,1),(1482,263,10,14,1),(1483,263,14,25,1),(1484,266,1,16,1),(1485,266,10,15,1),(1486,265,1,17,1),(1487,265,2,17,1),(1488,265,10,17,1),(1489,265,14,28,1),(1490,273,1,15,1),(1491,273,2,15,1),(1492,273,10,15,1),(1493,273,14,25,1),(1494,473,13,27,1),(1495,474,13,26,1),(1498,476,13,25,1),(1499,475,13,26,1),(1500,300,13,27,1),(1501,477,13,23,1),(1502,472,13,25,1),(1503,297,9,2,2),(1504,299,9,5,2),(1506,475,3,15,2),(1507,473,3,15,2),(1508,474,3,16,2),(1510,304,3,13,2),(1511,304,4,13,2),(1512,304,9,1,2),(1513,304,13,25,1),(1514,306,3,16,2),(1515,306,4,16,2),(1516,306,9,6,2),(1517,306,13,26,1),(1520,324,3,16,2),(1521,324,4,16,2),(1522,324,9,6,2),(1523,324,13,26,1),(1525,325,3,14,2),(1526,325,4,14,2),(1527,325,9,2,2),(1528,325,13,24,1),(1530,315,3,15,2),(1531,315,4,15,2),(1532,315,9,5,2),(1533,315,13,26,1),(1534,326,3,16,2),(1535,326,4,16,2),(1536,326,9,5,2),(1537,326,13,22,1),(1538,331,3,14,2),(1539,331,4,14,2),(1540,331,9,4,2),(1541,331,13,24,1),(1542,319,3,14,2),(1543,319,4,14,2),(1544,319,9,5,2),(1545,319,13,25,1),(1546,328,3,16,2),(1547,328,4,16,2),(1548,328,9,6,2),(1549,328,13,27,1),(1550,308,3,13,2),(1551,308,4,13,2),(1552,308,9,1,2),(1553,308,13,22,1),(1554,329,3,15,2),(1555,329,4,15,2),(1556,329,9,5,2),(1557,329,13,27,1),(1558,321,3,15,2),(1559,321,4,15,2),(1560,321,9,5,2),(1561,321,13,25,1),(1562,310,3,15,2),(1563,310,4,15,2),(1564,310,9,3,2),(1565,310,13,24,1),(1566,316,3,16,2),(1567,316,4,16,2),(1568,316,9,8,2),(1569,316,13,26,1),(1570,327,13,27,1),(1571,305,3,17,2),(1572,305,4,17,2),(1573,305,9,10,2),(1574,305,13,27,1),(1575,320,13,26,1),(1576,320,1,25,1),(1577,307,3,16,2),(1578,307,4,16,2),(1579,307,9,4,2),(1580,307,13,25,1),(1581,322,13,24,1),(1582,323,3,16,1),(1583,323,4,16,2),(1584,323,9,8,2),(1585,323,13,29,1),(1589,303,4,15,2),(1590,314,3,17,2),(1591,314,4,17,2),(1592,314,9,7,2),(1593,314,13,27,1),(1594,309,3,16,2),(1595,309,4,16,2),(1596,309,9,8,2),(1597,312,3,14,2),(1598,312,4,14,2),(1599,312,9,3,2),(1600,312,13,25,1),(1601,318,3,16,2),(1602,318,4,16,2),(1603,318,9,5,2),(1604,318,13,26,1),(1605,317,3,16,2),(1606,317,4,16,2),(1607,317,9,4,2),(1608,317,13,23,1),(1609,330,3,14,2),(1610,330,4,14,2),(1611,330,9,3,2),(1612,330,13,25,1),(1613,313,3,16,2),(1614,313,4,16,2),(1615,313,9,6,2),(1616,313,13,24,1),(1617,311,13,20,1),(1618,465,3,15,2),(1619,465,4,15,2),(1620,465,9,5,2),(1621,465,13,25,1),(1622,384,1,17,1),(1623,384,14,25,1),(1624,401,2,15,2),(1625,401,10,15,2),(1626,401,12,25,1),(1627,401,14,25,1),(1628,401,1,15,1),(1629,428,2,15,2),(1630,428,10,15,2),(1631,428,12,24,1),(1632,428,14,24,1),(1633,428,1,15,1),(1634,389,1,15,1),(1635,389,2,15,2),(1636,389,10,15,2),(1637,389,12,24,1),(1638,389,14,24,1),(1639,394,1,15,1),(1640,394,2,15,2),(1641,394,10,15,2),(1642,394,12,26,1),(1643,394,14,26,1),(1644,414,1,14,1),(1645,414,2,14,2),(1646,414,10,14,2),(1647,414,12,25,1),(1648,414,14,25,1),(1649,398,1,14,1),(1650,398,2,14,2),(1651,398,10,14,2),(1652,398,12,25,1),(1653,398,14,25,1),(1654,405,1,17,1),(1655,405,2,17,2),(1656,405,10,17,2),(1657,405,12,25,1),(1658,405,14,25,1),(1659,418,1,16,1),(1660,418,2,16,2),(1661,418,10,16,2),(1662,418,12,25,1),(1663,418,14,25,1),(1664,400,1,16,1),(1665,400,2,16,2),(1666,400,10,16,2),(1667,400,12,26,1),(1669,400,14,26,1),(1670,433,1,16,1),(1671,433,2,16,2),(1672,433,10,16,2),(1673,433,12,25,1),(1674,433,14,25,1),(1675,387,2,16,2),(1676,387,10,16,2),(1677,387,12,26,1),(1678,387,14,26,1),(1679,412,1,16,1),(1680,412,2,16,2),(1681,412,10,16,2),(1682,412,12,27,1),(1683,412,14,27,1),(1684,397,1,15,1),(1685,397,2,15,2),(1686,397,10,15,2),(1687,397,14,23,1),(1689,397,12,23,1),(1690,427,2,16,2),(1691,427,10,16,2),(1692,427,12,24,1),(1693,427,14,24,1),(1694,395,1,15,1),(1695,395,2,15,2),(1698,395,10,15,2),(1699,395,12,24,1),(1700,395,14,24,1),(1701,411,1,16,1),(1702,411,2,16,2),(1703,411,10,16,2),(1704,411,12,26,1),(1705,411,14,26,1),(1706,396,2,15,2),(1707,396,10,15,2),(1708,396,12,24,1),(1709,396,14,24,1),(1710,386,1,15,1),(1711,386,2,14,2),(1712,386,10,14,2),(1713,386,12,24,1),(1714,386,14,24,1),(1715,424,1,17,1),(1716,424,2,17,2),(1717,424,10,17,2),(1718,424,12,27,1),(1719,424,14,27,1),(1720,417,1,15,1),(1721,417,2,15,2),(1722,417,10,15,2),(1723,417,12,23,1),(1724,417,14,23,1),(1725,410,1,16,1),(1726,410,2,16,2),(1727,410,10,16,2),(1728,410,12,25,1),(1729,410,14,25,1),(1730,399,1,14,1),(1731,399,2,14,2),(1732,399,10,14,2),(1733,399,12,22,1),(1734,399,14,22,1),(1735,423,1,15,1),(1736,423,2,15,2),(1737,423,10,15,2),(1739,423,14,24,1),(1740,423,12,24,1),(1741,421,1,16,1),(1742,421,2,15,2),(1743,421,10,15,2),(1744,421,12,24,1),(1745,421,14,24,1),(1746,392,1,16,1),(1747,392,2,15,2),(1748,392,10,15,2),(1749,392,12,24,1),(1750,392,14,24,1),(1751,415,1,16,1),(1752,415,2,16,2),(1753,415,10,15,2),(1754,415,12,26,1),(1755,415,14,26,1),(1756,408,1,15,1),(1757,408,2,15,2),(1758,408,10,15,2),(1759,408,12,25,1),(1760,408,14,25,1),(1761,416,1,16,1),(1762,416,2,16,2),(1765,416,10,16,2),(1766,416,12,25,1),(1768,416,14,25,1),(1769,404,1,15,1),(1770,404,2,15,2),(1771,404,10,15,2),(1772,404,12,28,1),(1773,404,14,28,1),(1774,425,1,16,1),(1775,425,2,16,2),(1776,425,10,16,2),(1777,425,12,24,1),(1778,425,14,24,1),(1779,409,1,16,1),(1780,409,2,16,2),(1782,409,10,16,2),(1783,409,12,27,1),(1784,409,14,27,1),(1785,407,1,15,1),(1786,407,2,15,2),(1787,407,10,15,2),(1788,407,12,25,1),(1789,407,14,25,1),(1790,391,1,16,1),(1791,391,2,17,2),(1793,391,10,17,2),(1794,391,12,29,1),(1795,391,14,29,1),(1796,390,2,17,2),(1797,390,10,17,2),(1798,390,12,27,1),(1799,390,14,27,1),(1800,402,1,14,1),(1801,402,2,13,2),(1802,402,10,13,2),(1803,402,12,23,1),(1804,402,14,23,1),(1805,430,1,16,1),(1806,430,2,16,2),(1807,430,10,16,2),(1808,430,12,26,1),(1809,430,14,26,1),(1811,420,1,15,1),(1812,420,2,14,2),(1813,420,10,14,2),(1814,420,12,22,1),(1815,420,14,22,1),(1816,431,1,16,1),(1817,431,2,16,2),(1818,431,10,16,2),(1819,431,12,25,1),(1820,431,14,25,1),(1821,406,1,15,1),(1822,406,2,14,2),(1823,406,10,14,2),(1824,406,12,25,1),(1825,406,14,25,1),(1826,422,1,15,1),(1827,422,2,15,2),(1828,422,10,15,2),(1829,422,12,26,1),(1830,422,14,26,1),(1831,432,1,15,1),(1832,432,2,15,2),(1833,432,10,15,2),(1834,432,12,27,1),(1835,432,14,27,1),(1836,393,1,15,1),(1837,393,2,15,2),(1838,393,10,15,2),(1839,393,12,23,1),(1840,393,14,23,1),(1841,388,1,16,1),(1842,388,2,16,2),(1843,388,10,16,2),(1844,388,12,26,1),(1845,388,14,26,1),(1846,426,1,16,1),(1849,426,12,25,1),(1850,426,14,25,1),(1851,419,1,15,1),(1853,419,10,15,2),(1854,419,12,23,1),(1855,419,14,23,1),(1856,419,2,15,2),(1857,426,2,16,2),(1858,426,10,16,2),(1860,302,9,6,2),(1861,302,4,16,2),(1867,371,14,21,1),(1868,372,2,13,2),(1869,372,8,13,2),(1870,372,10,13,2),(1871,372,12,22,1),(1874,372,14,22,1),(1875,371,12,21,1),(1876,373,2,14,2),(1877,373,10,14,2),(1878,373,8,14,2),(1879,373,12,20,1),(1880,373,14,20,1),(1881,371,2,15,2),(1882,371,10,15,2),(1883,383,2,14,2),(1884,383,10,14,2),(1885,383,8,14,2),(1886,367,1,16,1),(1887,367,2,16,2),(1888,367,10,16,2),(1889,383,12,24,1),(1890,383,14,24,1),(1891,367,8,12,2),(1893,374,1,19,1),(1894,345,2,15,2),(1895,374,2,12,1),(1896,374,8,12,2),(1897,345,10,15,2),(1898,374,10,12,1),(1899,367,14,23,1),(1900,374,14,20,1),(1901,370,2,17,2),(1902,370,8,17,2),(1903,370,10,17,2),(1904,345,8,15,2),(1905,345,14,25,1),(1906,370,12,23,1),(1907,370,14,23,1),(1908,377,2,16,2),(1909,377,10,16,2),(1910,377,8,16,2),(1911,377,12,23,1),(1912,377,14,23,1),(1913,376,2,14,2),(1914,376,10,14,2),(1915,376,8,14,2),(1916,376,12,24,1),(1917,376,14,24,1),(1918,378,2,13,2),(1919,378,10,13,2),(1920,378,8,13,2),(1921,378,12,19,1),(1922,378,14,19,1),(1923,375,2,14,2),(1924,375,8,14,2),(1925,375,10,14,2),(1926,375,12,22,1),(1927,375,14,22,1),(1928,379,2,14,2),(1929,379,8,14,2),(1930,379,10,14,2),(1931,379,12,20,1),(1932,379,14,20,1),(1933,381,2,14,2),(1934,381,8,14,2),(1935,381,10,14,2),(1936,381,12,22,1),(1937,381,14,22,1),(1938,371,1,23,1),(1939,371,8,15,2),(1940,364,10,14,2),(1941,364,2,14,2),(1942,364,8,14,2),(1943,364,14,18,1),(1944,368,2,15,2),(1945,368,10,15,2),(1946,368,14,21,1),(1947,368,8,15,2),(1948,336,2,15,2),(1949,336,8,15,2),(1950,336,10,15,2),(1951,336,14,25,1),(1952,357,2,14,2),(1953,357,8,13,2),(1954,357,10,14,2),(1955,357,14,21,1),(1956,343,2,16,2),(1957,343,8,16,2),(1958,343,10,16,2),(1959,343,14,24,1),(1960,369,2,13,2),(1961,369,8,13,2),(1962,369,10,13,2),(1963,369,14,20,1),(1964,352,2,15,2),(1965,352,8,15,2),(1966,352,10,15,2),(1967,352,14,18,1),(1968,363,2,15,2),(1969,363,8,15,2),(1970,363,10,15,2),(1971,363,14,24,1),(1972,359,2,16,2),(1973,359,8,16,2),(1974,359,10,16,2),(1975,359,14,25,1),(1976,353,2,14,2),(1977,353,8,14,2),(1978,353,10,14,2),(1979,353,14,20,1),(1980,341,2,15,2),(1981,341,8,15,2),(1982,341,10,15,2),(1983,341,14,23,1),(1984,360,2,16,2),(1985,360,8,16,2),(1986,360,10,16,2),(1987,360,14,26,1),(1988,356,2,15,2),(1989,356,8,15,2),(1990,356,10,15,2),(1991,356,14,25,1),(1992,344,2,14,2),(1993,344,8,14,2),(1994,344,10,14,2),(1995,344,14,23,1),(1996,366,2,15,2),(1997,366,8,15,2),(1998,366,10,15,2),(1999,366,14,23,1),(2000,350,2,15,2),(2001,350,8,15,2),(2002,350,10,15,2),(2003,350,14,25,1),(2004,348,2,16,2),(2005,348,8,16,2),(2006,348,10,16,2),(2007,348,14,26,1),(2008,332,2,14,2),(2009,332,8,13,2),(2010,332,10,14,2),(2011,332,14,18,1),(2012,339,2,17,2),(2013,339,10,15,2),(2014,339,8,17,2),(2015,335,2,14,2),(2016,335,10,14,2),(2017,335,8,14,2),(2018,339,14,23,1),(2019,335,14,21,1),(2020,340,2,14,2),(2021,340,10,14,2),(2022,340,8,14,2),(2023,340,14,24,1),(2025,349,10,15,2),(2026,349,8,16,2),(2027,349,14,24,1),(2028,338,2,15,2),(2029,338,10,15,2),(2030,338,8,16,2),(2031,338,14,24,1),(2032,347,2,15,2),(2035,347,10,15,2),(2036,347,8,15,2),(2037,347,14,23,1),(2038,342,2,13,2),(2039,342,10,13,2),(2040,342,8,12,2),(2041,342,14,19,1),(2042,358,2,14,2),(2043,358,10,14,2),(2044,358,8,14,2),(2045,334,2,15,2),(2046,334,10,15,2),(2047,334,8,16,2),(2048,334,14,24,1),(2049,358,14,19,1),(2050,362,8,16,2),(2051,349,2,15,2),(2052,351,10,16,1),(2053,351,8,15,1),(2054,351,2,16,1),(2055,351,14,20,1),(2056,365,10,14,2),(2057,365,8,14,1),(2058,365,2,14,2),(2059,365,14,19,1);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id_rol` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin'),(2,'Gestion'),(3,'Carga');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sector`
--

DROP TABLE IF EXISTS `sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sector` (
  `id_sector` int(11) NOT NULL AUTO_INCREMENT,
  `sector` varchar(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `subsector` varchar(36) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id_sector`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sector`
--

LOCK TABLES `sector` WRITE;
/*!40000 ALTER TABLE `sector` DISABLE KEYS */;
INSERT INTO `sector` VALUES (1,'Produccion','Basso'),(2,'QA',''),(3,'Proyectos',''),(4,'I+D',''),(5,'Deposito',''),(6,'EHS',''),(7,'Sistemas',''),(8,'Serv Grales',''),(9,'Ing y Mant',''),(10,'QC','Corti'),(11,'QC','Diaz'),(12,'QC','Franco'),(13,'QC','Gallego'),(14,'QC','Regueiro'),(15,'QC','Rolon'),(16,'QC','Scarano'),(17,'Produccion','Salega'),(18,'Produccion','Segovia'),(19,'Produccion','Zabala');
/*!40000 ALTER TABLE `sector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `talles`
--

DROP TABLE IF EXISTS `talles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `talles` (
  `id_talle` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_talle` int(2) NOT NULL,
  `talle` varchar(4) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_talle`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `talles`
--

LOCK TABLES `talles` WRITE;
/*!40000 ALTER TABLE `talles` DISABLE KEYS */;
INSERT INTO `talles` VALUES (1,1,'40'),(2,1,'42'),(3,1,'44'),(4,1,'46'),(5,1,'48'),(6,1,'50'),(7,1,'52'),(8,1,'54'),(9,1,'56'),(10,1,'58'),(11,1,'60'),(12,2,'XS '),(13,2,'S'),(14,2,'M'),(15,2,'L '),(16,2,'XL'),(17,2,'XXL'),(18,3,'35'),(19,3,'36'),(20,3,'37'),(21,3,'38'),(22,3,'39'),(23,3,'40'),(24,3,'41'),(25,3,'42'),(26,3,'43'),(27,3,'44'),(28,3,'45'),(29,3,'46');
/*!40000 ALTER TABLE `talles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(32) COLLATE utf8_spanish_ci NOT NULL,
  `legajo` int(11) NOT NULL,
  `id_sector` int(11) NOT NULL,
  `user` varchar(16) COLLATE utf8_spanish_ci NOT NULL,
  `pass` tinytext COLLATE utf8_spanish_ci NOT NULL,
  `id_rol` int(2) NOT NULL,
  `display` varchar(2) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'si',
  `ccosto` int(4) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`,`user`)
) ENGINE=InnoDB AUTO_INCREMENT=478 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (249,'Mario Fernando','Basso',173,1,'fbasso','fbasso2021',3,'si',5451),(250,'Gaston Oscar','Aicardi',179,1,'gaicardi','gaicardi2021',3,'si',5451),(251,'Gonzalo Alejandro','Nuniez',180,1,'gnuniez','gnuniez2021',3,'si',5451),(252,'Gustavo Abraham','Santa Cruz Aguilera',177,1,'gsantacruz','gsantacruz2021',3,'si',5451),(253,'Irma','Almada Fernandez',178,1,'ialmada','ialmada2021',3,'si',5451),(254,'Jose Javier','Soldani',176,1,'jsoldani','jsoldani2021',3,'si',5451),(255,'Leandro Gaston','Caceres',175,1,'lcaceres','lcaceres2021',3,'si',5451),(256,'Leonardo Adrian','Raffaelli',174,1,'lraffaelli','lraffaelli2021',3,'si',5451),(257,'Miguel Angel','Abosaleh',181,1,'mabosaleh','mabosaleh2021',3,'si',5451),(258,'Sebastian Bernardo','Cossettini',182,1,'scossettini','scossettini2021',3,'si',5451),(259,'Axel Martin','Armoa',74,2,'aarmoa','aarmoa2021',3,'si',5900),(260,'Atilio','Salvatierra',65,2,'asalvatierra','asalvatierra2021',3,'si',5900),(261,'Andrea Judith','Zelwianski',80,2,'azelwianski','azelwianski2021',3,'si',5900),(262,'Claudia Beatriz','Benincasa',76,2,'cbenincasa','cbenincasa2021',3,'si',5900),(263,'Ernesto','Di Leo',85,2,'edileo','edileo2021',3,'si',5900),(264,'Facundo Ariel','Sassano',82,2,'fsassano','fsassano2021',3,'si',5900),(265,'Ignacio Jose','Posadas',83,2,'iposadas','iposadas2021',3,'si',5900),(266,'Ignacio Tomas','Vargas Biason',72,2,'ivargas','ivargas2021',3,'si',5900),(267,'Jaquelina Elizabeth','Mendoza',67,2,'jmendoza','jmendoza2021',3,'si',5900),(268,'Lisette Cristina','Monroy Jarandilla',73,2,'lmonroy','lmonroy2021',3,'si',5900),(269,'Leonardo Ariel','Navarro',78,2,'lnavarro','lnavarro2021',3,'si',5900),(270,'Matias Lionel','Cantero',70,2,'mcantero','mcantero2021',3,'si',5900),(271,'Marcela Andrea','Casal',66,2,'mcasal','mcasal2021',3,'si',5900),(272,'Maria Salome','Cerra',68,2,'mcerra','mcerra2021',3,'si',5900),(274,'Marcela Noemi','Movio',79,2,'mmovio','mmovio2021',3,'si',5900),(275,'Noelia Andrea','Gomez',71,2,'ngomez','ngomez2021',3,'si',5900),(276,'Omar Agustin','Castro',77,2,'ocastro','ocastro2021',3,'si',5900),(277,'Solange Vanina','Alvarez',84,2,'salvarez','salvarez2021',3,'si',5900),(278,'Valeria Elizabeth','Meli',75,2,'vmeli','vmeli2021',3,'si',5900),(279,'Victoria','Ruiz',69,2,'vruiz','vruiz2021',3,'si',5900),(280,'Daniel Diego','Scibilia',211,3,'dscibilia','dscibilia2021',3,'si',5302),(281,'Florencia Cecilia','Ibaniez',212,3,'fibaniez','fibaniez2021',3,'si',5302),(282,'Glenda','Pollard',213,3,'gpollard','gpollard2021',3,'si',5302),(283,'Juan Martin','Huala',215,3,'jhuala','jhuala2021',3,'si',5302),(284,'Merlyn Vigdalia','Ramirez Suarez',214,3,'mramirez','mramirez2021',3,'si',5302),(285,'Carlos Daniel','Leal',64,4,'cleal','cleal2021',3,'si',6120),(286,'Fermin','Caniete Alberdi',63,4,'fcaniete','fcaniete2021',3,'si',6120),(287,'Angel Emilio','Maidana',56,5,'amaidana','amaidana2021',3,'si',5600),(288,'Alejandro Omar','Santos',53,5,'asantos','asantos2021',3,'si',5600),(289,'Eduardo Alberto','Monteiro Franqueira',57,5,'emonteiro','emonteiro2021',3,'si',5600),(290,'Eduardo Fabian','Torres',59,5,'etorres','etorres2021',3,'si',5600),(291,'Gustavo Ariel','Almeida',61,5,'galmeida','galmeida2021',3,'si',5600),(292,'German Ezequiel','Balbuena',54,5,'gbalbuena','gbalbuena2021',3,'si',5600),(293,'Guillermo Maximiliano','Grumelli',55,5,'ggrumelli','ggrumelli2021',3,'si',5600),(294,'Luciano Matias','De Luca',58,5,'lde luca','lde luca2021',3,'si',5600),(295,'Maximiliano Hernan','Diaz',62,5,'mdiaz','mdiaz2021',3,'si',5600),(296,'Rocio Florencia','Rodriguez',60,5,'rrodriguez','rrodriguez2021',3,'si',5600),(297,'Ignacio Emilio','Toledo',216,6,'itoledo','itoledo2021',2,'si',5800),(298,'Paula','Moyano',218,6,'pmoyano','pmoyano2021',2,'si',5800),(299,'Virginia Gabriela','Garzon',217,6,'vgarzon','vgarzon2021',2,'si',5800),(300,'Maximino Jose','Figueroa Rojas',219,7,'mfigueroa','mfigueroa2021',3,'si',5214),(301,'Lucas','Galletti',34161,7,'lgalletti','aplicaciones2020',1,'no',9999),(302,'Franco Rodrigo','Benitez',221,8,'fbenitez','fbenitez2021',3,'si',5216),(303,'Federico Ignacio','Muzio',220,8,'fmuzio','fmuzio2021',2,'si',5216),(304,'Ariel Edgardo','Alonso',110,9,'aalonso','aalonso2021',3,'si',5700),(305,'Alfredo','Ovando',111,9,'aovando','aovando2021',3,'si',5700),(306,'Christian Eduardo','Alvarado Guillen',113,9,'calvarado','calvarado2021',3,'si',5700),(307,'Cristian Miguel','Perez',107,9,'cperez','cperez2021',3,'si',5700),(308,'Diego','Maidana',105,9,'dmaidana','dmaidana2021',3,'si',5700),(309,'Emmanuel Guillermo','Rios',103,9,'erios','erios2021',3,'si',5700),(310,'Flavio Javier','Montivero',94,9,'fmontivero','fmontivero2021',3,'si',5700),(311,'Gladys Elena','Bobinac',91,9,'gbobinac','gbobinac2021',3,'si',5700),(312,'Ignacio David','Salariato',87,9,'isalariato','isalariato2021',3,'si',5700),(313,'Juan Jose','Lista',97,9,'jlista','jlista2021',3,'si',5700),(314,'Jorge Daniel','Reyes',99,9,'jreyes','jreyes2021',3,'si',5700),(315,'Luis Ariel','De Mattia',100,9,'ldemattia','ldemattia2021',3,'si',5700),(316,'Leonardo Gabriel','Orfano',95,9,'lorfano','lorfano2021',3,'si',5700),(317,'Marcelo Daniel','Vazquez Merlo',109,9,'mvazquez','mvazquez2021',3,'si',5700),(318,'Neuman Oscar','Sequera Garcia',96,9,'nsequera','nsequera2021',3,'si',5700),(319,'Oscar Sebastian','Gomez Coria',88,9,'ocoria','ocoria2021',3,'si',5700),(320,'Oscar Gabriel','Paez',92,9,'opaez','opaez2021',3,'si',5700),(321,'Pablo Sebastian','Medina',86,9,'pmedina','pmedina2021',3,'si',5700),(322,'Pablo Emiliano','Portela',89,9,'pportela','pportela2021',3,'si',5700),(323,'Pablo Jesus','Protasiewicz',106,9,'pprotasiewicz','pprotasiewicz2021',3,'si',5700),(324,'Roberto Adrian','Bottelli',102,9,'rbottelli','rbottelli2021',3,'si',5700),(325,'Ricardo Hernan','Centorbi',104,9,'rcentorbi','rcentorbi2021',3,'si',5700),(326,'Ricardo Fabian','Diarte',101,9,'rdiarte','rdiarte2021',3,'si',5700),(327,'Rafael Marcelo','Orona',93,9,'rorona','rorona2021',3,'si',5700),(328,'Sergio Alfredo','Lemos',98,9,'slemos','slemos2021',3,'si',5700),(329,'Sebastian','Medic Skontra',112,9,'smedic','smedic2021',3,'si',5700),(330,'Sergio Denis','Vera Lopez',108,9,'svera lopez','svera lopez2021',3,'si',5700),(331,'Tomas Jose','Gallardo',90,9,'tgallardo','tgallardo2021',3,'si',5700),(332,'Antonela Daniela','Leiva',23,10,'aleiva','aleiva2021',3,'si',5950),(333,'Alejandro Miguel','Moscatelli',4,10,'amoscatelli','amoscatelli2021',3,'si',5950),(334,'Beltran Rodolfo','Kappes',29,10,'bkappes','bkappes2021',3,'si',5950),(335,'Brenda','Marquez',50,10,'bmarquez','bmarquez2021',3,'si',5950),(336,'Claudio Ezequiel','Flecha',21,10,'cflecha','cflecha2021',3,'si',5950),(337,'Claudia Lorena','Rolon',5,10,'crolon','crolon2021',3,'si',5950),(338,'Christian Ariel','Sanchez',26,10,'csanchez','csanchez2021',3,'si',5950),(339,'Diego Javier','Corti',49,10,'dcorti','dcorti2021',3,'si',5950),(340,'Dario Omar','Hazan',51,10,'dhazan','dhazan2021',3,'si',5950),(341,'Diego German','Vitale',20,10,'dvitale','dvitale2021',3,'si',5950),(342,'Emilse Gabriela','Duarte',52,10,'eduarte','eduarte2021',3,'si',5950),(343,'Francisco Jesus Maria','Galarza',16,10,'fgalarza','fgalarza2021',3,'si',5950),(344,'Fernando Javier','Girlando',46,10,'fgirlando','fgirlando2021',3,'si',5950),(345,'Facundo Sebastian','Mongelos',15,10,'fmongelos','fmongelos2021',3,'si',5950),(346,'Fernando Ariel','Villareal',45,10,'fvillareal','fvillareal2021',3,'si',5950),(347,'Gustavo Ariel','Arrieta',27,10,'garrieta','garrieta2021',3,'si',5950),(348,'Gabriel Alejandro','Sacaba',24,10,'gsacaba','gsacaba2021',3,'si',5950),(349,'Guillermo Eduardo','Fernandez Scarano',25,10,'gscarano','gscarano2021',3,'si',5950),(350,'Jorge Sebastian','Bossio',8,10,'jbossio','jbossio2021',3,'si',5950),(351,'Jesica Natalia','Jorge',47,10,'jjorge','jjorge2021',3,'si',5950),(352,'Lorena Vanesa','Galindez',18,10,'lgalindez','lgalindez2021',3,'si',5950),(353,'Luz Fany','Roa',22,10,'lroa','lroa2021',3,'si',5950),(354,'Lidia Noemi','Videla',3,10,'lvidela','lvidela2021',3,'si',5950),(355,'Maria Guadalupe','Gallego',48,10,'ggallego','ggallego2021',3,'si',5950),(356,'Matias Ezequiel','Inveraldi',13,10,'minveraldi','minveraldi2021',3,'si',5950),(357,'Maria Fernanda','Montes',2,10,'mmontes','mmontes2021',3,'si',5950),(358,'Myriam Elizabeth','Navarro',28,10,'mnavarro','mnavarro2021',3,'si',5950),(359,'Miriam Dora','Piermarteri',12,10,'mpiermarteri','mpiermarteri2021',3,'si',5950),(360,'Marcelo Ricardo','Portioli',1,10,'mportioli','mportioli2021',3,'si',5950),(361,'Mariano Nicolas','Sole',44,10,'msole','msole2021',3,'si',5950),(362,'Omar Esteban','Flores',14,10,'oflores','oflores2021',3,'si',5950),(363,'Pablo Alfonso','Regueiro',6,10,'pregueiro','pregueiro2021',3,'si',5950),(364,'Romina Ester','Higa',17,10,'rhiga','rhiga2021',3,'si',5950),(365,'Romina Valeria','Shimabukuro',9,10,'rshimabukuro','rshimabukuro2021',3,'si',5950),(366,'Rolando Antonio','Suarez',11,10,'rsuarez','rsuarez2021',3,'si',5950),(367,'Susana Ines','Ponce',7,10,'sponce','sponce2021',3,'si',5950),(368,'Veronica Alejandra','Fernandez',10,10,'vfernandez','vfernandez2021',3,'si',5950),(369,'Yael Estefania','Navas Alvarez',19,10,'ynavas','ynavas2021',3,'si',5950),(370,'Hugo','Andino',38,11,'handino','handino2021',3,'si',5950),(371,'Debora Vanina','Campuzano',42,11,'dcampuzano','dcampuzano2021',3,'si',5950),(372,'Diego Alberto','Rojas Galarza',37,11,'dgalarza','dgalarza2021',3,'si',5950),(373,'Edgary Anabell','Bolivar Belandria',40,11,'ebolivar','ebolivar2021',3,'si',5950),(374,'Gisela Silvana','Bonfiglio Marchet',31,11,'gbonfiglio','gbonfiglio2021',3,'si',5950),(375,'Nerina Sonia','Diaz',35,11,'ndiaz','ndiaz2021',3,'si',5950),(376,'Luis Alejandro','Espinoza Tezara',39,11,'lespinoza','lespinoza2021',3,'si',5950),(377,'Juan Andres','Cosman Goette',43,11,'jcosman','jcosman2021',3,'si',5950),(378,'Maria Ines','Franco',34,11,'mfranco','mfranco2021',3,'si',5950),(379,'Nora Emilce','Gonzalez',30,11,'ngonzalez','ngonzalez2021',3,'si',5950),(380,'Adrian Oscar','Juarez',33,11,'ajuarez','ajuarez2021',3,'si',5950),(381,'Walter Matias','Lopez',36,11,'wlopez','wlopez2021',3,'si',5950),(383,'Francisco Jose','Portela',32,11,'fportela','fportela2021',3,'si',5950),(384,'Carlos Alberto','Lestudie',123,17,'clestudie','clestudie2021',3,'si',5400),(385,'Javier Enrique','Salega',126,17,'jsalega','jsalega2021',3,'si',5400),(386,'Alberto Sebastian','Conil',205,18,'aconil','aconil2021',3,'si',5472),(387,'Hernan Ivan','Araujo',186,18,'haraujo','haraujo2021',3,'si',5472),(388,'Juan Pablo Cristian','Baltore',183,18,'jbaltore','jbaltore2021',3,'si',5472),(389,'Cesar Luis','Barrionuevo',129,18,'cbarrionuevo','cbarrionuevo2021',3,'si',5400),(390,'Claudio Sebastian','Batto Hernandez',134,18,'cbatto','cbatto2021',3,'si',5400),(391,'Alberto Fernando','Videla Hubscher',135,18,'avidela','avidela2021',3,'si',5400),(392,'Diego Romer','Llanos Medina',204,18,'dllanos','dllanos2021',3,'si',5472),(393,'Nicolas Ezequiel','Calbanese',133,18,'ncalbanese','ncalbanese2021',3,'si',5400),(394,'Eduardo Jose','Caraballo Gonzalez',209,18,'ecaraballo','ecaraballo2021',3,'si',5535),(395,'Roberto Gustavo','Dellucchi',190,18,'rdellucchi','rdellucchi2021',3,'si',5472),(396,'Walter Oscar','Echebarne',191,18,'wechebarne','wechebarne2021',3,'si',5472),(397,'Leonardo Atilio','Fernandez',197,18,'lfernandez','lfernandez2021',3,'si',5472),(398,'Hector Hugo','Flores',124,18,'hflores','hflores2021',3,'si',5400),(399,'Maximiliano Emanuel','Garro',203,18,'mgarro','mgarro2021',3,'si',5472),(400,'Ariel Fabian','Gerige',187,18,'agerige','agerige2021',3,'si',5472),(401,'Adrian Alejandro Lujan','Godoy',210,18,'agodoy','agodoy2021',3,'si',5535),(402,'Jose Ignacio','Leon Garcia',140,18,'jgarcia','jgarcia2021',3,'si',5406),(403,'Lizandro Yoshimar','Infantes Reyes',141,18,'linfantes','linfantes2021',3,'si',5406),(404,'Luis Enrique','Kauffmann',131,18,'lkauffmann','lkauffmann2021',3,'si',5400),(405,'Matias Nahuel','Lacabe',208,18,'mlacabe','mlacabe2021',3,'si',5535),(406,'Nelson Alexander','Lemos',130,18,'nlemos','nlemos2021',3,'si',5400),(407,'Alejandro','Luna',132,18,'aluna','aluna2021',3,'si',5400),(408,'Gabriel Evaristo','Maciel',185,18,'gmaciel','gmaciel2021',3,'si',5472),(409,'Marco Antonio','Martinez',200,18,'mmartinez','mmartinez2021',3,'si',5472),(410,'Alberto Daniel','Medina',189,18,'amedina','amedina2021',3,'si',5472),(411,'Walter Ramon','Mendez',125,18,'wmendez','wmendez2021',3,'si',5400),(412,'Agustin','Motta',195,18,'amotta','amotta2021',3,'si',5472),(413,'Lucas Nahuel','Saldania Ullon',143,18,'lsaldania','lsaldania2021',3,'si',5406),(414,'Hector Anibal','Palacios',207,18,'hpalacios','hpalacios2021',3,'si',5535),(415,'Andres Sergio','Papini',196,18,'apapini','apapini2021',3,'si',5472),(416,'Lucas Gabriel','Pawluch',184,18,'lpawluch','lpawluch2021',3,'si',5472),(417,'Juan Domingo','Perea',194,18,'jperea','jperea2021',3,'si',5472),(418,'Alejandro Daniel','Puntillo',193,18,'apuntillo','apuntillo2021',3,'si',5472),(419,'Ercilio Moises','Romero Coitinio',198,18,'eromero','eromero2021',3,'si',5472),(420,'Marcos Ramon Antonio','Suarez',137,18,'msuarez','msuarez2021',3,'si',5406),(421,'Carlos Yair','Sad',201,18,'csad','csad2021',3,'si',5472),(422,'Fernando Daniel','Sanchez',138,18,'fsanchez','fsanchez2021',3,'si',5406),(423,'Jeronimo Agustin','Sanchez',192,18,'jesanchez','jesanchez2021',3,'si',5472),(424,'Javier Nicolas','Sanchez',127,18,'jsanchez','jsanchez2021',3,'si',5400),(425,'Marcelo Ariel','Sanchez',188,18,'msanchez','msanchez2021',3,'si',5472),(426,'Gonzalo Carlos Ezequiel','Segovia',199,18,'gsegovia','gsegovia2021',3,'si',5472),(427,'Leonardo Adrian','Segovia',128,18,'lsegovia','lsegovia2021',3,'si',5400),(428,'Ariel Leonardo','Semeniuk',206,18,'asemeniuk','asemeniuk2021',3,'si',5535),(429,'Sebastian Alberto','Barrios',144,18,'sbarrios','sbarrios2021',3,'si',5406),(430,'Leonardo Daniel','Simean',142,18,'lsimean','lsimean2021',3,'si',5406),(431,'Nahuel Leandro','Stark',139,18,'nstark','nstark2021',3,'si',5406),(432,'Juan Pablo','Vercelli',136,18,'jvercelli','jvercelli2021',3,'si',5406),(433,'Hector Angel Ramon','Villareal',202,18,'hvillareal','hvillareal2021',3,'si',5472),(434,'Monica Viviana','Aguirre',161,19,'maguirre','maguirre2021',3,'si',5410),(435,'Jose Leonardo','Ballesteros',120,19,'jballesteros','jballesteros2021',3,'si',5400),(436,'Fernando Lionel','Bazan',117,19,'fbazan','fbazan2021',3,'si',5400),(437,'Monica Sandra','Boiero',164,19,'mboiero','mboiero2021',3,'si',5410),(438,'Patricia Susana','Bonamico',119,19,'pbonamico','pbonamico2021',3,'si',5400),(439,'Julian','Boyer',165,19,'jboyer','jboyer2021',3,'si',5410),(440,'Patricio','Cabada',167,19,'pcabada','pcabada2021',3,'si',5410),(441,'Marcelo Alejandro','Cabrera',160,19,'mcabrera','mcabrera2021',3,'si',5410),(442,'Diego Ismael','Varas',172,19,'dvaras','dvaras2021',3,'si',5410),(443,'Irma Beatriz','Carrizo',154,19,'icarrizo','icarrizo2021',3,'si',5410),(444,'Gabriela Alejandra','Coria',166,19,'gcoria','gcoria2021',3,'si',5410),(445,'Maria Laura','Dejesus',157,19,'mdejesus','mdejesus2021',3,'si',5410),(446,'Viviana Georgina','Di Vincenzo',152,19,'vdivincenzo','vdivincenzo2021',3,'si',5410),(447,'Liliana Cecilia','Enrrst',150,19,'lenrrst','lenrrst2021',3,'si',5410),(448,'Gustavo Daniel','Espindola',155,19,'gespindola','gespindola2021',3,'si',5410),(449,'Edith Astrid','Firpo',158,19,'efirpo','efirpo2021',3,'si',5410),(450,'Vanesa Veronica','Godoy',148,19,'vgodoy','vgodoy2021',3,'si',5410),(451,'Lila Gabriela','Gonzalez',145,19,'lgonzalez','lgonzalez2021',3,'si',5410),(452,'Liliana Graciela','Guaymas',121,19,'lguaymas','lguaymas2021',3,'si',5400),(453,'Lidia Beatriz','Kloberdanz',146,19,'lkloberdanz','lkloberdanz2021',3,'si',5410),(454,'Ivan Rodrigo','Lizarraga',153,19,'ilizarraga','ilizarraga2021',3,'si',5410),(455,'Nancy Del Carmen','Ortega Ariza',159,19,'nortega','nortega2021',3,'si',5410),(456,'Monica Ines','Ortiz',149,19,'mortiz','mortiz2021',3,'si',5410),(457,'Mariel Micaela','Armagnac',122,19,'marmagnac','marmagnac2021',3,'si',5400),(458,'Marcos Emmanuel','Suarez',168,19,'masuarez','masuarez2021',3,'si',5410),(459,'Claudia Alejandra','Ponce',116,19,'cponce','cponce2021',3,'si',5400),(460,'Sebastian Walter','Rios',162,19,'srios','srios2021',3,'si',5410),(461,'Oscar Daniel','Rodriguez Moron',156,19,'orodriguez','orodriguez2021',3,'si',5410),(462,'Norma Beatriz','Iribarren',169,19,'niribarren','niribarren2021',3,'si',5410),(463,'Sofia Lorena','Sequeira',151,19,'ssequeira','ssequeira2021',3,'si',5410),(464,'Rocio Soledad','Gomez',170,19,'rgomez','rgomez2021',3,'si',5410),(465,'Ricardo','Toledo',115,9,'rtoledo','rtoledo2021',3,'si',5400),(466,'Valeria Natividad','Urquiza Carrizo',163,19,'vurquiza','vurquiza2021',3,'si',5410),(467,'Vanesa Fernanda','Sergio',171,19,'vsergio','vsergio2021',3,'si',5410),(468,'Walter Eduardo','Vidal',114,19,'wvidal','wvidal2021',3,'si',5400),(469,'Miguel Ernesto','Viera',147,19,'mviera','mviera2021',3,'si',5410),(470,'Pablo Daniel','Zabala',118,19,'pzabala','pzabala2021',3,'si',5400),(471,'Andres Fernando','Albertario',222,4,'aalbertario','aalbertario2021',3,'no',6120),(472,'Estanislao','Malecek',223,7,'emalecek','emalecek2021',3,'si',5214),(473,'Alex','Aguiar',224,7,'aaguiar','aaguiar2021',3,'si',5214),(474,'Maximiliano','Lembo',225,7,'mlembo','mlembo2021',3,'si',5214),(475,'Leandro','Amodey',226,7,'lamodey','lamodey2021',3,'si',5214),(476,'Jose','Velazquez',227,7,'jvelazquez','jvelazquez2021',3,'si',5214),(477,'Emiliano','Diaz',228,7,'ediaz','ediaz2021',3,'si',5214);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ehs_indumentaria'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-14 15:37:17
