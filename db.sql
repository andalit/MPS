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
  `Position to apply for` char(50) DEFAULT NULL COMMENT 'Претендует на Вакансию №1',
  `Certified for` char(50) DEFAULT NULL COMMENT 'Претендует на Вакансию №2',
  `Name` char(30) DEFAULT NULL COMMENT 'Имя',
  `Surname` char(30) DEFAULT NULL COMMENT 'Фамилия',
  `Father Name` char(30) DEFAULT NULL COMMENT 'Отчество',
  `Mother Name` char(30) DEFAULT NULL COMMENT 'Имя сатери',
  `D.O.B.` char(10) DEFAULT NULL COMMENT 'Дата рождения',
  `P.O.B.` char(30) DEFAULT NULL COMMENT 'Место рождения',
  `Nationality` char(50) DEFAULT NULL COMMENT 'Национальность',
  `Hieght` char(5) DEFAULT NULL,
  `Weight` char(5) DEFAULT NULL,
  `Shoes size` char(50) DEFAULT NULL,
  `Parka size` char(50) DEFAULT NULL,
  `Address` char(150) DEFAULT NULL COMMENT 'Адрес',
  `Mobile No.` char(40) DEFAULT NULL COMMENT 'Телефон',
  `E-mail` char(30) DEFAULT NULL,
  `Skype` char(30) DEFAULT NULL,
  `Marital status` char(40) DEFAULT NULL COMMENT 'Семейный статус',
  `Children` char(40) DEFAULT NULL COMMENT '---Какая то дата',
  `Seamans Pass No.` char(100) DEFAULT NULL COMMENT 'Знание иностранных языков',
  `Place of Issue S` char(50) DEFAULT NULL,
  `ISS S` char(10) DEFAULT NULL COMMENT 'ДАТА паспорта',
  `Valid Date S` char(10) DEFAULT NULL COMMENT 'ДАТА пасп',
  `Civil Pass No.` char(50) DEFAULT NULL,
  `Place of Issue` char(50) DEFAULT NULL,
  `ISS` char(10) DEFAULT NULL COMMENT 'ДАТА загран пасп',
  `Valid Date` char(10) DEFAULT NULL COMMENT 'ДАТА  оконч загран пасп',
  `Graduated From` char(50) DEFAULT NULL,
  `English Ability` char(20) DEFAULT NULL,
  `Nearest Int. Airport` char(50) DEFAULT NULL COMMENT 'Ближайший аэропорт',
  `USA Visa : Number` char(30) DEFAULT NULL COMMENT 'Visa',
  `USA Visa : Data iss` char(10) DEFAULT NULL COMMENT 'Visa ДАТА',
  `USA Visa : Data End` char(10) DEFAULT NULL COMMENT 'Visa ДАТА',
  `Schengen : Number` char(30) DEFAULT NULL COMMENT 'Visa',
  `Schengen : Data iss` char(10) DEFAULT NULL COMMENT 'Visa ДАТА',
  `Schengen : Data End` char(10) DEFAULT NULL COMMENT 'Visa ДАТА',
  `MCV : Number` char(30) DEFAULT NULL COMMENT 'Visa',
  `MCV : Data iss` char(10) DEFAULT NULL COMMENT 'Visa',
  `MCV : Data End` char(10) DEFAULT NULL COMMENT 'Visa',
  `Yellow Fever : Data iss` char(10) DEFAULT NULL COMMENT 'Вакцины',
  `Yellow Fever : Data End` char(10) DEFAULT NULL COMMENT 'Вакцины',
  `Cholera : Data iss` char(10) DEFAULT NULL COMMENT 'Вакцины',
  `Cholera : Data End` char(10) DEFAULT NULL COMMENT 'Вакцины',
  `Diphtheria : Data iss` char(10) DEFAULT NULL COMMENT 'Вакцины',
  `Diphtheria : Data End` char(10) DEFAULT NULL COMMENT 'Вакцины',
  `Foto` mediumblob COMMENT 'Фотка',
  `Comments` longtext COMMENT 'Комменты',
  `Salary` char(30) DEFAULT NULL COMMENT 'зарплата',
  `readiness` tinyint(1) DEFAULT NULL COMMENT 'Готовность',
  `Date readiness` char(10) DEFAULT NULL COMMENT 'Дата готовности',
  `Date Update` datetime DEFAULT NULL COMMENT 'дата обновления анкеты',
  `Worked` char(50) DEFAULT NULL COMMENT 'В обработке. Фамилия',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;

/*Data for the table `database` */

