-- phpMyAdmin SQL Dump
-- version 4.0.5
-- http://www.phpmyadmin.net
--
-- Client: 127.0.0.1
-- Généré le: Jeu 28 Avril 2016 à 17:17
-- Version du serveur: 5.6.12-log
-- Version de PHP: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `mlr1`
--

-- --------------------------------------------------------

--
-- Structure de la table `chauffeur`
--

CREATE TABLE IF NOT EXISTS `chauffeur` (
  `CHFID` char(32) NOT NULL,
  `CHFNOM` char(32) DEFAULT NULL,
  `CHFPRENOM` char(32) DEFAULT NULL,
  `CHFTEL` char(32) DEFAULT NULL,
  `CHFMAIL` char(32) DEFAULT NULL,
  PRIMARY KEY (`CHFID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `chauffeur`
--

INSERT INTO `chauffeur` (`CHFID`, `CHFNOM`, `CHFPRENOM`, `CHFTEL`, `CHFMAIL`) VALUES
('0', 'Martin', 'Dimitri', '0630709092', 'DimitriMartin@Caponant.BZH'),
('1', 'Legrand', 'Lucas', '0658125634', 'LucasLegrand@Caponant.BZH'),
('10', 'Richard', 'Yanis', '0670963670', 'YanisRichard@Caponant.BZH'),
('11', 'Guerin', 'Alexandre', '0638501894', 'AlexandreGuerin@Caponant.BZH'),
('12', 'Petit', 'Théo', '0672347010', 'ThéoPetit@Caponant.BZH'),
('13', 'Muller', 'Hugo', '0698967818', 'HugoMuller@Caponant.BZH'),
('14', 'Durand', 'Enzo', '0636129234', 'EnzoDurand@Caponant.BZH'),
('15', 'Henry', 'Nathan', '0690503696', 'NathanHenry@Caponant.BZH'),
('16', 'Leroy', 'Antoine', '0630963832', 'AntoineLeroy@Caponant.BZH'),
('17', 'Roussel', 'Gabriel', '0634329836', 'GabrielRoussel@Caponant.BZH'),
('18', 'Moreau', 'Clément', '0676105092', 'ClémentMoreau@Caponant.BZH'),
('19', 'Nicolas', 'Florentin', '0638323652', 'FlorentinNicolas@Caponant.BZH'),
('2', 'Bernard', 'Mattéo', '0618165496', 'MattéoBernard@Caponant.BZH'),
('20', 'Simon', 'Jules', '0672529034', 'JulesSimon@Caponant.BZH'),
('21', 'Perrin', 'Baptiste', '0672509050', 'BaptistePerrin@Caponant.BZH'),
('22', 'Laurent', 'Paul', '0610141432', 'PaulLaurent@Caponant.BZH'),
('23', 'Morin', 'Alexis', '0678983030', 'AlexisMorin@Caponant.BZH'),
('24', 'Lefebvre', 'Noah', '0610923412', 'NoahLefebvre@Caponant.BZH'),
('25', 'Mathieu', 'Mathis', '0694747676', 'MathisMathieu@Caponant.BZH'),
('26', 'Michel', 'Ethan', '0638905276', 'EthanMichel@Caponant.BZH'),
('27', 'Clement', 'Quentin', '0692581874', 'QuentinClement@Caponant.BZH'),
('28', 'Garcia', 'Maxence', '0618165494', 'MaxenceGarcia@Caponant.BZH'),
('29', 'Gauthier', 'Pierre', '0610705676', 'PierreGauthier@Caponant.BZH'),
('3', 'Garnier', 'Léo', '0674343672', 'LéoGarnier@Caponant.BZH'),
('30', 'David', 'Valentin', '0650707294', 'ValentinDavid@Caponant.BZH'),
('31', 'Dumont', 'Julien', '0698927010', 'JulienDumont@Caponant.BZH'),
('32', 'Bertrand', 'Romain', '0632347650', 'RomainBertrand@Caponant.BZH'),
('33', 'Lopez', 'Adam', '0618521058', 'AdamLopez@Caponant.BZH'),
('34', 'Roux', 'Victor', '0656147696', 'VictorRoux@Caponant.BZH'),
('35', 'Fontaine', 'Mohamed', '0690303650', 'MohamedFontaine@Caponant.BZH'),
('36', 'Vincent', 'Nicolas', '0610347498', 'NicolasVincent@Caponant.BZH'),
('37', 'Chevalier', 'Nolan', '0612367816', 'NolanChevalier@Caponant.BZH'),
('38', 'Fournier', 'Timéo', '0634727692', 'TiméoFournier@Caponant.BZH'),
('39', 'Robin', 'Mathieu', '0676509476', 'MathieuRobin@Caponant.BZH'),
('4', 'Dubois', 'Evan', '0636729652', 'EvanDubois@Caponant.BZH'),
('40', 'Morel', 'Tristan', '0690307430', 'TristanMorel@Caponant.BZH'),
('41', 'Masson', 'Anthony', '0690949878', 'AnthonyMasson@Caponant.BZH'),
('42', 'Girard', 'Antonin', '0618945872', 'AntoninGirard@Caponant.BZH'),
('43', 'Sanchez', 'Lorenzo', '0654561874', 'LorenzoSanchez@Caponant.BZH'),
('44', 'Andre', 'Gabin', '0676985878', 'GabinAndre@Caponant.BZH'),
('45', 'Gerard', 'Jérémy', '0650363432', 'JérémyGerard@Caponant.BZH'),
('46', 'Lefevre', 'Dylan', '0674103436', 'DylanLefevre@Caponant.BZH'),
('47', 'Nguyen', 'Kevin', '0616343454', 'KevinNguyen@Caponant.BZH'),
('48', 'Mercier', 'Constant', '0634701678', 'ConstantMercier@Caponant.BZH'),
('49', 'Boyer', 'Esteban', '0614723250', 'EstebanBoyer@Caponant.BZH'),
('5', 'Faure', 'Louis', '0632961292', 'LouisFaure@Caponant.BZH'),
('50', 'Dupont', 'Dorian', '0614389492', 'DorianDupont@Caponant.BZH'),
('51', 'Lambert', 'Diego', '0652183630', 'DiegoLambert@Caponant.BZH'),
('52', 'Lemaire', 'Kyllian', '0676167672', 'KyllianLemaire@Caponant.BZH'),
('53', 'Bonnet', 'Samuel', '0652923494', 'SamuelBonnet@Caponant.BZH'),
('54', 'Duval', 'Florian', '0658323634', 'FlorianDuval@Caponant.BZH'),
('55', 'Francois', 'Thibault', '0694943090', 'ThibaultFrancois@Caponant.BZH'),
('56', 'Joly', 'Adrien', '0692561270', 'AdrienJoly@Caponant.BZH'),
('57', 'Martinez', 'Benjamin', '0674943090', 'BenjaminMartinez@Caponant.BZH'),
('58', 'Roger', 'Corentin', '0676187478', 'CorentinRoger@Caponant.BZH'),
('59', 'Bourgeois', 'Eric', '0616341852', 'EricBourgeois@Caponant.BZH'),
('6', 'Thomas', 'Tom', '0696545492', 'TomThomas@Caponant.BZH'),
('60', 'Roche', 'Kylian', '0612783230', 'KylianRoche@Caponant.BZH'),
('61', 'Renaud', 'Mehdi', '0690921090', 'MehdiRenaud@Caponant.BZH'),
('62', 'Roy', 'Noë', '0698789496', 'NoëRoy@Caponant.BZH'),
('63', 'Lemoine', 'Rémi', '0614989090', 'RémiLemoine@Caponant.BZH'),
('64', 'Noel', 'Simon', '0616965496', 'SimonNoel@Caponant.BZH'),
('65', 'Picard', 'Titouan', '0690927472', 'TitouanPicard@Caponant.BZH'),
('66', 'Meyer', 'Robin', '0694321098', 'RobinMeyer@Caponant.BZH'),
('67', 'Gaillard', 'Bastien', '0616145630', 'BastienGaillard@Caponant.BZH'),
('68', 'Lucas', 'Kilian', '0614985054', 'KilianLucas@Caponant.BZH'),
('69', 'Philippe', 'Killian', '0672561250', 'KillianPhilippe@Caponant.BZH'),
('7', 'Rousseau', 'Maxime', '0650567696', 'MaximeRousseau@Caponant.BZH'),
('70', 'Meunier', 'Lilian', '0674701894', 'LilianMeunier@Caponant.BZH'),
('71', 'Leclercq', 'Martin', '0690369434', 'MartinLeclercq@Caponant.BZH'),
('72', 'Jean', 'Amine', '0694925098', 'AmineJean@Caponant.BZH'),
('73', 'Lacroix', 'Guillaume', '0650145412', 'GuillaumeLacroix@Caponant.BZH'),
('74', 'Perez', 'Léonard', '0656129074', 'LéonardPerez@Caponant.BZH'),
('75', 'Fabre', 'Malo', '0670321832', 'MaloFabre@Caponant.BZH'),
('76', 'Marchand', 'Élouan', '0658503414', 'ÉlouanMarchand@Caponant.BZH'),
('77', 'Dupuis', 'Davy', '0610767856', 'DavyDupuis@Caponant.BZH'),
('78', 'Dufour', 'Léon', '0612385638', 'LéonDufour@Caponant.BZH'),
('79', 'Olivier', 'Renaud', '0612303434', 'RenaudOlivier@Caponant.BZH'),
('8', 'Robert', 'Arthur', '0618569694', 'ArthurRobert@Caponant.BZH'),
('80', 'Blanchard', 'Bruno', '0618329234', 'BrunoBlanchard@Caponant.BZH'),
('81', 'Rodriguez', 'Timothée', '0676129694', 'TimothéeRodriguez@Caponant.BZH'),
('82', 'Marie', 'Félix', '0674361694', 'FélixMarie@Caponant.BZH'),
('83', 'Da silva', 'Roméo', '0678125410', 'RoméoDa silva@Caponant.BZH'),
('84', 'Barbier', 'Yohan', '0650785438', 'YohanBarbier@Caponant.BZH'),
('85', 'Hubert', 'Gilbert', '0614329018', 'GilbertHubert@Caponant.BZH'),
('86', 'Brun', 'Colin', '0698307836', 'ColinBrun@Caponant.BZH'),
('87', 'Louis', 'Marwane', '0698783078', 'MarwaneLouis@Caponant.BZH'),
('88', 'Dumas', 'Gaspard', '0696189016', 'GaspardDumas@Caponant.BZH'),
('89', 'Charles', 'Aaron', '0636349614', 'AaronCharles@Caponant.BZH'),
('9', 'Blanc', 'Thomas', '0618545454', 'ThomasBlanc@Caponant.BZH'),
('90', 'Brunet', 'Émile', '0636161670', 'ÉmileBrunet@Caponant.BZH'),
('91', 'Guillot', 'Grégory', '0612383832', 'GrégoryGuillot@Caponant.BZH'),
('92', 'Schmitt', 'Cédric', '0616321898', 'CédricSchmitt@Caponant.BZH'),
('93', 'Riviere', 'Zacharis', '0652325614', 'ZacharisRiviere@Caponant.BZH'),
('94', 'Leroux', 'Amaury', '0636963698', 'AmauryLeroux@Caponant.BZH'),
('95', 'Le gall', 'Fabrice', '0630729078', 'FabriceLe gall@Caponant.BZH'),
('96', 'Colin', 'David', '0610583052', 'DavidColin@Caponant.BZH'),
('97', 'Guillaume', 'Jordan', '0650323096', 'JordanGuillaume@Caponant.BZH'),
('98', 'Fernandez', 'Rayane', '0632503290', 'RayaneFernandez@Caponant.BZH'),
('99', 'Adam', 'Alban', '0632905498', 'AlbanAdam@Caponant.BZH');

-- --------------------------------------------------------

--
-- Structure de la table `commune`
--

CREATE TABLE IF NOT EXISTS `commune` (
  `VILID` char(32) NOT NULL,
  `VILNOM` char(32) DEFAULT NULL,
  PRIMARY KEY (`VILID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `commune`
--

INSERT INTO `commune` (`VILID`, `VILNOM`) VALUES
('1001', 'L''Abergement-Cl?menciat'),
('1002', 'L''Abergement-de-Varey'),
('1004', 'Amb?rieu-en-Bugey'),
('1005', 'Amb?rieux-en-Dombes'),
('1006', 'Ambl?on'),
('1007', 'Ambronay'),
('1008', 'Ambutrix'),
('1009', 'Andert-et-Condon'),
('1010', 'Anglefort'),
('1011', 'Apremont'),
('1012', 'Aranc'),
('1013', 'Arandas'),
('1014', 'Arbent'),
('1015', 'Arbignieu'),
('1016', 'Arbigny'),
('1017', 'Argis'),
('1019', 'Armix'),
('1021', 'Ars-sur-Formans'),
('1022', 'Artemare'),
('1023', 'Asni?res-sur-Sa?ne'),
('1024', 'Attignat'),
('1025', 'B?g?-la-Ville'),
('1026', 'B?g?-le-Ch?tel'),
('1027', 'Balan'),
('1028', 'Baneins'),
('1029', 'Beaupont'),
('1030', 'Beauregard'),
('1031', 'Bellignat'),
('1032', 'B?ligneux'),
('1033', 'Bellegarde-sur-Valserine'),
('1034', 'Belley'),
('1035', 'Belleydoux'),
('1036', 'Belmont-Luth?zieu'),
('1037', 'B?nonces'),
('1038', 'B?ny'),
('1039', 'B?on'),
('1040', 'B?r?ziat'),
('1041', 'Bettant'),
('1042', 'Bey'),
('1043', 'Beynost'),
('1044', 'Billiat'),
('1045', 'Birieux'),
('1046', 'Biziat'),
('1047', 'Blyes'),
('1049', 'LaBoisse'),
('1050', 'Boissey'),
('1051', 'Bolozon'),
('1052', 'Bouligneux'),
('1053', 'Bourg-en-Bresse'),
('1054', 'Bourg-Saint-Christophe'),
('1056', 'Boyeux-Saint-J?r?me'),
('1057', 'Boz'),
('1058', 'Br?gnier-Cordon'),
('1059', 'Br?naz'),
('1060', 'Br?nod'),
('1061', 'Brens'),
('1062', 'Bressolles'),
('1063', 'Brion'),
('1064', 'Briord'),
('1065', 'Buellas'),
('1066', 'LaBurbanche'),
('1067', 'Ceignes'),
('1068', 'Cerdon'),
('1069', 'Certines'),
('1071', 'Cessy'),
('1072', 'Ceyz?riat'),
('1073', 'Ceyz?rieu'),
('1074', 'Chalamont'),
('1075', 'Chaleins'),
('1076', 'Chaley'),
('1077', 'Challes-la-Montagne'),
('1078', 'Challex'),
('1079', 'Champagne-en-Valromey'),
('1080', 'Champdor'),
('1081', 'Champfromier'),
('1082', 'Chanay'),
('1083', 'Chaneins'),
('1084', 'Chanoz-Ch?tenay'),
('1085', 'LaChapelle-du-Ch?telard'),
('1087', 'Charix'),
('1088', 'Charnoz-sur-Ain'),
('1089', 'Ch?teau-Gaillard'),
('1090', 'Ch?tenay'),
('1091', 'Ch?tillon-en-Michaille'),
('1092', 'Ch?tillon-la-Palud'),
('1093', 'Ch?tillon-sur-Chalaronne'),
('1094', 'Chavannes-sur-Reyssouze'),
('1095', 'Chavannes-sur-Suran'),
('1096', 'Chaveyriat'),
('1097', 'Chavornay'),
('1098', 'Chazey-Bons'),
('1099', 'Chazey-sur-Ain'),
('1100', 'Cheignieu-la-Balme'),
('1101', 'Chevillard'),
('1102', 'Chevroux'),
('1103', 'Chevry'),
('1104', 'Ch?zery-Forens'),
('1105', 'Civrieux'),
('1106', 'Cize'),
('1107', 'Cleyzieu'),
('1108', 'Coligny'),
('1109', 'Collonges'),
('1110', 'Colomieu'),
('1111', 'Conand'),
('1112', 'Condamine'),
('1113', 'Condeissiat'),
('1114', 'Confort'),
('1115', 'Confran?on'),
('1116', 'Contrevoz'),
('1117', 'Conzieu'),
('1118', 'Corbonod'),
('1119', 'Corcelles'),
('1121', 'Corlier'),
('1122', 'Cormaranche-en-Bugey'),
('1123', 'Cormoranche-sur-Sa?ne'),
('1124', 'Cormoz'),
('1125', 'Corveissiat'),
('1127', 'Courmangoux'),
('1128', 'Courtes'),
('1129', 'Crans'),
('1130', 'Cras-sur-Reyssouze'),
('1133', 'Cressin-Rochefort'),
('1134', 'Crottet'),
('1135', 'Crozet'),
('1136', 'Cruzilles-l?s-M?pillat'),
('1138', 'Culoz'),
('1139', 'Curciat-Dongalon'),
('1140', 'Curtafond'),
('1141', 'Cuzieu'),
('1142', 'Dagneux'),
('1143', 'Divonne-les-Bains'),
('1144', 'Dommartin'),
('1145', 'Dompierre-sur-Veyle'),
('1146', 'Dompierre-sur-Chalaronne'),
('1147', 'Domsure'),
('1148', 'Dortan'),
('1149', 'Douvres'),
('1150', 'Drom'),
('1151', 'Druillat'),
('1152', '?challon'),
('1153', '?chenevex'),
('1154', '?trez'),
('1155', '?vosges'),
('1156', 'Faramans'),
('1157', 'Fareins'),
('1158', 'Farges'),
('1159', 'Feillens'),
('1160', 'Ferney-Voltaire'),
('1162', 'Flaxieu'),
('1163', 'Foissiat');

-- --------------------------------------------------------

--
-- Structure de la table `documentation`
--

CREATE TABLE IF NOT EXISTS `documentation` (
  `DOCID` char(32) NOT NULL,
  `TRNNUM` char(32) NOT NULL,
  `TYPDOCID` char(32) NOT NULL,
  `DOCURL` char(32) DEFAULT NULL,
  PRIMARY KEY (`DOCID`),
  KEY `I_FK_DOCUMENTATION_TOURNEE` (`TRNNUM`),
  KEY `I_FK_DOCUMENTATION_TYPEDOCUMENTATION` (`TYPDOCID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `etape`
--

CREATE TABLE IF NOT EXISTS `etape` (
  `TRNNUM` char(32) NOT NULL,
  `ETPID` char(32) NOT NULL,
  `LIEUID` char(32) NOT NULL,
  `ETPHREMIN` datetime DEFAULT NULL,
  `ETPHREMAX` datetime DEFAULT NULL,
  `ETPHREDEBUT` datetime DEFAULT NULL,
  `ETPHREFIN` datetime DEFAULT NULL,
  `ETPNBPALLIV` smallint(6) DEFAULT NULL,
  `ETPNBPALLIVEUR` smallint(6) DEFAULT NULL,
  `ETPNBPALCHARG` smallint(6) DEFAULT NULL,
  `ETPNBPALCHARGEUR` datetime DEFAULT NULL,
  `ETPCHEQUE` smallint(6) DEFAULT NULL,
  `ETPETATLIV` char(32) DEFAULT NULL,
  `ETPCOMMENTAIRE` char(32) DEFAULT NULL,
  `ETPVAL` char(32) DEFAULT NULL,
  `ETPKM` int(11) DEFAULT NULL,
  PRIMARY KEY (`TRNNUM`,`ETPID`),
  KEY `I_FK_ETAPE_TOURNEE` (`TRNNUM`),
  KEY `I_FK_ETAPE_LIEU` (`LIEUID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `etape`
--

INSERT INTO `etape` (`TRNNUM`, `ETPID`, `LIEUID`, `ETPHREMIN`, `ETPHREMAX`, `ETPHREDEBUT`, `ETPHREFIN`, `ETPNBPALLIV`, `ETPNBPALLIVEUR`, `ETPNBPALCHARG`, `ETPNBPALCHARGEUR`, `ETPCHEQUE`, `ETPETATLIV`, `ETPCOMMENTAIRE`, `ETPVAL`, `ETPKM`) VALUES
('1', '1', '0', NULL, NULL, '2016-04-28 13:30:00', '2016-04-28 15:00:00', 10, 2, 25, '2016-04-28 10:00:00', 1, 'En cours.', 'C''est looooong.', NULL, 147),
('1', '2', '1', NULL, NULL, '2016-04-28 15:10:00', '2016-04-28 16:00:00', 20, 4, 50, '2016-04-28 05:00:00', 1, 'En cours.', 'Je vais me pendre.', NULL, 1080),
('2', '1', '3', NULL, NULL, '2016-04-28 08:00:00', '2016-04-28 10:00:00', 70, 50, 130, '2016-04-28 10:00:00', 0, 'Finit.', 'Je joue en conduisant.', NULL, 10500),
('3', '1', '19', NULL, NULL, '2016-04-28 15:00:00', '2016-04-28 18:40:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('4', '1', '27', NULL, NULL, '2016-04-28 17:00:00', '2016-04-28 20:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `lieu`
--

CREATE TABLE IF NOT EXISTS `lieu` (
  `LIEUID` char(32) NOT NULL,
  `VILID` char(32) NOT NULL,
  `LIEUNOM` char(32) DEFAULT NULL,
  `LIEUCOORDGPS` char(32) DEFAULT NULL,
  PRIMARY KEY (`LIEUID`),
  KEY `I_FK_LIEU_COMMUNE` (`VILID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `lieu`
--

INSERT INTO `lieu` (`LIEUID`, `VILID`, `LIEUNOM`, `LIEUCOORDGPS`) VALUES
('0', '1001', 'AMAREINS', NULL),
('1', '1002', 'AMBERIEU', NULL),
('10', '1012', 'ARANDAS', NULL),
('11', '1013', 'ARBENT', NULL),
('12', '1014', 'ARBIGNIEU', NULL),
('13', '1015', 'ARBIGNY', NULL),
('14', '1016', 'ARGIS', NULL),
('15', '1017', 'ARMIX', NULL),
('16', '1019', 'ARS', NULL),
('17', '1021', 'ARTEMARE', NULL),
('18', '1022', 'ASNIERES', NULL),
('19', '1023', 'ATTIGNAT', NULL),
('2', '1004', 'AMBERIEUX', NULL),
('20', '1024', 'BAGE', NULL),
('21', '1025', 'BAGE', NULL),
('22', '1026', 'BALAN', NULL),
('23', '1027', 'BANEINS', NULL),
('24', '1028', 'BEAUPONT', NULL),
('25', '1029', 'BEAUREGARD', NULL),
('26', '1030', 'BELLIGNAT', NULL),
('27', '1031', 'BELIGNEUX', NULL),
('28', '1032', 'BELLEGARDE', NULL),
('29', '1033', 'BELLEY', NULL),
('3', '1005', 'AMBLEON', NULL),
('30', '1034', 'BELLEYDOUX', NULL),
('31', '1035', 'BELMONT', NULL),
('32', '1036', 'BENONCES', NULL),
('33', '1037', 'BENY', NULL),
('34', '1038', 'BEON', NULL),
('35', '1039', 'BEREZIAT', NULL),
('36', '1040', 'BETTANT', NULL),
('37', '1041', 'BEY', NULL),
('38', '1042', 'BEYNOST', NULL),
('39', '1043', 'BILLIAT', NULL),
('4', '1006', 'AMBRONAY', NULL),
('40', '1044', 'BIRIEUX', NULL),
('41', '1045', 'BIZIAT', NULL),
('42', '1046', 'BLYES', NULL),
('43', '1047', 'BOHAS', NULL),
('44', '1049', 'LA', NULL),
('45', '1050', 'BOISSEY', NULL),
('46', '1051', 'BOLOZON', NULL),
('47', '1052', 'BOULIGNEUX', NULL),
('48', '1053', 'BOURG', NULL),
('49', '1054', 'BOURG', NULL),
('5', '1007', 'AMBUTRIX', NULL),
('50', '1056', 'BOUVENT', NULL),
('51', '1057', 'BOYEUX', NULL),
('52', '1058', 'BOZ', NULL),
('53', '1059', 'BREGNIER', NULL),
('54', '1060', 'BRENAZ', NULL),
('55', '1061', 'BRENOD', NULL),
('56', '1062', 'BRENS', NULL),
('57', '1063', 'BRESSOLLES', NULL),
('58', '1064', 'BRION', NULL),
('59', '1065', 'BRIORD', NULL),
('6', '1008', 'ANDERT', NULL),
('60', '1066', 'BUELLAS', NULL),
('61', '1067', 'CEIGNES', NULL),
('62', '1068', 'CERDON', NULL),
('63', '1069', 'CERTINES', NULL),
('64', '1071', 'CESSEINS', NULL),
('65', '1072', 'CESSY', NULL),
('66', '1073', 'CEYZERIAT', NULL),
('67', '1074', 'CEYZERIEU', NULL),
('68', '1075', 'CHALAMONT', NULL),
('69', '1076', 'CHALEINS', NULL),
('7', '1009', 'ANGLEFORT', NULL),
('70', '1077', 'CHALEY', NULL),
('71', '1078', 'CHALLES', NULL),
('72', '1079', 'CHALLEX', NULL),
('73', '1080', 'CHAMPAGNE', NULL),
('74', '1081', 'CHAMPDOR', NULL),
('75', '1082', 'CHAMPFROMIER', NULL),
('76', '1083', 'CHANAY', NULL),
('77', '1084', 'CHANEINS', NULL),
('78', '1085', 'CHANOZ', NULL),
('79', '1087', 'CHARANCIN', NULL),
('8', '1010', 'APREMONT', NULL),
('80', '1088', 'CHARIX', NULL),
('81', '1089', 'CHARNOZ', NULL),
('82', '1090', 'CHATEAU', NULL),
('83', '1091', 'CHATENAY', NULL),
('84', '1092', 'CHATILLON', NULL),
('85', '1093', 'CHATILLON', NULL),
('86', '1094', 'CHATILLON', NULL),
('87', '1095', 'CHAVANNES', NULL),
('88', '1096', 'CHAVANNES', NULL),
('89', '1097', 'CHAVEYRIAT', NULL),
('9', '1011', 'ARANC', NULL),
('90', '1098', 'CHAVORNAY', NULL),
('91', '1099', 'CHAZEY', NULL),
('92', '1100', 'CHAZEY', NULL),
('93', '1101', 'CHEIGNIEU', NULL),
('94', '1102', 'CHEVILLARD', NULL),
('95', '1103', 'CHEVROUX', NULL),
('96', '1104', 'CHEVRY', NULL),
('97', '1105', 'CHEZERY', NULL),
('98', '1106', 'CIVRIEUX', NULL),
('99', '1107', 'CIZE', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `photo`
--

CREATE TABLE IF NOT EXISTS `photo` (
  `PHOID` char(32) NOT NULL,
  `TRNNUM` char(32) NOT NULL,
  `ETPID` char(32) NOT NULL,
  `PHOURL` char(32) DEFAULT NULL,
  PRIMARY KEY (`PHOID`),
  KEY `I_FK_PHOTO_ETAPE` (`TRNNUM`,`ETPID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `tournee`
--

CREATE TABLE IF NOT EXISTS `tournee` (
  `TRNNUM` char(32) NOT NULL,
  `VEHIMMAT` char(32) NOT NULL,
  `CHFID` char(32) NOT NULL,
  `TRNCOMMENTAIRE` char(32) DEFAULT NULL,
  `TRNPECCHAUFFEUR` char(32) DEFAULT NULL,
  `TRNDTE` datetime DEFAULT NULL,
  PRIMARY KEY (`TRNNUM`),
  KEY `I_FK_TOURNEE_VEHICULE` (`VEHIMMAT`),
  KEY `I_FK_TOURNEE_CHAUFFEUR` (`CHFID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tournee`
--

INSERT INTO `tournee` (`TRNNUM`, `VEHIMMAT`, `CHFID`, `TRNCOMMENTAIRE`, `TRNPECCHAUFFEUR`, `TRNDTE`) VALUES
('1', 'AO454DL', '0', 'Ça va chauffer.', NULL, '2016-04-28 10:20:00'),
('2', 'AP430SJ', '1', 'Les palettes sont pas remplies.', NULL, '2016-04-28 11:00:00'),
('3', 'BA202ME', '10', 'Le chauffeur est fatigué.', NULL, '2016-04-29 04:30:00'),
('4', 'BI502MB', '11', 'Sully en PLS.', NULL, '2016-04-29 09:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `typedocumentation`
--

CREATE TABLE IF NOT EXISTS `typedocumentation` (
  `TYPDOCID` char(32) NOT NULL,
  `TYPDOCLIB` char(32) DEFAULT NULL,
  PRIMARY KEY (`TYPDOCID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `vehicule`
--

CREATE TABLE IF NOT EXISTS `vehicule` (
  `VEHIMMAT` char(32) NOT NULL,
  `VEHNOM` char(32) DEFAULT NULL,
  PRIMARY KEY (`VEHIMMAT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `vehicule`
--

INSERT INTO `vehicule` (`VEHIMMAT`, `VEHNOM`) VALUES
('AO454DL', 'Fiat'),
('AP430SJ', 'Renault'),
('BA202ME', 'Renault'),
('BI502MB', 'Toyota'),
('CY497RV', 'Toyota'),
('CY647YF', 'Opel'),
('DA712VD', 'Fiat'),
('DC927ZL', 'Fiat'),
('DT639RP', 'Peugeot'),
('EB328MG', 'Jaguar'),
('ER945OG', 'Renault'),
('ES440SG', 'Jeep'),
('EX675VF', 'Infiniti'),
('FG252YW', 'Lotus'),
('FH346PA', 'Peugeot'),
('FO164DY', 'Porsche'),
('FT955JJ', 'Infiniti'),
('FY696JJ', 'Toyota'),
('GD726DE', 'Peugeot'),
('GM120UF', 'Opel'),
('GM626QF', 'Abarth'),
('GO302SI', 'Fiat'),
('HA795ML', 'Toyota'),
('HB644FB', 'Jeep'),
('HF686SW', 'Lotus'),
('HR250OA', 'Alfa Romeo'),
('HV903GB', 'Honda'),
('HY474ZY', 'Jaguar'),
('IA322VQ', 'Porsche'),
('ID258ED', 'Rolls Royce'),
('IM908KU', 'Honda'),
('IN125GD', 'Lotus'),
('IP713BH', 'Porsche'),
('IQ295MF', 'Smart'),
('IT110DS', 'Opel'),
('JI634OO', 'Rolls Royce'),
('JL181XK', 'Jaguar'),
('JM425UZ', 'Renault'),
('JZ723JL', 'Honda'),
('KJ644JR', 'Peugeot'),
('KS050ST', 'Honda'),
('KT026IR', 'Rolls Royce'),
('KX674RN', 'Jeep'),
('LM186JI', 'Opel'),
('LY051UH', 'Alfa Romeo'),
('LZ145KL', 'Opel'),
('MJ810VB', 'Honda'),
('MK809DA', 'Infiniti'),
('MS066XS', 'Peugeot'),
('MX213TS', 'Lotus'),
('NN091WG', 'Smart'),
('NS593HW', 'Smart'),
('NV914UJ', 'Abarth'),
('NZ161PK', 'Rolls Royce'),
('OC515HC', 'Hyundai'),
('OF923CO', 'Alfa Romeo'),
('OI094IQ', 'Jaguar'),
('OJ737AA', 'Peugeot'),
('OV303PE', 'Fiat'),
('PE246HK', 'Abarth'),
('PF463ET', 'Toyota'),
('PK469SJ', 'Honda'),
('PQ049TX', 'Rolls Royce'),
('PW778AX', 'Peugeot'),
('PY251LV', 'Alfa Romeo'),
('PZ733XU', 'Abarth'),
('QB442FC', 'Infiniti'),
('QC681TL', 'Lotus'),
('QH172MB', 'Abarth'),
('QK858OE', 'Toyota'),
('QZ626WO', 'Abarth'),
('SH833BK', 'Lotus'),
('SK657SX', 'Infiniti'),
('SR086LA', 'Porsche'),
('SS320IP', 'Opel'),
('SU545MX', 'Infiniti'),
('TE567ND', 'Jaguar'),
('TF555UC', 'Toyota'),
('TG887ZQ', 'Toyota'),
('TJ069XT', 'Jaguar'),
('TK392CH', 'Alfa Romeo'),
('TS463OU', 'Rolls Royce'),
('TU934HS', 'Hyundai'),
('TX593JP', 'Honda'),
('UN605OO', 'Fiat'),
('UN755VZ', 'Infiniti'),
('UV301KM', 'Infiniti'),
('UX622XZ', 'Jeep'),
('VC657JO', 'Smart'),
('VK113ZB', 'Smart'),
('VY754LD', 'Hyundai'),
('WB691HU', 'Toyota'),
('WF116KL', 'Jaguar'),
('WY992ZM', 'Alfa Romeo'),
('XC928DD', 'Alfa Romeo'),
('XN150VT', 'Rolls Royce'),
('YJ529RW', 'Smart'),
('ZP648TP', 'Renault'),
('ZT945VB', 'Opel'),
('ZY192RB', 'Jaguar');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `documentation`
--
ALTER TABLE `documentation`
  ADD CONSTRAINT `documentation_ibfk_2` FOREIGN KEY (`TYPDOCID`) REFERENCES `typedocumentation` (`TYPDOCID`),
  ADD CONSTRAINT `documentation_ibfk_1` FOREIGN KEY (`TRNNUM`) REFERENCES `tournee` (`TRNNUM`);

--
-- Contraintes pour la table `etape`
--
ALTER TABLE `etape`
  ADD CONSTRAINT `etape_ibfk_2` FOREIGN KEY (`LIEUID`) REFERENCES `lieu` (`LIEUID`),
  ADD CONSTRAINT `etape_ibfk_1` FOREIGN KEY (`TRNNUM`) REFERENCES `tournee` (`TRNNUM`);

--
-- Contraintes pour la table `lieu`
--
ALTER TABLE `lieu`
  ADD CONSTRAINT `lieu_ibfk_1` FOREIGN KEY (`VILID`) REFERENCES `commune` (`VILID`);

--
-- Contraintes pour la table `photo`
--
ALTER TABLE `photo`
  ADD CONSTRAINT `photo_ibfk_1` FOREIGN KEY (`TRNNUM`, `ETPID`) REFERENCES `etape` (`TRNNUM`, `ETPID`);

--
-- Contraintes pour la table `tournee`
--
ALTER TABLE `tournee`
  ADD CONSTRAINT `tournee_ibfk_2` FOREIGN KEY (`CHFID`) REFERENCES `chauffeur` (`CHFID`),
  ADD CONSTRAINT `tournee_ibfk_1` FOREIGN KEY (`VEHIMMAT`) REFERENCES `vehicule` (`VEHIMMAT`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
