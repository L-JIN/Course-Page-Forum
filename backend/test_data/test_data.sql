-- MariaDB dump 10.17  Distrib 10.4.13-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: SE
-- ------------------------------------------------------
-- Server version	10.4.13-MariaDB

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
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answer` (
  `create_time` int(11) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) DEFAULT NULL,
  `content` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_gid` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stars` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `question_id` (`question_id`),
  KEY `author_gid` (`author_gid`),
  CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`),
  CONSTRAINT `answer_ibfk_2` FOREIGN KEY (`author_gid`) REFERENCES `user` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer`
--

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
INSERT INTO `answer` VALUES (1590084548,1,1,1,'because','0000000000',0),(1590084562,1,2,1,'zcasdasd','0000000000',0);
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `create_time` int(11) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name_zh` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_Course` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `textbooks` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `semester` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1590084200,1,3,'电磁学','hapy','hi','ads','dcx','ad'),(1590084513,1,4,'软件工程','jisuanke','hi','ads','dcx','ad');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_resource`
--

DROP TABLE IF EXISTS `course_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_resource` (
  `create_time` int(11) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` blob DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `course_resource_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_resource`
--

LOCK TABLES `course_resource` WRITE;
/*!40000 ALTER TABLE `course_resource` DISABLE KEYS */;
INSERT INTO `course_resource` VALUES (1590084910,1,1,'1.PNG','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0�\0\0�\0\0\0*I�L\0\0\0sBIT|d�\0\0\0tEXtSoftware\0gnome-screenshot��>\0\0 \0IDATx���w�T����gvg)\n��(\n*b�� �XP��4���`�5j4Qc�bW,�5�M,k�]�f�EP�H�eٝ�8˝�[�w�N���׾d�9��3��Ϟ9snlޜ٩�Z�d�\0\0\0\0��Z�Ί�jt�E��Zk)6��i����R�\0\0\0(;��wвe���׫��\0\0\0�kh�W�Ν�c������S��\0\0\0PΖ,Z��Dn\0\0\0�t��Eqr3\0\0\0�/&)Nn\0\0\0�557��ԝ\0\0\0\0�]*�b�3\0\0\0`�\Zg\0\0\0� ^�\0@�Y�t��x�9}6�KM�:U�uXM���H���_{�d�V���_z���<��c�]t�oO�(������[oRmm��}^yc���>I�#�ߣ����ߞ��s���SN�~���(?g�<�t��%I���6u[s͜�\0*Acc�^~}�F�}[Ӿ�V��a���{��4d߽UWW�S�|8\0B�������4gμ�c�/��s��������s�:v������9s�鵑�4d�A��677��g�ϸo����w+\0�b�������5e괌�O�R�O�R��9J���&X�\0FK�.�u��.�A�7�P\'w����H�����o��3/��w��@k���N9��V��e@?]p����~-~�?�j��{��&�s�c�yO3f�κ/�@y?q�$iۭ�,Z�������i�ԩ�z�-\Z~奡g��U\0����G��nk��뮼D�n��:v쨍6�_{��:�璤�^��Ӿͻ��s�jĨ1��?�̳y�\r�:�x�-�����t�mw�G�ڻ��w�?���W^�%4_{�0�۱o�m�v�k�&I���T�:bT��kZ&��/����\Z��%I��Suh׾���Z�S\'577k�ǟdޮmIZg�n����󬚛�[n������o��f}��ن_;A���_�u�G�?ߡO�O�,���uӟ��/;�(}J�w������\n�_�_��~Wi�Gհ/P���ߎ}5���|�і�G��N���q\0������{IR�M6v-Ӿ};��x#IҴ醴������sB���f�hUv�m�Q��i���zs�[-��Y�b1vЁ��J��ƽt��W��ܥO&Llu���}�n�]W_~���t�����^��zi�����_Ԧ}�M˿??Q\r�B�.�@�.�@\r�B�_Շ�S�q��W<�T$�j6sΪ5�k��I��Φ����/�3����S��k*�R*��57��N1��C�\r��{����]���5��\Z�\'�ܠ����������\0*SCC�z��]�_}�.��R�s�o��6[I�>��\r�1�n�QO�7,+h_����_!�b�����`���g�U�kc0f��`��]Z�=���-�����t�9�/��$-[����kwkU��������o��A��ʮ,��zn��f̜��o��ǟyN����g�	�@۲���%����ɄO[�؆������=�����n�w���ʋ/���n���nו_����&�ݪ��\Zg���/�W�N�չsgI��On9>j�ۚ5g��]w�>��K}>ye��ѽ���;��SL�8�g���Jj�����[i�>�d��񾫯��$�����~�/���\Zu^�S�Ǔ/����ky}�z��k��[�r���z���b��[__��_|�u����{u�Ȃ�c���x�.\Z6L�\'N����tѰa:��U�\r\n]?3�\0`�o�m%IϾ��-Y\"I:��5d��Z�t�.��z͙;O����c�]#is�]wѺݻk��$I���m��sIҸ�Ƿ���_J�6�n��(o�\Z�q��u��t�ôq��W��\"���K�K���/-X?ﳗ6�tSI�eW_�������t���H�6�tS\r�g��kJ�\'_|��W�|\r=�uh�^��,�/�B�>�������s�jll�$�d��Zg��fikUٚ��~~����m���o�Y�v�$��t��{�a�_0_+V4���}\\��Ϟ{�|�⋯�}54,��={h�=�а�h�Ο;��^C�2͟;�`�hlX���\\���l��\Z~͕Z���p�@\00Zk�5u��莻�Ռ��u�\r7)����߻~��N�6[���?}�{�O�=�U�?�ug���S3ʦ��o�^-��v�4p�N�ɮ5��w�̋��_�����l��ؿ�}T���g.g�TJ����/�깗^�˯����L�$�齉�췯~��!�a��jr��v�x��j6�?m֧��9}9�kM��;���jڰ��\Z<hO}�ŗz��W��?�미D1�G��v�hn�.ʞs�i�a�m5b�}��t�b1��`}��.�oО��j��Ԥ��ՐA{�П���v�����Z�d�|?����\"6y�&\0 B/���v�e�:w�T�\0\0\"�<i<�\0\0\0��\Z\0\0\0�\0\0\0�|�\Z\0\0\0o��\0\0\0�l�q\0\0\0�\0\0\0�\0\0\0����)\0\0\0@[�R\r\0\0\0� �ݴ)��\0\0\0P�bK�,f�\0\0\0��\Z\0\0\0��\0\0\00 8\0\0\0g\0\0\0���\0\0\0�\0\0\0����?���Mu�%K�j���Ϙ9S��?�������λ�ڮD_M��	?-u7\0\0\0 )�������֭�z��^����С�jjZg��G��X�o��Y���Ԏ;w�I���/�q��oU��yF�N���v�r���5k���r묽�z�� �S,����iĨQ�Ӎ7h�m��$͛7O�^x�k���Z�{�Ǟx�i���~�.�q[,�ی�{����8피�\0\0PMr��x\\��=z����8�b�\n]s��ڨW�V��k�N��յ|��w�u�9�궛���u���l	�s���_}��v���վ]��cO?���z�9m�gI�W_O��A{�ߝ�y��r~���y�����/���7��.�~����_|�cO:U���k�0����{]x��\Z~�U�ڵ���rq����Kt����?�*IZ�بI�}���o�}��:���Z����_���Y�}T˱ƍӇ�O\'�p�j�ӳ��F���~�ڧ��=��S�p�Gz��\'��~\Z}��}�����}\n6F\0\0\0Œsp�����3����j�O]m\\�����I3g�RL1�t��:�������vT�v�Z�㴚�Z���f�Ŵ���믕$]p��}y�w5z�X�yک���A\r�go�\\�$����߯ٵ�-Z��xP��홾mZ���k�[o��.�!��K5r�I��/I�֭�fϙ�����n�i��v��kv�m�ٺ��;�G˖�k�u�g��zg��Z�����OZ�����iԘ��`�G\Z��VeG��.k���;�S,�|�\0\0\0�-08�����kK/�H��XLs��Ӎ��Yw�����ŔJ�T__��;D�$~�o�����WMM��̝��K������Ԭ^=W���������7N���2�:�뒥K5m�4����ji��gS��I�ޭ�����{^�|�!\r�g��>�M�z�Ƽ����}�V��2u�F����U��555\Zz�Q���[t��ǫs�NAC\Z��q�ƾ����xK�5�-��nw]{Ū?�,Y��}�:��孷�ч�>Һݻ���/�$}5�kuh�^��V[���}�c�v�5աC�=�58�1r��W�JQ�\0\0@�&����_�@/?�T��#���~}�Жe\r��ͪ�_����z���Z��I5n�Ǌ�k���_k�z��W��ب�N9)��[o�!cF�i���z�����ǩC�z���bE�N:����wS�����ͷ�飏��?��A{��x�58���������O&d�g�=uӭ���_���ݰQ�Νt���|�Ʉ	z�ŗt�UWf̄�k㪫��϶��4��۴�z�k�.���;���o��k�ו�^�u�^���cֱcG��@�=V���}�����Ք):��߶�z�\0\0\0�-�]5fΚ��˗k�1��u��g��cOЈQ#����j��;k�=$I?<X�w�����\Zؿ�z�XO��{]|A��9CsC}�:�o��}�6�督c�>J�/ֆ={�ߝ��;Gk��MRfXnN5{��رZ}�յS߾�n;~���t�$���ǧϘ�W^C�}t��t��AШ1c=��U}}����F~���a�m3n��b�мx�b��K�f��z����i�����.ѵ�o�oN>Q{﹇����l�}4o�<��81�숑#�m����۷+�\0\0�98O��k�p�o�z����f-^�D;t�a�L��|�y�:���WϞ\Z5zL��n���^ݺuku��^Tss�&O�JW\\s�R?�ek���	\'j�-�p��c�>}������e�e���I�ߩ���bs�:��j+M�4����ܪ��駜�W=o�󞚚�t��õ�j����w��:k���8 ��nc�ۮ�zǎ\Z9jLF�#Gk�A{�\Z�B�\0\0@1����믯�o�Vk���$���K�=����>=���i�dl�m��%��=+��;���<�}��7�a��2�555�g���rv��W_S���أ�����g��N�6[m�y�	C�։�9C�L����F����/���n\Z�y�^l�E��E��F�Φ~������˯h��uֹ��֛����Ǚ�TJ+�V(��:�c��}4x�����AW^{�^}c�N?�d�}�m���:�WGh��v�f�n�z�1k߮���}w�3Zg�f�,gΚ�O?�L�����(�\0\0�98�������ՠ=�Ђ�?�*���[�����YS�M�;ﾯ7G���e˴c�4p@�����r�M��3g���x�b����v҉��=V����6[o��:tԎ}���E�%I\r���ޱ����ŋ�i��=o�f�4��N�t�����GՖ�o��� [�N+?�(�P��SO��������?�P�g�ԥîԙ?��I,PCC�9\"���[��ŋ������ǟ�j�u�i\'��ŋ��n��yV�����u��Wx��m���w�^z�5}���٤��5F�v��~�w�)�1\0\0(&�R�/&O�ҥ�����|�_u��^{m�뻃�t�jnnV��;h�ͷPǎ��\r7ߪcO:U_O�F[l�����]�Ϩ{֬9:�������%I������6�hÌr�<�v�e`ˬ诏;V���r	��y�f�.�sI�R����\r=Fo������=��s:~�1���k�\r����x�i�|��\Zv��u��չS\'�t����)�3w���յӤ�>�$��kիWO]u�%�u������G�У����ߧ�����|H�<��?�=�|H����c��]��5f;�N�:��ѣ%I#F�Ծ�ܷ�r�\0\0\0�-08/Y�Xu��t�e�t��������-�5k�V�h�ܹ�t�g��Gk)�����?��p�z��^��%��.ס�LC�%˖����S���J>�DK��>�@}<^\'�p�k�g�T�u�w�pZ}�մd�2�2�����V\\r�z�����IZ�t�$�s��L}�s�����U�ڻ��V[l��~@��uW^��]�hĨQ��w�kk�e�52�g;����#+q�᪯oо���Y��F#F�RSS�b��6��o�{����4h����Qc4��������o�~D9F\0\0\0��gϙ��{�Й���GR���Ju?~�/����3u��U�t��!-�_�{w�۽�k�,�$�c_\r=2!I�����e��\ZzdB�<�������%���j��k�.\\��&j�c?��O�Z�nk��ٳg��~=t�\Z\Z\Zu���;id�5k���x�r�|��չ�5v����k���g�3�444��cOМ�s3��b1u��Q��/�A����]u��Iw��\'�-\0���l���ɓ��GS���s}��h�\0\0�������W}��N{﹇���ɵ�M�ݮ-6�Lw�z��\\�vY�]�О?�]��rk���q�^�]r��N�R������?��K/�5�.u����^֚]�j���Zub��l�2q��Z�x�z�-��\\�O�ؿ�;��7^���M�b�dm�g��w��9s�n��N�q�)��1s]��Y����i�k��tYC��}���:���t����Ʉ	�e��Ƭ�եK=��c\Z�3V�#\0\0����/&O�ط�֐��J��=��Jq���՟z���r��z���F��*�Ԭˮ�Z�;���^�-6�L]�v�O��O=�r@���������O�XfP�$���3UWW�2��w��5w�<M�:��W?�TJ�����v���4}��}���z�-u�!��}֬���:��CMM���w���n�i�uZ�t�N9�������Z��^jnn��/����c\0\0P�S�~7]��R��M��KM�zj�mcƾ-Iz�͑���հ|�:���^{�MI+CR��u�k�̋j̝7O��\r~X�HO?��}�I�o�N��y�6�l��ۏJ�g�^o�\Z�}��r�q�r-_�\\_|���p�%�n����/����ZSs�ܵc���k����6p@u��M����N���V�+>�����%���<���\'�\'h��Y:��~j���+���I���z�����{��w�^��L�XLku]y���H;v�\'&���.#��ԤW�����x�QWW���<���卍�h�^e������N<�w�mr�\0\0\0��38��c=�~���}�]��Qm<s�)\'��3gJ��N�R���w߮�1�Rǎ�>\0v�y�����l�2�{֪�07�h��	��CґG�B;v�hc�^�t�o�T�>�3�׵k�:jѢ��n��u��h����~�K��E�{���ب]��p_mm�~q�!z�\'5��_�j7��yL}w�N���W=nV46���QS�NգO<��N:Q??䠖��e�:��놛nQS�ʙ���V���X�B���.���f�\'�ҫ�f�w�\n9F\0\0\0�[�d��!y��\'�5g�6�l3���b�Ж/_����x<#\\744�WC�׉\'����5{�?���οx^U0������W׮]�J�B]!Q�,X�X,�.]l[���lX�\\]�X#�x�cV�1\0\0(���r5s�,�����3s��[/�z*A�c֖�\0\0T�6�\0\0\0+�\0\0����\0\0\0�\0\0\0�3\0\0\0`���^�\0\0\0\0��$��\0\0\0��\Z\0\0\0�A<�LfH$�7�݆_[A�q�+�2a��,��B��7���Z����7>a��o=�x>=7,c�W����Y�Rƭ�R?��H&����H�=�������vg�\\_33�j�8�nK��\Z�_�~��{^������ca����#a��o=�x>�(�h����y��(��x@%������m,�P����D��ً�\\�\'��M��\\������X��2��q�B���B�\0(G�ɪ0�Caĝ��Q��\\�_t�DB�dRA���x�:�[f1��q+��cj�O�;��U�[O9�\Z��pe]�g0�vˌ�W]\0�������7#���ꉻU��H�Xv#A�����^T��Q�v,,c����2���y�(��l?�5A���k�c�(�\\�?N�������Y����B��	�\0X��?���%Y�ⵈ*��K;V�1��g1gҋ�o\\\n5c�2;hUЯ����\Zbyw��A�2��O���\0\0\n�ob0-�;��6��ٝ	�����r}�＊ݏ|˗�LzT����e\\�ayF�*e�-}��5��_�\0�-z�z��wR��>���~��b�S��_���Hn�5\\����\0@�+U\n��Lˁ�/�03���a�}*-<b�p�xDL���1�.SnZ��r�լ��a\0����x��~\r�%�ɌKn�����\0c}K3���_[aX?e]#��V���V���Cˇ�,�.렭����<�?��D�>7�q;��2Q�����^��e���z��z��Uƭ��Æ\0P-r�\0��h�kz�߹@\0\0\0�.\\@9zk��H\0\0���3\0\0\0`Pu�j\0\0\0\0�@p\0\0\0�\0\0\0��\0\0\00 8\0\0\0g\0\0\0���\0\0\0�\0\0\0�3\0\0\0`@p\0\0\0�\0\0\0��\0\0\00 8\0\0\0g\0\0\0���\0\0\0�\0\0\0�3\0\0\0`@p\0\0\0�\0\0\0��\0\0\00 8\0\0\0g\0\0\0���\0\0\0�\0\0\0�3\0\0\0`@p\0\0\0�\0\0\0��\0\0\00 8\0\0\0g\0\0\0���\0\0\0�\0\0\0�3\0\0\0`@p\0\0\0�\0\0\0�A\\��ɤ$)�Hdܘ>��Y.辉D³����ֶ�-K��d2���L��z\\��d?��곔��-���B��@U#\0\0�IDATu=A?_�g�k]�����r��7���f|ʥ�0�����ӯ��\r��J��\'�L.��߸�u#�1�j�+y��J��[�|g���H$LO�0������n�y�=W��\\��N��W}�2Q��}{!ۊ���1�6�5���:k[���Ց��1�~��r���g%�2A�x�Z~WZ�?�2a�q)��Fc�8W�:������H��٠ڠ��RgS��d�\'U>�>�?P�UT/L^�Y�d�����WO!��e����+����՟��la=� Q�l�	���-��&��ް�����\n�\\-�sL�>g�A�˥�B�av�jC�r���[n�^=��H$Z���Օ~{������<II�Z�!&�2~}������6��X�c���*��j��s��T��o�y���/�B���b��D��2�~{=���K������TcV����J�u�����և_=��|\"d���Uc-�l\'藘���j},�n���]��Xa�������9��,�s#����Q�{>�o�P�C�z���)F;�\n9>a_�\\��wS��\"x�\'�2n��\Z����\'A�C�x��[�Җ�L%�aT���[)�ւQ���/�J��)�����a��ǴX�_�+a�_l�9V�����bՓo�;�Q��]��n���~f���sym)�1��)�1�R9��V\nsp�=�g��D�r	�i���R=�����vTmE�Xm����˧L�(Eh���)7^�z����U97Q<Ǽ�_.��y�ʔ�F����F!�}���&w�ܯ��{;��B����#zm᭮j=�|�\'��s����sZ�����wpZ�t�\\亞�O)��sh��P���Û�xZր[�D�Vر�*_�>�Q�qη?�*��N1ǧ-��,B)���:\n�\Z��J1���9����%�L&S�~��~k\\�ގ��m\0/nm;۲�5�V>L�\0beY�f=T���g�cj��ﾹ���FP٨~���|������K[V~�����[!�9����O��ð?;ne�5>^�^���ypk������r+��k��� �����k��xl���r�a~������n[|�D1I��R�T�aUb��j�\0\0�+�5�@���R\0\0P}�q�C%�EQ�}���s\0\0�Gp\0\0\0X�\0\0\0�\0\0\0�3\0\0\0`@p\0\0\0�\0\0\0��\0\0\00 8\0\0\0g\0\0\0���\0\0\0�\0\0\0�3\0\0\0`@p\0\0\0�\0\0\0��\0\0\00 8\0\0\0g\0\0\0���\0\0\0�\0\0\0�3\0\0\0`@p\0\0\0�\0\0\0��\0\0\00 8\0\0\0g\0\0\0���\0\0\0�\0\0\0�3\0\0\0`@p\0\0\0�\0\0\0��\0\0\00 8\0\0\0g\0\0\0���\0\0\0�\0\0\0�3\0\0\0`@p\0\0\0�\0\0\0��\0\0\00 8\0\0\0g\0\0\0���\0\0\0�\0\0\0�3\0\0\0`@p\0\0\0�\0\0\0��\0\0\00 8\0\0\0g\0\0\0���\0\0\0�\0\0\0�x2��8�H$\n�`2�l#ݧB���9>��?ُ�Sv�+�\0\0\0�A��28�Ó_��W!�.��\0_��w`�c\ZT\0\0\0��r�FP�+�r�U��\0\0��ă\n�Ͳ����V&�v��~K�����.�o���?ne��E���br���g�s[��\0\0@�Œ�d�y l�	|�����ڷ��º�;(��C/a�f�z��)��B>�\0\0�R*�\Z�J��^8L�b�i�\0\0\0�\\��p�)��S_\0\0\0*]Y~8\0\0\0(7%��d�e!�򼉪\0\0����hv��*���_[��Y����!�\\>@�V�m��\\v�僁^e�z�s-�V�Y6�=�-\0\0���\n,U�H�S���c\0\0�Qխq�-��Fh\0\0�*g��,Y@n�Z�Ų\Z\0\0�b���\0\0\0D��j\0\0\0\0�@p\0\0\0�\0\0\0��\0\0\00 8\0\0\0g\0\0\0���\0\0\0�\0\0\0�3\0\0\0`@p\0\0\0�\0\0\0��\0\0\00 8\0\0\0g\0\0\0���\0\0\0�\0\0\0�3\0\0\0`@p\0\0\0j�ɤ��d�\ZL���f��TN��y\0\0��\ZIJ$Ek��mU\ZB3\0\0@����n�\0\0\0(7���m4;�f��\n��Ug�v���\\vٰ�<�����;T�_a�I���\0\0�)�L&SAA7(�\'�x�u���{+˹GU&�xض��\0\0rɮ\ZA���YO�0�H$B�CT��Y>\\鬻��\0\0����9�g%Iώ����\'��\0\0 w�f��)�F�9;���DU\0\0\0J##8�V�^�k�͵�^����:�~�役\0@u�%��T��0;Bd����u���:�|�ί�\\vq+�?��B����|��X�U\0\0�r��*8W�b6\"\0\0@u�dW�rR�%�f\0\0��U�3���D�N!�\0\0@iUep\0\0\0�VuK5\0\0\0�B 8\0\0\0g\0\0\0���\0\0\0�\0\0\0�3\0\0\0`@p\0\0\0�\0\0\0��\0\0\00 8\0\0\0g\0\0\0���\0\0\0�\0\0\0�3\0\0\0`@p\0\0\0�\0\0\0��\0\0\00 8\0\0\0�d2�q �H��d2�F�O~墪��,}��o���-e�\\�\0\0�\Zie�I�� ���.d%�>�	��R˥\0\0\0Q���n�\n\\7\0\0\0D%08-�p.��zk>��%~o�GU�[]^}�;/k��,��w	Jй��r[>\0\0`K&�)�\\[v�*�o�ʷ��c���0���;�1��{.}:Fh\0\0�,.�²�(wa�@��h�8,�:qB3\0\0�t�K5�f\\����u���c\0\0�8�(��G\0\0@!�,8���K=�Tn}.V��s��\0\0�Sˇ�>d�.�� ߋsX�˷ˎQ~80��\\>`i��\"�s���L�<n�	�e$\0\0��$�K\0\0\0mk�\0\0\0�3\0\0\0`@p\0\0\0�\0\0\0��\0\0\00h�r�e�0�۳˸��u�_9�(�\\�2��*a�Z�󪤱\0\0�\'&)e�_�/h�w�\'qT{$G��b�	{^���q�~�*e�\0\0@�����%�:�]���9ۉ���,��\0\0@qť��JS����߻֫�S&�(���՟\\���\Z\0@��zZК����A.���uٹ��Te����[����>h)I�2a��ŪP}�,���\0\0چxv�t��K�\n�^m��j>a�5��0^>e��\'<�ڞ�y~�M\0\0����f��*V���^Q��(�D��E��V;��{\0\0���Ǚ0�(}@3�H�C�\0\0������E.��m\r�[��������eJ�:�� ����ظ}����\0\0D��>�Rn;}/�]�kc��s������b�Qnϟ���\0\0�b�R��\0\0\0P�*n�3\0\0\0P\ng\0\0\0���\0\0\0�\0\0\0�3\0\0\0`����j�J���e,ܶT��ܻ�R�\0\0��\Z�;8ÎוԊY��ZOv�R�	{n����\0@!Dr����U/�3�A���~f��b��E���|_\0\0�rO$��\\F�����b]��y-u�~LK�l&��B�٫\\�z�r \0\0p�;��M�	\n���]:����XϫXe����o\'��H�j�Lv����o�<�u�\0\0�ză\nXf��-!)]>���c)Wm3��Y�9�;So-S.��y����ܬ��\0\0�O`p�(��(Bs����W����b�����3\0\0ږ�?Xɡ��2\r\0\0�-Tpn�׍������|�	Z�Z�2�V����,�Jx\0\0i�d2��>����6�ۭ�Xn�.�&:��?ne-�4���(�(�\Z~my}��ڟ��E=^e\0\0@���*8\0\0\0Ȕ�\Zg\0\0\0�- 8\0\0\0g\0\0\0���\0\0\0�\0\0\0�x�m���H[|��K}Q�Y)��>Ыl���\'�����9a�j����\0�_M�\niAz�\\ #�6k[^����wp�2�(���,�,�U�W=��W!�V��\\�W�|\0�ϴT#��\\	,��-͆�*��f�����o=�����\0�Ză\n8ÆWH)Ō�W�\\��M��ܭK\Z�ǯPW�z��Q%�8Z��nǲ�7�.�B_��~�,\n�����5�`	\0�&�L*�%���ϕ󗬳����2���ߒ���V�KY���Z�`���p+�\\\'���ڎ_9k�-�x���w���܈����K�u���W�>[���ǡT�)\0 ����!%���a�2�Vz�\'l�3F^���I��KP[��(��%��_�.E������v����9V��O��|Y����GTTu\0\n�w����g����_ܹԙV�K5�j���Q*��Q<�Q?_���;���|��	\0P>�8�x�����K�_�mWϟ��1\0�)�P�qV,-�u���)�zF�9X��ݴ���\Z�R�e����SH�z�K=�Q��\0\n+�L&S�ֵvn\"��W&ʥ~���RZ�b�oP�����W�r���A�r�OT�k[^��|�*�yU�ϗET�4>Q�\0(���T`)\0y��wZ�\nC\0h�J�Thk\\\0\0T>f���m���\0@e\"8\0\0\0,�\0\0\0\0�\0\0\0�A����������u�+��\n����>���j��\0\0\0ať�`B��[���)��x]�$�P�|n�<\0\0��X����|��e	�ֱ�\"�+��p�H\0\0�*��Gz�����R]��a��e�\'*aâW_��B��KT�ɵ͠�AW��ˉ��\0�\Z)���~�y�3x�-V�,p��a���)̌p��C�:�_ae/���Rk���s\'�qt{\\K�|\0\0�e�s��f-�!�`��W�-mY�)&Ku�5M��ZvMq�5�~�)��cUȶ�>h��>��\0\0T���\Z�_�^�,�/f��� ��.������#����l)\0\0*�8D����~��UiX�\0@�R��l	����j+*�����3h}p9�幚�=�\0��!�L&SR~�(��\Z^k��L�n!n�D���K�2~���Q��k=��Xn����ʲ�\0\0��IJ��@!���6\0\0�l�qFU\"4\0��Ń�\0句\0\0��X�\0\0\0�T\0\0\00 8\0\0\0�k��[�e\0\0\0��sg����\0\0��T\0\0\00(�%�\0\0�Jyp��\0\0\0�F�gB3\0\0\0�k�\0\0\0�H��ۮ\0\0\0@5�|�9(<��A\0\0\0T\"��$	נ�u\0\0\0�Z�$�J�	\0\0\0����@\0\0\0���\0\0\0�\0\0\0�3\0\0\0`@p\0\0\0�~[��.�L��][��Զ\0\0@�Ѳ�3A#w���-�I�s��\Zs�o�\0\0���R�r\'��\0\0\0T�+���ٳ�^��n���\n��W�z��ǯ�����[�a8���w>uy�^Gq�a�����k\0\0@�K&�)��B�_p{,}<(�X��[=Q����\\���R���0�K��n+�ca�k�-�\0\0�1�8��a�9��WO>4l=��S���o�M��O�x\0\0����qs�k]ag��փ�����\0\0�R���*�D\"pw�b��\\��q�*Q<\0\0\0r���\n�ΙBg}a�O%���s�p��׿���\\�+��r}����|�:w\0\0P�Z>�����0����e\'�B,��^h$�%�v	�WT�8Gu^Q�,Q�N�me��<V~�\0\0��#&)X\n�f�\0\0*EN@AybI\0\0@�0�\\e�KU\0\0\0�\0\0\00`�\0\0\0`@p\0\0\0⬉�F�Vy�s4�[$\0\0D��ۄ��Yv��hGT�8W3v\0\0���R�r0�֟J�\0\0��ɔ��gG�fK�Wtθ���?��Z]�XXe_^���b�:��gTKK�<�n߻���<\0\0(�P3���D\"���<��+HY�c���k����%̹�?�߅�����w.u�SWT�\0\0��s>�|��_��_=�6,�!\\��C�n\0\0\0d2�(�\Zw�gk]^e���\0ݚ%4�3�\0\0Pm�jD��4߷���O��[�\\���i\0\0\n�78G��3�����J|��jQ�5�^�(��rΕ�&\0\0h�b�d2�<���A�����[vF��k	A�]6��{����q+kY3��VT�8��n�c\Z�Vv=���m��v\0\0�B�IJ�\0\0\0ڸ�.�\0\0\0�5g\0\0\0���\0\0\0�\0\0\0�3\0\0\0`�}[��v[�(Ƙ�\0\0 Z5R4W�;g�\r\Zg�\0\0�|ų�T�ޘ��,�|���\0\0m��(~Wk�B��x��\na���U\nsi/�:�����avy�+z�i}�,�ˆ�r \0\0@�0_9�\Z�ݎ���0a+h)C�my��ox��#L���2�^|}\0\0�ť�fV�D��7;4j�p�k��!4�\0`\0\0�/.�/��R1_�mY���\"���=�\0\r\0\0P<y���,yk�tH�fm�\0\0j�<���Ǽ3lUb���>\0\0T�X2�l�p`z���rn,H���������#����Y�	�ׇìC*k��_Tc\0\0P-̻j��b�\r\0\0@k�Q}X&\0\0�\Z3�pU�-\n\0\0*�\0\0\00`�\0\0\0`@p\0\0\02.���6ra�.�nfi/l;\0\0\0@.�~��+�:�z��q�Ӌ��)a�\0\0\0Q���h��\r3��o�%4\0\0�Tjr	��\\���&��3\0\0\0)�g�����o��l�?�=�\0\0Pl1I)k(����a>�g��\Z��p \0\0\0�8�E����@\0\0�Jỏ3\0\0\0X)�P�[�y}����\0\0\0\n!�L&S�îMsˇ��ɵ�_�\0\0\0� 1I��3\0\0\0�L��j\0\0\0\0m�\0\0\00 8\0\0\0g\0\0\0���\0\0\0�%.t���0�L�����֯}�\\>�)��\n��syx����\0@u��6���.\0�H$��\'�v���Kk{��X��W\0\0T���LX���;��o�\r�v�a��\0@��{���}�>�mt���s�JaP_��+̹�;���k��_�q��7���J�N�u�ǣ\0\0(o5~����?�H��a�걜������ږ�����y�WA�9�<����_;�u�R\0\0T���qN��9כ����\'�v�I��<K�qv���{>y�c]O\r\0\0�C�>����KYO�mW:�z9���Z�\0\0২�8G�< �e��mL��T��\0\0�AQ�sv��g�s�T�\\èsL�9pf�OT���\0\0�K,�L���;2�ュ-�rQ�a�\'��AeÌa���x���F�nQ��O���ds}n��[���\\��\0\0�r�$�K�H!gL�y6\0\0\0�+�+F9��T�A�Z�\0\0�R�͌sTK0ri��	\0\0� e�\0\0�rV���\0\0\0�JEp\0\0\0���F��g\0\0��ֲ�A.w�f�I��E���\0\0\0�ONK5���j��\0\0\0T���8g�T�U�W�sθ���?~�Dqu����ʾt����:\0\0��P3���D\"���<��+�[�c���k����%��?��\0\0\0(-sp�gݭ%t��Ϸ?O\0\0\0DŴT#����N��˫L���\0\0����(wx�Z�F5�8��\0\0\0��78GR�3�����J���j�\Zg\0\0��K&�)��]#¬7N��-��ݡ­]K�\Z�bW\r��^}���>�\0\0\0�)&)X\n\0\0\0h�B����\n�\0\0\0\'�+\0\0\0m\rK5\0\0\0\0f�\0\0\0�3\0\0\0`@p\0\0\0�\0\0\0��\0\0\00 8\0\0\0g\0\0\0���\0\0\0�\0\0\0�3\0\0\0`@p\0\0\0�\0\0\0��\0\0\00 8\0\0\0g\0\0\0���\0\0\0�\0\0\0�3\0\0\0`@p\0\0\0�\0\0\0��\0\0\00 8\0\0\0g\0\0\0���\0\0\0�\0\0\0�3\0\0\0`@p\0\0\0�\0\0\0��\0\0\00 8\0\0\0g\0\0\0���\0\0\0��XK�o��O���J�Znt����xZ��+��6��ݜ�0����#�s(:t�1���{^3g��~�\rւ����k�-�Ѐ���������UϞ=�ᆽԹsg���i�u�i��$m��F�o��z����C�l�2=�ējll�h�W���:w��گ�?�[o��\\b��v�m7m���;w�f̘�o��V3f�t-?d�-[�T�G���r��4x𾪩��+���OK�\0����.vkll����bv	(k�X���c��jjV�#��Ԩ��^]�tQMM�jjjT[[����#₠Q~�\0\0\0\0IEND�B`�',3);
/*!40000 ALTER TABLE `course_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussion_answer`
--

DROP TABLE IF EXISTS `discussion_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussion_answer` (
  `create_time` int(11) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) DEFAULT NULL,
  `content` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_gid` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `topic_id` (`topic_id`),
  KEY `author_gid` (`author_gid`),
  CONSTRAINT `discussion_answer_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `discussion_topic` (`id`),
  CONSTRAINT `discussion_answer_ibfk_2` FOREIGN KEY (`author_gid`) REFERENCES `user` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussion_answer`
--

LOCK TABLES `discussion_answer` WRITE;
/*!40000 ALTER TABLE `discussion_answer` DISABLE KEYS */;
INSERT INTO `discussion_answer` VALUES (1590084659,1,1,1,'123123','0000000000',0),(1590084661,1,2,1,'123123','0000000000',0),(1590084663,1,3,1,'123123','0000000000',0);
/*!40000 ALTER TABLE `discussion_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussion_topic`
--

DROP TABLE IF EXISTS `discussion_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussion_topic` (
  `create_time` int(11) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) DEFAULT NULL,
  `title` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_gid` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stars` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `question_id` (`question_id`),
  KEY `author_gid` (`author_gid`),
  CONSTRAINT `discussion_topic_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`),
  CONSTRAINT `discussion_topic_ibfk_2` FOREIGN KEY (`author_gid`) REFERENCES `user` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussion_topic`
--

LOCK TABLES `discussion_topic` WRITE;
/*!40000 ALTER TABLE `discussion_topic` DISABLE KEYS */;
INSERT INTO `discussion_topic` VALUES (1590084591,1,1,1,'Why','123123','0000000000',0),(1590084591,1,2,1,'Why','123123','0000000000',0),(1590084593,1,3,1,'Why','123123','0000000000',0);
/*!40000 ALTER TABLE `discussion_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enroll`
--

DROP TABLE IF EXISTS `enroll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enroll` (
  `create_time` int(11) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_gid` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_cid` int(11) DEFAULT NULL,
  `enroll_type` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_gid` (`user_gid`),
  KEY `course_cid` (`course_cid`),
  CONSTRAINT `enroll_ibfk_1` FOREIGN KEY (`user_gid`) REFERENCES `user` (`gid`),
  CONSTRAINT `enroll_ibfk_2` FOREIGN KEY (`course_cid`) REFERENCES `course` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enroll`
--

LOCK TABLES `enroll` WRITE;
/*!40000 ALTER TABLE `enroll` DISABLE KEYS */;
INSERT INTO `enroll` VALUES (1590084200,1,7,'0000000000',3,3),(1590084200,1,10,'0000000002',3,1),(1590084200,1,11,'0000000003',3,2),(1590084200,1,12,'0000000004',3,2),(1590084513,1,13,'0000000010',4,3),(1590084513,1,14,'0000000011',4,1),(1590084513,1,15,'0000000011',4,1),(1590084513,1,16,'0000000012',4,1),(1590084513,1,17,'0000000013',4,2),(1590084513,1,18,'0000000014',4,2);
/*!40000 ALTER TABLE `enroll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history_question`
--

DROP TABLE IF EXISTS `history_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history_question` (
  `create_time` int(11) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `question_id` (`question_id`),
  CONSTRAINT `history_question_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history_question`
--

LOCK TABLES `history_question` WRITE;
/*!40000 ALTER TABLE `history_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `history_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question` (
  `create_time` int(11) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_gid` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `author_gid` (`author_gid`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `question_ibfk_1` FOREIGN KEY (`author_gid`) REFERENCES `user` (`gid`),
  CONSTRAINT `question_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1590084524,1,1,'zm','123','0000000000',3,1590084524),(1590084572,1,2,'zm11','123','0000000000',3,1590084572),(1590084573,1,3,'zm11','123','0000000000',3,1590084573),(1590084690,1,4,'zm11','123','0000000000',3,1590084690);
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_tag_table`
--

DROP TABLE IF EXISTS `question_tag_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question_tag_table` (
  `tag_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  KEY `tag_id` (`tag_id`),
  KEY `question_id` (`question_id`),
  CONSTRAINT `question_tag_table_ibfk_1` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`),
  CONSTRAINT `question_tag_table_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_tag_table`
--

LOCK TABLES `question_tag_table` WRITE;
/*!40000 ALTER TABLE `question_tag_table` DISABLE KEYS */;
INSERT INTO `question_tag_table` VALUES (1,4),(2,4);
/*!40000 ALTER TABLE `question_tag_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `create_time` int(11) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1590084690,1,1,'123123avc'),(1590084690,1,2,'tag');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `create_time` int(11) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `gid` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`gid`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `nickname` (`nickname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1590083923,1,'0000000000','9990@ustc.edu.cn','Super0',4),(1590083923,1,'0000000001','9991@ustc.edu.cn','Super1',4),(1590083923,1,'0000000002','9992@ustc.edu.cn','Super2',4),(1590083923,1,'0000000003','9993@ustc.edu.cn','Super3',4),(1590083923,1,'0000000004','9994@ustc.edu.cn','Super4',4),(1590083923,1,'0000000005','9995@ustc.edu.cn','Super5',4),(1590083923,1,'0000000006','9996@ustc.edu.cn','Super6',4),(1590083923,1,'0000000007','9997@ustc.edu.cn','Super7',4),(1590083923,1,'0000000008','9998@ustc.edu.cn','Super8',4),(1590083923,1,'0000000009','9999@ustc.edu.cn','Super9',4),(1590083923,1,'0000000010','99910@ustc.edu.cn','Super10',4),(1590083923,1,'0000000011','99911@ustc.edu.cn','Super11',4),(1590083923,1,'0000000012','99912@ustc.edu.cn','Super12',4),(1590083923,1,'0000000013','99913@ustc.edu.cn','Super13',4),(1590083923,1,'0000000014','99914@ustc.edu.cn','Super14',4),(1590083923,1,'0000000015','99915@ustc.edu.cn','Super15',4),(1590083923,1,'0000000016','99916@ustc.edu.cn','Super16',4),(1590083923,1,'0000000017','99917@ustc.edu.cn','Super17',4),(1590083923,1,'0000000018','99918@ustc.edu.cn','Super18',4),(1590083923,1,'0000000019','99919@ustc.edu.cn','Super19',4),(1590083923,1,'0000000020','99920@ustc.edu.cn','Super20',4),(1590083923,1,'0000000021','99921@ustc.edu.cn','Super21',4),(1590083923,1,'0000000022','99922@ustc.edu.cn','Super22',4),(1590083923,1,'0000000023','99923@ustc.edu.cn','Super23',4),(1590083923,1,'0000000024','99924@ustc.edu.cn','Super24',4),(1590083923,1,'0000000025','99925@ustc.edu.cn','Super25',4),(1590083923,1,'0000000026','99926@ustc.edu.cn','Super26',4),(1590083923,1,'0000000027','99927@ustc.edu.cn','Super27',4),(1590083923,1,'0000000028','99928@ustc.edu.cn','Super28',4),(1590083923,1,'0000000029','99929@ustc.edu.cn','Super29',4),(1590083923,1,'0000000030','99930@ustc.edu.cn','Super30',4),(1590083923,1,'0000000031','99931@ustc.edu.cn','Super31',4),(1590083923,1,'0000000032','99932@ustc.edu.cn','Super32',4),(1590083923,1,'0000000033','99933@ustc.edu.cn','Super33',4),(1590083923,1,'0000000034','99934@ustc.edu.cn','Super34',4),(1590083923,1,'0000000035','99935@ustc.edu.cn','Super35',4),(1590083923,1,'0000000036','99936@ustc.edu.cn','Super36',4),(1590083923,1,'0000000037','99937@ustc.edu.cn','Super37',4),(1590083923,1,'0000000038','99938@ustc.edu.cn','Super38',4),(1590083923,1,'0000000039','99939@ustc.edu.cn','Super39',4),(1590083923,1,'0000000040','99940@ustc.edu.cn','Super40',4),(1590083923,1,'0000000041','99941@ustc.edu.cn','Super41',4),(1590083923,1,'0000000042','99942@ustc.edu.cn','Super42',4),(1590083923,1,'0000000043','99943@ustc.edu.cn','Super43',4),(1590083923,1,'0000000044','99944@ustc.edu.cn','Super44',4),(1590083923,1,'0000000045','99945@ustc.edu.cn','Super45',4),(1590083923,1,'0000000046','99946@ustc.edu.cn','Super46',4),(1590083923,1,'0000000047','99947@ustc.edu.cn','Super47',4),(1590083923,1,'0000000048','99948@ustc.edu.cn','Super48',4),(1590083923,1,'0000000049','99949@ustc.edu.cn','Super49',4),(1590083923,1,'0000000050','99950@ustc.edu.cn','Super50',4),(1590083923,1,'0000000051','99951@ustc.edu.cn','Super51',4),(1590083923,1,'0000000052','99952@ustc.edu.cn','Super52',4),(1590083923,1,'0000000053','99953@ustc.edu.cn','Super53',4),(1590083923,1,'0000000054','99954@ustc.edu.cn','Super54',4),(1590083923,1,'0000000055','99955@ustc.edu.cn','Super55',4),(1590083923,1,'0000000056','99956@ustc.edu.cn','Super56',4),(1590083923,1,'0000000057','99957@ustc.edu.cn','Super57',4),(1590083923,1,'0000000058','99958@ustc.edu.cn','Super58',4),(1590083923,1,'0000000059','99959@ustc.edu.cn','Super59',4),(1590083923,1,'0000000060','99960@ustc.edu.cn','Super60',4),(1590083923,1,'0000000061','99961@ustc.edu.cn','Super61',4),(1590083923,1,'0000000062','99962@ustc.edu.cn','Super62',4),(1590083923,1,'0000000063','99963@ustc.edu.cn','Super63',4),(1590083923,1,'0000000064','99964@ustc.edu.cn','Super64',4),(1590083923,1,'0000000065','99965@ustc.edu.cn','Super65',4),(1590083923,1,'0000000066','99966@ustc.edu.cn','Super66',4),(1590083923,1,'0000000067','99967@ustc.edu.cn','Super67',4),(1590083923,1,'0000000068','99968@ustc.edu.cn','Super68',4),(1590083923,1,'0000000069','99969@ustc.edu.cn','Super69',4),(1590083923,1,'0000000070','99970@ustc.edu.cn','Super70',4),(1590083923,1,'0000000071','99971@ustc.edu.cn','Super71',4),(1590083923,1,'0000000072','99972@ustc.edu.cn','Super72',4),(1590083923,1,'0000000073','99973@ustc.edu.cn','Super73',4),(1590083923,1,'0000000074','99974@ustc.edu.cn','Super74',4),(1590083923,1,'0000000075','99975@ustc.edu.cn','Super75',4),(1590083923,1,'0000000076','99976@ustc.edu.cn','Super76',4),(1590083923,1,'0000000077','99977@ustc.edu.cn','Super77',4),(1590083923,1,'0000000078','99978@ustc.edu.cn','Super78',4),(1590083923,1,'0000000079','99979@ustc.edu.cn','Super79',4),(1590083923,1,'0000000080','99980@ustc.edu.cn','Super80',4),(1590083923,1,'0000000081','99981@ustc.edu.cn','Super81',4),(1590083923,1,'0000000082','99982@ustc.edu.cn','Super82',4),(1590083923,1,'0000000083','99983@ustc.edu.cn','Super83',4),(1590083923,1,'0000000084','99984@ustc.edu.cn','Super84',4),(1590083923,1,'0000000085','99985@ustc.edu.cn','Super85',4),(1590083923,1,'0000000086','99986@ustc.edu.cn','Super86',4),(1590083923,1,'0000000087','99987@ustc.edu.cn','Super87',4),(1590083923,1,'0000000088','99988@ustc.edu.cn','Super88',4),(1590083923,1,'0000000089','99989@ustc.edu.cn','Super89',4),(1590083923,1,'0000000090','99990@ustc.edu.cn','Super90',4),(1590083923,1,'0000000091','99991@ustc.edu.cn','Super91',4),(1590083923,1,'0000000092','99992@ustc.edu.cn','Super92',4),(1590083923,1,'0000000093','99993@ustc.edu.cn','Super93',4),(1590083923,1,'0000000094','99994@ustc.edu.cn','Super94',4),(1590083923,1,'0000000095','99995@ustc.edu.cn','Super95',4),(1590083923,1,'0000000096','99996@ustc.edu.cn','Super96',4),(1590083923,1,'0000000097','99997@ustc.edu.cn','Super97',4),(1590083923,1,'0000000098','99998@ustc.edu.cn','Super98',4),(1590083923,1,'0000000099','99999@ustc.edu.cn','Super99',4);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-22  2:26:31
