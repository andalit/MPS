/*
SQLyog Ultimate v12.2.6 (64 bit)
MySQL - 5.7.11 : Database - mps
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mps` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `mps`;

/*Table structure for table `database` */

DROP TABLE IF EXISTS `database`;

CREATE TABLE `database` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Position to apply for` char(50) DEFAULT NULL COMMENT '–ü—Ä–µ—Ç–µ–Ω–¥—É–µ—Ç –Ω–∞ –í–∞–∫–∞–Ω—Å–∏—é ‚Ññ1',
  `Certified for` char(50) DEFAULT NULL COMMENT '–ü—Ä–µ—Ç–µ–Ω–¥—É–µ—Ç –Ω–∞ –í–∞–∫–∞–Ω—Å–∏—é ‚Ññ2',
  `Name` char(30) DEFAULT NULL COMMENT '–ò–º—è',
  `Surname` char(30) DEFAULT NULL COMMENT '–§–∞–º–∏–ª–∏—è',
  `Father Name` char(30) DEFAULT NULL COMMENT '–û—Ç—á–µ—Å—Ç–≤–æ',
  `Mother Name` char(30) DEFAULT NULL COMMENT '–ò–º—è —Å–∞—Ç–µ—Ä–∏',
  `D.O.B.` char(10) DEFAULT NULL COMMENT '–î–∞—Ç–∞ —Ä–æ–∂–¥–µ–Ω–∏—è',
  `P.O.B.` char(30) DEFAULT NULL COMMENT '–ú–µ—Å—Ç–æ —Ä–æ–∂–¥–µ–Ω–∏—è',
  `Nationality` char(50) DEFAULT NULL COMMENT '–ù–∞—Ü–∏–æ–Ω–∞–ª—å–Ω–æ—Å—Ç—å',
  `Hieght` char(5) DEFAULT NULL,
  `Weight` char(5) DEFAULT NULL,
  `Shoes size` char(50) DEFAULT NULL,
  `Parka size` char(50) DEFAULT NULL,
  `Address` char(150) DEFAULT NULL COMMENT '–ê–¥—Ä–µ—Å',
  `Mobile No.` char(40) DEFAULT NULL COMMENT '–¢–µ–ª–µ—Ñ–æ–Ω',
  `E-mail` char(30) DEFAULT NULL,
  `Skype` char(30) DEFAULT NULL,
  `Marital status` char(40) DEFAULT NULL COMMENT '–°–µ–º–µ–π–Ω—ã–π —Å—Ç–∞—Ç—É—Å',
  `Children` char(40) DEFAULT NULL COMMENT '---–ö–∞–∫–∞—è —Ç–æ –¥–∞—Ç–∞',
  `Seamans Pass No.` char(100) DEFAULT NULL COMMENT '–ó–Ω–∞–Ω–∏–µ –∏–Ω–æ—Å—Ç—Ä–∞–Ω–Ω—ã—Ö —è–∑—ã–∫–æ–≤',
  `Place of Issue S` char(50) DEFAULT NULL,
  `ISS S` char(10) DEFAULT NULL COMMENT '–î–ê–¢–ê –ø–∞—Å–ø–æ—Ä—Ç–∞',
  `Valid Date S` char(10) DEFAULT NULL COMMENT '–î–ê–¢–ê –ø–∞—Å–ø',
  `Civil Pass No.` char(50) DEFAULT NULL,
  `Place of Issue` char(50) DEFAULT NULL,
  `ISS` char(10) DEFAULT NULL COMMENT '–î–ê–¢–ê –∑–∞–≥—Ä–∞–Ω –ø–∞—Å–ø',
  `Valid Date` char(10) DEFAULT NULL COMMENT '–î–ê–¢–ê  –æ–∫–æ–Ω—á –∑–∞–≥—Ä–∞–Ω –ø–∞—Å–ø',
  `Graduated From` char(50) DEFAULT NULL,
  `English Ability` char(20) DEFAULT NULL,
  `Nearest Int. Airport` char(50) DEFAULT NULL COMMENT '–ë–ª–∏–∂–∞–π—à–∏–π –∞—ç—Ä–æ–ø–æ—Ä—Ç',
  `USA Visa : Number` char(30) DEFAULT NULL COMMENT 'Visa',
  `USA Visa : Data iss` char(10) DEFAULT NULL COMMENT 'Visa –î–ê–¢–ê',
  `USA Visa : Data End` char(10) DEFAULT NULL COMMENT 'Visa –î–ê–¢–ê',
  `Schengen : Number` char(30) DEFAULT NULL COMMENT 'Visa',
  `Schengen : Data iss` char(10) DEFAULT NULL COMMENT 'Visa –î–ê–¢–ê',
  `Schengen : Data End` char(10) DEFAULT NULL COMMENT 'Visa –î–ê–¢–ê',
  `MCV : Number` char(30) DEFAULT NULL COMMENT 'Visa',
  `MCV : Data iss` char(10) DEFAULT NULL COMMENT 'Visa',
  `MCV : Data End` char(10) DEFAULT NULL COMMENT 'Visa',
  `Yellow Fever : Data iss` char(10) DEFAULT NULL COMMENT '–í–∞–∫—Ü–∏–Ω—ã',
  `Yellow Fever : Data End` char(10) DEFAULT NULL COMMENT '–í–∞–∫—Ü–∏–Ω—ã',
  `Cholera : Data iss` char(10) DEFAULT NULL COMMENT '–í–∞–∫—Ü–∏–Ω—ã',
  `Cholera : Data End` char(10) DEFAULT NULL COMMENT '–í–∞–∫—Ü–∏–Ω—ã',
  `Diphtheria : Data iss` char(10) DEFAULT NULL COMMENT '–í–∞–∫—Ü–∏–Ω—ã',
  `Diphtheria : Data End` char(10) DEFAULT NULL COMMENT '–í–∞–∫—Ü–∏–Ω—ã',
  `Foto` mediumblob COMMENT '–§–æ—Ç–∫–∞',
  `Comments` longtext COMMENT '–ö–æ–º–º–µ–Ω—Ç—ã',
  `Salary` char(30) DEFAULT NULL COMMENT '–∑–∞—Ä–ø–ª–∞—Ç–∞',
  `readiness` tinyint(1) DEFAULT NULL COMMENT '–ì–æ—Ç–æ–≤–Ω–æ—Å—Ç—å',
  `Date readiness` char(10) DEFAULT NULL COMMENT '–î–∞—Ç–∞ –≥–æ—Ç–æ–≤–Ω–æ—Å—Ç–∏',
  `Date Update` datetime DEFAULT NULL COMMENT '–¥–∞—Ç–∞ –æ–±–Ω–æ–≤–ª–µ–Ω–∏—è –∞–Ω–∫–µ—Ç—ã',
  `Worked` char(50) DEFAULT NULL COMMENT '–í –æ–±—Ä–∞–±–æ—Ç–∫–µ. –§–∞–º–∏–ª–∏—è',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;

/*Data for the table `database` */

insert  into `database`(`id`,`Position to apply for`,`Certified for`,`Name`,`Surname`,`Father Name`,`Mother Name`,`D.O.B.`,`P.O.B.`,`Nationality`,`Hieght`,`Weight`,`Shoes size`,`Parka size`,`Address`,`Mobile No.`,`E-mail`,`Skype`,`Marital status`,`Children`,`Seamans Pass No.`,`Place of Issue S`,`ISS S`,`Valid Date S`,`Civil Pass No.`,`Place of Issue`,`ISS`,`Valid Date`,`Graduated From`,`English Ability`,`Nearest Int. Airport`,`USA Visa : Number`,`USA Visa : Data iss`,`USA Visa : Data End`,`Schengen : Number`,`Schengen : Data iss`,`Schengen : Data End`,`MCV : Number`,`MCV : Data iss`,`MCV : Data End`,`Yellow Fever : Data iss`,`Yellow Fever : Data End`,`Cholera : Data iss`,`Cholera : Data End`,`Diphtheria : Data iss`,`Diphtheria : Data End`,`Foto`,`Comments`,`Salary`,`readiness`,`Date readiness`,`Date Update`,`Worked`) values 
(99,'2 OFF','NAVIGATOR','DENYS','LEBID`','ANDRIY','NATALYA','1980-07-18','KHERSON','UKRAINIAN','180','75','42','50','80, RABOCHAYA STR., APT 29, KHERSON, UA','050 82 54 092',NULL,'dlebid1','MARRIED','1','AB 535110','KHERSON','2014-09-01','2019-09-01','ET099552','KHERSON','2011-07-12','2021-07-12',NULL,'GOOD','KHERSON, ODESSA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A.  APPROVED FOR MV SARONIC SPIRE\r\nAT SEA TILL MAR`17',NULL,NULL,NULL,'2016-09-19 13:13:04','–Æ–ª—è'),
(100,'2 OFF','DEEP SEA NAVIGATOR','ANATOLIY','RASTORGUYEV','IGOR','VALENTINA','1964-11-26','KHERSON','UKRAINIAN',NULL,NULL,NULL,NULL,'9, DIMITROVA STR., APT.3, KHERSON, UKRAINE','067 551 57 72; 067 551 57 21 (WIFE)','number97@rambler.ru',NULL,'married','yes','AB461917',NULL,'2011-01-25','2020-07-14','EH272043',NULL,'2010-08-30','2020-08-30','KHERSON MARINE COLLEGE OF FISHING INDUSTRY','GOOD','KHERSON, ODESSA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-10-18','2020-10-18',NULL,NULL,NULL,NULL,'ˇÿˇ‡\0JFIF\0\0\0\0\0\0ˇ€\0C\0(#(#!#-+(0<dA<77<{X]IdëÄôñèÄåä†¥Ê√†™⁄≠äå»ˇÀ⁄Óıˇˇˇõ¡ˇˇˇ˙ˇÊ˝ˇ¯ˇ€\0C+--<5<vAAv¯•å•¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯ˇ¿\0QA\"\0ˇƒ\0\0\0\0\0\0\0\0\0\0\0	\nˇƒ\0µ\0\0\0}\0!1AQa\"q2Åë°#B±¡R—$3brÇ	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzÉÑÖÜáàâäíìîïñóòôö¢£§•¶ß®©™≤≥¥µ∂∑∏π∫¬√ƒ≈∆«»… “”‘’÷◊ÿŸ⁄·‚„‰ÂÊÁËÈÍÒÚÛÙıˆ˜¯˘˙ˇƒ\0\0\0\0\0\0\0\0	\nˇƒ\0µ\0\0w\0!1AQaq\"2ÅBë°±¡	#3Rbr—\n$4·%Ò\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzÇÉÑÖÜáàâäíìîïñóòôö¢£§•¶ß®©™≤≥¥µ∂∑∏π∫¬√ƒ≈∆«»… “”‘’÷◊ÿŸ⁄‚„‰ÂÊÁËÈÍÚÛÙıˆ˜¯˘˙ˇ⁄\0\0\0?\0ÿ¢ô#S y⁄∏¶‘T;Â˛‡¸Ëﬂ/˜Á@QPÔó˚¢çÚˇ\0pP‘T;‰œ›\\PCéP‘T;Â˛Í—æ_E†	®®wKË¥oó—hj*“ˆ€FÈŸ†	®®wKË¥nóèª@QPÓó˝ö\\À˛Õ\0KEC∫\\\r•ˇ\0gÚ†	®®s/˚?ïó’*\0öäá2˙ØÂFeı_ Ä&¢°˝Ô®¸®˝Ô˜áÂ@QP˛˜≥ èﬁˇ\0x~T5d˛¸®˝Á˜áÂ@QP˛˜x~T~˜˚„Ú†	®®q\'˜ˇ\0J1\'˜ˇ\0J\0öäá˜üﬂ˝(ƒüﬂ?ï\0MECâ?æ*1\'˜œÂ@QPÌÔö6ø¸Ùj\0öå‘;_˚ÌKµˇ\0æhZ3PÌÔµ.∆ˇ\0ûçH	hÕE±øæ‘õ?}®j*ç˝ˆ•ÿﬂﬂj\0ñäãÀ?ﬂj<∂˛˚S\\—Qœ˜€Û£À?ﬂoŒê—Qyg˚Õ˘—Âˇ\0¥ﬂù0%¢¢Úˇ\0⁄oŒè+˝¶¸ËZ3QyC=[Û§Úá´~tÄöäã ≠˘—ÂV¸ÈÅ-ï«V¸È|°Íﬂù\0KEEÂS˘—‰èŒÄ%Õ®ºëÍ:<ëÔ˘–π£5íæˇ\0ùBü_ŒêÊåäã»_ÚhÚ∂:\0ó#÷åèZã»\\cö<Ö˜¸ËLèZ7QQàW“è%}(M√‘Q∏zägíæîy)È@‹=GÁFııù3…OJ<îÙ†_Q˘–º?:oíôÈGíü›†o_ÔŒè1º?:oíü›y)È@Û˚¬è1?º)<§˛Ë£ OJ\0_5?º(ÛS˚¬ì OÓ—ÂÆsä\0<‘˛£ÕOÔ\n<µÙyKÈ@öüﬁy±ˇ\0xR˘kË(Ú◊–S<‘˛£ŒOÔ\n_-}Z˙\n\0O:?Ô\n<‰˛•Ú◊–Q∞zR<Ëˇ\0º(Ûì˚¬ó`ÙlÇãÄûtﬁûtﬁßl_AK∞z\n.<‰˛ırz˛îÌÉ“óhÙ†y…Î˙QÁ\'ØÈOÿ=(ÿ=(ûzz˛îyÈÍ*~¡ÈF—ÈL˘…Í*)€“ä\0dΩ©WÓäIz\nT˚¢ê¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0§•¢Ää)h\0£ΩPPh•†¢ä(\0¢ä(h§•†ä(†aEPKIKHAES\0¢íä\0(¢ä\0Z)(†¢íä@-îSh§•†ä(†ä(§ES\0¢ä(\0¢ä(\0¢ä(\0¢ä)\0QE\0QE¿(¢ä\0(¢ä\0(¢ä\0(¢ä\0(≈-%\0R—@RP“QK@	E-%\0QE\0QE\0¥Q@%P“R—@	EPs}⁄r}—I/JU˚¢Ää(†ä(†ä(†ä(†å—HFF(h¶Ï\0å)‘\0QE\0QE\0QE%\0-Q@Q@îPKIE\0Ë¢ä\0)i(†ä(\0QöCÎGSö-Q@IE\0¥RR–E¢Å§¢ÅÜii(†ñíä\0\\—MŒ)7èQ@Õ.j#*éÙ”=h.h®|Â«ZÀÎ@QQâ˜£Õ_Q@«Êó5ò;RáÄíäh4π†B—IFhh¢ä\0Z)(†¢íñòQ@Q@Q@Q@Q@Q@Q@Q@Q@-%\0¥îQ@QHä(¶EP“R“PEPEPEP%ÈJütRK˜iWÓä\0Z(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n3E\0QE\0QIE\0-RP—E%\0¥îPÊäJ(i(¢Ä\n(¢Ä\n(¢Ä\n(£4\0QEJZJZ\0(¢ì4\0¥QHzR\0¢íÇ@ÎLB—PµÃjy5Í1Åì@À¥f≥d‘‘p™O·P…®HÁÂ¢¬5Z@¢´Ω¡ÁU<ßÔ\ZirhñZw<Ó5<Ö≥º‘!ΩÈ€Ö\0HXí99•‹OÒ\Zå:”∑.:–¡>¶óqı®Ûä“]«‘“o9Íj=Ÿ4¢Ä%ﬁq‘äpëásPÊåÒ@XòN√π©Ï˜™€®»†ÀtßØ(ïOÒ\nÃ\'4‡√±†\r@E.k=\'+ÔV‡fÄ,Êäh`{“–—IE\0-QLä)h\0¢íä\0Z(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢êQLä(†ä(†ä(†ä(†ä(†K“ÖË(õÓ“Ø›¿Z(¢êQ@RP—E\0î¥RP—E\0î¥î¥\0îQE\0QE\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢äJ\0ZJ(†ä(†äJ(¥QI@E! u®eú/J\0ò∞&°íÈz’Y%-ÌPû¥\nÂ¶Ω,>Qå’wñF9›Mﬁ£ø÷ö0zÊÄµªíiæX…ßÅÈQ≥ﬁÅ*†ÛAeaFE\0Kø“öI#≠3#µ¶!@ß\n`nis@\nTûE&(ﬁE&ÍC&¥`ä<’5ÔzNÙ‰€Üxß¸ÖCöÁÀ!¡ßcÚ™úv4ºÅûiÀDäB3öÆXÒÕ)lå\Z\0îÒIª“¢,q≈7qh587TIìÕ8»h¸r≤jµ°æµó€∫‘¿ï9Ä53EUÇ‡? ‹\Z≥÷òKIE!ãES\0¢ä(QEÄZJ(¶ERh¢ä`QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\02_ªB}—DøvÑ˚¢ò¢ä)\0QE\0QE\0QIK@	KE\0î¥Q@îPE-%\0¥îPEPEPEPEPIKI@IE\0QE%\0-%P0†Ù¶≥™˜UÓ≥ê¥ñÊp≠åä£$πÁ4“71$ı¶?•”zT-#Ùá≠ƒì÷õ–”©)N¥bóä8†≈Ïä8†.6ñé)C\n\0L\Z0i¡¿†∞<–!ú“”∏4Öh¥£ä\r4–1Ÿ£ ”sJ1@”•œ<ÒMÕ-\0<8œ4π^∆£≈%\0HM!4‹“ÊÄKöN¥î\'„OYô1‹’isö^éTnTÛZ>W÷‚Ω*Ì¨Ÿ‘\ZlQPE6Íò–1ii(†¢íñÄ\n(¢Ä\n(¢êQLñíä@-î¥\0QE\0QE¿(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0døvï>Ë§ó•	˜E\0:ä(†äJZ\0(¢ä\0(¢ä\0J(¢Ä—KI@R–QE\0QE\0QE\0QE\0QE\0QöJ(\0¢ä(QIE\n(§,s@úT‹µ◊Ü©≥ís@\\t≤\'öÄıŒiƒ‘n·M2@í3Lf&êπ&õÕ\0.i	†”i\\“d““PKIK@	E-\0RwßKä\0m%;åP\0isMó\0ÏäLIFE\0. M¥ª©7PqAß‰R(¥¥Qä\0J)ÿò†\0QIJ\r\0-%/ZJ\0wZtM±¡ÌQ“©ÊÄ5 ìv0j⁄±¨õrCékQÂ§∞≠ëKQ!≈Hh¥QE0ä)(¥QE\n(¢Ä\n(¢êQ@E%¿Z)(†¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä)\0…~Ì*˝—I/›°>Ì0EPIE/z\0(¢ä\0J)i(\0¢ä(\0¢ä(\0¢äZ\0J(¢Ä\n(¢Ä\n(¢Ä\n)(†§¢äQE\0QI@ÇåQQ….—Ô@wU&©M>ÏÅ“ô4§∑ZÄ∑•16)=ÕFœÈA<Td–!˙”	•4ò†¢ó“‚êÊÇ8Õ?†qäEJëRm≈4–ä)h≈\0%¥PFh¢Ä\0ii9¢ÄäJõÅN≈4É@¬ä)(sIE\0∏§Êñóµ\074R‚íÄ\n(¢ÅãIE\0¥RR–\"H€k[V‰Ûö¡≠k˚èAIáR›HÜ°\'Ù84ñäL“–0•§¢ÄäJ(h¢ä\0(¢ä\0(¢äb\n(¢ê-%\0¥QE\0QE0\n(¢êQLä(†ä(†ä(†ä(†K˜hOªDøvÑ˚¢ÄEPEPEPIE\0QE\0R“Q@Q@Q@Q@Q@îPEPEä\0J(§$\n#∞©K&‚qRM!cé’Yàì@õFMF~QHÚÁÓ‘L≈è&ô\"ñ¶ììIö3@Qö@gönM-öbõöC@›ö)/j\03HMö]π†Êé¥Ì¥p(∏•ßdR\Z\0m(4Üó\0fñê\n\\PK÷ä3H\"êØ•;4î\0⁄)H…£i¶0≈&)ÿ≈.⁄AaÜäq8§ –bä^‘¿LRS©vÊê¢úVì¶VÌÓ6G¥ö©J=®¨íg5*»+\\©ÔZPJ¨\0Ô@j_WS™®l\Z∞ØëHcË§ñÅÖQ@IKE\0QE\0QE\0QE\n(¢Ä\nZ(†ä(¶EPEPEPEPEPEP$˚¥\'›¢_ªB}—@¢ä(\0¢ä(\0¢ä(\0¢äJ\0(¢ä\0)i)h(¢ä\0(¢ä\0(¢ä\0(¢ä\0JZ)(QKI@Çíñä%E+`\Zîújïƒ£=(@C,ò™è!~¥˘	5™ Ji94fíêi@œJJQ≈!ài)ƒRPF(•†ëJßbåR*√vìN\nhß@X••ä\\P;\r*H¶˘f§ˆ£≠±ÃQ¥”¬ìO+ä√6„≠!Ú	ÈI±â†v#≈©|íEERT¶<SJ˛T\\9F“S¬zT…nXs≈+Öä‡\Zë\"cV÷¢ûï ±TBE\r	ÌW1F⁄\0§!9§0\ZΩ∂çæ‘û``qäO%Ω+Km!AE≈c4∆GjPß“Æò¡¶¥~‘\\v)Õ!Z≤ÒèJç„≈;ãîÉ¢ûP„4‹bô-\n=	V»4ÄR„Ä±j9≥åö≥∏5öº\Zû6†F¢6Íx™ Tä∏è∏\n\0íäJZ¥îP—E\0QE(¢ñÄñíñÄ\n))h\0¢ä(\0¢ä)ÄQE\0QE\0QE\0QE\0QE\0…~Ì	˜hóÓ–üvÄEPEPEPIKI@Q@IE\0¥îQ@Q@Q@RP1i(¢Ä\n(¢Ä\nJZF!Fh9õjVt≠ñÕMq)cÌUı¶K!Áäà˚–[4î\r%íê≈†R‚ú´ìHi	ä1Rlßydåbãï D(ZóÀ¿ÈMÿs“ï« 4äMΩ™MÜççûî\\v#€Käì 4·\Z„ö.;‚î\n~\0ÈH&ãÄÅi¡\0•TcNh∏Ñ¿£ˇ\0,‘Å\0)\\\04¸SˆÛKä\0èö\\\Zê-8)¢‡W0ÁΩ8DO∞—≤ê»í jB1O€K∂Ä\"¡ßO≈Õ\07\nv(Äbùä1@\r≈S±F(\"¥‹TƒSH†ä\nâìä≤E4ØPÆ:”yeîR¿ßqïrqHx5d. T.Å¡ßp∞OC∂£SÕJGHå\rYG∆*í0´•/∆·áΩ>≥— ∞5y0Õ1¢ä(¥RR–EPEP!h¢ä\0(¢ä`QE \n(¢Ä\n(¢Ä\n(¢Ä\n(¢òQ@Q@ìÓ–ütQ\'›4\'›†QE\0QE\0QE\0RR—@	KE%\0QE\0QE\0QE\0QE\0î¥î(¢ä@î¥î¿QUÆdHÕN«jìY◊d‚Åª˜™Ó‰”‰lT4…ÉKI÷ê¬úàIß\"–Uîãi6RD\"3«*≈«50Ojv*nYﬂjxZx∏§20£ΩIä6–[9•€Rbç¥\\—≤•≈†dB:r®?m8%óm?m8-\0G∂çπ©B—∂Ä#Ÿ@JóbòN≈.)GZ\0LQN≈†≈•¢Äm•≈.(ªh≈:ä\0LQäZ(1≈4”È\r äi!¶ë@»ÒAßR5\0FG4“µ%!†Dx‚öÎ∏\ZìÑSì)SOG…¡©§L©™|ÜÙ¶K-cöëµ@íe@=iƒû‘≤jXe⁄qUëÚºıß)¡†Fê9R‘>x5=0\nZJ(h§¢Ää(†ä(†B—E\0QE\0QE\0QE\0QE¿(¢ä\0(¢ä\0(¢ä@2O∏hOªK\'‹4ÿœÀL—E\0QE\0QE%\0-RP“QK@	E-%\0-%PEPEî\0QE(¢íÅPxäw\n§Vc∑ÃI´7Rı™˘4…c\\‰”)hÔ@Ü”„BOL“*Ó5r(¬è≠Ke§:4⁄*@(ñ§∞R—@¿S©)i\0QKK@\r≈ßQå–qJû\0•†b\0-∏†≈.)qE1(≈-\0bä(†≈.(¢ÄQäZ(\0¢ä\\–QE\0QE\0QE\0SM:ê–M&)qIHcqM\"ûi(ò≈#S®4zZZ(ÑUy@9‚¨ïÉè•4\"®85(läàäE85DlL	)Î\'<‘y§†~7<Wcm¬≤°~’z›Œphjä(†aKIE\0-QLä)i(¢ä`QE\0RR–ER\0¢ä)ÄQEÄ(¢ä`QE\02O∫i#˚¥È>È§èÓä\0uQ@Q@Q@%¥\0îQE\0QK@	EPEPEî(£Ω\0RR“Pöäw⁄Ü•™7L[Å@%%‹ú‘*|mZÑÚií0“w©6Û÷û±ÉH∞\'9«mG‘P\0≈IRZBR‚äQH∞≈¥R\0¢äZ\0(¢ñÄKIK@\0•¢ñÅÖñä\0Z(¢ÅQL4QE\0-Q@bä\0)i)h\0¢ä(î¥RP0•§¢Ä\n1E%\0!§ßRR‹SHß\ZC@\r≈¥îÄc\nozê”¶u®‰\\äêP‘¢√´S&rjµR&HU<SÒQt©ïÅ¶@)¡‚≠ƒ„<UB9ßBÂO4ÿç≤¥˙≠nŸjÕ\n(¢ÅãE%-\0QE0\n(¢Å-%-\0%¥R\0¢ä(\0¢ä(\0¢ä)ÄQEÄ(¢ä`2O∫hèÓ—\'‹4â˜hÙî¥PEPIKI@-PQE\0QE\0QE(¢ä\'z)i(\0§=)h†bQE\0ç“®Ly´S…Åå’…jD«5ÎOr˜¶M\0*ÇOµXE≈1pH¢•çîÏSE:ëH)hPP∏•¢ä@¥Q@¬ñäZQK@¿R“Rä\0Z(¢ÄäJZQE\0QE0ä(†ä(†¢íä\0Z(¢Å%-J(§†ä)(QE% —äZ(¥î„M4ÄB)§SÈ¶Ä#∆(ßöLS6Z©*·™È´ë”ÅM òß)≈.(#\"®ÜâTÜÙ“9¶)⁄j\\dfÅ≠_†´˝´*⁄„ÎZã“ÄC®§•†aKIK@Q@-%(¢ä`-îRh§¢Ää)(h§•†ä(†ä(†c$˚¥\'›¢AÚ\ZD˚¥ƒ>ä(†aIKE\n(¢ÅÖ%-%\n(¢Äíä(\0¢ä(\0¢íäQE\0RQ@#“‘3æ(¥œπ™ºè∞tÊ§=y™í6Á†Bd≥i¿‚êt†ph%Nje®‘f§%èÍAKH§(•§¥Ü(•íñÄåQK@¬ä(†ñíä\0Z))hiE&hÕ\0-R–EP ¢äZ`QE\0bä(\0¢ä(\0¢ä(\0¢ä(\0¢äJ\0(†öo4Z))E Pii3@\r4Üúi¶Ä\Zh\"ñê“¥¥\n†ëLe»©\r4Ù™F@UΩ©EM*f†ôs»•SÅäê\0¬£a∂òò‡y´n€¢±ÛW¥˘67J	ÍhQIEEP—E\0QE(¢äQE0\n(¢êQ@Ö¢íñÄ\n(¢Ä\n(¢òìÓ\ZD˚¥È>·¶ß›†—E%\0-Q@%PEPEPEPIKI@Q@%-%\0QEû*úØíjÃ≠Ö™Ly&ÅÃ‰µ9•êñzJ!4Â‰”;”‘P∆âí•SQ/•JIc≈8S8R\Zñíñê≈¥—N†•§•†aEË†ä(†ñä(\0•¢ä¥Q@ES\0•¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0))i(\0¢äJQE íä(\r&)i(§≈-\0⁄)i(¨)Ü§=*2)âëI“´ìV%Â*ß≠Q,ùäécÕ1[á;π†Å°∞jÕúòîgΩTÎV-Ne°à‹SëöZé>ü@≈¢ä(R“Q@E%-\0QE\0QE\0QE\0QE\0R—LAEPQKE \'‹4â˜id˚¶ë>Ì0KIGz\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0JZ)(\0¢ä((¢äC\nJZC“òßnqU$l)´2ûMSî‰‚Å2.º”OZq√LAO\Zhˆ•EH—:‡T†Ê°NEL£ã)¬ê\n\\RR“R“π•¶“ä\0u-%\0¥QE\n(¢ÅEPäZJZ`QK@Q@EPEP •¢ä\0J(•†¢äZ\0J)h†¢ñì\0îR“P1)h§†§¢É@	IEÜ%Q@	GjBhÄ‘ly©MF‚ÅK»5P’∑ pjõı´D13Kû)ô£4(©≠[äÇ•Ä‚@h`o! ÉN¶E˜?-%-\n(¢Ä\nZJZ\0(¢ä\0(¢ä\0(¢ä\0)i(¶ •§•†íñä\0(§¢ê\rìÓ“\'JY>È§Nî¿uQ@Q@Q@Qö\0(¢ä\0(¢íÄíñíÄ\n))h(¢ä÷ÈKMsÚ–)O5UèÕV§Íjπ^ií»ÿf£\'ötüzôä9N)AÊõärrE!¢xÍp8®–RäÉAih¢ÅÖ-RRäJQ@£4Q@EPKIA4¿Z)π•Õ\0:ÅIö\\–—IFh‘SA•Õ\0:äJZQE\0QE\0PhÕ\0-î¥¿(§Õ-\0îI@E6ñê¬äJ(\0¢Çi3ö\0)\r-!§QIA†b\Z\n\0)çRw¶ILEé=™ª’õÅ∆j±5Hâ\r§¢ädãNCá—@Î@π>P©jµìfŒjÕ AKIK@¬ä(†ä)h)h¢Ä\n(¢Ä\n(¢Ä\n(¢ÅIE-\0QE\0QE\02O∫i#˚¥È>È¶«˜iÄÍ(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(§†§¢äQE\nJZJ\0(¢ê–MªN§4°(Ê°<V&ÎP7Jd≤Êõä{”im=4√Oàsö—j:êSS•<T\Z!hÕP0ÕÕä\0QN¶ä	†—öfÍ	§1˘£4Õ¯§/L	3I«≠D_‘”|¡Î@âÚ(ÕW2Åﬁè:Åñ)sUº˛@ß	AÔ@3ED$ßn†	2)sQÜÕ8\Z\0}-74π†•¶Êå–®§Õ(£4÷lP1‘Ö™&ì“£ﬁh∆ÍUb∆úØÎ@$–Z°yï5V[≤NÄ/Ó•Õfãô1Õ*ﬁ~niÿ\r‘o™Î:∏4H	Y˘†8®≥E\0X¥π´ußÆhZm“Rh§•†b”\\dR–y•p0µL’€°Ö™F≠!ZJQ¡‰dRS$)i)¿P#^√˝X´ïF¡∏ÊØÊê–R“Q@≈¢ä(\0•§•†äJZ\0(¢ä\0(¢ä-îP“QE\0-RP—E¿lüt”c˚¥È>È¶«˜h‘R“PEPEPEPE%\0QE\0QE\0îQA≈\0QE\0%!•¢ÅîÓö¨›*Â≈RîÒA,Ñäi=iÊòz–!µ,gëQˆ©\"ÎIç”•>öù)ı&à(¢ä%-P≈4ö*6sÿPÖ±H^¢,I¶≥Ä:–Ü@;”ZuÍª14⁄´íI¡»®˜˜¶F(&„∑ﬁè0éÙ :–$öz>\rCN^;R\Zlµ∏„=Ítî2\0z’55\"ì⁄ëEï4j`j@iî\ZuD\Z§Ä@ÈIö3ä`:å“≈–Pπ©Z¢oz\0èumÊîÒHµ‚ëè±\0ÅLL@<\ZÉ4‚¥ò™%‹icIJiéGJû+éƒT\0RÅäç!∆E;E$d˙TÈ98§≤nî°π¶áî@)Õ)®Åßfê¢ì4¢Ä\n\r®4VÈ~Z†kFË≈g5Z&Ch¢ñô\0)¿R\nëN(4¨Ü\0´∏™ñÉÅäπHRäJZ\n\n(¢Ä\n(¢Ä\nZJZ\0(¢äQE\0QE\0QE\0R“S\0¢ñä\0düp“G˜i“}”Mè•\0>íä(\0¢ä(\0¢åQ@Q@ƒ¢ñíÅQ@Q@%-%\0QEíñíÄ ∏JJø:Òö†„ìM	ët¶\Zïá‡ÛA#*X~˜®çK^:‘±¢‚Ù•§)’&à))i(SY∏4¶òhÉ9¶úäíÇπQûjs4¬Ø4Ó|qIåT€7:SíﬂûM∫Ù†ÉWD(ÚW–Qp±GmÔWÃGJå€é‘\\,äîı5#¿GJf“Ω®á™Êüé*5$T¿‰R(50<Tbû)ëM<\Zà\Zx4 4¢ö\r8P±HE(†”Ü£aRöiÄàäißöCL S\nf¶∆iqÅ@⁄öO ˙\Z∑@†\n¢‘ö> ﬁït\Zp≈3ö›◊†8®»#®≠|äkƒè…å¡RÈOöÿ« åäç_ç %\\äëiàA©\0ÅéÒQ‚ú3LC©‘¿iŸ§“–(†g˚Ü≤ÿbµn>·¨∂ÎTâê QED\n*X∫‘Bßà–K4≠j›UµÈV©ÇñíñÅÖQ@EPQKE\0QE\0QE\n(¢Ä\n(¢Ä\n)h†¢ñä`5˛È¶«˜iœ˜M6?ª@¢ÉE\0QE\0QE\0QE\0RR–QE\0QE\0RR“PEP0§¢ä\0änïAæ˘≠	æÌP?zÅ1ép8®\rK\'Zå˚”$a©`Í*#RDyò—usäZDÈKPhÉµQ@∆ön*J1@ùäv†7|Á⁄ü&OÑ\\P1Pû)¿\02«ó)‡Ó°!6Iå”ÇúU\'øs¬®ﬂ∂ÀåqN¬∫/Ì4ä§ó≤é∏4ıΩ¸Î≈ñ∆L”ƒà„ —H§ Ì)c≠DÈéE 5 5\nûjPs@ı¶)ßä\0xßÅMZp††““\Z`6öi∆öi\0¬)1JM¿Nî“iZõ@√bödUÍj¥óMªÂ‡PêûÖ–*EAé¢≤\Zi[´úR	$á4ÏG1≥≥9†©íó3°·Œ=*ƒzåô√ÄG“ã1t˙U. ∆YG’:\\$£–”õyëiîap5mpjáë“¶è Rc$Ç(•≈Õ8QF(‘P\0…Üc5í‰n=kZOπYrò˝jë2ÿéä(™ r‘—rjSEç¬ÇY´j8Œ*≈Co˜MH§¥î¥(¢ä\0)h¢Ä\n(¢ÅQ@Q@Q@QLä)i\0QIE\0#˝”MèÓ”üÓ”c˚¥¿q¢ÉE\0QE\0QE\0QE\0QI@IE\0QE\0RQE\0QE\0%¥ò†cdZ¢„Ê≠“® >j Æ9®õ“ßqP0¶HﬁÙ¯¯pi¥´Äy§∆ãÎ“ñöÑ„•>†—	E-)i)h)	ßSOàéiÃÍãú”ÛQ∫ –rI$ƒ„ zS\Z2âÛqWbEU‰sD—áJw$Õ\"äy^)ïDE∞r‘ÆøÀ“°jX◊s\0)	à\\\0S∑4,ƒ6◊‡’¯∆’\0‘7Î.våZFàj∞\"Ü™ˇ\0ºà·™¬8u%ëäU4˜S≠\0Jµ\"‘k≈<\Z≠<S8P©\r-%0\ZiÜúi)\0‹d–F)‚ëÖ0\"#äÜGÄy©ôI*5ÑÁö\0àDŒ2zUWÂà=´`\0f‹¶Ÿè—/RΩI–ﬂ7Ja⁄£6â$*\\ÌÈO∑å>E@2MiZC∂2OzLh¨ˆÓárÙ©†üx⁄›EY`1äÑD£ë÷•ö\"Lfî\ZE©\0§1h¢ñÄäZ(†ä(†»CYé\'ä”|Ì5ô¸Mö§LàOZ)XsIT@·RG˜™!OSÛPK6≠~ÂOPZˇ\0´ß§Rä(†aEPKE\0QE\0QE\0QE(¢äQE\0¥QLAERØ˜M6/ªN∫i±}⁄`>ê““Pﬁä(†ä(†ä(†íñä\0J)h†¢ä(\0§•¢ê%PIKIL`zU9áÃjÂVúrh£äÆ˝jÀäÅóìLëò•\\fäA˜©z#ï”Í8FTµà(≈-LQKE\0!4√Õ<äM¥ÜFEÚ)1@&8•¢òd∑pŸ^EB—>zVê$RìÌN‰¥gGm#ïzﬁèñ‰‘Åˇ\0\n3Hœœôøö)\ràÂÕGÇßä±≈îè≠7<SÈ\r SÖ4S÷Ä$QOò¥¸–“R“\Z`4“RöJC\0(4¢ùäDNGûjv¢8¶0£πáŒPWÔ\nìäPqE≈c1·pq¥“,O›5©∏Êóq4ÓKE8¨é‡XÒWN\0⁄¥£ß4⁄@ê”Iäu(“,EZv)‚åPqKä\\Qä7Sà§†§ßR\Z\0dáMf1√+JO∏pk-èÃ~µHOaç÷íùIä£0Õ>5,¿S*≈∞Õ&5Ì◊l`Tµ‰©hÖ¢éÙPE-\0QE\0QE\0QE\0QE\0QE\0QE\0¥îQ@Ö¢íä#˝”Mè•9˛È¶«“òá\Z)i(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢äJ\0(¢äQE\0%¥îÄ))h¶Uyœ5aèV^¥ÜVnµu5aÖB„öwàà‚öøxfûi£®§¿ª›©j8á»*JíÇóQ@√R—HbbåS®†L\"¶§#4¿ÜîS “@	öZLR–¯Q@4¥ÄL—Kä(¥RöJ`6äSE û£Ω7Ò@«≠<S<P!qHih4¿e¶õHb“Êíä\0F\\‘,´ÑL\nÙ·Ohájn¬)\0S∏¶Ö4†P!sE(‡¢ÄäpÌ¢ú\0 ∏•≈¿LQKI@i)M%!âIKI@ÜøCö ïv±≈j∑›¨Ÿ◊}Íê•±:ê\nzåˆ¶BWÄ\'•Z∑…≈@GÕåUËìjRl§µ-[ö±U°<’ö0•¢ädÖ¥PEPEPEPEPEPEP •¢íÄä(¶_Óöl_vúˇ\0t”cÈ@§•§†ä(†ä(†å—E\0QE\0îQ@Q@¬ä(§IKE\0%Q@s≈UrI´û*©94ÑÔMê\Zv)H»§6ÎHÃ*Iéî‘ˇ\0X3LL∫ù)ÙƒÈO©)îΩ®iqH)E!Ö.(•†≈•¢ò	F)qF(6äM¢ùE\07¥Ph)\r-%\04“S®≈ IJi1@¿”¿¶é)¬Ä)‘¡O\0¥ÜñíòÑ§≈-%!Ü)qIJ(\0≈¥bòÄ\nLSÖ\0ò£Í(ªE.)h†≈.)h†ä)(QE%\nLR“v§i)qI@\r~ïõ0˘Õi∑CY“ÅÊS@ˆ!ö≥}I»”\'ö∑·zPÿ¢à\nfE‚≠0∆1BßÕìO~úR∞u´\"™ƒy´C•R&B—E…ä(†ä(†ä(†ä(†ä(†ä(†ñíä-Q@îP1Óöl})œ˜M6?ªLCÈ)i(\04QE\0QE\0QE\0QE\0QI@¬ä(†AEP0§•§†ä\rÄÜj´ﬁ¨Œx\"´w§Z\09ßˆ¶äZ@G,yÈP*ü0U≤2)õ0h$^î˙jÙßfÅÖî¥Ü(•§¥\0¢ùähßS\0¢ä\\Ò@	EPIKE\0\'jJZJ\0JJZ()¶ùL4Äm.))h¥¢õJ(‡”Ö0S≈\0-R“S)(¢êzZJ\\–®§Íbä\\Qä\0(£µ\0R“R– ¢åQ@îPIKI@¬íñê–1¶íúi¥Äk˝”äœQ∫B=ÎDÙ5DÓ«4ƒ∆,x5:\0¢ùÄ)O4ÄozéÙ9Õ˙’•ÈU„azU\"d-QLÄ•¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢äQE\0-%¥\0îR—Lø›4ÿ˙SüÓ”cPÈ)i(\0¢ä(\0¢ä(\0¢ä()h¢Ä\nJZ(RQE\0QE\0QI@QH&ÔUª’ô™∑zL¥(ßbëi‘Ü%R„ä\0““R–Ù¢ä(¢ùMÍ@(4¥⁄\\–®§¢òEPE%-—E)\r\Z!¶\Zy¶\ZBKIN†bRäJZ\0pßä`ßä\0ZCKHiÄîQE \nPÖ8SAß\nbb—E-QE\0QE\0QI@Q@¬íäC@!•¶“RQHh\04-%9h§RÅE(†û¥∆ßµ0ı¶2D©«JÇ1ÕOM!ii(¶H¥QE\0QE\0QE\0QE\0QE\0QE\0¥î¥\0î¥Q@Çä(¶_Óöl})œ˜i±t†“R“PE¥\0î¥îPEv†ä(†•¢íÅãIE\0QEÄ))h¶QEÄÜnµX’©FEUn¥á-)§SCqR1Vî“!‚úh¥¢íñÅfäCîSE(†R“R–⁄ñä)Ä¥QE\0¢ñíÄ\n)i())M4–M4„M4Ü •¶“ÊÅJ ßP1E8S@ß\n`-%;ÜÄEP@¢ä@8bú)¢ùLB““\n)à(•§§EPPii((•§†aIKI@ƒ4î¥îÄCM4¶íÄ4ı¶\ZëzRC\Z@y¶∞‚ò<Ù§h$b•¶®¿ßSFl)i(¶ •¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0ZJZ(îR—@ﬂt”#ÈNªMé®“R“R\0¢ä(\0¢ä(QE(¢ä\0))h†¢ä(\0¢ä(\0¢ä((¢äC\Z„ä®„ö∫FEVò`–R\"5(§5%)‡‰S)A≈\08—E-∏¢ä@ñÅERäJZ\0ZPi)hsE%¿Z(¢Äíä\r\0!¶öSHh§”M)4⁄CEw†û\r0S≈\0-8R\np¿Z(¢Å\r\"íúi¥(¢ä\0pß\nb”¡†B—IK@Çä(¶ER\0§4Q@%-Jißböi)\rÜÄöJZJ%HΩ*:xÈ@=)ΩËÊäcÙ•AìM5$Cö…áJ(¢®Ã(¢ä\0)i)h\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(¥QE0\n(¢Ä\Zﬂvõzs˝”MèΩ0IKIHä(†§¢ñÄäµ\0QE\0RR—@	EPE\ZC\n(¢Å%-%1ÖG2‰f§§aëHhßå\Z1Nn\r(§ #\"Ä*B¥ù)J(•†BR—E\0R—H¢êR–1E-%-\0¥Çä`.hÕ%- –M%ò¶ö\r4–IA†P–ii\r!Üi iò4äL)’\Zö\\”%–‘†–!M0”â¶h\0•§•§1GZu0i‚òÉ&ñõE\0>änhÕE&h†ä(†bQE\0RIûi)Zi•≈!†§4¥îA÷•òÉ&•\0ò£¥î¿n*X∆Gﬁ¶^î…c®¢ädÖR–IE\0¥QE\0QE\0QE\0QE\0QK@	KIK@Çä(†ä(†∑Jl}ÈÕ˜M6:†h•§§EPEPEPEPEî\0QGz;PEPEPERîQE\0Wïy¶-Xu»®i”N=)¥Ü!¢É@†b–(†P!h¢ä@¥î¥¿Z))sHb—IK@Q@!†“P\0iî˙i†¥Ji¶òÕWûÔa⁄£&íG;p*´/$ö÷ÑÀ|Ÿ˘óäµã*‰¬≥JÊ§åòŒE6N¶Ä$S¡ÕAõ‘g≠<\ZC%ó54n†	I‚´Mv±úò“ª0\rV6˘ÊÅè[“[ÊZ∂ÆUò<äû#«Æ•‰”≈21≈ILAIKE\0%bä\0QKIK@%P\0i)i\r!âIKI@!•§4JCJi(»)Ù‘ßS\0¢íñÄFZ¶¶ ß”!ÖQLAE¥\0îQE\0-î¥\0QE\0QE\0QE\0R“Q@Ö¢ä(\0¢ä(\0¢ä(Óöd}ÈÌ˜MG0E-\0îQK@	EPEPEPIKI@Q@Q@Q@Q@	EP0Í*&5-#äC ¶ëR2IÉéî¨;ë5ûS=)Y6äC∏ ))hh§¢Ää(§—IK@≈¢íñÄ—E†¢ñê–M4¥Ñ–M1©ÊòiÅ\nÖ™iUÀd—a‹z*˜• fò§ûî¸–åØ5 ì#5ﬁßÒﬁÅM<H†\nwÄó#7<SK@\n—ñ=jxëTUa!ÕOÉﬁê•Õ0\Zp4¿uî¥\0RR—@	KIE íä(\0§•§†íñê–\Z(§†íñïMqOÕ9ì∏¶Ú)Ö¬úß&ê)5\"&168t•¢ädÖQ@E%-\0QE\0QE\0QE\0QE\0QE\0QEä(†ä(†ä(†∫j8ÍGÈLNµ@:äZJ@-%PEPEPEî\0¥îQ@R–QE\0QE\0QE\0QEJ(¢ê&-\0òå2)‘\ZV#î˘84√IåJ(¢ê¬ä(§äZJ3@EîQGjJB‘\0π¢õöB‘¿vi	¬‘¬‘\0˜êP4ß9°œ‘,˘È@«=È1Jhœl”)¡•Œiô©÷ÅèN<=3t§Ÿ¿iûa®Y˜jzé(DjV<Tbîö\0`ljD}≠ëL E4u†\rÂ*@’B6€Ù´*‚êÓßf°›FÍ`N\r®ÉSÉfÄE4\Z3HQIE\0-%ì4\0\ZJ(†íñä\0Jí!L©£ÈM«—∂ä*â\0\0•¢ä\0(¢ä\0(¢ä\0Z))h\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(R“QL¢ä)\0QE\0QE\0è˜M2>Ù˜˚¶£Nµ@>ä(ÌHä(†ä(†ä(†•¢ä\0J)i(\0¢ä(\0¢ä(\0¢ä(\0¢ä((¢ä@QE1ÖË¢Ä\n(¢êH*2*gÈQ\Z6íùIRPîQE\0-§•§fä\r&h\Zi†∂)ô&ÅÕ1õë€*2I¶ãÒQâ2i≤6⁄béhŒs≈3Ú9¶ëÕ0ütìI⁄úxAäER\"ÆMLÇ£Cœ52/°Ä`fõ N)ÙåF‹R®‰‘‡|¥Õ∏ß•0\08¶>3≈HN*˚‘!ãöQÀP∏≈p(˙iär(≈-nÓ(.j\nì4ÄîI≈(|TîsHA¡ßö¨5*z`M@§Õ.h\0¢å“P“QE\0%-¥LsS∆>ZÑrjuSD±ii)jÑQE\0QK@Q@Q@Q@Q@Q@Q@Q@E%-\0%Q@Çñíä\0Z(¢Åàﬂv£OJë˛È®“òá–h¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\nJZ(\0¢íä\0ZJ(†ä(†ä(†bR—Eñä((•§†aEPER¨8®MNzT-÷Å°¶íñê‘å))i(v•îR\04∆4Ê®ú–1¨iè!A”≠$¨ 3ÉPÓ\'≠;ò6Â…•®YŒ1NÂ†IÀP†“„&ûx(6»ßQÚO5 ¿wböxÈJ´A“IªåSq≈3<–Ÿ1M\rÚ˙”:µ.\r¨\r<T9‚•@qC74◊Êîı•ˆ†®≈4íMLG™ÇÄÉåPF>ï&Œxßm»¡§)ßÖ\0SM\07≠(˘iTsHÙÜ©Í›\rC⁄ïXÁƒ]G»©*º]j|`Ri(¢òQ@-P®ÀT‚¢è≠KTàaKEƒQE\0¥î¥\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0¥îQ@EP ¢ä)Ä◊˚¶òï#}”QßZ\0}Q@î¥\0QE\0RR—@	EPEPEPEPEPEPF(¢ÅÖ%-%\0QE\0QE\0éjZdù)à”{“—äCê“—HbQE\0÷®\\ëSûj4\0«ì1@ÈUMXe®ˆS¿2i‚êåSM,¶ﬁÙÚïGêr\r9eë{ÁÎEÑ[\n1J@™À;wÔ?=®∞…J”J“	á9¢@h‹Rßn_Z]¬Åà\nx∆1M›J\r!ä®3úsJVê\Zvhœ,\ZPÄRÓÊÇ«#Ä\r¢é)∏êûèZ<©:bÄ∏Rá\\‡ê)Ü&≈4€ü∆Ä±3Hä:äÆ◊1¿•ÃO4¢Ã—†µ\Zíz‘ÖÛQò]I»ß4¥\0Õ¸ö≈0≈\0Xå¸’c<S\"åußëäHä)iÄQEÄKä(¶\"H≈ILNî˙hë)ESQE-\0QE\0QE\0QE\0QE\0QE\0QE\n(¢ÅÖQ@Q@-%\0¥QE1bä@#}”QßZëæÈ®”≠P¢ä)\0QE\0QE\0RQK@	EP“R“PEPEPER\0¢ä)ÄQEÄ(¢äc\nJZJ\03EPH¸äZ\r +öJ{å\Ze&Pîî¥Rîî\Z(\0¶≤ÊüIä\0ÄÆ)°y©ÿS1@≤g4ﬂ*¨Õ&⁄.2”«kbêº≤Jpé≠îﬂ.ò ¡	ÌOÚ™p∏£ä\0É»„ —‰øj≥J8†e_)Ò“êG&zUº”Ä†.WπärBŸÊß•Å¨CΩ?`©¸\n\r0#8§ßëIä@0äP)·i@†ä\r:êä\0a¶l©Ä£ÄÆ…ö|q‚•¿•§!Gíä3L¥Qä\0(R–⁄Å÷ärií…qN§•™$(¢ñÄ\n))h\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ñä\0J)i(\0¢ä(\0•¢äb\n(¢Ä\n(¢ÄæÈ®”Ø·R7›5\Zı†—E\0QE\0QE\0RR“P“QE\0-%P“QE\0QE\0QE\0v†—@Q@Q@%P0¢ä(\0†ÄHˆ¢ä@2E»ÕCV\"¢e≈dtQEIAIKI@QH4‹S©)Ä‹QÉN≈&hî¥QHåQE0Rbñêö\01Õ-&h‹(·J)°á≠á≠\0?4\nLäB‡fÄ%£°ﬁ=iCÛ@ëIM›ëKö\0uÄÒK@¥îÑî¥PEP@¢îP—E\0îQE\nö1∆j$58‡U\"X¥QE1Q@E%-\0QE\0QE\0QE\0QE\0¥îPEP—E\0RQE\0QK@Çä(†ä(¶E¢êˇ\0t‘k÷§o∫j$ÎL	;—E%\0-Q@Q@v¢Ä\n(¢Ä\nJZJ\0ZJ(†ä(†ä(†ä(†ä(†aIE/z%-RîQE0\n(ÈE\0å2)h§f4ï4ãöÑ“()(¢ê¬íóî\0QE\0Rbñä\0J(•§0¶öu¶)1N+Iä\0i“3R`RbÄ#eÕ3÷ß«4“¥\0œòÙ†!ÔRä^¥\0’ßQJ\0(ß–\0ß‡Ri‘bä\0)h£\0RR—@	EPäQH)h\0¢äL–\0h¢ù…¶K$E¿ß–:QLê¢ä)ÄR“R–EPEPEPEPEPEPEPEPKIK@Q@ÇäJZ\0(§¢Ää(†∫j5ÎR?›5\Zı@>ä(§EPEPE%\0QE\0¥RQ@IGz(\0¢ä(\0¢ä)\0QE¿(¢é‘\0QE\0QE\0RR“P0=(Rt4\0¥QE ∫Us÷¨¡™Ì¡§4%fäE%-\'j\0J1E\0î¥Q@(¢ñêƒ≈•¢Äµ!ÏQä\0f(ß‚êèj`0—ä~⁄6ö@3∏4¥Ì¥ƒG¥–‘∏£h·JóÄm-.(≈\0QI@(¢ä\01F(¢ÄKIK@%îZí>µ©R®Líä(…\n(•†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†§¢äR“P“QK@	KIE\0QE\0\r˜MFΩEHﬂt‘k˜ÖP¢íñêË¢Ä\n(¢ÅÖQ@	E-J)i(\0¢ä(\0¢ä(\0†sE®\0¢ä(\0¢ä(\0§¢ñÄ—E%íä(\0¢ä(\0¢ä)\0\ZØ\'Z±PH9†héñíäíÖ¢íñÄ“RöJ\0(¢ñÄQE\0R“RÊÄ\nZJ§±IKö)å-%8P ≈ßQ@\r≈.)h†¢ñä\0)(§†`M!¢ä\0(¢äB\n(¢Ä\n(§¶– ‡(@©£©òòÍZ(ÌLê•§•†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†¢íä-Q@%-\0îQEä(†B7›5\Zı#}”QØQL—E\0QEË\0¢ä(\0¢ä(\0¢äJ\0Z(¢Ä\nJZJ\0(¢ä\0(¢ä\0(¢ä@QE0\n(¢Ä\n(¢ê	A4¥S(•§†aö(•§T2T’Éöà©)M%IAE%-\0-%-JJZJ\0QE%†¢ê\Z3@≈•¶˜•†ßS3Kö\0pßLñÄëE4\Z\\–®§Õ&h‘îfêö\0	§§&ä\0\\—IE íä(\0¢äJ`.h§•\0¢îRbîP©Ë8¶TãLñ:ä(¶ •§•†äJZ\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0Z)(†AE-\0îQE\0-%¥J)h†o∫j5Í*F∆”Qèº*Ñ>ä(§Gz(†ä(†ä(†äJZ\0J)h†•¢ä\0J)i(\0¢ä(\0¢ä(\0¢ä(\0≈Q@Q@	Fy•¢ê%SQEÄ1Q…RS$†hÑ”M8”MIA@§¢Äñíä\0)•¢Å\r¢ñíÄ\nZJ(h§£4u\'zL“É@\n)sIK@Fi3FhŸ£4‹“\n\0~h&õE\0--6ñêES\0§•§Î@Çñä(RäAKH•î¢òR-GR/Jbc®¢ädÖR–EPEPEPEPEPEPEPEPEPEP“R“PEPE-%\0-Q@ﬂt‘c®©ÓöåuBER\0¢ä(\0¢ä(\0¢íä\0Z))h\0¢äJ\0ZJ(†ä(†ä(†ä(†ä(†ä(†ä(†ä(†¢ñíÅÖQ@1˙SÍ7§à”iÊòjJä1E\nZJ(h¢íÅHh¢ÄíùI@	EbÄ\nQ≈%\0Ï—∫õöL–öBi3FhA•¶Êó4\0Í)(Õ\0;4\nnis@Õ\'ZAK@\n)i-\n(•†¥Q@¬îRRä(©GJãΩJΩ)âãES$ZJZ()i)h\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢äZ\0J(¢Ä\n(§…Õ\0-Q@Q@QLB—EÄG˚¶¢EJﬂt‘cÔ\n†ER\0¢ä(\0¢ä(\0§¢ñÅÖ%-))h†íñíÄ\n(¢Ä\n(¢Ä\n(¢Ä\n(¢Ä\n(¢ÅÖQ@ÜÁ\'È‘ò¡Õ-\0%¥î(¢ä\0*7ÈO¶=!ëMÕ/zJëâEP0¢äJ\0QE%-\0\Z(†¢åRP!sIE%04RR\ZB4qIE\"å“Q@E%.(sKIK@)@¢ú\0 ‡)@•≈ä\\Q@-P0¢äZ\0(Q@ÖjUÈQTÀ“ö%Ö\Z)à)i)h\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0¢ä(\0§œ8•¢Ä\n(¢Ä\n(¢Ä\n(¢ÅE%¿Óöå}Â©Óöåu¿}QHä(†ä(†ä(†äJ(h¢ä\0JZ)(\0¢ä(\0¢ä(\0¢ä\r\0QE \n(¢òQ@Q@¬íñä\0J(¢ê1∆VüH¿ï8Î@ º‰—öÉIöëãIKI@ƒ£4bä\0JZ)(¬ä-\0%%-\0”IN§\"ÄíñíÅ-%-\0QJñî-8-\07‡¥ÏRÅ@	äZZ1@\n(¢ä\0(¢ä¥Q@ÜîPEPÉÕL:T+÷ß—))i)à(¢ñÄ\n(¢Ä\n(¢Ä\n(¢Ä\n(¢ÄÙQE\0QE\0QE\0ÑR—@Q@Q@R–R“Q@Q@Ö¢ä)Äè˜MF:äëæÈ®˚ä\0}Q@Q@Q@	E-%\0-î¥\0RR“P“QE\0bä(\0¢ä(¥îåp9£4Z(¢Ä\n(¢ÅÖQ@Q@Q@	E¥ÄJ)h†\nÛßzÄjÛÆ*î®Q©Z)™r)iQET‰„ííñÄ\nZJZ\0(¢ä%¥Pq@¥¥Än(€OÍ\0`Zv⁄ZZ`&)h•≈\0%8\n\0≈-\0%R–R—Eä(†¢ä(\0¢ä(\0¢äJ\0|cööô‚üTåÿQKIL¢ñíêEPEPEPEPEPEPEPEPEPEPEPE¥J(¢òE%Ü\r˜MD:≠Jﬂt‘c™’}QHä(†ä(†ä(†ä(†íñä\0(¢íÄ\n(£<–0¢äA@Ö<ä@\0•¢Ä\n(¢ÅÖQ@RP—IHM\0.h§ŒiE \nZ(†ñä(*9SpÈRRä\0Ã ´i‡‘◊sê*∫úR(u¥Rî\n(†b—E\0R—E\n(¢Ä\n\\QE .)-R‚íñòä(Õ\0RPhÕ\0QE\0-%PEP—IK⁄Ä\n(§†°FZêöí1ﬁÅ2EÍJZ≤ä(†BbåR—@	E-Ü%bä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\0ÓöàuZïæÈ®«j°¢ä)\0QE\0QE\0QE\0Üä(†ñä(\0§¢ä\0)éOÚiÙáÔfÅä:s÷ä3@†ä\\RP ¢ä\\P1(•≈†£∏§†4∆4Ê5Î@ZíöÉä} Ω-PEPIKE\0#\r√®ÕFÕ_¶Kı˜†h¢)‘÷M(©(ZJZJÈh¢Ä\nZJZQK@	J\r%ä;4π¶ÊñÄ\r;4¡N†£4îP—IE\0-sE\0RQ@E%.h\0¢ñä\0(4RP\0´ìV`SQp*J§àl(¢ädÖQ@Q@Q@Q@	ä)h†¢ñì(¢ä\0(¢ä@QE\0QE\0QE\0QE\0QE\0QE\0QE\0&M¥P\0›\rF:äëæÈ®ˇ\0ªT!ÙQE \n(•†¢ä(\0¢ä()h§†¢íä\0(•£\0îc4ÏQä Z-(≈-%RS®†¢ñä%4”ç4–1Üõ÷üH£äZJ)(•¢Äñä(\0¢ä((•¢Ä+‹Eë∏U^á¥à`’9„¡»R)2*(•§PîQE\0π§•†B—H\r:Ä\n(¢ÄRä)h\nZLR–—E.(îQä(¢ä(†íä(\0•§•†¥ò•†4¯”Ω5W\'•N8—-Ö-UQE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0î¥PQKA\0îQä)(¢ä\0(¢ä\0(¢ä\0(¢ä\0(¢ä\01EP∑CQ·©[°®áj°RR—Híñä\0J(¢Ä\n(¢Ä\n(≈.()qKä(1Kä(†QE\0R—@	E-%\0QE\0QE\0!5SÕ0–1)E%/4x•§^î¥ÜQK@	EP ¢ñíÅÖ¥P!)ÆÅÜ\r:äPë\n\Zh´≥F\\U&OJE&Qö)ANî\n\0ZQIJ(sJ)(†R”Aß\n\0ZL“—@	öp4ò¢ÄäJZî∏¢Ää)h\0•§∏†óΩ%>5…Õl|kÅO§µhÄ¢ä(QE\0QE\0QE\0QE\0QE\0QE\0QE¿(¢ä\0(¢ä\0(¢ä@QE\0î¥PQKI@¥R(¢äR“Pä)h†\0Ù®áQE@IERQE\0Çä(†aEP!E-PEPEPﬁñä)ÄRQE \n(¢Ä\n(¢Ä\n\rPM4—E\nNÊä(ÂÈN¢ä@-%Q–aEP!h¢ä`QE ñä(á•Qü©¢ä—•ı¢äE(¢ä@(ÈJ(¢ê¢ä)Ä¥·EÄu%SM\'z(†¢ä(i(¢Ä\n;QENÌE¿Zô:QEô¢ä*à\n(¢òQHä(†ä(¶EPEPEPEPEPEPER\0§ÔE\0¥QE0\n(¢ê%PEP“QE\0QE\0ˇŸ',NULL,'3100',1,'2016-09-14','2016-09-13 12:18:00',NULL),
(101,'2 OFF','NAVIGATOR','OLEKSII','MAKHANKO','ANDRIY','1','1993-12-21','KHERSON','UKRAINIAN','175','68','26','M','23, DIMITROV STR, APT. 120, KHERSON, UA.','063 370 67 21','1','1','SINGLE','NO','AB498865','KHERSON','2012-12-27','2021-04-18','ET073952','KHERSON','2011-07-04','2021-07-04','1','AVERAGE','KHERSON, ODESSA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2012-04-24','2017-04-24',NULL,NULL,NULL,NULL,NULL,'AT SEA TILL MAR`17   A. APPROVED FOR MV BALTIC SPIRE',NULL,NULL,NULL,'2016-09-13 15:31:26','–Æ–ª—è'),
(102,'CH ENG','FIRST CLASS ENGINEER','GENNADII','PAVLOV','VOLODYMYR','SVETLANA','1963-08-08','UKRAINE','UKRAINIAN','1','1','1','1','48,200 LET KHERSONA STR.,AP.59, KHERSON,UKRAINE','+ 38067 55 16 332','seaprof.info@gmail.com','1','MARRIED','YES','AB 542442','KHERSON','2014-10-21','2019-09-29','EK 226327','KHERSON','2009-05-29','2019-05-29','KHERSON FISH IND SCHOOL','GOOD','KHERSON , ODESSA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-07-28','2018-07-28',NULL,NULL,NULL,NULL,NULL,'AT SEA TILL DEC`16   FROM 09.08.16',NULL,NULL,NULL,'2016-09-19 09:56:40','–Æ–ª—è'),
(103,'2 OFF','DEEP SEA NAVIGATOR','SERGIY','GRYTSENKO','OLEG','LYUDMILA','1964-07-19','UKRAINE','UKRAINIAN','175','81','44','52','26/2, 200 LET KHERSONA STR., APT.101, KHERSON','067 177 36 22, 095 838 61 21','-','crab1991','MARRIED','1','AB 581240','KHERSON','2016-06-24','2021-06-24','EK 243710','KHERSON','2009-06-05','2019-06-05','-','GOOD','KHERSON, UKRAINE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2007-10-01','2014-10-01',NULL,NULL,NULL,NULL,NULL,'AT SEA TILL MAR`17',NULL,NULL,NULL,'2016-09-13 16:43:08','–Æ–ª—è'),
(104,'3 ENG','THIRD-CLASS  ENGINEER','YURII','ZVIER_KOV','BORIS','ALEKSANDRA','1968-06-08','KHERSON','UKRAINIAN','175','78','44','50/52','128 KULIKA STR., APT.12, KHERSON, UKRAINE','+38 050 265 67 21','yuriizvierkov@inbox.ru',NULL,'MARRIED','YES','AB 543701',NULL,NULL,NULL,'EH 740071',NULL,NULL,NULL,'KHERSON SECONDARY MARINE SCHOOL OF FISHING INDUSTR','AVERAGE','KHERSON, ODESSA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AT SEA TILL MAR`17',NULL,NULL,NULL,'2016-09-14 16:14:35','–Æ–ª—è'),
(105,'OS','SECOND CLASS SEAMAN','OLEKSANDR','KARAVASHKIN','OLEKSANDR',NULL,'1987-06-02','KHERSON REGION','UKRAINIAN','178','65','40','50','187A, PEREKOPSKAYA STR., KHERSON, UA','+380939196303, 0666307548',NULL,'karavashkin87','SINGLE','NO','AB552222','KHERSON','2015-05-07','2020-04-21','EK813477','KHERSON','2010-03-03','2020-03-03','SEAFARERS TRAINING CENTRE 2015','FARY','KHERSON , ODESSA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-07-16','2025-07-16','2025-07-14',NULL,NULL,NULL,NULL,'AT SEA TILL MAR`17',NULL,NULL,NULL,'2016-09-14 16:01:34','–Æ–ª—è'),
(106,'CH OFF','DEEP SEA CAPTAIN','YURII','KASSATKIN','PAVEL','MARGARITA','1963-04-08','MONGOLIA','UKRAINIAN',NULL,NULL,NULL,NULL,'64, KOTLYAREVSKOGO STR., KHERSON, UA','067 555 14 73, +380937877360','kassatkin1963@gmail.com',NULL,'married','yes','AB515212','KHERSON','2013-08-12','2018-08-12','EE693433','UKRAINE','2008-11-13','2018-11-13',NULL,'VERY GOOD','KHERSON, ODESSA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2011-08-28','2020-08-28',NULL,NULL,NULL,NULL,NULL,'64451    SAL - 7300 USD  AS CH OFF',NULL,NULL,NULL,'2016-09-14 16:21:10',NULL),
(108,'4 ENG','THIRD CLASS ENGINEER','ANDRIY',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-09-14 16:50:32',NULL),
(109,'CH OFF IN STAR','DEEP SEA NAVIGATOR','YAROSLAV','MAZURKEVYCH',NULL,NULL,'1987-06-24','KHERSON','UKRAINIAN',NULL,NULL,NULL,NULL,'3A, ROZY LUKSEMBURG STR.,APT 1,  KHERSON UA','380994301989','mazurkevych@ukr.net',NULL,NULL,NULL,'AB429659','KHERSON','2009-12-17','2018-09-10','EM048018','KHERSON',NULL,NULL,NULL,'GOOD','KHERSON, ODESSA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-09-13','2016-09-23',NULL,NULL,NULL,NULL,NULL,'WANTS WORK AS CH OFFICER IN START','ANY PROPOSITIONS',1,'2016-09-16','2016-09-15 10:36:31',NULL),
(110,'4 ENG','THIRD CLASS ENGINEER','ANDRIY','GRYNKO','VOLODYMYR','IRINA','1984-11-29','KHERSON','UKRAINIAN','180','70',NULL,NULL,'26B, KRASNOSTUDENCHESKAYA STR., APT.5, KHERDON, UKRAINE','+38 066 663 81 26, 22 07 96','anderson.avg@mail.ru',NULL,'yes','yes','AB419668',NULL,'2009-06-16','2019-06-16','ES 070853',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-09-15 12:26:29',NULL),
(111,'2 ENG','SECOND CLASS ENGINEER','SERHIY','BOTVIN','EVGEN','NADEZHDA','1980-04-09','NIKOLAEV','UKRAINIAN','180','88','42','54','104/145, KOSMONAVTOV STR., NIKOLAEV, UA','099 042 93 75 ,  0512 44 37 19','botvin 2017@mail.ua',NULL,'MARRIED','2','AB 497753','NIKOLAEV',NULL,'2018-12-05','FB694233','NIKOLAEV',NULL,'2025-07-29',NULL,'GOOD','KHERSON, ODESSA','20122192170001','2012-08-14','2017-08-12',NULL,NULL,NULL,NULL,NULL,NULL,'2014-09-12','2018-09-12',NULL,NULL,NULL,NULL,NULL,NULL,'ANY PRS',1,NULL,'2016-09-15 12:05:52',NULL);

/*Table structure for table `documents` */

DROP TABLE IF EXISTS `documents`;

CREATE TABLE `documents` (
  `ID` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `Certificate` char(50) DEFAULT NULL,
  `Number` char(50) DEFAULT NULL,
  `Issuing` char(10) DEFAULT NULL,
  `Validation Date` char(10) DEFAULT NULL,
  `Issuing Place` char(50) DEFAULT NULL COMMENT '–º–µ—Å—Ç–æ –≤—ã–¥–∞—á–∏'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `documents` */

insert  into `documents`(`ID`,`PID`,`Certificate`,`Number`,`Issuing`,`Validation Date`,`Issuing Place`) values 
(1,100,'CERTIFICATE OF COMPETENCY','11627/2015/11','2015-05-14','2020-04-27','KHERSON'),
(2,100,'ENDORSEMENT OF CERTIFICATE','11627/2015/11','2015-05-14','2020-04-27','KHERSON'),
(1,99,'COC','12621/2015/11','2016-07-04','2021-07-01','KHERSON'),
(3,100,'GMDSS (DECK OFF.)','11626/2015/11','2015-05-14','2020-04-27','KHERSON'),
(2,99,'GMDSS','12175/2016/11','2016-06-03','2021-05-30','KHERSON'),
(4,100,'BASIC SAFETY','8667','2015-04-09','2020-04-09','ILLICHEVSK'),
(5,100,'RADAR (DECK OFF.)','589','2015-04-09','2020-04-09','ILLICHEVSK'),
(6,100,'ECDIS','1772','2015-04-09','2020-04-09','ILLICHIVSK'),
(7,100,'BRIDGE TEAM MANAGEMENT','1491','2015-04-09','2020-04-09','ILLICHIVSK'),
(8,100,'DANGEROUS CARGOES','3388','2015-04-09','2020-04-09','ILLICHIVSK'),
(9,100,'MEDICAL CARE ON BOARD SHIP','1074','2015-04-09','2020-04-09','KHERSON'),
(10,100,'ADVANCED FIRE FIGHTING','5404','2015-04-09','2020-04-09','ILLICHIVSK'),
(11,100,'PROFICIENCY IN SURVIVAL CRAFT','6953','2015-04-09','2020-04-09','ILLICHIVSK'),
(12,100,'SHIP SECURITY OFFICER','000231/2014/02','2014-06-25','2019-06-25','KIEV'),
(13,100,'DESIGNATED SECURITY DUTIES','10455/MPS','2014-06-06','2019-06-06','KHERSON'),
(14,100,'SECURITY RELATED TRAINING','9007/MPS','2014-06-06','2019-06-06','KHERSON'),
(15,100,'SAFETY FAMILIARIZATION','8667','2015-04-09','2020-04-09','ILLICHIVSK'),
(3,99,'BASIC SAFETY','36658','2016-04-22','2021-04-22','KHERSON'),
(4,99,'PROFICIENCY IN SURV CRAFT','29108','2016-04-22','2022-04-22','KHERSON'),
(5,99,'MEDICAL FIRST AID','13338','2016-06-03','2021-06-03','KHERSON'),
(6,99,'ADVANCED FIRE FIGHTING','23167','2016-06-22','2021-06-22','KHERSON'),
(7,99,'RADAR, ARPA','2421','2016-06-22','2022-06-22','KHERSON'),
(8,99,'BRIDGE TEAM MNGMNT','2594','2016-04-28','2021-04-28','ILLICHEVSK'),
(9,99,'ECIDIS','7675','2016-04-22','2021-04-22','KHERSON'),
(10,99,'DESIGNATED SECURITY DUTIES','09904/MPS','2014-03-07','2019-03-07','KHERSON'),
(1,101,'COC','11719/2014/11','2014-07-15','2021-06-06','KHERSON'),
(2,101,'GMDSS','11718/2014/11','2014-07-15','2019-04-28','KHERSON'),
(3,101,'BASIC SAFETY','6305','2014-04-11','2019-04-11','KHERSON'),
(4,101,'PROFICIENCY IN SURV CRAFT','5470','2014-04-10','2019-04-10','KHERSON'),
(5,101,'MEDICAL FIRST AID','4706','2014-02-14','2019-02-14','KHERSON'),
(6,101,'ADVANCED FIRE FIGHTING','2231','2014-02-14','2019-02-14','KHERSON'),
(7,101,'RADAR, ARPA','669','2014-03-07','2019-09-07','KHERSON'),
(8,101,'DANGEROUS SUBSTANCES','2355','2014-03-27','2019-03-27','KHERSON'),
(9,101,'BRIDGE RESOURSE MNGMNT','1540','2014-03-21','2019-03-21','KHERSON'),
(10,101,'ECIDIS','4136','2014-05-06','2019-05-06','KHERSON'),
(1,102,'COC','00656/2007/03','2007-06-05','2016-12-31','ILLICHEVSK'),
(2,102,'BASIC SAFETY','22461/2012/42/01','2012-08-08','2017-08-08','NIKOLAEV'),
(3,102,'PROFICIENCY IN SURV CRAFT','19832/2012/42/02','2012-08-08','2017-08-08','NIKOLAEV'),
(4,102,'MEDICAL FIRST AID','07461/2012/42/05','2012-08-08','2017-08-08','NIKOLAEV'),
(5,102,'ADVANCED FIRE FIGHTING','12628/2012/42/04','2012-08-08','2017-08-08','NIKOLAEV'),
(6,102,'DANGEROUS CARGOES','14796/2012/42/20','2012-08-08','2017-08-08','NIKOLAEV'),
(7,102,'DESIGNATED SECURITY DUTIES OF SHIPBOARD PERSONNEL','6576/MPS','2013-11-08','2018-11-08','KHERSON'),
(8,102,'SECURITY-RELATED TRAINING','3810/MPS','2013-11-08','2018-11-08','KHERSON'),
(9,102,'RISK ASSESSMENT','00202/MPS','2015-10-09','2020-10-09','KHERSON'),
(1,103,'COC','15245/2015/11','2015-11-09','2020-10-26','KHERSON'),
(2,103,'GMDSS','15244/2015/11','2015-11-09','2020-10-21','NIKOLAEV'),
(3,103,'ECIDIS','5372','2015-09-30','2020-09-30','KHERSON'),
(4,103,'SHIP SECURITY OFFICER','14295/2015/11','2015-11-09','2020-10-30','KHERSON'),
(5,103,'BASIC SAFETY','26370','2015-09-30','2020-09-30','NIKOLAEV'),
(6,103,'PROFICIENCY IN SURV CRAFT','21448','2015-09-30','2020-09-30','NIKOLAEV'),
(7,103,'MEDICAL CARE','3751','2015-09-30','2020-09-30','NIKOLAEV'),
(8,103,'ADVANCED FIRE FIGHTING','16779','2015-09-30','2020-09-30','NIKOLAEV'),
(9,103,'RADAR','2754','2015-09-30','2020-09-30','NIKOLAEV'),
(10,103,'DANGEROUS SUBTANCES','10562','2015-09-30','2020-09-30','NIKOLAEV'),
(11,103,'ISM CODE','02979/15KH','2015-11-03','2020-11-03','KHERSON'),
(1,105,'COC','10452/2015/11','2015-02-20','2015-02-01','KHERSON'),
(2,105,'BASIC SAFETY','26366','2014-12-03','2019-12-03','ODESSA'),
(3,105,'PROFICIENCY IN SURV CRAFT','20550','2015-01-15','2020-01-15','ODESSA'),
(4,105,'SECURITY AWARENESS TRAINING','25101','2015-01-15','2020-01-15','ODESSA'),
(5,105,'DESIGNATED SECURITY DUTIES','1752MPS','2015-09-11','2020-09-11','KHERSON'),
(1,106,'COC','13349/2014/11','2014-10-10','2019-09-15','KHERSON'),
(2,106,'GMDSS','13348/2014/11','2014-10-10','2019-09-01','KHERSON'),
(3,106,'BASIC SAFETY','17580','2014-07-09','2019-07-09','NIKOLAEV'),
(4,106,'PROFICIENCY IN SURVIVAL CRAFT','14016','2014-07-09','2019-07-09','NIKOLAEV'),
(5,106,'PROFICIENCY IN FAST RESCUE BOATS','119','2014-07-09','2019-07-09','NIKOLAEV'),
(6,106,'MEDICAL CARE','2085','2014-07-09','2019-07-09','NIKOLAEV'),
(7,106,'ADVANCED FIRE FIGHTING','11501','2014-07-09','2019-07-09','NIKOLAEV'),
(8,106,'DANGEROUS SUBSTANCES','8579','2014-07-09','2019-07-09','NIKOLAEV'),
(9,106,'RADAR NAVIGATION','1990','2014-07-09','2019-07-09','NIKOLAEV'),
(10,106,'SHIP SECURITY OFFICER','000782/2014/08','2014-10-24','2019-10-24','NIKOLAEV'),
(11,106,'SHIP SAFETY OFFICER','116/MPS','2013-10-04','2018-10-04','KHERSON'),
(12,106,'BRIDGE TEAM MNGMNT','6073','2014-07-09','2019-07-09','NIKOLAEV'),
(13,106,'ECIDIS','5495','2014-07-09','2019-07-09','NIKOLAEV'),
(1,109,'COC','13476/2016/11','2016-07-28','2021-07-27','KHERSON'),
(2,109,'BASIC SAFETY','36810','2016-06-10','2021-06-10','KHERSON'),
(3,109,'ADVANCED FIRE FIGHTING','6961','2016-06-10','2021-06-10','KHERSON'),
(4,109,'PROFICIENCY IN SURVIVAL CRAFT','29237','2016-06-10','2021-06-10','KHERSON'),
(5,109,'MEDICAL FIRST AID','13335','2016-06-10','2021-06-10','KHERSON'),
(6,109,'GMDSS','13475/2016/11','2016-07-28','2021-07-27','KHERSON'),
(7,109,'RADAR','2438','2016-06-10','2021-06-10','KHERSON'),
(8,109,'SHIP SECURITY OFFICER','13147/2016/11','2016-07-28','2021-07-28','KHERSON'),
(9,109,'DANGEROUS SUBSTANCES','14125','2016-06-10','2021-06-10','KHERSON'),
(10,109,'MEDICAL CARE','4978','2016-06-10','2021-06-10','KHERSON'),
(11,109,'ECIDIS','4956','2014-06-27','2019-06-27','ILLICHIVSK'),
(12,109,'BRIDGE TEAM MNGMNT','4171','2016-06-13','2021-06-13','ILLICIVSK'),
(13,109,'SECURITY AWARENESS','772/13KH','2013-09-09','2018-09-09','KHERSON'),
(1,111,'COC','01598/2013/07','2013-12-27','2018-08-28','NIKOLAEV'),
(2,111,'BASIC SAFETY','25597/2013/07','2013-08-28','2018-08-28','NIKOLAEV'),
(3,111,'MEDICAL FIRST AID','08810/2013/42/05','2013-08-28','2018-08-28','NIKOLAEV'),
(4,111,'ADVANCED FIRE FIGHTING','149051213/42/04','2013-08-28','2018-08-28','NIKOLAEV'),
(5,111,'DANGEROUS SUBSTANCES','17195/2013/42/20','2013-08-28','2018-08-28','NIKOLAEV'),
(6,111,'PROFICIENCY IN SURVIVAL CRAFT','22724/2013/42/02','2013-08-28','2018-08-28','NIKOLAEV'),
(7,111,'BASIC SAFETY','25597/2013/42/01','2013-08-28','2018-08-28','NIKOLAEV');

/*Table structure for table `flagcert` */

DROP TABLE IF EXISTS `flagcert`;

CREATE TABLE `flagcert` (
  `ID` int(10) DEFAULT NULL,
  `PID` int(10) DEFAULT NULL,
  `Flag` char(50) DEFAULT NULL,
  `Type` char(50) DEFAULT NULL,
  `Number` char(50) DEFAULT NULL,
  `Rank` char(50) DEFAULT NULL,
  `Issued` char(10) DEFAULT NULL,
  `Valid` char(10) DEFAULT NULL,
  `National Number` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `flagcert` */

insert  into `flagcert`(`ID`,`PID`,`Flag`,`Type`,`Number`,`Rank`,`Issued`,`Valid`,`National Number`) values 
(1,99,'LIBERIA','SBK','1027142','2 OFF','2012-01-25','2017-01-25','12621/2015/11'),
(2,99,'LIBERIA','ENDORS','911672','2 OFF','2012-01-25','2016-07-06','12621/2015/11'),
(1,105,'M I','SBK','MH445447','OS','2015-12-04','2020-12-03','10452/2015/11'),
(1,111,'MALTA','SBK','81876','2 ENG','2014-03-26','2018-03-26','01598/2013/07');

/*Table structure for table `nextofkin` */

DROP TABLE IF EXISTS `nextofkin`;

CREATE TABLE `nextofkin` (
  `ID` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `Name Surname` char(50) DEFAULT NULL,
  `Relation` char(50) DEFAULT NULL,
  `Occupantion` char(50) DEFAULT NULL,
  `Date of Birth` char(10) DEFAULT NULL,
  `Address` char(50) DEFAULT NULL,
  `Telephone` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `nextofkin` */

insert  into `nextofkin`(`ID`,`PID`,`Name Surname`,`Relation`,`Occupantion`,`Date of Birth`,`Address`,`Telephone`) values 
(1,99,'MARINA LEBID`','WIFE','1','2016-09-01','80, RABOCHAYA STR., APT 29, KHERSON, UA','050 215 49 83'),
(1,101,'NADIYA MAKHANKO','MOTHER','1','2016-09-01','23, DIMITROV STR, APT. 120, KHERSON, UA.','050 607 60 47'),
(1,102,'ELENA PAVLOVA','WIFE','1','2016-09-01','48,200 LET KHERSONA STR.,AP.59, KHERSON,UKRAINE','067 924 93 08'),
(1,103,'VITA GRYTSENKO','WIFE','-','2016-09-01','26/2, 200 LET KHERSONA STR., APT.101, KHERSON','067 182 92 71'),
(1,104,'ELENA NIKOLAEVNA','WIFE','-','2016-09-01','128 KULIKA STR., APT.12, KHERSON','050 70 95 381'),
(1,105,'ALEKSANDR NIKOLAEVYCH','FATHER','-','2016-09-01','THE SAME','1'),
(1,106,'ELENA KASSATKINA','WIFE','-','2016-09-01','THE SAME','0677503708'),
(1,100,'RASTORGUYEVA NATALIA','WIFE','','0001-01-01','','067 551 57 21'),
(1,109,'-','WIFE','-','2016-09-01','THE SAME','050 87560'),
(1,111,'NADEZHDA BOTVINA','MOTHER','-','2016-09-01','THE SAME','1');

/*Table structure for table `previous_ss` */

DROP TABLE IF EXISTS `previous_ss`;

CREATE TABLE `previous_ss` (
  `ID` int(10) DEFAULT NULL,
  `PID` int(10) NOT NULL,
  `Vessel` char(50) DEFAULT NULL,
  `Flag` char(50) DEFAULT NULL,
  `Type` char(50) DEFAULT NULL,
  `DWT` char(50) DEFAULT NULL,
  `GRT` char(50) DEFAULT NULL,
  `ENG` char(50) DEFAULT NULL,
  `AUX` char(50) DEFAULT NULL,
  `HP` char(50) DEFAULT NULL,
  `RANK` char(50) DEFAULT NULL,
  `S-on` char(10) DEFAULT NULL,
  `S-off` char(10) DEFAULT NULL,
  `Owners` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `previous_ss` */

insert  into `previous_ss`(`ID`,`PID`,`Vessel`,`Flag`,`Type`,`DWT`,`GRT`,`ENG`,`AUX`,`HP`,`RANK`,`S-on`,`S-off`,`Owners`) values 
(1,99,'GLOBAL PRINCESS','MALTA','LORO','9302','1','1','1','1','2 OFF','',NULL,NULL),
(2,99,'GLOBAL PROVIDER','MALTA','RORO','6748','1','1','1','1','2 OFF',NULL,NULL,NULL),
(3,99,'GLOBAL PROSPERITY','BAHAMAS','LORO','19605','1','1','1','1','2 OFF',NULL,NULL,NULL),
(4,99,'ST VALENTINA','LIBERIA','GC','10030','1','1','1','1','3 OFF',NULL,NULL,NULL),
(5,99,'NOBLE BREEZE','LIBERIA','CN','10743','1','1','1','1','2 OFF',NULL,NULL,NULL),
(6,99,'ALIA  R','MALTA','BC','28395','1','1','1','1','3 OFF',NULL,NULL,NULL),
(7,99,'ALIA  R','MALTA','BC','28395','1','1','1','1','2 OFF',NULL,NULL,NULL),
(1,101,'SB 401','UA','TUG','528','1','1','1','1','D CAD',NULL,NULL,NULL),
(2,101,'NENA F','CYPRUS','BC','42263','1','1','1','1','D CAD',NULL,NULL,NULL),
(3,101,'AMAZON','BAHAMAS','BC','26096','1','1','1','1','3 OFF',NULL,NULL,NULL),
(1,102,'KAMARI','CYPRYS','BC','75485','-','MAN/17960','-','17960','CH ENG',NULL,NULL,NULL),
(2,102,'KAMARI','CYPRUS','BC','75485','-','MAN','-','17960','CH ENG',NULL,NULL,NULL),
(3,102,'NONI','BAHAMAS','BC','46645','-','B&W','-','8580','CH ENG',NULL,NULL,NULL),
(4,102,'EFFY N','LIMASSOL','BC','41824','-','MAN','-','10550','CH ENG',NULL,NULL,NULL),
(5,102,'TOPAZ','M I','BC','75499','-','B&W','-','8973','CH ENG',NULL,NULL,NULL),
(6,102,'NIKOS N','HONG KONG','BC','53 815','-','B&W','-','9480','CH ENG',NULL,NULL,NULL),
(7,102,'KAMARI','H K','BC','53500','-','MAN','B&W','9480 kw','CH ENG',NULL,NULL,NULL),
(8,102,'TN SUNRISE','M I','BC','60495','-','SZ 6RT','FLEX50D','8370 KW','CH ENG',NULL,NULL,NULL),
(9,102,'PORTLAND','M I','BC','56868','-','MAN','DIESEL','9840','CH ENG',NULL,NULL,NULL),
(1,103,'GETUS STAR','MALTA','BC','33733','-','-','-','-','3 OFF',NULL,NULL,NULL),
(2,103,'CETUS STAR','MALTA','BC','33733','-','-','-','-','2 OFF',NULL,NULL,NULL),
(3,103,'ISLAND RANGER','BAHAMAS','BC','43108','-','-','-','-','2 OFF',NULL,NULL,NULL),
(4,103,'GREEN SEASON','PAN','Wood Chips Carrie','46864','-','-','-','-','2 OFF',NULL,NULL,NULL),
(5,103,'GREEN SEASON','PAN','Wood Chips Carrie','46864','-','-','-','-','2 OFF',NULL,NULL,NULL),
(6,103,'ALIA R','MALTA','BC','28395','-','-','-','-','2 OFF',NULL,NULL,NULL),
(1,105,'ALEKSANDR ZHYTNIK','UA','DC','993','-','-','-','-','D CAD',NULL,NULL,NULL),
(2,105,'SAKURA','M I','BC','61000','-','-','-','-','OS',NULL,NULL,NULL),
(1,100,'MSC MALAWI','','CN','7475','','','','','3 OFF',NULL,NULL,NULL),
(2,100,'MSC CORSICA','','CN','27631','','','','','3 OFF',NULL,NULL,NULL),
(3,100,'SEA LEADER','GIBR','CN','20892','','','','','3 OFF',NULL,NULL,NULL),
(4,100,'SEA LEADER','','CN','','','','','','3 OFF',NULL,NULL,NULL),
(5,100,'ZIM AMERICA','MAL','CN','47230','','','','','3 OFF',NULL,NULL,NULL),
(6,100,'SARONIKOS BRIDGE/VSL CHANGED MNGMNT','MI','CN','44000','','','','','3 OFF',NULL,NULL,NULL),
(7,100,'TIGER BREEZE','ISLE OF MAN','CN','30300','','','','','3 OFF',NULL,NULL,NULL),
(8,100,'MSC LEADER','GIBR','CN','20892','','','','','3 OFF',NULL,NULL,NULL),
(1,106,'TANDARD VIGOR','-','BC','64120','-','-','-','-','CH OFF',NULL,NULL,NULL),
(9,100,'TRANSOSPREY','GIBR','BC','21500','','','','','3 OFF',NULL,NULL,NULL),
(10,100,'TRANSOSPREY','','','','','','','','3 OFF/ 2 OFF',NULL,NULL,NULL),
(2,106,'ERIDGE','BERMUDA','BC','-','63 153','-','-','-','CH OFF',NULL,NULL,NULL),
(11,100,'TRANSOSPREY','','','','','','','','2/OFF',NULL,NULL,NULL),
(12,100,'TRANSOSPREY','','','','','','','','',NULL,NULL,NULL),
(13,100,'URSULA','MI','CN','23000','','','','','2 OFF',NULL,NULL,NULL),
(3,106,'WATERFORD','BERMUDA','BC','149 513','-','-','-','-','CH OFF',NULL,NULL,NULL),
(4,106,'CAPE EAGLE','UK','BC','161 475','-','-','-','-','CH OFF',NULL,NULL,NULL),
(5,106,'COTSWOLD','BERMUDA','BC','151 016','-','-','-','-','CH OFF',NULL,NULL,NULL),
(6,106,'GRAFTON','BERMUDA','BC','122 292','-','-','-','-','CH OFF',NULL,NULL,NULL),
(1,109,'SALLY ANN C','UK','BC','-','13538','-','-','-','2 OFF',NULL,NULL,NULL),
(2,109,'NORDIC CHANTAL','NORWAY','MPV','-','4045','-','-','-','2 OFF',NULL,NULL,NULL),
(3,109,'GREEN GLACIER','MALTA','REEF','-','9200','-','-','-','2 OFF',NULL,NULL,NULL),
(4,109,'SANDS 1','CAMBODIA','GC','-','3200','-','-','-','CH OFF',NULL,NULL,NULL),
(5,109,'FROST','MOLDOVA','MPV','-','3050','-','-','-','CH OFF',NULL,NULL,NULL),
(6,109,'GREEN MUSIC','BAHAMAS','REEFER','-','5103','-','-','-','2 OFF',NULL,NULL,NULL),
(7,109,'FRAGA','MALTA','BC','-','28678','-','-','-','2 OFF',NULL,NULL,NULL),
(8,109,'GREEN MAGNIFIC','BAHAMAS','REEFER','-','5103','-','-','-','2 OFF',NULL,NULL,NULL),
(9,109,'GREEN MUSIC','BAHAMAS','REEFER','-','5103','-','-','-','2 OFF',NULL,NULL,NULL),
(10,109,'OCEAN PRESIDENT','HONG KONG','BC','-','51200','-','-','-','2 OFF',NULL,NULL,NULL),
(11,109,'HALCYON','GRENNADINES','CN','-','7970','-','-','-','2 OFF',NULL,NULL,NULL),
(12,109,'ARIES','M I','CN','-','23722','-','-','-','2 OFF',NULL,NULL,NULL),
(13,109,'DANUBE HIGHWAY','BAHAMAS','RORO','-','23498','-','-','-','2 OFF',NULL,NULL,NULL),
(1,111,'LYON','LIB','BC','6270','-','-','-','2942','3 ENG',NULL,NULL,NULL),
(2,111,'PRIME','LIB','BC','2452','-','-','-','1030','2 ENG',NULL,NULL,NULL),
(3,111,'RABELAIS','MALTA','CN','72884','-','B&W','-','57100','4 ENG',NULL,NULL,NULL),
(4,111,'CMA CGM SAMSON','MALTA','CN','91498','-','B&W','-','68520','3 ENG',NULL,NULL,NULL),
(5,111,'ZEBRA','MALTA','CN','27093','-','B&W','-','24815','2 ENG',NULL,NULL,NULL),
(6,111,'MARY','M I','CN','71021','-','B&W','-','24815','2 ENG',NULL,NULL,NULL),
(8,99,'111','222','','','','','','','111','','','111');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
