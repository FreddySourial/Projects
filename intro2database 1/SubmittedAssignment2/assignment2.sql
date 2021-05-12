-- MySQL dump 10.13  Distrib 5.7.19, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `customer_product`
--

DROP TABLE IF EXISTS `customer_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordered_amount` int(10) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `payment_id` (`payment_id`),
  KEY `customer_id` (`customer_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `customer_product_ibfk_1` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`payment_id`),
  CONSTRAINT `customer_product_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `customer_product_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_product`
--

LOCK TABLES `customer_product` WRITE;
/*!40000 ALTER TABLE `customer_product` DISABLE KEYS */;
INSERT INTO `customer_product` VALUES (1,5,28,50,23),(2,1,95,9,49),(3,5,25,36,21),(4,2,92,1,4),(5,3,191,47,63),(7,4,162,44,69),(8,1,44,2,65),(9,2,42,40,25),(10,2,130,13,59),(11,4,141,35,51),(12,3,96,24,77),(13,4,110,3,17),(14,4,122,18,28),(16,3,43,11,76),(18,2,82,26,8),(19,2,85,24,29),(20,5,78,4,91),(21,3,100,3,96),(22,3,79,11,33),(23,1,192,39,3),(24,4,103,42,32),(25,2,89,25,72),(26,1,153,36,5),(29,5,121,32,43),(31,2,38,12,64),(32,4,105,49,80),(33,2,148,41,97),(34,2,118,31,71),(35,5,30,28,89),(36,5,178,46,22),(37,1,119,40,27),(38,2,41,35,85),(39,2,48,12,62),(40,5,47,49,20),(44,5,49,8,11),(45,1,129,47,9),(47,1,45,32,41),(49,4,3,17,98),(50,5,135,43,100),(51,3,86,12,7),(52,1,161,12,57),(53,4,36,40,48),(55,4,125,5,2),(56,3,142,6,24),(57,5,147,27,19),(58,3,14,21,88),(59,3,197,44,38),(60,4,152,21,16),(62,3,81,37,13),(63,3,17,22,15),(64,5,116,4,10),(65,4,160,50,30),(66,5,157,49,47),(68,2,8,35,39),(69,3,156,36,53),(71,2,39,45,61),(72,4,107,15,66),(76,3,101,31,101),(77,2,158,38,99),(78,2,149,8,44),(79,3,193,21,31),(81,4,37,40,74),(82,5,196,13,68),(83,4,181,39,26),(84,5,131,33,56),(85,3,140,38,60),(86,3,185,24,90),(87,1,13,15,35),(88,2,109,33,36),(89,4,143,13,42),(92,4,194,39,84),(94,1,112,50,67),(95,4,76,41,52),(98,4,27,22,82),(99,1,77,39,92);
/*!40000 ALTER TABLE `customer_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phoneNo` double NOT NULL,
  `shipping_detail_id` int(11) NOT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `customers_ibfk_1` (`shipping_detail_id`),
  CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`shipping_detail_id`) REFERENCES `shipping_details` (`shipping_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'OQCSN','CBKEC','oqcsncbkec@email.com',4558909349,31),(2,'YXZJG','AQTYP','yxzjgaqtyp@email.com',5434551019,109),(3,'ZHPLB','EZBHQ','zhplbezbhq@email.com',7348231730,77),(4,'NTONI','LFQHE','ntonilfqhe@email.com',8884418890,110),(5,'KVPDR','CQQPB','kvpdrcqqpb@email.com',3029981785,39),(6,'AFQRX','PWYVF','afqrxpwyvf@email.com',2919427618,76),(7,'ZZUQX','YJSWG','zzuqxyjswg@email.com',1672527640,11),(8,'FLJXL','TOBXO','fljxltobxo@email.com',4533850551,48),(9,'NTPLD','TXTIB','ntpldtxtib@email.com',6751378498,97),(10,'ANJTH','UXUEV','anjthuxuev@email.com',9844605838,66),(11,'BHUWJ','TCMZN','bhuwjtcmzn@email.com',3712633052,104),(12,'JCUUQ','GNJJW','jcuuqgnjjw@email.com',6585581560,110),(13,'POGDL','AGTBZ','pogdlagtbz@email.com',3887555128,119),(14,'BLYCT','VHIHD','blyctvhihd@email.com',1092352824,19),(15,'GNDYV','DIJGW','gndyvdijgw@email.com',3606860575,24),(16,'UFINM','QLNDF','ufinmqlndf@email.com',8650896941,37),(17,'QEZPA','FKETY','qezpafkety@email.com',1609193056,55),(18,'VDETN','HXSPX','vdetnhxspx@email.com',4512821152,84),(19,'FMHKD','RCQKT','fmhkdrcqkt@email.com',3342305972,54),(20,'RBEJN','NZYQP','rbejnnzyqp@email.com',5878993004,4),(21,'THBRX','GRHRO','thbrxgrhro@email.com',5465073897,23),(22,'FDQFD','SJBJF','fdqfdsjbjf@email.com',3553002447,134),(23,'QLRST','INQDN','qlrstinqdn@email.com',6830001141,137),(24,'RKAAZ','JLJMO','rkaazjljmo@email.com',4716018651,62),(25,'MMPOQ','VHBFB','mmpoqvhbfb@email.com',6681100364,88),(26,'WMZQV','QYDJX','wmzqvqydjx@email.com',3187372185,52),(27,'QYFBT','TUPBC','qyfbttupbc@email.com',2510342828,5),(28,'EUVQS','BKKGO','euvqsbkkgo@email.com',9106368875,21),(29,'SGMFM','DIBYE','sgmfmdibye@email.com',7068953777,98),(30,'NNSDW','TSTAP','nnsdwtstap@email.com',2753713687,46),(31,'OHTVN','DHPJK','ohtvndhpjk@email.com',7815386293,80),(32,'YVQKM','LKRKS','yvqkmlkrks@email.com',4507298298,16),(33,'YFTXX','BTIAP','yftxxbtiap@email.com',9999581491,29),(34,'WZXSE','FOEHI','wzxsefoehi@email.com',8967059030,82),(35,'YJEFK','IVRZD','yjefkivrzd@email.com',3906306152,125),(36,'ELXNV','APOIS','elxnvapois@email.com',6828834863,59),(37,'VLALR','VOJVY','vlalrvojvy@email.com',1359287721,9),(38,'HBDUH','LPSNZ','hbduhlpsnz@email.com',1683453866,32),(39,'IUSLD','XPPNL','iusldxppnl@email.com',7535789943,40),(40,'YEOEM','GVFGC','yeoemgvfgc@email.com',6890355828,89),(41,'QSQOD','FYLQK','qsqodfylqk@email.com',6684307466,12),(42,'ZRUFX','QOSAI','zrufxqosai@email.com',3338957334,140),(43,'NDDGL','HYLVZ','nddglhylvz@email.com',3896873567,17),(44,'EIDET','KGDOM','eidetkgdom@email.com',3581849260,144),(45,'IFKNO','OALYC','ifknooalyc@email.com',7035515388,15),(46,'ZKJFJ','QUGLB','zkjfjquglb@email.com',5780311096,96),(47,'YXEND','RFMQD','yxendrfmqd@email.com',7952624899,79),(48,'PEUSX','CHCXC','peusxchcxc@email.com',1264025533,132),(49,'WAQLQ','VWZLE','waqlqvwzle@email.com',5995176240,34),(50,'IGZVX','GHTKO','igzvxghtko@email.com',8353508364,123),(51,'HIUDK','IUZFH','hiudkiuzfh@email.com',8453359829,43),(52,'QDVGY','LOEZY','qdvgyloezy@email.com',2335920046,67),(53,'LKRYE','HMYQY','lkryehmyqy@email.com',1820484554,5),(54,'IXIKR','IDIRH','ixikridirh@email.com',9365002864,114),(55,'TVMGT','IMMNB','tvmgtimmnb@email.com',9689920870,68),(56,'XRLVR','QMQNL','xrlvrqmqnl@email.com',9730799352,118),(57,'HWBEM','CLCNT','hwbemclcnt@email.com',8185924845,56),(58,'ECIIB','ZUXWM','eciibzuxwm@email.com',7636375714,142),(59,'TVNHT','QSUAF','tvnhtqsuaf@email.com',6783891497,11),(60,'IJXJA','AUOTQ','ijxjaauotq@email.com',2492493035,38),(61,'IXTVQ','INUQE','ixtvqinuqe@email.com',1126165529,63),(62,'INECU','BGTJQ','inecubgtjq@email.com',5499812752,19),(63,'LMYSZ','IFHDY','lmyszifhdy@email.com',3143925377,36),(64,'ODVFH','PCAOB','odvfhpcaob@email.com',9807914077,114),(65,'EWFFK','NDTOJ','ewffkndtoj@email.com',8779054717,94),(66,'ZJSFB','ELMAL','zjsfbelmal@email.com',2055159610,4),(67,'ISMPB','IPXLJ','ismpbipxlj@email.com',1702095019,22),(68,'QFOJX','UNPZQ','qfojxunpzq@email.com',4574125536,121),(69,'BIYPQ','UULSE','biypquulse@email.com',4591083546,51),(70,'XUXJS','NXTDV','xuxjsnxtdv@email.com',8074407345,107),(71,'CRDWL','UHZVB','crdwluhzvb@email.com',5736251698,67),(72,'IXYGV','MKGPH','ixygvmkgph@email.com',6470306292,62),(73,'JQMOG','IGQUE','jqmogigque@email.com',1350839428,8),(74,'WVCKQ','JZNJW','wvckqjznjw@email.com',2491881854,60),(75,'NZHGS','DRIND','nzhgsdrind@email.com',3805937625,41),(76,'IZNFY','XBTLD','iznfyxbtld@email.com',4623405487,137),(77,'OOUKA','YYGWN','ooukayygwn@email.com',2214643153,81),(78,'MPBOU','SIGID','mpbousigid@email.com',3645427560,35),(79,'GJCRT','VYJUH','gjcrtvyjuh@email.com',7112124536,135),(80,'FPCNH','KJENH','fpcnhkjenh@email.com',8643275182,45),(81,'XYSXE','BBGKM','xysxebbgkm@email.com',5584079848,121),(82,'ZQKSP','OYIPU','zqkspoyipu@email.com',2693701482,124),(83,'QNIOA','XDJEG','qnioaxdjeg@email.com',1171902376,14),(84,'ACOTQ','KVBXL','acotqkvbxl@email.com',7397566837,13),(85,'XODGB','HUFQV','xodgbhufqv@email.com',9798137752,113),(86,'CMOUF','PUGQS','cmoufpugqs@email.com',9479066157,54),(87,'XCFVX','OJGTC','xcfvxojgtc@email.com',7264460631,85),(88,'QIOQZ','XLSBO','qioqzxlsbo@email.com',9868679898,94),(89,'ZFMNX','AUUQD','zfmnxauuqd@email.com',2277214066,72),(90,'CDEIG','JMFLG','cdeigjmflg@email.com',2973656575,64),(91,'NCKXM','TNFBG','nckxmtnfbg@email.com',8383124466,108),(92,'OVUII','WUTDK','ovuiiwutdk@email.com',9789721651,61),(93,'STEDC','BGNFB','stedcbgnfb@email.com',9796062106,141),(94,'QKEFV','SXCVT','qkefvsxcvt@email.com',4341706266,122),(95,'YJICV','YERZO','yjicvyerzo@email.com',3692631816,106),(96,'YXGPZ','LLVHS','yxgpzllvhs@email.com',3969808830,116),(97,'IRNAW','TRVHW','irnawtrvhw@email.com',2802247732,142),(98,'UDBBH','TIDKJ','udbbhtidkj@email.com',9920969026,93),(99,'HOMHT','RCUUC','homhtrcuuc@email.com',9974774165,65),(100,'AIMLL','UFBJG','aimllufbjg@email.com',7005004953,56),(101,'IMCTP','WIHIR','imctpwihir@email.com',8470176592,68),(102,'AQCQS','GAEZE','aqcqsgaeze@email.com',3017274686,27),(103,'YAACL','DDGNE','yaaclddgne@email.com',8566394320,18),(104,'XQIYS','GKQHH','xqiysgkqhh@email.com',6916615955,99),(105,'MVZFB','BUVRI','mvzfbbuvri@email.com',4347069776,90),(106,'FLCHX','GWYVP','flchxgwyvp@email.com',5640501266,97),(107,'MJGRI','UMSTB','mjgriumstb@email.com',4720145992,87),(108,'ODOJK','MSAHT','odojkmsaht@email.com',5214426197,105),(109,'FXCRW','JMGWP','fxcrwjmgwp@email.com',9809925925,91),(110,'SZGQX','SPJVD','szgqxspjvd@email.com',8098762570,28),(111,'QDBWI','FTOKJ','qdbwiftokj@email.com',8339047365,14),(112,'ITRAC','ARFQL','itracarfql@email.com',1006756743,143),(113,'FMNLS','WBMIJ','fmnlswbmij@email.com',6438809579,92),(114,'LBMMX','OGFZS','lbmmxogfzs@email.com',9216183221,103),(115,'UXFTK','DCIFD','uxftkdcifd@email.com',8659291700,42),(116,'ZAGJT','HERGU','zagjthergu@email.com',3714752974,60),(117,'PFGNI','HGZDQ','pfgnihgzdq@email.com',9229605089,104),(118,'PNMMW','WKVGB','pnmmwwkvgb@email.com',7654344789,126),(119,'CXXYA','WNXXP','cxxyawnxxp@email.com',5448231358,71),(120,'CNCEC','TFYIP','cncectfyip@email.com',5882588248,95),(121,'QXSKS','ZTAFU','qxsksztafu@email.com',3824827269,6),(122,'WEHFR','YGEXF','wehfrygexf@email.com',5489951320,41),(123,'MVLBZ','BBBJT','mvlbzbbbjt@email.com',5909624947,3),(124,'EWLCY','JEQJT','ewlcyjeqjt@email.com',4262935048,139),(125,'VEVCK','UBZHW','vevckubzhw@email.com',6439199487,20),(126,'SJUYW','MJTOC','sjuywmjtoc@email.com',4553001511,49),(127,'BWRSL','WHZIN','bwrslwhzin@email.com',2867746774,53),(128,'YUZDL','ATLIW','yuzdlatliw@email.com',4549960850,74),(129,'HFFAZ','AZHTR','hffazazhtr@email.com',1109169779,4),(130,'JUFDX','NSSFE','jufdxnssfe@email.com',7027629413,66),(131,'IXBLC','TDOMO','ixblctdomo@email.com',2016478236,100),(132,'CCNNN','QQWYL','ccnnnqqwyl@email.com',9326600593,73),(133,'CBQAY','QIBNS','cbqayqibns@email.com',5871248677,117),(134,'BEHXR','QMMJK','behxrqmmjk@email.com',5417527849,112),(135,'TZMXU','DTMNO','tzmxudtmno@email.com',1293546578,133),(136,'CQDBM','YHZWI','cqdbmyhzwi@email.com',6279862135,130),(137,'LOVEE','FJXOB','loveefjxob@email.com',4667110948,36),(138,'VNQTW','XVRAA','vnqtwxvraa@email.com',4837561607,5),(139,'PQLGS','JEEIR','pqlgsjeeir@email.com',9015776643,109),(140,'SFMGF','IIEBK','sfmgfiiebk@email.com',6727187041,57),(141,'WHXOD','LZFAZ','whxodlzfaz@email.com',2333063909,2),(142,'TEIBT','ODFCB','teibtodfcb@email.com',1053812845,128),(143,'PXQMV','JRVGN','pxqmvjrvgn@email.com',8105756986,130),(144,'LLMXC','ZHRKY','llmxczhrky@email.com',9143213621,62),(145,'LBXKY','BIGYX','lbxkybigyx@email.com',9008049863,33),(146,'ECGZD','TOBLL','ecgzdtobll@email.com',1706782216,83),(147,'MCBBQ','MKXOF','mcbbqmkxof@email.com',3143990598,114),(148,'CYUSV','AZJDU','cyusvazjdu@email.com',5968839915,22),(149,'BPWPO','TWYKA','bpwpotwyka@email.com',2461061221,51),(150,'CGXSX','LVNJE','cgxsxlvnje@email.com',8396463420,86),(151,'UHEPI','RLBQM','uhepirlbqm@email.com',1298227884,111),(152,'YDQAU','XISBB','ydqauxisbb@email.com',7468314042,25),(153,'AXIFQ','YEEMW','axifqyeemw@email.com',7088363819,10),(154,'UVKVO','FUKAW','uvkvofukaw@email.com',9372945809,30),(155,'LXNSC','HMRVA','lxnschmrva@email.com',7734450922,107),(156,'KUSQC','SIIFZ','kusqcsiifz@email.com',3390641713,67),(157,'ILKSO','QOOJY','ilksoqoojy@email.com',5824128449,78),(158,'YMLVY','OLSTZ','ymlvyolstz@email.com',4965794329,136),(159,'VWIPG','KHACP','vwipgkhacp@email.com',2290776786,84),(160,'POMII','NOVUX','pomiinovux@email.com',2908536786,47),(161,'IGVCG','RMOHR','igvcgrmohr@email.com',1939909822,63),(162,'CLOCH','VQGXZ','clochvqgxz@email.com',7045562257,134),(163,'XDOBL','KYGCS','xdoblkygcs@email.com',7513358189,115),(164,'ZCLRR','XWWGP','zclrrxwwgp@email.com',3936392964,130),(165,'MIJKM','HKCSF','mijkmhkcsf@email.com',4254896650,104),(166,'NAAEP','FFEQI','naaepffeqi@email.com',8199257042,56),(167,'HBKJZ','GXRHE','hbkjzgxrhe@email.com',4311608374,14),(168,'HBHLV','FCBMB','hbhlvfcbmb@email.com',1407904627,53),(169,'JKSRJ','ATGCY','jksrjatgcy@email.com',4088490296,139),(170,'KNAAT','PFQRS','knaatpfqrs@email.com',2922437317,44),(171,'EIQRE','GYLKS','eiqregylks@email.com',1790557807,118),(172,'JPMBW','EYBLU','jpmbweyblu@email.com',6622847358,17),(173,'TGELI','UFVIS','tgeliufvis@email.com',4181837681,104),(174,'BLSOI','UDFIO','blsoiudfio@email.com',1990098132,83),(175,'TAHAM','YVCUC','tahamyvcuc@email.com',3842327623,73),(176,'VPRKY','BWEMA','vprkybwema@email.com',9767221729,100),(177,'VKUWC','YXEAU','vkuwcyxeau@email.com',7705482611,53),(178,'VREVW','RBVQC','vrevwrbvqc@email.com',6484512727,23),(179,'TOFDQ','IAGRG','tofdqiagrg@email.com',2725409444,138),(180,'FBYCT','EXNMW','fbyctexnmw@email.com',8758967060,36),(181,'MOKTY','SVJIM','moktysvjim@email.com',6436711090,69),(182,'MVBXO','CQHIH','mvbxocqhih@email.com',1976864651,131),(183,'CANWM','KJEHI','canwmkjehi@email.com',4999105145,102),(184,'UKPPG','BSZRX','ukppgbszrx@email.com',6908344494,118),(185,'ARPOC','TGJXX','arpoctgjxx@email.com',8099392290,8),(186,'ERWNQ','EYSQZ','erwnqeysqz@email.com',6482570335,38),(187,'THEWN','YBLMQ','thewnyblmq@email.com',5592538098,1),(188,'YCNBB','RTAUD','ycnbbrtaud@email.com',5206014770,30),(189,'NHAPK','RJIWI','nhapkrjiwi@email.com',7461209641,135),(190,'AXUJT','SHBYX','axujtshbyx@email.com',4388971431,26),(191,'CLFII','XIPZG','clfiixipzg@email.com',2994740686,120),(192,'OJXPC','RWAMS','ojxpcrwams@email.com',8961325043,129),(193,'DVBKY','KBQGE','dvbkykbqge@email.com',5792988714,58),(194,'DKGKT','TIXKJ','dkgkttixkj@email.com',2750313206,44),(195,'WOOGO','TXJEP','woogotxjep@email.com',5756754173,70),(196,'IRBSX','UGFRF','irbsxugfrf@email.com',7570636216,101),(197,'YWRLK','KRXQM','ywrlkkrxqm@email.com',8639745838,127),(198,'CABLK','XBSAO','cablkxbsao@email.com',8955372116,50),(199,'ZWVNK','TGDYO','zwvnktgdyo@email.com',4947937769,75),(200,'HUFTY','LXXMO','huftylxxmo@email.com',2788167716,7);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `invoice_date` date NOT NULL,
  PRIMARY KEY (`invoice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (1,358419,157,'2016-08-10'),(2,171005,48,'2014-03-28'),(3,945568,82,'2013-01-19'),(4,509426,130,'2014-09-17'),(5,866417,88,'2014-04-22'),(6,366136,26,'2015-04-07'),(7,118365,137,'2017-09-25'),(8,279971,104,'2013-11-24'),(9,757485,167,'2016-06-07'),(10,270542,34,'2018-06-10'),(11,732507,218,'2015-10-09'),(12,580434,33,'2013-07-03'),(13,936025,126,'2016-12-13'),(14,217003,171,'2015-01-07'),(15,651550,105,'2014-09-22'),(16,352227,121,'2014-02-03'),(17,194652,144,'2014-12-18'),(18,727797,122,'2018-01-10'),(19,421107,40,'2014-03-19'),(20,532204,48,'2015-03-05'),(21,102143,30,'2015-10-08'),(22,203424,186,'2013-10-03'),(23,628758,238,'2016-04-24'),(24,722227,109,'2013-12-17'),(25,787917,146,'2015-05-27'),(26,860079,129,'2018-08-02'),(27,917782,103,'2013-08-20'),(28,974957,108,'2013-12-27'),(29,124290,65,'2017-09-19'),(30,392373,66,'2016-07-15'),(31,940348,69,'2015-03-05'),(32,223686,66,'2014-02-18'),(33,513387,26,'2018-04-18'),(34,419850,31,'2013-09-24'),(35,922877,247,'2018-10-12'),(36,325331,240,'2016-01-31'),(37,901358,204,'2013-03-27'),(38,987842,142,'2013-10-11'),(39,603668,74,'2017-05-10'),(40,521154,56,'2013-11-21'),(41,590719,57,'2014-08-27'),(42,523388,213,'2017-12-20'),(43,626581,227,'2014-03-08'),(44,411956,174,'2013-05-17'),(45,174779,128,'2016-09-08'),(46,768863,62,'2016-08-27'),(47,629563,46,'2016-12-18'),(48,383257,34,'2014-03-22'),(49,248713,42,'2016-07-07'),(50,554153,216,'2014-09-28'),(51,628080,57,'2016-05-01'),(52,766420,34,'2016-09-13'),(53,362522,72,'2018-12-04'),(54,752735,60,'2013-11-17'),(55,402249,247,'2018-08-14'),(56,931494,240,'2013-01-29'),(57,674189,238,'2017-11-01'),(58,112849,227,'2015-06-11'),(59,820501,29,'2014-08-13'),(60,761034,40,'2018-04-24'),(61,857075,221,'2015-05-26'),(62,368442,189,'2016-07-10'),(63,844778,167,'2015-02-19'),(64,394044,212,'2014-03-11'),(65,108782,66,'2017-10-24'),(66,752847,178,'2016-02-20'),(67,243131,110,'2016-12-23'),(68,596603,45,'2015-04-02'),(69,870327,95,'2016-11-29'),(70,902512,176,'2017-10-01'),(71,635908,232,'2014-07-20'),(72,821882,239,'2013-08-06'),(73,946786,216,'2015-02-05'),(74,860574,98,'2017-08-30'),(75,834664,220,'2013-04-14'),(76,116085,74,'2019-04-16'),(77,119809,188,'2014-01-22'),(78,766324,139,'2015-02-26'),(79,358024,77,'2017-10-03'),(80,910698,171,'2016-01-30'),(81,224719,131,'2018-01-24'),(82,625171,56,'2016-03-27'),(83,310183,47,'2017-05-03'),(84,628246,129,'2013-12-03'),(85,533351,133,'2016-12-05'),(86,217415,35,'2013-11-21'),(87,587892,234,'2014-10-27'),(88,963225,207,'2014-06-29'),(89,751059,184,'2013-04-11'),(90,845744,151,'2015-05-25'),(91,968104,67,'2018-06-17'),(92,775908,231,'2013-04-25'),(93,376995,151,'2018-07-10'),(94,552169,187,'2018-02-21'),(95,643144,164,'2017-11-15'),(96,543488,250,'2016-08-03'),(97,370590,213,'2017-03-01'),(98,667867,243,'2013-11-04'),(99,413238,41,'2016-04-12'),(100,907681,223,'2016-10-02'),(101,748406,156,'2014-10-22');
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_info`
--

DROP TABLE IF EXISTS `payment_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_info` (
  `payment_info_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_type` varchar(250) NOT NULL,
  PRIMARY KEY (`payment_info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_info`
--

LOCK TABLES `payment_info` WRITE;
/*!40000 ALTER TABLE `payment_info` DISABLE KEYS */;
INSERT INTO `payment_info` VALUES (1,'Cash'),(2,'Credit Card'),(3,'Debit Card');
/*!40000 ALTER TABLE `payment_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_info_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `payment_info_id` (`payment_info_id`),
  KEY `invoice_id` (`invoice_id`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`payment_info_id`) REFERENCES `payment_info` (`payment_info_id`),
  CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`invoice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,2,23),(2,2,49),(3,3,21),(4,1,4),(5,1,63),(6,1,55),(7,2,69),(8,3,65),(9,3,25),(10,2,59),(11,2,51),(12,1,77),(13,2,17),(14,1,28),(15,2,58),(16,1,76),(17,3,93),(18,2,8),(19,2,29),(20,2,91),(21,2,96),(22,1,33),(23,3,3),(24,2,32),(25,2,72),(26,3,5),(27,3,81),(28,1,46),(29,2,43),(30,1,75),(31,1,64),(32,2,80),(33,3,97),(34,3,71),(35,1,89),(36,2,22),(37,2,27),(38,1,85),(39,3,62),(40,3,20),(41,3,37),(42,3,54),(43,3,73),(44,1,11),(45,2,9),(46,2,70),(47,3,41),(48,2,45),(49,1,98),(50,1,100),(51,3,7),(52,1,57),(53,3,48),(54,1,14),(55,2,2),(56,3,24),(57,3,19),(58,3,88),(59,3,38),(60,1,16),(61,3,87),(62,3,13),(63,2,15),(64,2,10),(65,1,30),(66,2,47),(67,1,79),(68,1,39),(69,2,53),(70,2,86),(71,2,61),(72,1,66),(73,1,78),(74,3,6),(75,3,18),(76,2,101),(77,1,99),(78,3,44),(79,3,31),(80,3,95),(81,1,74),(82,2,68),(83,2,26),(84,3,56),(85,2,60),(86,1,90),(87,1,35),(88,1,36),(89,2,42),(90,2,12),(91,3,83),(92,1,84),(93,1,1),(94,2,67),(95,3,52),(96,2,40),(97,1,34),(98,3,82),(99,3,92),(100,2,50),(101,2,94);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(250) NOT NULL,
  `details` varchar(250) NOT NULL,
  `category` varchar(250) NOT NULL,
  `quantity` int(10) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'xqrpk','slcha mf wnkfc','Clothes',5),(2,'hbdxf','cushi sn pgugh','Earphones',2),(3,'ygcpb','mburq gw xvgbq','Laptops',6),(4,'pigcf','szwgi yx avpgk','Earphones',8),(5,'smept','obuad ac wfnun','Cosmetics',8),(6,'yrndx','zunvm zx ekrns','Appliances',1),(7,'xcctl','ewycx bd hmjaz','Mobile',3),(8,'jsnbm','qnlos ha laefz','Cosmetics',7),(9,'zednu','slycr ry bnwke','Laptops',3),(10,'oguck','sklqo kt qnecs','Cosmetics',4),(11,'wnjsh','ffbhn sk wvdbv','Mobile',6),(12,'taslg','hcmbq ae adphn','Software',5),(13,'mdpxf','rmajd ri hhjnj','Appliances',1),(14,'bltfz','zbijo pz qvtqm','Cosmetics',2),(15,'wykmg','rione ad ouhfz','Software',10),(16,'tovzo','unalt vl kkpus','Cleaning Products',2),(17,'cykfe','wwbwb tl epshr','Mobile',8),(18,'qvisz','lohak pu egguk','Cleaning Products',2),(19,'rbpjd','tydfc re fzejr','Cosmetics',10),(20,'fvqmb jjv','zqngh it cktjz','Clothes',3),(21,'gmvdu','dwupr gg jbfiv','Laptops',1),(22,'nduje','prouk zv ootbm','Mobile',6),(23,'emjsu','arqoj lm xeher','Appliances',3),(24,'ekwke','yyqol gn paftk','Appliances',6),(25,'niqgo','aenug pi dneps','Books',7),(26,'eywpl','hbiwk zd gfqoo','Cosmetics',7),(27,'pycgc','rhjzl su ndfgg','Software',2),(28,'jhavx','bnwtg tf aeayp','Earphones',5),(29,'fyafa','mjstn wg xsqyj','Appliances',10),(30,'fj zik eub','thrlv ou gjhtm','Cleaning Products',6),(31,'iruki okq','zysnl kg gjhtq','Appliances',9),(32,'hxdqs drt','jlpyn dn tpmhz','Mobile',4),(33,'kcxpt gyy','giryy ro ytnoh','Earphones',9),(34,'gqqro pxp','llirq sw yzxld','Earphones',7),(35,'locku cps','acchp qv gxxak','Mobile',5),(36,'opcpn eru','vfrjo dq aievm','Mobile',4),(37,'lwwlu ndx','izvre yp cqrqp','Laptops',9),(38,'pptth jqq','uugdp zy ivrwi','Mobile',5),(39,'pftxf kpd','oqljv dt uszgi','Cleaning Products',8),(40,'phunk dsn','doufj wm bkosh','Cleaning Products',7),(41,'pt anl fqx','ptzfl yj tkmva','Software',2),(42,'dm pwz foz','uybwo jp dozpo','Cosmetics',10),(43,'pu dqg nvp','qvpzj ox gzyof','Cosmetics',6),(44,'pq zml agd','hlprx br swhxh','Cosmetics',1),(45,'mf ene hel','wntct kz wacnx','Mobile',5),(46,'gqrtt','sqrjs wu jfezj','Cosmetics',4),(47,'hmtdv','amofa qs ihgka','Mobile',9),(48,'elsvj','fokju dd rawvw','Cleaning Products',10),(49,'jiwcc','dqnmz bf dvfdz','Cleaning Products',3),(50,'llmyp','uqzoo ck vokix','Software',8);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_details`
--

DROP TABLE IF EXISTS `shipping_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipping_details` (
  `shipping_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `province` varchar(250) NOT NULL,
  PRIMARY KEY (`shipping_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_details`
--

LOCK TABLES `shipping_details` WRITE;
/*!40000 ALTER TABLE `shipping_details` DISABLE KEYS */;
INSERT INTO `shipping_details` VALUES (1,'sbrwh sf srull','QIijtt','NS'),(2,'kcgwz zs xsthk','Nerybu','NL'),(3,'arkqp cm vfuip','Qwpifk','MB'),(4,'cgmxk ib pjjbm','Kinzem','SK'),(5,'ncdgs ft tewot','Iuvxaw','ON'),(6,'wugnt eu rhqkx','Eoebkx','NL'),(7,'zsxyn kz plaxa','Blwzkm','PE'),(8,'mgupx lc smasm','Qwqcjb','ON'),(9,'spsqi vx voqvy','Cfaqdn','YTN'),(10,'iscfv td wtnye','Uytiup','SK'),(11,'xepwc ae rrrzk','Bpnnwc','NL'),(12,'elhul ar eexfo','Trdnaz','MB'),(13,'yzita hr wpuhs','Pkiikf','NL'),(14,'qhjem zy dqizz','Mvnxvt','ON'),(15,'hifsu az vezij','Ecmgyl','AB'),(16,'txxxq ez glxfi','Sqcfmd','YTN'),(17,'mukxi ce ojvqq','Txxbrf','PE'),(18,'cmyqg sd jgfei','Vcwkyb','YTN'),(19,'syhjx kk ljzch','Opyqhs','ON'),(20,'yozou ed afafb','Jpegox','ON'),(21,'qrfoz lf ashzp','Mvpysb','ON'),(22,'vifcx vk gtpkf','Tzravm','SK'),(23,'ycish gl ddtbb','Osrwqe','NL'),(24,'fyhle cg fiqms','Coldyn','AB'),(25,'xpkti tc qygay','Klmmsd','NS'),(26,'wlhji fm gqmpn','Zxfxpn','NL'),(27,'wfylm jo yetmv','Fwzfjr','YTN'),(28,'rwbjt ig lyhkw','Yexpij','SK'),(29,'mbsgt kh cmmwe','Lmtioh','NL'),(30,'kcbar uw mmavu','Mgovnr','SK'),(31,'uuxnr xb bxhda','Hytxaw','YTN'),(32,'zkyiw hi ajhua','Mzmmzi','SK'),(33,'ljlpr sk rcvth','Pbjbgy','YTN'),(34,'npgmc ai tiqjz','Pcqzjr','SK'),(35,'wbjfc lc gabxx','Cikjsr','PE'),(36,'uolvp mu kiuuw','Asnfmw','NL'),(37,'yknhl fr hluhw','Ykxcoj','PE'),(38,'rchlf hg uknyo','Dqmtye','NL'),(39,'fbpqr by lhjrq','Likqsv','NL'),(40,'vbgjp kx nvcbv','Diocvo','ON'),(41,'nvcsv eb gksec','Wmvkaq','YTN'),(42,'atrtb gh worxk','Pynedx','ON'),(43,'drcte fn htpxx','Xmckqo','NL'),(44,'racid bk jqqcy','Sawtql','YTN'),(45,'mkeum ad nbyhk','Gmsain','MB'),(46,'hzhow ln qzrdf','Aluomh','ON'),(47,'zkhgn wo lxvvy','Fgqeyk','ON'),(48,'gnjgm nn ugrwe','Dpcprp','YTN'),(49,'sdbcl cb jwkmj','Ppnuac','AB'),(50,'nintj jj mpzmb','Pjvlpx','AB'),(51,'szenb jq hmhhu','Emlysg','NS'),(52,'hmyar ik orggz','Cvvcjm','AB'),(53,'hrejj bm valva','Scfhoy','MB'),(54,'kqetq op ikbfu','Olrpeq','YTN'),(55,'zcxbb gq yafgb','Kkmaqz','MB'),(56,'whsvv sj vlfeh','Ollcyo','YTN'),(57,'pliak gy wqijd','Zzuhsw','SK'),(58,'daykz ae clubq','Qrbino','ON'),(59,'dfogg dh eefer','Ehnlpq','ON'),(60,'ewwlg mc izyzo','Goxems','SK'),(61,'tuvzc vs niqts','Gnnyzs','YTN'),(62,'ourfa ee xjnfj','Rvfety','MB'),(63,'riolf on qnwbe','Hloaty','YTN'),(64,'yddcr qp vgrpb','Jlglat','YTN'),(65,'povix qw vcohj','Nsdtut','MB'),(66,'gcvko na nasat','Lxlkyf','SK'),(67,'lrygy qf xafkb','Mfiuvs','NL'),(68,'wkbrq bi ronxl','Uucnlu','MB'),(69,'biccd lo hbjnt','Cdbehh','NL'),(70,'pnege lg kthpy','Xyiipj','NS'),(71,'qtmpl et qajiw','Dphzss','ON'),(72,'ummnk lk seakg','Uydrua','NS'),(73,'khlha fh gdhvg','Eeaeuu','ON'),(74,'xrpab vu ceisa','Htnhvf','PE'),(75,'tdubs qt tgsvm','Dstrqe','MB'),(76,'amnqt jl ikbpi','Ekpnbu','YTN'),(77,'iqsoh uk cimfs','Wbrmch','PE'),(78,'tveqy dl ejedg','Suniiw','AB'),(79,'zwbpy ud ihdkp','Lsboro','SK'),(80,'peuqg mf nfloz','Komkpt','NS'),(81,'wpwjx tn qjcgh','Srktpk','MB'),(82,'ahdxl wk dvpze','Gadgyb','NL'),(83,'djtkz fm asbev','Vqlljk','MB'),(84,'rjmsp hh zsvyj','Cchkrb','AB'),(85,'zusbj xa jekli','Ufcdjk','AB'),(86,'uucyh vb frqjg','Jcomxe','SK'),(87,'ogxrh az fcdpi','Hjdzmv','MB'),(88,'whfrx dc rzdhf','Zwhojo','PE'),(89,'bibuj dy kkynh','Hvtash','YTN'),(90,'hdnzr wj kokkx','Mtpzwq','YTN'),(91,'drhyu oa mvghe','Dohytq','MB'),(92,'lwein kx byjca','Zeaffi','NL'),(93,'nuknd ct olkwz','Yhryof','YTN'),(94,'sllyc ah voikm','Spujol','AB'),(95,'ucoay ok xrdpy','Epqahc','YTN'),(96,'qxdqu ya vbqdl','Iavdei','YTN'),(97,'ywqaw qq jbiem','Nkmyom','PE'),(98,'vmngu vp zhwdu','Mtjpeh','NS'),(99,'ruoko cq ursuw','Hhlbaw','SK'),(100,'ezoki cg ectje','Xdvixx','AB'),(101,'wyamw nk nzdxj','Frdcwh','YTN'),(102,'kummd wp twunf','Uzggnb','NS'),(103,'xpgaa ye ndpyx','Ytrquo','YTN'),(104,'qwkzi vi xvbib','Idwvil','ON'),(105,'vqicb dh hehio','Daoziw','AB'),(106,'jteeu wy xbpmk','Gakxny','SK'),(107,'jppyw dv eneof','Zvnerv','AB'),(108,'ymjzs dg wcvbj','Frmyjj','ON'),(109,'xrzyd zi fxqtm','Ghaphz','PE'),(110,'iwoyv si pawwh','Htxavw','ON'),(111,'xnnxa sh kelpp','Wxzmgm','ON'),(112,'oxnfc ig gspsj','Qmfjia','SK'),(113,'eneof rd awiur','Jxjpff','SK'),(114,'afmfm md xaduw','Bqsueh','SK'),(115,'yldsn dm jdvrm','Qkrecb','NL'),(116,'obtol xv yfagp','Qyqunf','MB'),(117,'aecgd vd covyh','Rijcbu','NS'),(118,'oesep oi rdvnu','Yrlsuf','NS'),(119,'uzwcq sw brlol','Tflnkv','SK'),(120,'cbmtk qq hapxl','Lcdmcp','AB'),(121,'kpkki cq jcuga','Gmloos','PE'),(122,'iallx fj vjakc','Rbsiwh','NL'),(123,'wmzdo lt llhib','Dhjiwu','ON'),(124,'hkwyc mu eobhw','Lgszlo','PE'),(125,'izitl gq gfaag','Trjndj','NS'),(126,'jqgrr us cuzrt','Pzkucp','AB'),(127,'msqjs sf iegtx','Yopnnt','MB'),(128,'psicu zr xskjt','Qifiel','PE'),(129,'xtrau xt ervxr','Fwqjii','SK'),(130,'dwbpp hk elzqs','Bywanr','SK'),(131,'osksw ee xvbyk','Vhybkt','AB'),(132,'gdrte my madow','Wsecoc','SK'),(133,'hhfxy aj mvqtu','Pyjghu','MB'),(134,'emedy kc vgrce','Utjfnu','YTN'),(135,'erxax jl ferai','Lwbmcu','AB'),(136,'ujqxa db wwjmk','Kwicmv','ON'),(137,'rglzv ut ckozn','Arnmmm','PE'),(138,'nyxko jm jgtkw','Nmznjt','SK'),(139,'gyfrq ml sfdty','Dfxkjz','AB'),(140,'ytvrt lf yktrj','Oynpwp','PE'),(141,'npmng wq evwqd','Znfbec','AB'),(142,'zghkb oe kcyll','Xahmew','SK'),(143,'bhise xw hwnuj','Hqtrze','PE'),(144,'zwxrb tj cojfr','Oekzwf','ON');
/*!40000 ALTER TABLE `shipping_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-21 15:12:26
insert into customers (first_name, last_name, email, phoneno, shipping_detail_id)
values ('Jake','Smith','jakesmith@email.com','1236548780',(select shipping_detail_id from shipping_details where shipping_detail_id = 37));
update invoice set amount = 147 where invoice_id = 8;
delete from customers where email = 'gndyvdijgw@email.com';