insert  into `database`(`id`,`Position to apply for`,`Certified for`,`Name`,`Surname`,`Father Name`,`Mother Name`,`D.O.B.`,`P.O.B.`,`Nationality`,`Hieght`,`Weight`,`Shoes size`,`Parka size`,`Address`,`Mobile No.`,`E-mail`,`Skype`,`Marital status`,`Children`,`Seamans Pass No.`,`Place of Issue S`,`ISS S`,`Valid Date S`,`Civil Pass No.`,`Place of Issue`,`ISS`,`Valid Date`,`Graduated From`,`English Ability`,`Nearest Int. Airport`,`USA Visa : Number`,`USA Visa : Data iss`,`USA Visa : Data End`,`Schengen : Number`,`Schengen : Data iss`,`Schengen : Data End`,`MCV : Number`,`MCV : Data iss`,`MCV : Data End`,`Yellow Fever : Data iss`,`Yellow Fever : Data End`,`Cholera : Data iss`,`Cholera : Data End`,`Diphtheria : Data iss`,`Diphtheria : Data End`,`Foto`,`Comments`,`Salary`,`readiness`,`Date readiness`,`Date Update`,`Worked`) values 
(99,'2 OFF','NAVIGATOR','DENYS','LEBID`','ANDRIY','NATALYA','1980-07-18','KHERSON','UKRAINIAN','180','75','42','50','80, RABOCHAYA STR., APT 29, KHERSON, UA','050 82 54 092',NULL,'dlebid1','MARRIED','1','AB 535110','KHERSON','2014-09-01','2019-09-01','ET099552','KHERSON','2011-07-12','2021-07-12',NULL,'GOOD','KHERSON, ODESSA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A.  APPROVED FOR MV SARONIC SPIRE\r\nAT SEA TILL MAR`17',NULL,NULL,NULL,'2016-09-19 13:13:04','Юля'),
(100,'2 OFF','DEEP SEA NAVIGATOR','ANATOLIY','RASTORGUYEV','IGOR','VALENTINA','1964-11-26','KHERSON','UKRAINIAN',NULL,NULL,NULL,NULL,'9, DIMITROVA STR., APT.3, KHERSON, UKRAINE','067 551 57 72; 067 551 57 21 (WIFE)','number97@rambler.ru',NULL,'married','yes','AB461917',NULL,'2011-01-25','2020-07-14','EH272043',NULL,'2010-08-30','2020-08-30','KHERSON MARINE COLLEGE OF FISHING INDUSTRY','GOOD','KHERSON, ODESSA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-10-18','2020-10-18',NULL,NULL,NULL,NULL,'����\0JFIF\0\0\0\0\0\0��\0C\0(#(#!#-+(0<dA<77<{X]Id�����������à�ڭ������������������������\0C+--<5<vAAv��������������������������������������������������������\0QA\"\0��\0\0\0\0\0\0\0\0\0\0\0	\n��\0�\0\0\0}\0!1AQa\"q2���#B��R��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������\0\0\0\0\0\0\0\0	\n��\0�\0\0w\0!1AQaq\"2�B����	#3R�br�\n$4�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������\0\0\0?\0آ�#S�yڸ��T;������/��@QP������\0pP�T;���\\PC�P�T;���Ѿ_E�	��wK�o��hj*���F�٠	��wK�n���@QP���\\���\0KEC�\\\r��\0g�	��s/�?���*\0���2���Fe�_ʀ&�����������@QP���ʏ��\0x~T5d���������@QP��x~T~����	��q\'��\0J1\'��\0J\0�������(ğ�?�\0MEC�?�*1\'���@QP��6���j\0���;_��K��\0�hZ3P��.��\0��H	h�E���ԛ?}�j*�������j\0����?�j<���S\\�Q�����?�oΐ�Qyg������\0�ߝ0%����\0�oΏ+����Z3QyC=[��~t���������V��-��V��|��ߝ\0KEE�S���΀%�����:<������5���\0�B�_ΐ挊��_�h��:\0�#֌�Z��\\c�<����L�Z7QQ�Wҏ%}(M��Q�z�g���y)�@�=G�F���3�OJ<���_Q���?:o���G��ݠo_�Ώ1�?:o���y)�@��1?�)<����OJ\0_5?�(�S��O���s�\0<����O�\n<��yK�@���y��\0xR�k�(���S<����O�\n_-}Z�\n\0O:?�\n<������Q�zR<��\0�(��`�l����t��tާl_AK�z\n.<���rz���җh��y���Q�\'��O�=(�=(�zz��y��*~��F��L���*)�Ҋ\0d��W�Iz\nT�����(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0�����)h\0��PPh����(\0��(h����(�aEPKIKHAES\0���\0(��\0Z)(����@-�Sh����(��(�ES\0��(\0��(\0��(\0��)\0QE\0QE�(��\0(��\0(��\0(��\0(�-%\0R�@RP�QK@	E-%\0QE\0QE\0�Q@%P�R�@	EPs}�r}�I/JU����(��(��(��(���HFF(h��\0�)�\0QE\0QE\0QE%\0-Q@Q@�PKIE\0袊\0)i(��(\0Q�C�GS�-Q@IE\0�RR�E������ii(����\0\\�M�)7�Q@�.j#*���=h.h�|��Z��@QQ����_Q@��5�;R����h4��B�IFhh��\0Z)(�����Q@Q@Q@Q@Q@Q@Q@Q@Q@-%\0��Q@QH�(�EP�R�PEPEPEP%�J�tRK�iW�\0Z(��\n(��\n(��\n(��\n(��\n3E\0QE\0QIE\0-RP�E%\0��P�J(i(��\n(��\n(��\n(�4\0QEJZJZ\0(��4\0�QHzR\0���@�LB�P��jy5�1��@˴f�d��p�O�PɨH����5Z@�����U<��\Zirh�Zw<�5<����!��ۅ\0HX�99��O�\Z�:ӷ.:��>��q����]���o9�j=�4��%�qԊp��sP��@X�Nù����ۨȠ�t��(�O�\n�\'4�ñ�\r@E.k=\'+�V�f�,�h`{���IE\0-QL�)h\0���\0Z(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��QL�(��(��(��(��(�K҅�(��ү��Z(��Q@RP�E\0��RP�E\0����\0�QE\0QE\0��(\0��(\0��(\0��(\0��J\0ZJ(��(��J(�QI@E! u�e�/J\0��&���z�Y%-�P��\n妽,>Q��w�F9�Mޣ�֚0z����i�Xɧ��Q�ށ*��AeaFE\0K�ҚI#�3#��!@�\n`nis@\nT�E&(�E&�C&�`�<�5�zN��ۆx���C���!��c�v4���i�D�B3��X��)l�\Z\0��I�Ң,q�7qh587TI��8�h�r�j�����ۺ���9�53EU��?��\Z�֘KIE!�ES\0��(QE�ZJ(�ERh��`QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\02_�B}�D�v������)\0QE\0QE\0QIK@	KE\0��Q@�PE-%\0��PEPEPEPEPIKI@IE\0QE%\0-%P0������U���p����$��4�71$��?��zT-#���֛�ө)N�b��8���8�.6��)C\n\0L\Z0i����<�!��Ӹ4�h���\r4�1٣ �sJ1@ӥ�<�M�-\0<8�4�^ƣ�%\0HM!4���K�N��\'�OY�1��is�^�TnT�Z>W��*���\ZlQPE6��1ii(�����\n(��\n(��QL���@-��\0QE\0QE�(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0d�v�>褗�	�E\0:�(��JZ\0(��\0(��\0J(���KI@R�QE\0QE\0QE\0QE\0QE\0Q�J(\0��(QIE\n(�,s@�T�������s@\\t�\'����i��n�M2@�3Lf&��&��\0.i	��i\\�d��PKIK@	E-\0Rw�K�\0m%;�P\0isM�\0�LIFE\0.�M���7PqA��R(��Q�\0J)���\0QIJ\r\0-%/ZJ\0wZtM���Qҩ�5 �v0jڱ��rC�kQ����KQ!�Hh�QE0�)(�QE\n(��\n(��Q@E%�Z)(���(\0��(\0��(\0��(\0��(\0��(\0��(\0��)\0�~�*��I/ݡ>�0EPIE/z\0(��\0J)i(\0��(\0��(\0��Z\0J(��\n(��\n(��\n)(����QE\0QI@��QQ�.��@wU&�M>�ҙ4��Z���16)=�F��A<Td�!��	�4�������8�?�q�EJ�Rm�4��)h�\0%�PFh��\0ii9���J��N�4�@)(sIE\0��斗�\074R⒀\n(���IE\0�RR�\"H�k[V����k��AI�R�H��\'�84��L��0�����J(h��\0(��\0(��b\n(��-%\0�QE\0QE0\n(��QL�(��(��(��(�K�hO�D�v����EPEPEPIE\0QE\0R�Q@Q@Q@Q@Q@�PEPE�\0J(�$\n#��K&�qRM!c��Y��@�FMF~QH����Lŏ&�\"����I�3@Q�@g�nM-�b��C@ݚ)/j\03HM�]��掴�p(���dR\Z\0m(4��\0f��\n\\PK֊3H\"���;4�\0�)Hɣi�0�&)��.�Aa��q8� �b�^��LRS�v���V��V��6G���J=���g5*�+\\��ZPJ�\0�@j_WS��l\Z���Hc����Q@IKE\0QE\0QE\0QE\n(��\nZ(��(�EPEPEPEPEPEP$��\'ݢ_�B}�@��(\0��(\0��(\0��J\0(��\0)i)h(��\0(��\0(��\0(��\0JZ)(QKI@����%E+`\Z��j�ģ=(@C,���!~��	5� Ji94f��i@�JJQ�!�i)�RPF(���J�b�R*�v�N\nh�@X���\\P;\r*H��f������Q��O+��6�!�	�I���v#��|�EERT�<SJ�T\\9F�S�zT�nXs�+���\Z�\"cV����ʱTBE\r	�W1F�\0�!9�0\Z������``q�O%�+Km!AE�c4�GjP�Ү����~�\\v)�!Z��J���;�����P�4�b�-\n=	V�4�R���j9�����5��\Z�6�F�6�x��T����\n\0��JZ��P�E\0QE(�������\n))h\0��(\0��)�QE\0QE\0QE\0QE\0QE\0�~�	�h��Пv�EPEPEPIKI@Q@IE\0��Q@Q@Q@RP1i(��\n(��\nJZF!Fh9�jVt���Mq)c�U��K!犈��[4�\r%��ŠR✫�Hi	�1Rl�yd�b���D(Z����M�sҕ��4�M��M�����\\v#�K���4�\Z�.;�\n~\0�H&���i�\0�TcNh�����\0,ԁ\0)\\\04�S��K�\0��\\\Z�-8)��W0�8DO�Ѳ�Ȓ jB1O�K��\"��O��\07\nv(�b��1@\r�S�F(\"��T�SH��\n����E4�P�:�ye�R��q�rqHx5d. T.���p�OC��S�JGH�\rYG�*�0��/�ᇽ>��ʰ5y0�1��(�RR�EPEP!h��\0(��`QE \n(��\n(��\n(��\n(��Q@Q@��ПtQ\'�4\'ݠQE\0QE\0QE\0RR�@	KE%\0QE\0QE\0QE\0QE\0���(��@����QU�dH�N�j�Y�d��������lT4��KI֐�I�\"�U��i6RD\"3�*��50Ojv*nY�jxZx��20��I�6�[9��Rb��\\Ѳ���dB:r�?m8%�m?m8-\0G����BѶ�#�@J�b�N�.)GZ\0LQN������m��.(�h�:�\0LQ�Z(1�4��\r �i!��@��A�R5\0FG4ҵ%!�Dx��\Z��S�)SOG����L��|���K-c���@�e@=iĞ��jXe�qU����)��F�9R�>x5=0\nZJ(h����(��(�B�E\0QE\0QE\0QE\0QE�(��\0(��\0(��@2O�hO�K\'�4���L�E\0QE\0QE%\0-RP�QK@	E-%\0-%PEPE�\0QE(���Px�w\n�Vc��I�7R���4�c\\��)h�@���BOL�*�5r(�Ke�:4�*@(���R�@�S�)i\0QKK@\r��Q��qJ�\0��b\0-���.)qE1(�-\0b�(��.(��Q�Z(\0��\\�QE\0QE\0QE\0SM:��M&)qIHcqM\"�i(��#S�4zZZ(�Uy@9�����4\"�85(l���E85DlL	)�\'<�y��~7<Wcm²�~�z��phj�(�aKIE\0-QL�)i(��`QE\0RR�ER\0��)�QE�(��`QE\02O�i#���>餏�\0uQ@Q@Q@%�\0�QE\0QK@	EPEPE�(��\0RR�P��wچ��7L[�@%%ܜ�*|mZ��i�0�w�6�֞��H�\'9�mG�P\0�IRZBR�QH���R\0��Z\0(���KIK@\0�������\0Z(��QL4QE\0-Q@b�\0)i)h\0��(��RP0����\n1E%\0!��RR�SH�\ZC@\r����c\noz���u��\\��P����S&rj�R&HU<S�Qt����@)����<UB9�B�O4؍����n�j�\n(���E%-\0QE0\n(��-%-\0%�R\0��(\0��(\0��)�QE�(��`2O�h���\'�4��h���PEPIKI@-PQE\0QE\0QE(��\'z)i(\0�=)h�bQE\0�ҨLy�SɁ���jD�5�Or��M\0*�O�XE�1pH�����SE:�H)hPP����@�Q@�ZQK@�R�R�\0Z(���JZQE\0QE0�(��(����\0Z(��%-J(���)(QE% ъZ(���M4�B)�S馀#�(��LS6Z�*����ӁMʘ�)�.(#\"���T���9�)�j\\df��_����*���Z�ҀC����aKIK@Q@-%(��`-�Rh����)(h����(��(�c$��\'ݢA�\ZD���>�(�aIKE\n(���%-%\n(����(\0��(\0���QE\0RQ@#��3�(�Ϲ����t�=y��6�Bd�i��t�ph%Nje��f�%��AKH�(����(�����QK@(����\0Z))hiE&h�\0-R�EP ��Z`QE\0b�(\0��(\0��(\0��(\0��J\0(��o4Z))E Pii3@\r4��i��\Zh\"�����\n��Leȩ\r4��F@U��EM*f��sȥS���\0£a����y�nۢ��W��67J	�hQIEEP�E\0QE(��QE0\n(��Q@�����\n(��\n(����\ZD���>ᦧݠ�E%\0-Q@%PEPEPEPIKI@Q@%-%\0QE�*���j̭��Ly&����9���zJ!4���;��PƉ��SQ/�JIc�8S8R\Z�������N�����aE��(���(\0����Q@ES\0���\0(��\0(��\0(��\0(��\0(��\0))i(\0��JQE ��(\r&)i(��-\0�)i(�)��=*2)��Iҫ�V%�*��Q,���c�1[�;�����j͜��g�T�V-Ne���S��Z�>�@Ţ�(R�Q@E%-\0QE\0QE\0QE\0QE\0R�LAEPQKE \'�4��id���>�0KIGz\0(��\0(��\0(��\0(��\0(��\0JZ)(\0��((��C\nJZCҘ�nqU$l)�2�MS���2.��OZq�LAO\Zh��EH�:�T��NEL��)\n\\RR�R����Ҋ\0u-%\0�QE\n(��EP�ZJZ`QK@Q@EPEP ���\0J(����Z\0J)h����\0�R�P1)h�����@	IE�%Q@	GjBh��ly�MF�K�5Pշ pj���D13K�)��4(��[�����@h`o!ʃN�E�?-%-\n(��\nZJZ\0(��\0(��\0(��\0)i(� �������\0(���\r���\'JY>�N��uQ@Q@Q@Q�\0(��\0(�������\n))h(����KMs��)O5U��V��j�^i���f�\'�t�z��9N)A曊rrE!�x�p8��R��Aih���-RR�JQ@�4Q@EPKIA4�Z)���\0:�I�\\��IFh�SA��\0:�JZQE\0QE\0Ph�\0-���(��-\0�I@E6��J(\0��i3�\0)\r-!�QIA�b\Z\n\0)�Rw�ILE�=��՛��j�5H�\r���d�NC��@�@�>P�j��f�j� AKIK@(��)h)h��\n(��\n(��\n(��IE-\0QE\0QE\02O�i#���>���i��(��\n(��\n(��\n(��\n(�����QE\nJZJ\0(���M�N�4�(�<V&�P7Jd�曊{�im=4�O�s��j:�SS�<T\Z!h�P0���\0QN��	�њf�	�1��4���/L	3IǭD_��|��@��(�W2�ޏ:��)sU��@�	A�@3ED$�n�	2)sQ��8\Z\0}-74���������(�4�lP1ԅ�&�ң�h��UbƜ��@$�Z�y�5V[�N�/��f��1�*�~ni�\r�o��:�4H	Y��8��E\0X���u��hZm�Rh���b�\\dR�y�p0�L�ۡ��F�!ZJQ��dRS$)i)�P#^��X��F�����R�Q@Ţ�(\0�����JZ\0(��\0(��-�P�QE\0-RP�E�l�t�c���>���h�R�PEPEPEPE%\0QE\0QE\0�QA�\0QE\0%!��������*��R��A,��i=i�z�!�,g�Q��\"�I�ӥ>��)�&�(��%-P�4�*6s�P��H^�,I���:��@;�Zu�14ګ�I������F(&�ޏ0���:�$�z>\rCN^;R\Zl���=�t�2\0z�55\"�ڑE�4�j`j@i�\ZuD\Z��@�I�3�`:����P��Z�oz\0�um��H�⑏�\0�LL@<\Z�4ⴘ�%�icIJi�GJ�+��T\0R���!�E;E$d�T�98��n������@)�)���f���4��\n\r�4V�~Z�kF��g5Z&Ch���\0)�R\n�N(4��\0��������HR�JZ\n\n(��\n(��\nZJZ\0(��QE\0QE\0QE\0R�S\0���\0d�p�G�i�}�M��\0>��(\0��(\0��Q@Q@Ģ���Q@Q@%-%\0QE���� �JJ�:��M	�t�\Z����A#*X~����K^:Ա�����)�&�))i(SY�4��h�9������Q�js4¯4�|qI�T�7:S�ߞM����WD(�W�Qp�Gm�W�GJ�ێ�\\,���5#�GJfҽ���柎*5$T��R(50<Tb�)�M<\Z�\Zx4 4��\r8P�HE(����aR�i���i��CL�S\nf��iq�@��O �\Z�@�\n�Ԛ>�ޕt\Zp�3��נ8��#��|�kď���R�O���ʌ��_��%\\��i�A�\0���Q�3LC���i٤��(�g����b�n>ᬶ�T���QED\n*X��B���K4�j�U��V�������Q@EPQKE\0QE\0QE\n(��\n(��\n)h����`5����i��M6?�@��E\0QE\0QE\0QE\0RR�QE\0QE\0RR�PEP0���\0�n�A���	��P?z�1�p8�\rK\'Z���$a�`�*#RDy��us�ZD�KPh��Q@ƚn*J1@��v�7|�ڟ&O�\\P1P�)�\02��)��!6I�ӂ�U\'�s¨߶ˌqNº/�4������4�������L�Ĉ� �H���)c�D�E 5 5\n�jPs@��)��\0x��MZp����\Z`6�iƚi\0�)1JM�N��iZ�@�b�dU�j��M���P����*EA���\Zi[��R	$�4�G1��9����3���=*�z��ÀGҋ1t�U. �YG�:\\$��ӛy�i�ap5mpj��Ҧ� Rc$�(���8QF(�P\0Ɇc5��n=kZO�Yr��j�2؎�(� r��rjSE�Y�j8�*�Co�MH����(��\0)h��\n(��Q@Q@Q@QL�)i\0QIE\0#��M��ӟ��c���q��E\0QE\0QE\0QE\0QI@IE\0QE\0RQE\0QE\0%���cdZ���Ҩ�>jʮ9��ҧqP0�H����pi���y�Ƌ�Җ���>��	E-)i)h)	�SO��i�ꋜ��Q� �rI$�� zS\Z2��qWbEU�sDчJw$�\"�y^)�DE�rԮ��ҡjX�s\0)	�\\\0S�4,�6������\0�7�.v�ZF�j�\"���\0����8u%��U4�S�\0J�\"�k�<\Z�<S8P�\r-%0\Zi��i)\0�d�F)⑅0\"#��G�y��I*5��\0�D�2zUW�=�`\0fܦُ�/R�I��7Jaڣ6�$*\\��O��>E@2MiZC�2OzLh���r����x��EY`1��D��֥�\"Lf�\ZE�\0�1h����Z(��(��CY�\'��|�5��M��L�OZ)XsIT@�RG��!OS�PK6�~�OPZ�\0���R�(�aEPKE\0QE\0QE\0QE(��QE\0�QLAER��M6/�N�i�}�`>���Pފ(��(��(����\0J)h���(\0����%PIKIL`zU9��j�V�rh����jˊ���L���\\f�A��z#���8FT��(�-LQKE\0!4��<�M��FE�)1@&8���d�p�^EB�>zV�$R��N�gGm#�z����ԁ�\0\n3H�����)\r���G��������7<S�\r S�4Sր$QO�����R�\Z`4�R�JC\0(4���DNG�jv�8�0����PW�\n��PqE�c1�pq��,O�5���q4�KE8���X�WN\0ڴ��4�@��I�u(�,EZv)�PqK�\\Q�7S�����R\Z\0d�Mf1�+JO�pk-��~�HOa�֒�I��0�>5,�S*Ű�&5��l`T��h����PE-\0QE\0QE\0QE\0QE\0QE\0QE\0��Q@����#��M��9���Ҙ�\Z)i(\0��(\0��(\0��(\0��(\0��J\0(��QE\0%���))h�Uy�5a�V^��Vn�u5a�B�w��⚿xf�i�����ݩj8��*J���Q@�R�Hbb�S��L\"��#4���S��@	�ZLR��Q@4��L�K�(�R�J`6�SE ���7�@ǭ<S<P!qHih4�e��Hb�撊\0F\\�,��L\n��Oh�jn�)\0S���4�P!sE(ࢀ�p�\0 ����LQKI@i)M%!�IKI@��C�ʕv��j�ݬ��}ꐥ�:�\nz���BW�\'�Z���@G͌U�jRl��-[��U�<՚0���d��PEPEPEPEPEPEP �����(�_�l_v��\0t�c�@�����(��(���E\0QE\0�Q@Q@(�IKE\0%Q@s�UrI��*�94��M�\Zv)HȤ6�H�*I����\0X3LL��)���O�)���iqH)E!�.(������	F)qF(6�M��E\07�Ph)\r-%\04�S�� IJi1@�����))��O\0��������-%!�)qIJ(\0��b��\nLS�\0���(�E.)h��.)h��)(QE%\nLR�v�i)qI@\r~��0��i�CYҁ�S@�!��}I��\'���zPآ�\nfE�0�1B�͓O~�R�u�\"��y�C�R&B�E��(��(��(��(��(��(����-Q@�P1�l})��M6?�LC�)i(\04QE\0QE\0QE\0QE\0QI@(�AEP0�����\r��j�ެ�x\"�w�Z\09����Z@G,y�P*�0U�2)�0h$^��j��f�����(���\0���h�S\0��\\�@	EPIKE\0\'jJZJ\0JJZ()��L4�m.))h���J(�Ӆ0S�\0-R�S)(��zZJ\\����b�\\Q�\0(��\0R�R� ��Q@�PIKI@���1���i��k�ӊ�Q�B=�D�5D��4��,x5:\0���)O4�oz��9��ե�U�azU\"d-QL����\0(��\0(��\0(��\0(��\0(��QE\0-%�\0�R�L��4��S���cP�)i(\0��(\0��(\0��()h��\nJZ(RQE\0QE\0QI@QH&�U�ՙ��zL�(�b�iԆ%R�\0��R����(��M�@(4��\\�����EPE%-�E)\r\Z!�\Zy�\ZBKIN�bR�JZ\0p��`��\0ZCKHi��QE \nP�8SA�\nbb�E-QE\0QE\0QI@Q@�C@!���RQHh\04-%9h�R�E(���Ƨ�0��2D��J�1�OM!ii(�H�QE\0QE\0QE\0QE\0QE\0QE\0���\0��Q@��(�_�l})��i�t��R�PE�\0���PEv��(������IE\0QE�))h�QE��n�XթFEUn��-)�SCqR1V��!�h�����f�C�SE(�R�R�ږ�)��QE\0����\n)i())M4�M4�M4� ����J �P1E8S@�\n`-%;��EP@��@8b�)��LB��\n)�(���EPPii((���aIKI@�4����CM4���4��\Z�zRC\Z@y���<��h$b�����SFl)i(� ���\0(��\0(��\0(��\0(��\0(��\0(��\0ZJZ(�R�@�t�#�N�M���R�R\0��(\0��(QE(��\0))h���(\0��(\0��((��C\Z㊨㚺FEV�`�R\"5(�5%)��S)A�\08�E-���@��ER�JZ\0ZPi)hsE%�Z(����\r\0!��SHh��M)4�CEw��\r0S�\0-8R\np�Z(��\r\"��i�(��\0p�\nb���B�IK@��(�ER\0�4Q@%-Ji�b�i)\r���JZJ%H�*:x�@=)���c��A�M5$C�ɇJ(���(��\0)i)h\0��(\0��(\0��(\0��(\0��(\0��(�QE0\n(��\Z�v�zs��M��0IKIH�(�������\0QE\0RR�@	EPE\ZC\n(��%-%1�G2�f��a�Hh��\Z1Nn\r(��#\"�*B��)J(��BR�E\0R�H��R�1E-%-\0���`.h�%- �M%���\r4�IA�P�ii\r!�i�i�4�L)�\Z�\\�%�Ԡ�!M0Ӊ�h\0����1GZu0i☃&��E\0>�nh�E&h��(�bQE\0RI�i)Zi��!��4��A֥��&�\0�����n*X�Gަ^��c���d�R�IE\0�QE\0QE\0QE\0QE\0QK@	KIK@��(��(��Jl}���M6:�h���EPEPEPEPE�\0QGz;PEPEPER�QE\0W�y�-XuȨi�N=)��!��@�b�(�P!h��@����Z))sHb�IK@Q@!��P\0i��i��Ji���W��aڣ&�G;p*�/$�ք�|������*�³J椌��E6N��$S��A��g�<\ZC%�54n�	I�Mv���һ0\rV6�恏[�[�Z��U�<��#������21�ILAIKE\0%b�\0QKIK@%P\0i)i\r!�IKI@!��4JCJi(�)�ԧS\0����FZ�� ��!�QLAE�\0�QE\0-��\0QE\0QE\0QE\0R�Q@���(\0��(\0��(�d}���MG0E-\0�QK@	EPEPEPIKI@Q@Q@Q@Q@	EP0�*&5-#�C ��R2I����;�5�S=)Y6�C��))hh����(��IK@Ţ����E�����M4���M1��i�\n��iU�d�a�z*�� f��������5 �#5ާ�ށM<H�\nw��#7<SK@\nі=jx�TUa!�O�ސ��0\Zp4�u��\0RR�@	KIE ��(\0��������\Z(�����MqO�9����)��&�)5\"&168t���d�Q@E%-\0QE\0QE\0QE\0QE\0QE\0QE�(��(��(��j8�G�LN�@:�ZJ@-%PEPEPE�\0��Q@R�QE\0QE\0QE\0QEJ(��&-\0��2)�\ZV#��84�I�J(��(��ZJ3@E�QGjJB�\0����B��vi	����\0��P4�9���,��@�=�1Jh�l�)���i��ց�N<=3t���i�a�Y�jz�(DjV<Tb��\0`ljD}��L E4u�\r�*@�B6���*��f��F�`N\r��S�f�E4\Z3HQIE\0-%�4\0\ZJ(����\0J�!L���M�Ѷ�*�\0\0���\0(��\0(��\0Z))h\0��(\0��(\0��(\0��(\0��(R�QL��)\0QE\0QE\0��M2>�����N�@>�(�H�(��(��(����\0J)i(\0��(\0��(\0��(\0��((��@QE1�袀\n(��H*2*g�Q\Z6��IRP�QE\0-���f�\r&h\Zi��)�&��1���*2I���Q�2i�6�b�h�s�3�9���0�t�IڜxA�ER\"�ML��C�52/��`f� N)�F�R����|�͸��0\08�>3�HN*��!��Q�P��p(��i�r(�-n�(.j\n�4��I�(|T�sHA����5*z`M@��.h\0���P�QE\0%-�LsS�>Z�rjuSD�ii)j�QE\0QK@Q@Q@Q@Q@Q@Q@Q@E%-\0%Q@����\0Z(����v�OJ���Ҙ��h��\n(��\n(��\n(��\nJZ(\0���\0ZJ(��(��(�bR�E��((���aEPER�8�MNzT-ց�����Ԍ))i(v��R\04�4樜�1�i�!Aӭ$��3�P�\'�;�6�ɥ�Y�1N�I�P���&�x(6ȧQ�O5 �wb�x�J�A�I��Sq�3<���1M\r���:�.\r�\r<T9�@qC74��������4�MLG�����PF>�&�x�m���)��\0SM\07�(�iTsH����\rCڕX��]Gȩ*�]j|`Ri(��Q@-P��T⢏�KT�aKE�QE\0���\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0��Q@EP ��)������#}�Q�Z\0}Q@��\0QE\0RR�@	EPEPEPEPEPEPF(���%-%\0QE\0QE\0�jZd�)��{�ъC���HbQE\0֨\\�S�j4\0Ǔ1@�UMXe��S�2i␌SM,����G�r\r9e�{��E�[\n1J@��;w�?=���J�J�	�9�@h�R�n_Z]�\nx�1M�J\r!��3�sJV�\Zvh�,\ZP�R���#�\r��)����Z<�:b��R�\\��)�&�4۟ƀ�3H�:���1���O4��Ѡ�\Z�zԅ�Q�]Iȧ4�\0����0�\0X���c<S\"�u���H�)i�QE�K�(�\"H�ILN��h�)ESQE-\0QE\0QE\0QE\0QE\0QE\0QE\n(���Q@Q@-%\0�QE1b�@#}�Q�Z���ӭP��)\0QE\0QE\0RQK@	EP�R�PEPEPER\0��)�QE�(��c\nJZJ\03EPH��Z\r +�J{�\Ze&P���R��\Z(\0���I�\0��)�y��S1@�g4�*��&�.2��kb���Jp����.���	�O�p���\0��� ��j�J8�e_)�ҐG&zU�Ӏ�.W��rB�槥��C�?`��\n\r0#8���I�@0�P)�i@��\r:��\0a�l�����ɚ|q����!G��3L�Q�\0(R�ځ֊ri��qN���$(���\n))h\0��(\0��(\0��(\0��(\0��(\0��(\0���\0J)i(\0��(\0���b\n(��\n(����ӯ�R7�5\Z���E\0QE\0QE\0RR�P�QE\0-%P�QE\0QE\0QE\0v��@Q@Q@%P0��(\0��H���@2E��CV\"�e�dtQEIAIKI@QH4�S�)��Q�N�&h��QH�QE0Rb���\01�-&h�(�J)�����\0?4\nL�B�f�%���=iC�@�IMݑK�\0u��K@�����PEP@��P�E\0�QE\n�1�j$58�U\"X�QE1Q@E%-\0QE\0QE\0QE\0QE\0��PEP�E\0RQE\0QK@��(��(�E���\0t�k֤o�j$�L	;�E%\0-Q@Q@v��\n(��\nJZJ\0ZJ(��(��(��(��(�aIE/z%-R�QE0\n(�E\0�2)h�f4�4����()(����\0QE\0Rb��\0J(��0��u�)1N+I�\0i�3R`Rb�#e�3֧�4Ҵ\0Ϙ��!�R�^�\0��QJ\0(��\0��Ri�b�\0)h�\0RR�@	EP�QH)h\0��L�\0h��ɦK$E���:QL���)�R�R�EPEPEPEPEPEPEPEPKIK@Q@��JZ\0(����(��j5�R?�5\Z�@>�(�EPEPE%\0QE\0�RQ@IGz(\0��(\0��)\0QE�(���\0QE\0QE\0RR�P0=(Rt4\0�QE �Us֬�����4%f�E%-\'j\0J1E\0��Q@(���������!�Q�\0f(�␏j`0ъ~�6�@3�4���G��Ը�h�J��m-.(�\0QI@(��\01F(��KIK@%�Z�>��R�L��(�\n(���(��(��(��(��(��(��(��(��(����R�P�QK@	KIE\0QE\0\r�MF�EH�t�k��P����袀\n(���Q@	E-J)i(\0��(\0��(\0�sE�\0��(\0��(\0�����E%��(\0��(\0��)\0\Z�\'Z�PH9�h�����������R�J\0(���QE\0R�R�\nZJ��IK�)�-%8P ��Q@\r�.)h����\0)(��`M!��\0(��B\n(��\n(��� �(@������Z(�L������(��(��(��(��(��(��(��(��(����-Q@%-\0�QE�(�B7�5\Z�#}�Q�QL�E\0QE�\0��(\0��(\0��J\0Z(��\nJZJ\0(��\0(��\0(��@QE0\n(��\n(��	A4�S(���a�(��T2T�����)M%IAE%-\0-%-JJZJ\0QE%���\Z3@ť�����S3K�\0p�L���E4\Z\\����&hԔf��\0	��&�\0\\�IE ��(\0��J`.h��\0��Rb�P��8�T�L�:�(� �����JZ\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0Z)(�AE-\0�QE\0-%�J)h�o�j5�*F��Q��*�>�(�Gz(��(��(��JZ\0J)h����\0J)i(\0��(\0��(\0��(\0�Q@Q@	Fy���%SQE�1Q�RS$�h��M8�MIA@������\0)���\r����\nZJ(h��4u\'zL҃@\n)sIK@Fi3Fh٣4��\n\0~h&�E\0--6��ES\0����@���(R�AKH����R-GR/Jbc���d�R�EPEPEPEPEPEPEPEPEPEP�R�PEPE-%\0-Q@�t�c��uBER\0��(\0��(\0���\0Z))h\0��J\0ZJ(��(��(��(��(��(��(��(������Q@1�S�7���i�jJ�1E\nZJ(h���Hh����I@	Eb�\nQ�%\0�Ѻ��L��Bi3FhA���4\0�)(�\0;4\nnis@�\'ZAK@\n)i-\n(���Q@RR�(�GJ��J�)��ES$ZJZ()i)h\0��(\0��(\0��(\0��(\0��(\0��(\0��Z\0J(��\n(���\0-Q@Q@QLB�E�G���EJ�t�c�\n�ER\0��(\0��(\0�����%-))h�����\n(��\n(��\n(��\n(��\n(���Q@��\'�Ԙ��-\0%��(��\0*7�O�=!�M�/zJ��EP0��J\0QE%-\0\Z(���RP!sIE%04RR\ZB4qIE\"��Q@E%.(sKIK@)@��\0 �)@���\\Q@-P0��Z\0(Q@�jU�QT�Қ%�\Z)�)i)h\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��8���\n(��\n(��\n(��E%�}�u�}QH�(��(��(��J(h��\0JZ)(\0��(\0��(\0��\r\0QE \n(��Q@Q@��\0J(��1�V�H��8�@ʼ�њ�I���IKI@ģ4b�\0JZ)(-\0%%-\0�IN�\"�����-%-\0QJ��-8-\07��R�@	�ZZ1@\n(��\0(���Q@��PEP��L:T+֧�))i)�(���\n(��\n(��\n(��\n(���QE\0QE\0QE\0�R�@Q@Q@R�R�Q@Q@���)���MF:������\0}Q@Q@Q@	E-%\0-��\0RR�P�QE\0b�(\0��(���p9�4Z(��\n(���Q@Q@Q@	E��J)h�\n�z�j��*��Q�Z)�r)iQET������\nZJZ\0(��%�Pq@���n(�O�\0`Zv�ZZ`&)h��\0%8\n\0�-\0%R�R�E�(���(\0��(\0��J\0|c����T��QKIL����EPEPEPEPEPEPEPEPEPEPEPE�J(��E%�\r�MD:�J�t�c��}QH�(��(��(��(����\0(���\n(�<�0��A@�<�@\0���\n(���Q@RP�IHM\0.h��iE \nZ(���(*9Sp�RR�\0� �i���s�*��R(u�R�\n(�b�E\0R�E\n(��\n\\QE .)-R⒖��(�\0RPh�\0QE\0-%PEP�IKڀ\n(���FZ���1ށ2E�JZ��(�Bb�R�@	E-�%b�\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0uZ����j���)\0QE\0QE\0QE\0��(���(\0���\0)�O��i��f��:s֊3@��\\RP ��\\P1(�������4�4�5�@Z����} �-PEPIKE\0#\r���F�_�K���h�)��M(�(ZJZJ�h��\nZJZQK@	J\r%�;4��斀\r;4�N��4�P�IE\0-sE\0RQ@E%.h\0���\0(4RP\0��V`SQp*J��l(��d�Q@Q@Q@Q@	�)h����(��\0(��@QE\0QE\0QE\0QE\0QE\0QE\0QE\0&M�P\0�\rF:�����\0�T!�QE \n(����(\0��()h�����\0(��\0�c4�Q� Z-(�-%RS�����%4Ӎ4�1��֟H��ZJ)(�����(\0��((���+�E��U^���`�9���R)2*(��P�QE\0����B�H\r:�\n(��R�)h\nZLR��E.(�Q�(��(���(\0��������4�ӽ5W\'�N8�-�-UQE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0��PQKA\0�Q�)(��\0(��\0(��\0(��\0(��\01EP�CQ�[���j�RR�H���\0J(��\n(��\n(�.()qK�(1K�(�QE\0R�@	E-%\0QE\0QE\0!5S�0�1)E%/4x��^���QK@	EP ������P!)���\r:�P�\n\Zh��F\\U&OJE&Q�)AN�\n\0ZQIJ(sJ)(�R�A�\n\0ZL��@	�p4����JZ�����)h\0������%>5��l|k�O��h���(QE\0QE\0QE\0QE\0QE\0QE\0QE�(��\0(��\0(��@QE\0��PQKI@�R(��R�P�)h�\0���QE@IERQE\0��(�aEP!E-PEPEPޖ�)�RQE \n(��\n(��\n\rPM4�E\nN�(��N��@-%Q�aEP!h��`QE ��(��Q���������E(��@(�J(����)���E�u%SM\'z(���(i(��\n;QEN�E�Z�:QE���*�\n(��QH�(��(�EPEPEPEPEPEPER\0��E\0�QE0\n(��%PEP�QE\0QE\0��',NULL,'3100',1,'2016-09-14','2016-09-13 12:18:00',NULL),
(101,'2 OFF','NAVIGATOR','OLEKSII','MAKHANKO','ANDRIY','1','1993-12-21','KHERSON','UKRAINIAN','175','68','26','M','23, DIMITROV STR, APT. 120, KHERSON, UA.','063 370 67 21','1','1','SINGLE','NO','AB498865','KHERSON','2012-12-27','2021-04-18','ET073952','KHERSON','2011-07-04','2021-07-04','1','AVERAGE','KHERSON, ODESSA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2012-04-24','2017-04-24',NULL,NULL,NULL,NULL,NULL,'AT SEA TILL MAR`17   A. APPROVED FOR MV BALTIC SPIRE',NULL,NULL,NULL,'2016-09-13 15:31:26','Юля'),
(102,'CH ENG','FIRST CLASS ENGINEER','GENNADII','PAVLOV','VOLODYMYR','SVETLANA','1963-08-08','UKRAINE','UKRAINIAN','1','1','1','1','48,200 LET KHERSONA STR.,AP.59, KHERSON,UKRAINE','+ 38067 55 16 332','seaprof.info@gmail.com','1','MARRIED','YES','AB 542442','KHERSON','2014-10-21','2019-09-29','EK 226327','KHERSON','2009-05-29','2019-05-29','KHERSON FISH IND SCHOOL','GOOD','KHERSON , ODESSA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2010-07-28','2018-07-28',NULL,NULL,NULL,NULL,NULL,'AT SEA TILL DEC`16   FROM 09.08.16',NULL,NULL,NULL,'2016-09-19 09:56:40','Юля'),
(103,'2 OFF','DEEP SEA NAVIGATOR','SERGIY','GRYTSENKO','OLEG','LYUDMILA','1964-07-19','UKRAINE','UKRAINIAN','175','81','44','52','26/2, 200 LET KHERSONA STR., APT.101, KHERSON','067 177 36 22, 095 838 61 21','-','crab1991','MARRIED','1','AB 581240','KHERSON','2016-06-24','2021-06-24','EK 243710','KHERSON','2009-06-05','2019-06-05','-','GOOD','KHERSON, UKRAINE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2007-10-01','2014-10-01',NULL,NULL,NULL,NULL,NULL,'AT SEA TILL MAR`17',NULL,NULL,NULL,'2016-09-13 16:43:08','Юля'),
(104,'3 ENG','THIRD-CLASS  ENGINEER','YURII','ZVIER_KOV','BORIS','ALEKSANDRA','1968-06-08','KHERSON','UKRAINIAN','175','78','44','50/52','128 KULIKA STR., APT.12, KHERSON, UKRAINE','+38 050 265 67 21','yuriizvierkov@inbox.ru',NULL,'MARRIED','YES','AB 543701',NULL,NULL,NULL,'EH 740071',NULL,NULL,NULL,'KHERSON SECONDARY MARINE SCHOOL OF FISHING INDUSTR','AVERAGE','KHERSON, ODESSA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AT SEA TILL MAR`17',NULL,NULL,NULL,'2016-09-14 16:14:35','Юля'),
(105,'OS','SECOND CLASS SEAMAN','OLEKSANDR','KARAVASHKIN','OLEKSANDR',NULL,'1987-06-02','KHERSON REGION','UKRAINIAN','178','65','40','50','187A, PEREKOPSKAYA STR., KHERSON, UA','+380939196303, 0666307548',NULL,'karavashkin87','SINGLE','NO','AB552222','KHERSON','2015-05-07','2020-04-21','EK813477','KHERSON','2010-03-03','2020-03-03','SEAFARERS TRAINING CENTRE 2015','FARY','KHERSON , ODESSA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-07-16','2025-07-16','2025-07-14',NULL,NULL,NULL,NULL,'AT SEA TILL MAR`17',NULL,NULL,NULL,'2016-09-14 16:01:34','Юля'),
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
  `Issuing Place` char(50) DEFAULT NULL COMMENT 'место выдачи'
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
