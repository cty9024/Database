-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: final
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `calendar`
--

DROP TABLE IF EXISTS `calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calendar` (
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `name` varchar(60) NOT NULL,
  `phone` varchar(24) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `Px` decimal(10,6) DEFAULT NULL,
  `Py` decimal(10,6) DEFAULT NULL,
  `website` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendar`
--

LOCK TABLES `calendar` WRITE;
/*!40000 ALTER TABLE `calendar` DISABLE KEYS */;
INSERT INTO `calendar` VALUES ('2023-02-13 00:00:00','2023-02-13 00:00:00','《2023臺灣、克羅埃西亞協奏曲之夜》',NULL,'高雄市鳳山區三多一路 1 號',22.624282,120.336817,'https://www.npac-weiwuying.org/programs/634fc815dcc78d0009ca4b53?lang=zh\r'),('2023-02-14 00:00:00','2023-02-14 00:00:00','《2023高雄市青少年交響樂團年度音樂會／新興高中國中團》',NULL,'高雄市鳳山區三多一路 1 號',22.624282,120.336817,'https://www.npac-weiwuying.org/programs/63b53458bc2ba90007243428?lang=zh\r'),('2023-02-15 00:00:00','2023-02-17 00:00:00','《列夫席茲 巴赫鋼琴馬拉松》',NULL,'高雄市鳳山區三多一路 1 號',22.624282,120.336817,'https://www.npac-weiwuying.org/programs/63aa6c4af740d300072b8529?lang=zh\r'),('2023-03-05 00:00:00','2023-03-05 00:00:00','《哈利波特：混血王子的背叛™電影交響音樂會》',NULL,'高雄市鳳山區衛武營國家藝術文化中心',22.623593,120.342312,'https://www.npac-weiwuying.org/programs/63bd1e14bc2ba9000727e4c7?lang=zh\r'),('2023-03-03 00:00:00','2023-03-03 00:00:00','《哈利波特：鳳凰會的密令™電影交響音樂會》',NULL,'高雄市鳳山區衛武營',22.623593,120.342312,'https://www.npac-weiwuying.org/programs/63bd125872bcdc0007d5c971\r'),('2023-02-11 00:00:00','2023-02-12 00:00:00','《瘋迷24莫札特》',NULL,'高雄市鳳山區三多一路 1 號',22.624282,120.336817,'https://www.npac-weiwuying.org/programs/63730d5d69d78d00082c045a?lang=zh\r'),('2023-01-06 00:00:00','2023-02-01 00:00:00','《聲協【為．參拾而歌】系列音樂會（三）西班牙歌曲系列－Hola！Vamos a cantar！齊來歌唱！》',NULL,'高雄市鳳山區三多一路1號',22.624282,120.336817,'https://www.npac-weiwuying.org/programs/63771ee71f007d0007204988?lang=zh\r'),('2023-03-22 00:00:00','2023-03-22 00:00:00','【2023衛武營小時光】黃氏兄弟《暖心小時光》',NULL,'高雄市鳳山區衛武營國家藝術文化中心',22.623322,120.342413,'https://www.npac-weiwuying.org/programs/63466e4f26fa100008a38cc9?lang=zh\r'),('2022-10-07 00:00:00','2023-12-31 00:00:00','【一起飛吧！】兒童美術館','(07)5550331','高雄市鼓山區美術館路80號',22.656994,120.286562,'https://www.kmfa.gov.tw/ExhibitionDetailC001100.aspx?Cond=84875e56-3bbb-4aa7-a06a-6ac91c5e6a54\r'),('2023-03-18 00:00:00','2023-03-19 00:00:00','【職原市市集】春花祭第三波','0956-900789','高雄市鹽埕區大勇路1號',22.620760,120.281921,'https://pier2.org/activity/info/1106/\r'),('2023-01-04 00:00:00','2023-01-04 00:00:00','【衛武營小時光】Cicada《從海洋走向山林》',NULL,'高雄市鳳山區三多一路1號',22.624282,120.336817,'https://www.npac-weiwuying.org/programs/634657c526fa100008a38828?lang=zh\r'),('2023-03-01 00:00:00','2023-06-30 00:00:00','【限定優惠】打狗英國領事館 × 壽山動物園','07-5215187','高雄市鼓山區萬壽路350號',22.633871,120.276953,'https://zoo.kcg.gov.tw/?fbclid=IwAR10T2VH5-Awi5rj2S6sGlvTa-AIfoIKa7EDgcONUvE4qGfxEC7U2GBawLA&fbclid=IwAR10T2VH5-Awi5rj2S6sGlvTa-AIfoIKa7EDgcONUvE4qGfxEC7U2GBawLA\r'),('2023-03-12 00:00:00','2023-03-16 00:00:00','2023 國際自由車 環台公路大賽','07-3556978','高雄市大樹區統嶺路1號',22.758810,120.437932,'https://www.tourdetaiwan.org.tw/index.aspx\r'),('2023-03-18 00:00:00','2023-03-18 00:00:00','2023【 336愛奇兒家庭日—春日闖關趴 】',NULL,'高雄市鼓山區美術館路80號',22.656994,120.286562,'https://www.ah-h.org/\r'),('2023-03-18 00:00:00','2023-03-18 00:00:00','2023KSAF【雅歌幻影】曹雅雯&高雄市國樂團','07-7436633、07-222-5136','高雄市苓雅區五福一路67號文化中心至德堂',22.625525,120.317965,'https://www.khcc.gov.tw/rwd_home03.aspx?ID=$M102&IDK=2&EXEC=D&DATA=-34234&AP=$M102_DATE-112/03/18https://www.khcc.gov.tw/rwd_home03.aspx?ID=$M102&IDK=2&EXEC=D&DATA=-34234&AP=$M102_DATE-112/03/18\r'),('2023-01-20 00:00:00','2023-02-05 00:00:00','2023岡山燈藝節',NULL,'高雄市岡山區公園路1號(岡山公園)',22.797731,120.291920,'\r'),('2023-01-01 00:00:00','2023-01-01 00:00:00','2023維也納愛樂新年音樂會─全球衛星直播',NULL,'高雄市鳳山區三多一路1號',22.624282,120.336817,'https://www.npac-weiwuying.org/programs/62998e25c9bbe0000728e933?lang=zh\r'),('2023-01-24 00:00:00','2023-01-25 00:00:00','2023衛武營新春系列】身聲跨劇場《希望之翼》',NULL,'高雄市鳳山區三多一路1號',22.624282,120.336817,'\r'),('2023-03-18 00:00:00','2023-04-30 00:00:00','2023那瑪夏賞螢季','08-7389100、08-7368327','高雄市那瑪夏區平和巷164號',23.238594,120.695953,'https://www.namasia.com.tw/index.html\r'),('2023-01-29 00:00:00','2023-02-08 00:00:00','2023高雄乞龜祈福拉龜王保平安觀光節','07-3322351#2864','高雄市苓雅區三多四路66號',22.613085,120.301027,'https://www.yi-cheng-tang.org.tw/?act=menuinfo&ml_id=20181024019\r'),('2023-02-25 00:00:00','2023-03-04 00:00:00','2023高雄內門宋江陣','07-7995678#1535','高雄市內門區內豐里內埔82號(內門區公所)',22.942630,120.461475,'https://www.who-ha.tw/\r'),('2023-01-31 00:00:00','2023-07-16 00:00:00','2023高雄春天藝術節',NULL,'高雄市苓雅區五福一路67號',22.626053,120.317144,'https://ksaf.khcc.gov.tw/home.aspx\r'),('2023-03-17 00:00:00','2023-03-20 00:00:00','2023高雄春季婦幼購物節【高雄婦幼展】',NULL,'高雄市前鎮區成功二路39號',22.608000,120.299242,'https://ksmombaby-fair.top-link.com.tw/\r'),('2023-01-22 00:00:00','2023-04-30 00:00:00','2023高雄獎',NULL,'高雄市鼓山區美術館路80號',22.656994,120.286562,'https://www.kmfa.gov.tw/ExhibitionDetailC001100.aspx?Cond=057fd570-80fe-47fd-b28d-17683bdb058a\r'),('2023-01-26 00:00:00','2023-02-05 00:00:00','2023高雄蓮潭燈會',NULL,'高雄市左營區蓮池潭風景區',22.678834,120.296925,'https://khh.travel/zh-tw/event/news/4844\r'),('2023-01-17 00:00:00','2023-02-19 00:00:00','2023點亮LINYUAN迎新年-歡樂捷運幸福城',NULL,'高雄市林園區沿海路林園11號公園範圍及10號公園（幸福公園）',22.500347,120.395451,'\r'),('2023-03-18 00:00:00','2023-03-19 00:00:00','BLACKPINK高雄站演唱會 2023 WORLD TOUR 世界巡迴演唱會',NULL,'高雄市左營區世運大道100號',22.702450,120.294631,'https://www.livenation.com.tw/\r'),('2023-03-18 00:00:00','2023-03-18 00:00:00','BORDERLESS BOOGIE 無國界派對',NULL,'高雄市鹽埕區真愛路1號',22.618362,120.288534,'https://kpmc.com.tw/program/2023-lwh-0318/\r'),('2023-03-01 00:00:00','2023-12-31 00:00:00','POP ! POP ! POP ! 流行音樂互動展',NULL,'高雄市鹽埕區高雄流行音樂中心',22.618305,120.288624,'https://kpmc.com.tw/program/2022-0301/\r'),('2022-10-08 00:00:00','2023-03-05 00:00:00','X人稱—黃心健的元宇宙劇場',NULL,'高雄市鼓山區美術館路80號',22.656994,120.286562,'\r'),('2022-10-20 00:00:00','2023-03-05 00:00:00','世界百大名畫大展',NULL,'高雄市鼓山區大順一路115號',22.656627,120.306340,'\r'),('2023-03-10 00:00:00','2023-03-12 00:00:00','內惟限定．經典早五餐 【蓋世棋蹟】','07-5538935','高雄市鼓山區馬卡道路329號',22.657381,120.282252,'https://www.nwac.org.tw/tw/\r'),('2023-02-25 00:00:00','2024-09-08 00:00:00','多元史觀特藏室二部曲：南方作為衝撞之所','07-5550331','高雄市鼓山區美術館路80號',22.656994,120.286562,'https://www.kmfa.gov.tw/ExhibitionDetailC001100.aspx?Cond=c6a4b403-9042-42fe-9e17-2b556719c55c\r'),('2023-03-18 00:00:00','2023-03-18 00:00:00','多元文化藝術嘉年華活動',NULL,'高雄市三民區鼎泰廣場公園',22.664318,120.315685,'https://www.facebook.com/kshetic/\r'),('2023-02-26 00:00:00','2023-04-16 00:00:00','夜駁二派對',NULL,'高雄市鹽埕區大勇路1號(駁二大義區C8&C9倉庫廊道、LIVE WAREHOUSE)',22.620552,120.281932,'https://pier2.org/activity/info/1096/\r'),('2022-12-01 00:00:00','2023-01-31 00:00:00','大港老味',NULL,NULL,NULL,NULL,'https://khh.travel/zh-tw/event/news/4784\r'),('2023-01-04 00:00:00','2023-01-04 00:00:00','大玩樂家2－《洪一峰×簡文彬×許富凱 跨樂衛武營音樂會》',NULL,'高雄市鳳山區三多一路1號',22.624282,120.336817,'https://www.npac-weiwuying.org/programs/636882ea76d389000912b640?lang=zh\r'),('2023-03-18 00:00:00','2023-03-19 00:00:00','好好参月 暮春舒市【高美館×好好手感微笑市集】',NULL,'高雄市鼓山區美術館路80號',22.656994,120.286562,'https://www.sogoodmarket.com/\r'),('2023-02-25 00:00:00','2023-02-27 00:00:00','好好手感微笑市集【 好好貳月｜和島春穹 】',NULL,'高雄市鼓山區美術館路80號',22.656994,120.286562,'https://www.facebook.com/haomarket?eav=AfaxHU4A9KYZneLyX_cwjpouysT9CMfM0-BH-w7-tFIK6PpnAhneJuN4CrzYa62QP6k&tsid=0.613186202528887&source=result&paipv=0&_rdr\r'),('2023-02-18 00:00:00','2023-04-09 00:00:00','完成的未完成—周尹庠 服裝創作個展 KSpace高雄實驗場','07-5550331','高雄市鼓山區美術館路80號',22.656994,120.286562,'https://www.kmfa.gov.tw/ExhibitionDetailC001100.aspx?Cond=65b1e48c-489d-4080-9051-c4933b89ef39\r'),('2023-03-18 00:00:00','2023-03-18 00:00:00','寶可夢集換式卡牌遊戲 臺灣地區聯盟賽【高雄站】','07-213 1188','高雄市前鎮區成功二路39號',22.608000,120.299242,'https://asia.pokemon-card.com/tw/?fbclid=IwAR2s1HdRwVXHpw10N1Fi9CDol1v3kpWOBWKqsCaHmi4kB68cKvYfuZlJt_I\r'),('2023-02-25 00:00:00','2023-02-28 00:00:00','小人類 & 雄店 × 迎春祭 市集',NULL,'高雄市鼓山區大義街2-2號(大義倉庫)',22.618812,120.285405,'https://www.facebook.com/events/%E9%A7%81%E4%BA%8C%E8%97%9D%E8%A1%93%E7%89%B9%E5%8D%80%E5%A4%A7%E7%BE%A9%E5%80%89%E5%BA%AB%E7%BE%A4/%E5%B0%8F%E4%BA%BA%E9%A1%9E-%E9%9B%84%E5%BA%97-x%E8%BF%8E%E6%98%A5%E7%A5%AD-%E9%A7%81%E4%BA%8C%E8%97%9D%E8%A1%93%E7%89%B9%E5%8D%80%E5%A4%A7%E7%BE%A9%E5%80%89%E5%BA%AB/708873297102519/\r'),('2023-02-24 00:00:00','2023-02-28 00:00:00','小人類 x 遊園迎春祭 - 壽山動物園',NULL,'高雄市鼓山區壽山動物園',22.635699,120.275434,'https://www.facebook.com/a.bit.human.market/posts/pfbid02qnJRBfMdmiV1Bb5PNMeTPjo3F1xT3vbPEcvag1SB7319UXjDJXT2PBj8xDbGr4hEl?locale=zh_TW\r'),('2023-02-25 00:00:00','2023-02-28 00:00:00','小老闆市集',NULL,'高雄市鼓山區大勇倉庫',22.620419,120.281855,'https://www.facebook.com/theedgeman/posts/pfbid02TNhdF9eg1nEMC9Avwv3Yjp1R1YXiYSb9R4BRQjq7vw84YbfRaz3VXctzrNskumRRl\r'),('2022-10-29 00:00:00','2023-01-29 00:00:00','島嶼溯遊：「台灣計劃」三十年回顧展',NULL,'高雄市鼓山區美術館路80號',22.656994,120.286562,'\r'),('2023-02-10 00:00:00','2023-02-12 00:00:00','影集式音樂劇《SC驚釀小酒館》',NULL,'高雄市鳳山區三多一路 1 號',22.624282,120.336817,'https://www.npac-weiwuying.org/programs/638d857c0f301d0007baf470?lang=zh\r'),('2022-12-10 00:00:00','2023-05-01 00:00:00','您好，歡迎光臨 Hotel YOLO 一趟跨越時、空及體感的藝術旅程','(07)521-4899','高雄市鹽埕區大勇路1號 駁二大勇區C5倉庫',22.620149,120.281582,'https://pier2.org/exhibition/info/1064/\r'),('2022-12-24 00:00:00','2023-04-09 00:00:00','惟 • 物 • 觀：黃步青','07-5550331','高雄市鼓山區美術館路80號',22.656994,120.286562,'https://www.kmfa.gov.tw/ExhibitionDetailC001100.aspx?Cond=c29ddc55-2619-4473-a7d8-04356fc208d5\r'),('2023-03-09 00:00:00','2023-05-14 00:00:00','感動兔 | 高美特展','07-5550331','高雄市鼓山區美術館路80號',22.656994,120.286562,'https://www.kmfa.gov.tw/ExhibitionDetailC001100.aspx?Cond=2d95294e-543e-4b48-a260-f3c363c13a33\r'),('2023-02-25 00:00:00','2023-02-27 00:00:00','澄清湖風景區 春鳥花香野餐趣市集',NULL,'高雄市鳥松區澄清湖風景區',22.660886,120.353995,'https://www.facebook.com/khh.travel/photos/a.234543287326/10159275114672327\r'),('2023-03-11 00:00:00','2023-03-12 00:00:00','甜食祭 小人類市集×小田月所',NULL,'高雄市鼓山區蓬萊路99號',22.621242,120.277988,'https://www.facebook.com/a.bit.human.market/?locale=zh_TW\r'),('2023-03-11 00:00:00','2023-07-02 00:00:00','盪－吳瑪悧個展','07-5550331','高雄市鼓山區美術館路80號',22.656994,120.286562,'https://www.kmfa.gov.tw/ExhibitionDetailC001100.aspx?Cond=af5cd94f-f379-4012-bd0e-a2b5b9130715\r'),('2023-02-25 00:00:00','2023-02-26 00:00:00','神農市集',NULL,'高雄市鼓山區凹仔底森林公園',22.659433,120.299233,'https://www.facebook.com/KSSG12/posts/pfbid0ELkSwWGsGiPWmRtupTPxhM54t4o9w7P4DjmjKDKDBhVRHMqY4Qa5T3WyMExMpT9Bl\r'),('2023-02-25 00:00:00','2023-02-27 00:00:00','秧光小市 回美濃 市集',NULL,'高雄市美濃區博愛街(美濃菸葉輔導站後面接近粄條街)',22.901411,120.540439,'https://www.facebook.com/farming0131/posts/pfbid01Dmp85eAYwRLb3fM3wR6c4irk7RyqJ7ptNgr7M9CLvEEmfz9sW1CgsBQfAhgsN8Yl\r'),('2023-02-25 00:00:00','2023-02-26 00:00:00','老窗花市集',NULL,'高雄市新興區濱海一路109之1號',22.619859,120.270532,'https://www.facebook.com/Gushanfishmarket/posts/pfbid0Ja9LffXMUnRntoceZ3pzq688pHXrDxgNEiZPL4o5XvPXoDRT9REyjobhcMWRpLUGl\r'),('2023-02-25 00:00:00','2023-02-28 00:00:00','職原市 春花祭 創意市集',NULL,'高雄市前鎮區夢時代一樓廣場',22.595402,120.307010,'\r'),('2023-02-05 00:00:00','2023-02-05 00:00:00','臺灣國樂團《魔幻時空大稻埕》「國樂與馬戲的魔幻碰撞」講座',NULL,'高雄市鳳山區三多一路 1 號',22.624282,120.336817,'https://www.npac-weiwuying.org/programs/63d778061a2c980007b3e150?lang=zh\r'),('2023-03-25 00:00:00','2023-05-14 00:00:00','衛武營黃昏市集【春日時光】','07-262-6666','高雄市鳳山區三多一路 1 號',22.623322,120.342413,'\"https://www.npac-weiwuying.org/programs/6406f0b1abd333000acbe597?lang=zh\"\r\n2023-03-26,2023-03-26,【李科永分館】海洋資源與永續「海洋貝殼故事會」,07-2610005,高雄市前金區民生二路37號,22.6256896263603,120.298462709425,\"https://www.ksml.edu.tw/sitemap/SubMenu.aspx?Parser=99,4,0\"\r\n2023-03-26,2023-06-10,2023 高美講堂【以收藏之名】,07-5550331分機242,高雄市鼓山區美術館路80號 地下樓演講廳,22.6569938057009,120.286561824555,https://www.kmfa.gov.tw/OnlineApplyDetailC001200.aspx?Cond=10983d00-453b-400c-bffe-4f6df31dd121\r\n2023-03-29,2023-04-02,五月天 2023 諾亞方舟,,高雄市左營區世運大道100號,22.7025293310889,120.294641951757,https://www.facebook.com/ibinmusic?locale=zh_TW\r\n2023-03-30,2023-04-01,2023 高雄智慧城市展 Smart City Summit & Expo,,高雄市前鎮區成功二路39號,22.6080986849911,120.299381097777,https://smartcity.org.tw/smartcity.php\r\n2023-03-31,2023-03-31,2023 兒童節山城親子遊【旗糖農創園區】,07-662 3831,高雄市旗山區忠孝街33號,22.8784000213296,120.492247267102,https://www.facebook.com/CishanAgriculturePark/\r\n2023-03-31,2023-04-05,小人類 童心園遊會 - 壽山動物園,,高雄市鼓山區萬壽路350號,22.6347212116317,120.279519024766,https://www.facebook.com/a.bit.human.market/?locale=zh_TW\r\n2023-03-31,2023-04-16,張惠妹aMEI演唱會2023 ASMeiR 2023 WORLD TOUR 高雄場,,高雄市左營區博愛二路757號,22.6688889797675,120.301968411273,https://www.facebook.com/aMEI.feat.AMIT/?locale=zh_TW\r\n2023-04-01,2023-04-02,2023 大港開唱 MEGAPORT Festival,,高雄市鹽埕區大勇路1號,22.6207105177869,120.281899822919,https://megaportfest.com/info/about/\r\n2023-04-01,2023-04-05,2023兒童節【孩翻高雄】衛武營、壽山動物園,07-799 5678,高雄市鳳山區衛武營都會公園內共融遊戲場,22.6178167750115,120.340138232667,https://www.facebook.com/educationbureaukaohsiung/\r\n2023-04-01,2023-08-31,跟著朦朧潮濕的一天去旅行【奈良美智】,,高雄市鼓山區馬卡道路329號(內惟藝術中心),22.6574607012862,120.282348911060,https://www.nwac.org.tw/tw/\r\n2023-04-01,2023-04-01,2023甲仙芋筍梅節 準備好樂梅,,高雄市甲仙區甲仙大橋旁廣場及周邊,23.0808141898573,120.584923197576,https://www.facebook.com/Jiasian.jump?locale=pt_BR\r\n2023-04-01,2023-04-02,【叢林森遊會爬蟲主題市集】夢時代購物中心,07-813 5678,高雄市前鎮區夢時代購物中心1F水池廣場,22.5953033323722,120.306934428359,https://www.dreammall.com.tw/\r\n2023-04-01,2023-06-25,伊藤潤二快閃店,,高雄市鹽埕區大義街99-2號1號 大義區C6-7倉庫,22.6187568639625,120.285127997917,https://pier2.org/exhibition/info/1105/\r\n2023-04-01,2023-04-01,2023豆子劇團世界故事系列2：巨人的朋友,07-5505596,高雄市苓雅區五福一路67號 至德堂,22.6255247643158,120.317965153601,\r\n2023-04-01,2023-04-04,岡山樂購 × 悠悠童心手作季,,高雄市岡山區捷安路1巷2號,22.7803407621122,120.300279953393,\r\n2023-04-03,2023-04-05,【憶童來玩市集】夢時代購物中心,,高雄市前鎮區夢時代購物中心1F幸福廣場、水池廣場,22.5953033323722,120.306934428359,\r\n2023-04-04,2023-04-04,【舊好生活】親子軍事風趣味野餐公益市集,,高雄市左營區勝利路42號,22.6779658621685,120.293480522711,https://www.beclass.com/rid=274b0a9640e7af80f6b1\r\n2023-04-08,2023-04-27,梁凱棋個展 - 空白家書,(07)521-4899,高雄市鹽埕區大勇路1號 大義 C8-1 倉庫 漾藝廊,22.6207105177869,120.281899822919,https://pier2.org/exhibition/info/1102/\r\n2023-04-08,2023-04-09,2023KSAF《太空喵C3341的奇幻冒險》親子音樂繪 The Fantasy Adventure of Astro Cat C3341,07-7436633、07-222-5136,高雄市苓雅區五福一路67號 文化中心至德堂,22.6255247643158,120.317965153601,https://www.opentix.life/event/1605871899575066633\r\n2023-04-15,2023-04-16,邊緣人市集 EDGEMAN MARKET【駁二藝術特區】,0934-150-296,高雄市鹽埕區大勇路1號 大義區紅磚廊道,22.6207105177869,120.281899822919,https://pier2.org/activity/info/1122/\r\n2023-04-15,2023-04-16,2023 森ノ市・珈琲と花物語,,高雄市鼓山區美術館路80號(高雄市立美術館北方草皮),22.6569938057009,120.286561824555,https://www.facebook.com/kaohsiungmuseum/posts/pfbid02ELLfE5nuuBErnbMaMpDCgozggn73EcYhuKQduQmZ7hq3AJL8qr4DhgJeyrpDRqCDl\r\n2023-04-15,2023-04-16,2023KSAF春藝小劇場-盜火劇團【哨船街漂流回憶錄】,(02)2595-4913,高雄市鼓山區蓬萊路99號 駁二藝術特區蓬萊倉庫 B9棟,22.6204032805067,120.278671016810,https://www.khcc.gov.tw/rwd_home02.aspx?ID=$5101&IDK=2&EXEC=D&DATA=65558&AP=$5101_HISTORY-0^$5101_PN-2\r\n2023-04-20,2023-06-06,走進世界名畫藝術限定店-統一夢時代購物中心,,高雄市前鎮區中華五路789號(統一夢時代購物中心),22.5953033323722,120.306934428359,https://www.dreammall.com.tw/Activity?expand=Bonus\r\n2023-04-21,2023-04-23,2023 FCI 第一屆美容師世界挑戰賽 & FCI AAO 亞非大區全犬種冠軍犬展,07-389-3006,高雄市前鎮區成功二路39號,22.6079699278873,120.299209436204,http://www.kctdog.org.tw/info.html\r\n2023-04-21,2023-04-24,2023 台灣創業連鎖加盟暨開店設備展【高雄展】,07-213 1188,高雄市前鎮區成功二路39號,22.6079699278873,120.299209436204,https://ksfranchise-fair.top-link.com.tw/\r\n2023-04-22,2023-04-22,邁可森 Maksim -The Collection 音樂會 高雄場,,高雄市苓雅區五福一路67號,22.6260430228723,120.317206197565,https://www.facebook.com/maksimtour/\r\n2023-04-23,2023-05-07,台味生活特展(夢時代),,高雄市前鎮區中華五路789號(夢時代購物中心8F時代會館),22.5953033323722,120.306934428359,\r\n2023-04-26,2023-04-26,【2023衛武營小時光】大象體操《夢境》 亞洲巡迴：高雄,,高雄市鳳山區衛武營國家藝術文化中心,22.6233224384796,120.342413057579,https://www.npac-weiwuying.org/programs/6346889412f38c00082e6362?lang=zh\r\n2023-04-28,2023-04-30,2023KSAF春藝小劇場【柚子鬼】,0939-697-731,高雄市鼓山區蓬萊路99號 駁二藝術特區蓬萊倉庫 B9棟,22.6204032805067,120.278671016810,https://www.khcc.gov.tw/rwd_home02.aspx?ID=$5101&IDK=2&EXEC=D&DATA=65616&AP=$5101_HISTORY-0^$5101_PN-2\r\n2023-04-29,2023-04-30,鱷魚不見了 相聲瓦舍 高雄場,(02)2913-3790,高雄市鳳山區三多一路1號,22.6233224384796,120.342413057579,https://www.facebook.com/ComediansWorkshop/?locale=zh_TW\r\n2023-06-23,2023-09-10,綠光30．創藝起飛《清明時節》2023 昇華版 Light Moments,(02)2395-6838,高雄市鳳山區三多一路1號,22.6242823375854,120.336816611059,https://www.facebook.com/greenraytheatre.fans/?locale=zh_TW\r\n2023-02-25,2024-09-08,多元史觀特藏室二部曲：南方作為衝撞之所,07-5550331,高雄市鼓山區美術館路80號,22.6567000000000,120.286550000000,https://www.kmfa.gov.tw/ExhibitionDetailC001100.aspx?Cond=c6a4b403-9042-42fe-9e17-2b556719c55c\r\n2023-03-01,2023-12-31,POP ! POP ! POP ! 流行音樂互動展,07- 5218012,高雄市鹽埕區高雄流行音樂中心,22.6183200000000,120.288660000000,https://kpmc.com.tw/program/2022-0301/\r\n2023-01-31,2023-07-16,2023高雄春天藝術節,,,,,https://ksaf.khcc.gov.tw/home.aspx\r\n2023-03-11,2023-07-02,盪－吳瑪悧個展,07-5550331,高雄市鼓山區美術館路80號,22.6567000000000,120.286550000000,https://www.kmfa.gov.tw/ExhibitionDetailC001100.aspx?Cond=af5cd94f-f379-4012-bd0e-a2b5b9130715\r\n2023-04-01,2023-08-31,跟著朦朧潮濕的一天去旅行【奈良美智】,07-5538935,高雄市鼓山區馬卡道路329號(內惟藝術中心),22.6573900000000,120.282320000000,https://www.nwac.org.tw/tw/\r\n2023-05-16,2023-07-09,火影忍者動畫20週年特展,07-8135678,高雄市前鎮區中華五路789號(夢時代購物中心),22.5953600000000,120.306890000000,https://www.naruto20.com.tw/\r\n2023-07-06,2023-07-09,《貓》CATS 全本音樂劇,07-7809900,高雄市鳳山區三多一路 1 號,22.6242823375854,120.336816611059,https://kham.com.tw/application/UTK02/UTK0201_.aspx?PRODUCT_ID=P030PSHA#showInfoBTN\r\n2023-07-15,2023-07-15,盧廣仲 15 週年 勵志的黃昏 的故鄉 高雄巨蛋演唱會,07-7995678,高雄市左營區博愛二路757號,22.6687300000000,120.301930000000,https://teamear.tixcraft.com/activity/detail/23_crowdkh\r\n2023-07-22,2023-07-22,【Julia彭佳慧】25周年 RUNWILD 怎樣 高雄巨蛋演唱會,07-7809900,高雄市左營區博愛二路757號,22.6687300000000,120.301930000000,https://kham.com.tw/application/UTK02/UTK0201_.aspx?PRODUCT_ID=P03OOP0F\r\n2023-07-30,2023-08-13,2023生活有書香 全民閱讀博覽會,07-6561921,高雄市大樹區興田里興田路153號,22.7484000000000,120.446000000000,https://www.fgs.org.tw/event.aspx\r\n2023-08-11,2023-08-14,2023 高雄茶、咖啡暨食品展,02-2659-6000,高雄市前鎮區成功二路39號,22.6078700000000,120.299310000000,https://www.chanchao.com.tw/expoDetail.asp?id=DKFTC2023\r\n2023-09-22,2023-09-24,STOMP破銅爛鐵 30周年台灣巡演 高雄場,02-27971887,高雄市鹽埕區高雄流行音樂中心,22.6183200000000,120.288660000000,https://www.carrierent.com/stomptw/\r\n2023-10-26,2023-10-29,2023 高雄國際食品展覽會,02-2725-5200,高雄市前鎮區成功二路39號,22.6078700000000,120.299310000000,https://www.foodkh.com.tw/zh-tw/index.html\r\n2022-12-10,2023-05-01,您好，歡迎光臨 Hotel YOLO 一趟跨越時、空及體感的藝術旅程,(07)521-4899,高雄市鹽埕區大勇路1號 駁二大勇區C5倉庫,22.6202480000000,120.282304000000,https://khh.travel/zh-tw/event/calendardetail/4905\r\n2023-03-09,2023-05-14,感動兔 | 高美特展,(07)555-0331,高雄市鼓山區美術館路80號,22.6549740000000,120.286742000000,https://khh.travel/zh-tw/event/calendardetail/4975\r\n2023-03-01,2023-06-30,【限定優惠】打狗英國領事館 × 壽山動物園,(07)521-5187,高雄市鼓山區萬壽路350號,22.6356610000000,120.278224000000,https://khh.travel/zh-tw/event/calendardetail/4982\r\n2023-01-31,2023-07-16,2023高雄春天藝術節,,,,,https://khh.travel/zh-tw/event/calendardetail/5058\r\n2023-03-11,2023-07-02,盪－吳瑪悧個展,07-5550331,高雄市鼓山區美術館路80號,22.6549740000000,120.286742000000,https://khh.travel/zh-tw/event/calendardetail/4974\r\n2023-03-25,2023-05-14,衛武營黃昏市集【春日時光】,07-262-6666,高雄市鳳山區三多一路 1 號,22.6241700000000,120.342434000000,https://khh.travel/zh-tw/event/calendardetail/5037\r\n2023-03-26,2023-06-10,2023 高美講堂【以收藏之名】,07-5550331分機242,高雄市鼓山區美術館路80號 地下樓演講廳,22.6549740000000,120.286742000000,https://khh.travel/zh-tw/event/calendardetail/4991\r\n2023-04-01,2023-06-25,伊藤潤二快閃店,,高雄市鹽埕區大義街99-2號1號 大義區C6-7倉庫,22.6216970000000,120.286072000000,https://khh.travel/zh-tw/event/calendardetail/5004\r\n2023-04-20,2023-06-06,走進世界名畫藝術限定店-統一夢時代購物中心,,高雄市前鎮區中華五路789號(統一夢時代購物中心),22.5953470000000,120.308792000000,https://khh.travel/zh-tw/event/calendardetail/5097\r\n2023-04-23,2023-05-07,台味生活特展(夢時代),,高雄市前鎮區中華五路789號(夢時代購物中心8F時代會館),22.5953470000000,120.308792000000,https://khh.travel/zh-tw/event/calendardetail/5098\r\n2023-05-06,2023-05-07,2023KSAF春藝小劇場【抓住星星的野人阿爾迪】Together 2.0,0910-560-255,高雄市鼓山區蓬萊路99號 駁二藝術特區蓬萊倉庫 B9棟,22.6207850000000,120.278747000000,https://khh.travel/zh-tw/event/calendardetail/4983\r\n2023-05-06,2023-06-25,尋找美濃寶盒,,高雄市美濃區民族路49-3號,22.8971300000000,120.548652000000,https://khh.travel/zh-tw/event/calendardetail/5092\r\n2023-05-06,2023-05-07,2023 港邊銷遙祭【駁二】,,高雄市鹽埕區大勇路1號,22.6202480000000,120.282304000000,https://khh.travel/zh-tw/event/calendardetail/5056\r\n2023-05-06,2023-05-06,蕭秉治 Project X Live Tour 巡迴演唱會 高雄場,,高雄市鹽埕區真愛路1號,22.6199200000000,120.281602000000,https://khh.travel/zh-tw/event/calendardetail/4919\r\n2023-05-07,2023-05-08,老王樂隊：黃色的房子映照清晨的天空-春天巡演-高雄,,高雄市鹽埕區大義街2之5號駁二藝術特區大義C10倉庫,22.6182100000000,120.285495000000,https://khh.travel/zh-tw/event/calendardetail/4950\r\n2023-05-12,2023-05-14,音樂劇【小王子】衛武營國家藝術文化中心,0936-088-537,高雄市鳳山區三多一路 1 號,22.6241700000000,120.342434000000,https://khh.travel/zh-tw/event/calendardetail/5038\r\n2023-05-12,2023-05-14,雲門50 林懷民《薪傳》,,高雄市鳳山區衛武營國家藝術文化中心,22.6241700000000,120.342434000000,https://khh.travel/zh-tw/event/calendardetail/4957\r\n2023-05-12,2023-05-13,2023KSAF春藝小劇場-不貳偶劇【尋找一個屬於我們的島】,0989-312862,高雄市鹽埕區蓬萊路99號 駁二藝術特區蓬萊倉庫 B9棟,22.6207850000000,120.278747000000,https://khh.travel/zh-tw/event/calendardetail/4985\r\n2023-05-13,2023-05-14,2023岡山籮筐小趕集,,高雄市岡山區典寶溪滯洪池A區,22.7809810000000,120.285089000000,https://khh.travel/zh-tw/event/calendardetail/5068\r\n2023-05-20,2023-05-21,當代傳奇劇場｜2023年度旗艦製作《女神．西王母》,,高雄市鳳山區三多一路1號,22.6241700000000,120.342434000000,https://khh.travel/zh-tw/event/calendardetail/4958\r\n2023-05-20,2023-05-20,叫我林彩香！我的婆婆怎麼那麼可愛前傳 春河劇團 舞台劇 高雄場,,高雄市鳳山區三多一路1號,22.6241700000000,120.342434000000,https://khh.travel/zh-tw/event/calendardetail/4916\r\n2023-05-21,2023-05-21,國泰世華《歲月留聲》 拉縴人青年合唱團 × 海歸人聲合唱團,,高雄市鳳山區三多一路1號,22.6241700000000,120.342434000000,https://khh.travel/zh-tw/event/calendardetail/4959\r\n2023-05-25,2023-05-27,2023 放視大賞,07-5374941,高雄市前鎮區成功二路39號,22.6081570000000,120.299288000000,https://khh.travel/zh-tw/event/calendardetail/5024\r\n2023-05-27,2023-05-28,2023KSAF《水底的冒險之旅》英國懸絲偶劇團 String Theatre: A Water Journey,,高雄市鼓山區蓬萊路99號 駁二藝術特區蓬萊倉庫 B9棟,22.6207850000000,120.278747000000,https://khh.travel/zh-tw/event/calendardetail/5013\r\n2023-06-04,2023-06-04,高雄市管樂團《璀璨之聲》,,高雄市鳳山區衛武營國家藝術文化中心音樂廳,22.6241700000000,120.342434000000,https://khh.travel/zh-tw/event/calendardetail/5059\r\n2023-06-03,2023-06-03,周湯豪 ??????? 高雄巨蛋演唱會,02-8772-9835,高雄市左營區博愛二路757號,22.6685790000000,120.302511000000,https://khh.travel/zh-tw/event/calendardetail/5003\r\n2023-06-02,2023-06-05,2023 高雄旅行公會國際旅展,(07)241-3881,高雄市前鎮區成功二路39號,22.6081570000000,120.299288000000,https://khh.travel/zh-tw/event/calendardetail/5025\r\n2023-06-11,2023-06-11,2023KSAF《自由的笙籟》吳巍與高雄市國樂團 Wu Wei & KCO,07-7436633,高雄市鳳山區三多一路1號,22.6241700000000,120.342434000000,https://khh.travel/zh-tw/event/calendardetail/5011\r\n2023-06-18,2023-06-18,2023KSAF《魔法阿媽：豆豆的夏天》KSO親子音樂會,07-7436633,高雄市苓雅區五福一路67號 文化中心至德堂,22.6282480000000,120.317017000000,https://khh.travel/zh-tw/event/calendardetail/5014\r\n2023-06-21,2023-06-21,【2023衛武營小時光】跑跑機器人《時間密碼》,,高雄市鳳山區三多一路1號,22.6241700000000,120.342434000000,https://khh.travel/zh-tw/event/calendardetail/4960\r\n2023-06-22,2023-06-22,高雄市管樂團《西班牙印記》,,高雄市鳳山區衛武營國家藝術文化中心音樂廳,22.6241700000000,120.342434000000,https://khh.travel/zh-tw/event/calendardetail/5060'),('2023-01-06 00:00:00','2023-01-08 00:00:00','躍演《勸世三姊妹》中文音樂劇',NULL,'高雄市鳳山區三多一路1號',22.624282,120.336817,'https://www.opentix.life/event/1539089895752417283\r'),('2022-12-30 00:00:00','2023-02-14 00:00:00','進擊的巨人展FINAL ver. TAIWAN',NULL,'高雄市左營區高鐵路123號',22.688071,120.309239,'https://www.mightymedia.co.jp/kyojinten-exhib/index.html\r'),('2023-03-11 00:00:00','2023-03-19 00:00:00','高雄夢時代【莓好農場-粉紅野餐日】','07-8135678','高雄市前鎮區中華五路789號',22.595043,120.306547,'https://www.dreammall.com.tw/\r'),('2023-02-11 00:00:00','2023-02-11 00:00:00','高雄時尚大賞｜浪漫快閃?',NULL,'高雄市新興區文化路及文橫二路口',22.623686,120.302776,'https://www.facebook.com/KFAward\r');
/*!40000 ALTER TABLE `calendar` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-21  0:03:57
