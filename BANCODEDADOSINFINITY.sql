-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.17-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for vrp_base
CREATE DATABASE IF NOT EXISTS `vrp_base` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `vrp_base`;

-- Dumping structure for table vrp_base.cloakroom_custom
CREATE TABLE IF NOT EXISTS `cloakroom_custom` (
  `user_id` int(11) DEFAULT NULL,
  `id_roupa` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `roupa` text DEFAULT NULL,
  PRIMARY KEY (`id_roupa`) USING BTREE,
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table vrp_base.cloakroom_custom: ~0 rows (approximately)
/*!40000 ALTER TABLE `cloakroom_custom` DISABLE KEYS */;
/*!40000 ALTER TABLE `cloakroom_custom` ENABLE KEYS */;

-- Dumping structure for table vrp_base.phone_calls
CREATE TABLE IF NOT EXISTS `phone_calls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(10) NOT NULL,
  `num` varchar(10) NOT NULL,
  `incoming` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- Dumping data for table vrp_base.phone_calls: ~6 rows (approximately)
/*!40000 ALTER TABLE `phone_calls` DISABLE KEYS */;
INSERT INTO `phone_calls` (`id`, `owner`, `num`, `incoming`, `time`, `accepts`) VALUES
	(58, '718-174', '000-000', 1, '2021-02-13 14:13:40', 0),
	(59, '796-486', '027-692', 0, '2021-02-16 13:00:21', 0),
	(61, '796-486', '027-692', 0, '2021-02-16 13:00:28', 1),
	(63, '692-070', '027-692', 0, '2021-02-16 13:02:38', 1),
	(65, '070-477', '010-791', 1, '2021-02-21 17:39:06', 1),
	(66, '010-791', '070-477', 0, '2021-02-21 17:39:06', 1);
/*!40000 ALTER TABLE `phone_calls` ENABLE KEYS */;

-- Dumping structure for table vrp_base.phone_chat
CREATE TABLE IF NOT EXISTS `phone_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table vrp_base.phone_chat: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_chat` ENABLE KEYS */;

-- Dumping structure for table vrp_base.phone_contacts
CREATE TABLE IF NOT EXISTS `phone_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) DEFAULT NULL,
  `number` varchar(10) DEFAULT NULL,
  `display` varchar(64) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `identifier` (`identifier`),
  KEY `number` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- Dumping data for table vrp_base.phone_contacts: ~28 rows (approximately)
/*!40000 ALTER TABLE `phone_contacts` DISABLE KEYS */;
INSERT INTO `phone_contacts` (`id`, `identifier`, `number`, `display`) VALUES
	(6, '1', '000-000', 'Teste'),
	(13, '6', '000-000', 'ilegal'),
	(14, '4', '000-000', 'kkkk'),
	(15, '5', '000-000', 'traficante'),
	(16, '11', '000-000', 'magrin'),
	(17, '12', '000-000', 'traficante'),
	(20, '2', '000-000', 'teste'),
	(21, '2', '000-000', 'Traficante'),
	(22, '2', '000-000', 'Teste'),
	(23, '2', '000', 'Traficodedrogas'),
	(24, '2', '000', 'teste'),
	(25, '2', '000', 'teste'),
	(26, '2', '000', 'a'),
	(27, '2', '000-000', 'teste'),
	(28, '2', '000', 'teste'),
	(29, '2', '000-000', 'teste'),
	(30, '2', '000-000', 'TRAFICANTE DO PH'),
	(31, '2', '000-000', 'Trafico DO PH'),
	(32, '2', '000-000', 'trafico'),
	(33, '12', '000-000', 'bandido'),
	(34, '15', '000-000', 'Bandido'),
	(35, '2', '000', 'teste'),
	(36, '2', '000-000', 'TRAFICANTE DE DROGAS'),
	(37, '27', '000-000', 'Trafico'),
	(38, '22', '000-000', 'TRAFICANTE'),
	(39, '27', '000-000', 'TraficanteMANO'),
	(40, '29', '000-000', 'Bandido'),
	(41, '34', '000-000', 'nome'),
	(42, '40', '000-000', 'awdawd'),
	(43, '41', '0000000000', 'tshgfhhg'),
	(44, '33', '000-000', 'teste');
/*!40000 ALTER TABLE `phone_contacts` ENABLE KEYS */;

-- Dumping structure for table vrp_base.phone_messages
CREATE TABLE IF NOT EXISTS `phone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `transmitter` (`transmitter`),
  KEY `receiver` (`receiver`),
  KEY `message` (`message`)
) ENGINE=MyISAM AUTO_INCREMENT=709 DEFAULT CHARSET=utf8;

-- Dumping data for table vrp_base.phone_messages: 246 rows
/*!40000 ALTER TABLE `phone_messages` DISABLE KEYS */;
INSERT INTO `phone_messages` (`id`, `transmitter`, `receiver`, `message`, `time`, `isRead`, `owner`) VALUES
	(503, '000', '027-692', '1', '2021-02-16 14:00:31', 1, 1),
	(504, '000', '027-692', 'Ta afim de saber oq? [1] - Loc da van do trafico [2] - Trafico de Ecstasy [3] - Trafico de Lean [4] - Trafico de Cpuchip [5] - Trocar o Cpuchip por Fueltech [6] - Loc pra vender as drogas e outros ilegais [7] - Comprar drogas prontas [8] - Compra de armas', '2021-02-16 14:00:32', 1, 0),
	(501, '000', '027-692', 'teste', '2021-02-16 14:00:28', 1, 1),
	(502, '000', '027-692', 'Salve cusão, Ta fazendo oque no ph? Minhas informações são valiosas cobro 2.000 por elas! [1] - Quero Informações do Ilegal / [2] - Só to de passagem. ( ME RESPONDA APENAS COM NUMEROS )', '2021-02-16 14:00:29', 1, 0),
	(500, '000', '027-692', 'Loc: -351.81,-109.16,38.7 Só chegar na porta de uma garagem pekena , cuidado pro dono da mecanica não pegar você, deixa o dinheiro por baixo da porta da garagem', '2021-02-16 13:54:23', 1, 0),
	(499, '000', '027-692', '9', '2021-02-16 13:54:21', 1, 1),
	(409, '027-692', '000000', 'salv', '2021-02-14 15:13:34', 0, 0),
	(693, '000-000', '082-880', 'Ta afim de saber oq? 1 - Loc da van do trafico 2 - Trafico de Ecstasy 3 - Trafico de Lean 4 - Trafico de Cpuchip 5 - Trocar o Cpuchip por Fueltech 6 - Loc pra vender as drogas e outros ilegais 7 - Comprar drogas prontas 8 - Compra de armas e ilegais.', '2021-02-24 12:12:43', 1, 0),
	(692, '000-000', '010-791', '.', '2021-02-24 12:12:43', 1, 1),
	(691, '000-000', '082-880', '1', '2021-02-24 12:12:42', 1, 1),
	(688, '000-000', '082-880', 'Salve, Tenho as informações que você precisa 1 - Aceitar / 2 - Quero nao. ( ME RESPONDA APENAS COM NUMEROS )', '2021-02-24 12:12:37', 1, 0),
	(689, '0000000000', '207-576', 'ass', '2021-02-24 12:12:40', 1, 1),
	(690, '207-576', '0000000000', 'ass', '2021-02-24 12:12:40', 0, 0),
	(687, '000-000', '082-880', 'visão cria', '2021-02-24 12:12:36', 1, 1),
	(685, '0000000000', '207-576', 'opoa', '2021-02-24 12:12:35', 1, 1),
	(686, '207-576', '0000000000', 'opoa', '2021-02-24 12:12:35', 0, 0),
	(497, '000', '027-692', '1', '2021-02-16 13:54:11', 1, 1),
	(498, '000', '027-692', 'Ta afim de saber oq? [1] - Loc da van do trafico [2] - Trafico de Ecstasy [3] - Trafico de Lean [4] - Trafico de Cpuchip [5] - Trocar o Cpuchip por Fueltech [6] - Loc pra vender as drogas e outros ilegais [7] - Comprar drogas prontas [8] - Compra de armas', '2021-02-16 13:54:12', 1, 0),
	(493, '000-000', '027-692', 'eae', '2021-02-16 13:54:01', 1, 1),
	(494, '027-692', '000-000', 'eae', '2021-02-16 13:54:01', 0, 0),
	(495, '000', '027-692', 'eae', '2021-02-16 13:54:05', 1, 1),
	(496, '000', '027-692', 'Salve cusão, Ta fazendo oque no ph? Minhas informações são valiosas cobro 2.000 por elas! [1] - Quero Informações do Ilegal / [2] - Só to de passagem. ( ME RESPONDA APENAS COM NUMEROS )', '2021-02-16 13:54:07', 1, 0),
	(492, '000', '027-692', 'Salve cusão, Ta fazendo oque no ph? Minhas informações são valiosas cobro 2.000 por elas! [1] - Quero Informações do Ilegal / [2] - Só to de passagem. ( ME RESPONDA APENAS COM NUMEROS )', '2021-02-16 13:40:42', 1, 0),
	(491, '000', '027-692', 'eae', '2021-02-16 13:40:40', 1, 1),
	(489, '000-000', '027-692', '8', '2021-02-16 13:38:50', 1, 1),
	(490, '000-000', '027-692', '1 - Pistolas, colete, muniçoes, lockpick, placa e outras coisinhas 2 - Armas pesadas, algemas, c4, capuz e corda.', '2021-02-16 13:38:51', 1, 0),
	(488, '000-000', '027-692', 'Ta afim de saber oq? [1] - Loc da van do trafico [2] - Trafico de Ecstasy [3] - Trafico de Lean [4] - Trafico de Cpuchip [5] - Trocar o Cpuchip por Fueltech [6] - Loc pra vender as drogas e outros ilegais [7] - Comprar drogas prontas [8] - Compra de armas', '2021-02-16 13:38:31', 1, 0),
	(487, '000-000', '027-692', '1', '2021-02-16 13:38:30', 1, 1),
	(486, '000-000', '027-692', 'Salve cusão, Ta fazendo oque no ph? Minhas informações são valiosas cobro 2.000 por elas! [1] - Quero Informações do Ilegal / [2] - Só to de passagem. ( ME RESPONDA APENAS COM NUMEROS )', '2021-02-16 13:38:21', 1, 0),
	(485, '000-000', '027-692', 'tea', '2021-02-16 13:38:20', 1, 1),
	(484, '000-000', '027-692', 'Ta afim de saber oq? [1] - Loc da van do trafico [2] - Trafico de Ecstasy [3] - Trafico de Lean [4] - Trafico de Cpuchip [5] - Trocar o Cpuchip por Fueltech [6] - Loc pra vender as drogas e outros ilegais [7] - Comprar drogas prontas [8] - Compra de armas', '2021-02-16 13:36:57', 1, 0),
	(483, '000-000', '027-692', '1', '2021-02-16 13:36:56', 1, 1),
	(481, '000-000', '027-692', 'teste', '2021-02-16 13:36:41', 1, 1),
	(482, '000-000', '027-692', 'Salve cusão, Ta fazendo oque no ph? [1] - Quero Informações do Ilegal / [2] - Só to de passagem. ( ME RESPONDA APENAS COM NUMEROS )', '2021-02-16 13:36:42', 1, 0),
	(448, '000-000', '636-506', 'opa', '2021-02-15 13:41:41', 1, 1),
	(449, '000-000', '636-506', 'Salve, cada info é 10000 1 - Aceitar / 2 - Quero nao. ( ME RESPONDA APENAS COM NUMEROS )', '2021-02-15 13:41:43', 1, 0),
	(450, '000-000', '666-715', 'juju', '2021-02-15 13:41:54', 1, 1),
	(451, '000-000', '666-715', 'Salve, cada info é 10000 1 - Aceitar / 2 - Quero nao. ( ME RESPONDA APENAS COM NUMEROS )', '2021-02-15 13:41:55', 1, 0),
	(452, '000-000', '636-506', '1', '2021-02-15 13:41:58', 1, 1),
	(453, '000-000', '636-506', 'Ta afim de saber oq? 1 - Loc da van do trafico 2 - Trafico de Ecstasy 3 - Trafico de Lean 4 - Trafico de Cpuchip 5 - Trocar o Cpuchip por Fueltech 6 - Loc pra vender as drogas e outros ilegais 7 - Comprar drogas prontas 8 - Compra de armas e ilegais.', '2021-02-15 13:41:59', 1, 0),
	(454, '000-000', '089-273', 'salve', '2021-02-15 13:42:05', 1, 1),
	(455, '000-000', '089-273', 'Salve, cada info é 10000 1 - Aceitar / 2 - Quero nao. ( ME RESPONDA APENAS COM NUMEROS )', '2021-02-15 13:42:06', 1, 0),
	(456, '000-000', '666-715', '1', '2021-02-15 13:42:17', 1, 1),
	(457, '000-000', '089-273', '1', '2021-02-15 13:42:17', 1, 1),
	(458, '000-000', '666-715', 'Ta afim de saber oq? 1 - Loc da van do trafico 2 - Trafico de Ecstasy 3 - Trafico de Lean 4 - Trafico de Cpuchip 5 - Trocar o Cpuchip por Fueltech 6 - Loc pra vender as drogas e outros ilegais 7 - Comprar drogas prontas 8 - Compra de armas e ilegais.', '2021-02-15 13:42:18', 1, 0),
	(459, '000-000', '089-273', 'Ta afim de saber oq? 1 - Loc da van do trafico 2 - Trafico de Ecstasy 3 - Trafico de Lean 4 - Trafico de Cpuchip 5 - Trocar o Cpuchip por Fueltech 6 - Loc pra vender as drogas e outros ilegais 7 - Comprar drogas prontas 8 - Compra de armas e ilegais.', '2021-02-15 13:42:19', 1, 0),
	(460, '000-000', '089-273', '9', '2021-02-15 13:42:27', 1, 1),
	(461, '000-000', '666-715', '7', '2021-02-15 13:42:37', 1, 1),
	(462, '000-000', '666-715', 'Loc: 911.13, 3644.9 Esse tiozao tem umas paradas da boa, mais so aceita outro tipo de dinheiro.', '2021-02-15 13:42:38', 1, 0),
	(463, '000-000', '636-506', '6', '2021-02-15 13:42:54', 1, 1),
	(464, '000-000', '089-273', 'fgsalve', '2021-02-15 13:42:55', 1, 1),
	(465, '000-000', '636-506', 'Loc: 19.94, -1601.97 O dono de la conhece uns contatos, chegando la vai no armario que tem um gnomo e mentaliza /delivery que ele te entrega a lista', '2021-02-15 13:42:56', 1, 0),
	(466, '000-000', '089-273', 'salve', '2021-02-15 13:42:58', 1, 1),
	(467, '000-000', '446-813', 'baseado', '2021-02-16 10:20:18', 1, 1),
	(468, '000-000', '446-813', 'Salve, cada info é 10000 1 - Aceitar / 2 - Quero nao. ( ME RESPONDA APENAS COM NUMEROS )', '2021-02-16 10:20:19', 1, 0),
	(469, '000-000', '446-813', '1', '2021-02-16 10:20:30', 1, 1),
	(470, '000-000', '446-813', 'Ta afim de saber oq? 1 - Loc da van do trafico 2 - Trafico de Ecstasy 3 - Trafico de Lean 4 - Trafico de Cpuchip 5 - Trocar o Cpuchip por Fueltech 6 - Loc pra vender as drogas e outros ilegais 7 - Comprar drogas prontas 8 - Compra de armas e ilegais.', '2021-02-16 10:20:31', 1, 0),
	(471, '000-000', '446-813', '6', '2021-02-16 10:20:45', 1, 1),
	(472, '000-000', '446-813', 'Loc: 19.94, -1601.97 O dono de la conhece uns contatos, chegando la vai no armario que tem um gnomo e mentaliza /delivery que ele te entrega a lista', '2021-02-16 10:20:46', 1, 0),
	(473, '000-000', '662-626', 'e ai jhow', '2021-02-16 10:33:01', 1, 1),
	(474, '000-000', '662-626', 'Salve, cada info é 10000 1 - Aceitar / 2 - Quero nao. ( ME RESPONDA APENAS COM NUMEROS )', '2021-02-16 10:33:02', 1, 0),
	(475, '000-000', '662-626', '1', '2021-02-16 10:33:17', 1, 1),
	(476, '000-000', '662-626', 'Ta afim de saber oq? 1 - Loc da van do trafico 2 - Trafico de Ecstasy 3 - Trafico de Lean 4 - Trafico de Cpuchip 5 - Trocar o Cpuchip por Fueltech 6 - Loc pra vender as drogas e outros ilegais 7 - Comprar drogas prontas 8 - Compra de armas e ilegais.', '2021-02-16 10:33:18', 1, 0),
	(477, '000-000', '662-626', '6', '2021-02-16 10:34:01', 1, 1),
	(478, '000-000', '662-626', 'Loc: 19.94, -1601.97 O dono de la conhece uns contatos, chegando la vai no armario que tem um gnomo e mentaliza /delivery que ele te entrega a lista', '2021-02-16 10:34:02', 1, 0),
	(505, '000', '027-692', 'teste', '2021-02-16 14:02:11', 1, 1),
	(506, '000', '027-692', 'Salve cusão, Ta fazendo oque no ph? Minhas informações são valiosas cobro 2.000 por elas! [1] - Quero Informações do Ilegal / [2] - Só to de passagem. ( ME RESPONDA APENAS COM NUMEROS )', '2021-02-16 14:02:12', 1, 0),
	(507, '000', '027-692', '1', '2021-02-16 14:02:14', 1, 1),
	(508, '000', '027-692', 'Ta afim de saber oq? [1] - Loc da van do trafico [2] - Trafico de Ecstasy [3] - Trafico de Lean [4] - Trafico de Cpuchip [5] - Trocar o Cpuchip por Fueltech [6] - Loc pra vender as drogas e outros ilegais [7] - Comprar drogas prontas [8] - Compra de armas', '2021-02-16 14:02:15', 1, 0),
	(509, '000', '027-692', 'teste', '2021-02-16 14:03:34', 1, 1),
	(510, '027-692', '000', 'teste', '2021-02-16 14:03:34', 0, 0),
	(511, '000', '027-692', 'teste', '2021-02-16 14:03:40', 1, 1),
	(512, '027-692', '000', 'teste', '2021-02-16 14:03:40', 0, 0),
	(513, '000-000', '027-692', 'teste', '2021-02-16 14:03:43', 1, 1),
	(514, '000-000', '027-692', 'Salve cusão, Ta fazendo oque no ph? Minhas informações são valiosas cobro 2.000 por elas! [1] - Quero Informações do Ilegal / [2] - Só to de passagem. ( ME RESPONDA APENAS COM NUMEROS )', '2021-02-16 14:03:44', 1, 0),
	(515, '000-000', '027-692', '1', '2021-02-16 14:03:46', 1, 1),
	(516, '000-000', '027-692', 'Ta afim de saber oq? [1] - Loc da van do trafico [2] - Trafico de Ecstasy [3] - Trafico de Lean [4] - Trafico de Cpuchip [5] - Trocar o Cpuchip por Fueltech [6] - Loc pra vender as drogas e outros ilegais [7] - Comprar drogas prontas [8] - Compra de armas', '2021-02-16 14:03:47', 1, 0),
	(517, '000-000', '027-692', '9', '2021-02-16 14:03:50', 1, 1),
	(518, '000-000', '027-692', 'Então essa loc é diferenciada , é só você ir na mecanica, Em uma garagem pequena que você vai achar, É perto da entrada, Cuidado com o Dono da CK ele é estressado', '2021-02-16 14:03:52', 1, 0),
	(519, '000-000', '027-692', 'a', '2021-02-17 07:24:50', 1, 1),
	(520, '000-000', '027-692', 'Salve cusão, Ta fazendo oque no ph? Minhas informações são valiosas cobro 2.000 por elas! [1] - Quero Informações do Ilegal / [2] - Só to de passagem. ( ME RESPONDA APENAS COM NUMEROS )', '2021-02-17 07:24:51', 1, 0),
	(521, '000-000', '027-692', '1', '2021-02-17 07:24:54', 1, 1),
	(522, '000-000', '027-692', 'Ta afim de saber oq? [1] - Loc da van do trafico [2] - Trafico de Ecstasy [3] - Trafico de Lean [4] - Trafico de Cpuchip [5] - Trocar o Cpuchip por Fueltech [6] - Loc pra vender as drogas e outros ilegais [7] - Comprar drogas prontas [8] - Compra de armas', '2021-02-17 07:24:56', 1, 0),
	(523, '000-000', '027-692', '8', '2021-02-17 07:25:10', 1, 1),
	(524, '000-000', '027-692', '1 - Pistolas, colete, muniçoes, lockpick, placa e outras coisinhas 2 - Armas pesadas, algemas, c4, capuz e corda.', '2021-02-17 07:25:12', 1, 0),
	(525, '000-000', '027-692', '1', '2021-02-17 07:25:26', 1, 1),
	(526, '000-000', '027-692', 'Loc: 1754.52, -1649.07 \n Localizaçao da van. Mentalize /gangs para iniciar qualquer um dos farms', '2021-02-17 07:25:28', 1, 0),
	(527, '000-000', '027-692', '1', '2021-02-17 07:25:45', 1, 1),
	(528, '000-000', '027-692', 'Salve cusão, Ta fazendo oque no ph? Minhas informações são valiosas cobro 2.000 por elas! [1] - Quero Informações do Ilegal / [2] - Só to de passagem. ( ME RESPONDA APENAS COM NUMEROS )', '2021-02-17 07:25:46', 1, 0),
	(529, '000-000', '027-692', '1', '2021-02-17 07:25:52', 1, 1),
	(530, '000-000', '027-692', 'Ta afim de saber oq? [1] - Loc da van do trafico [2] - Trafico de Ecstasy [3] - Trafico de Lean [4] - Trafico de Cpuchip [5] - Trocar o Cpuchip por Fueltech [6] - Loc pra vender as drogas e outros ilegais [7] - Comprar drogas prontas [8] - Compra de armas', '2021-02-17 07:25:53', 1, 0),
	(531, '000-000', '027-692', '8', '2021-02-17 07:26:00', 1, 1),
	(532, '000-000', '027-692', '1 - Pistolas, colete, muniçoes, lockpick, placa e outras coisinhas 2 - Armas pesadas, algemas, c4, capuz e corda.', '2021-02-17 07:26:01', 1, 0),
	(533, '000-000', '027-692', '1', '2021-02-17 07:26:03', 1, 1),
	(534, '000-000', '027-692', 'Loc: 1754.52, -1649.07 \n Localizaçao da van. Mentalize /gangs para iniciar qualquer um dos farms', '2021-02-17 07:26:04', 1, 0),
	(535, '000-000', '027-692', '2', '2021-02-17 07:26:06', 1, 1),
	(536, '000-000', '027-692', 'Salve cusão, Ta fazendo oque no ph? Minhas informações são valiosas cobro 2.000 por elas! [1] - Quero Informações do Ilegal / [2] - Só to de passagem. ( ME RESPONDA APENAS COM NUMEROS )', '2021-02-17 07:26:07', 1, 0),
	(537, '000-000', '027-692', '3', '2021-02-17 07:26:07', 1, 1),
	(538, '000-000', '027-692', '1 - Primeira etapa 2 - Segunda etapa / Voce vai precisar da van e mentalizar /gangs', '2021-02-17 07:26:09', 1, 0),
	(539, '000-000', '027-692', '4', '2021-02-17 07:26:11', 1, 1),
	(540, '000-000', '027-692', 'Carai zé bunda te dei 2 opçao só, tu é burro? Começa tudo dnovo.', '2021-02-17 07:26:12', 1, 0),
	(541, '000-000', '027-692', '5', '2021-02-17 07:26:15', 1, 1),
	(542, '000-000', '027-692', 'Salve cusão, Ta fazendo oque no ph? Minhas informações são valiosas cobro 2.000 por elas! [1] - Quero Informações do Ilegal / [2] - Só to de passagem. ( ME RESPONDA APENAS COM NUMEROS )', '2021-02-17 07:26:16', 1, 0),
	(543, '000-000', '027-692', '6', '2021-02-17 07:26:19', 1, 1),
	(544, '000-000', '027-692', 'Loc: 19.94, -1601.97 O dono de la conhece uns contatos, chegando la vai no armario que tem um gnomo e mentaliza /delivery que ele te entrega a lista', '2021-02-17 07:26:21', 1, 0),
	(545, '000-000', '027-692', 'Salve', '2021-02-17 18:07:51', 1, 1),
	(546, '000-000', '027-692', 'Salve cusão, Ta fazendo oque no ph? Minhas informações são valiosas cobro 2.000 por elas! [1] - Quero Informações do Ilegal / [2] - Só to de passagem. ( ME RESPONDA APENAS COM NUMEROS )', '2021-02-17 18:07:52', 1, 0),
	(547, '000-000', '027-692', '1', '2021-02-17 18:08:06', 1, 1),
	(548, '000-000', '027-692', 'Ta afim de saber oq? [1] - Loc da van do trafico [2] - Trafico de Ecstasy [3] - Trafico de Lean [4] - Trafico de Cpuchip [5] - Trocar o Cpuchip por Fueltech [6] - Loc pra vender as drogas e outros ilegais [7] - Comprar drogas prontas [8] - Compra de armas', '2021-02-17 18:08:08', 1, 0),
	(549, '000-000', '027-692', '8', '2021-02-17 18:08:28', 1, 1),
	(550, '000-000', '027-692', '1 - Pistolas, colete, muniçoes, lockpick, placa e outras coisinhas 2 - Armas pesadas, algemas, c4, capuz e corda.', '2021-02-17 18:08:29', 1, 0),
	(551, '000-000', '027-692', '2', '2021-02-17 18:08:36', 1, 1),
	(552, '000-000', '027-692', '1 - Primeira etapa 2 - Segunda etapa / Voce vai precisar da van e mentalizar /gangs', '2021-02-17 18:08:37', 1, 0),
	(553, '000-000', '027-692', '1', '2021-02-17 18:08:48', 1, 1),
	(554, '000-000', '027-692', 'Loc: 1417.1, 6339.17 primeira etapa de ectasy, ta na mao', '2021-02-17 18:08:49', 1, 0),
	(555, '000-000', '027-692', 'Salve', '2021-02-17 20:37:34', 1, 1),
	(556, '000-000', '027-692', 'Salve cusão, Ta fazendo oque no ph? Minhas informações são valiosas cobro 2.000 por elas! [1] - Quero Informações do Ilegal / [2] - Só to de passagem. ( ME RESPONDA APENAS COM NUMEROS )', '2021-02-17 20:37:35', 1, 0),
	(557, '000-000', '027-692', '1', '2021-02-17 20:37:55', 1, 1),
	(558, '000-000', '027-692', 'Ta afim de saber oq? [1] - Loc da van do trafico [2] - Trafico de Ecstasy [3] - Trafico de Lean [4] - Trafico de Cpuchip [5] - Trocar o Cpuchip por Fueltech [6] - Loc pra vender as drogas e outros ilegais [7] - Comprar drogas prontas [8] - Compra de armas', '2021-02-17 20:37:57', 1, 0),
	(559, '000-000', '027-692', '1', '2021-02-17 20:38:10', 1, 1),
	(560, '000-000', '027-692', 'Loc: 1754.52, -1649.07 \n Localizaçao da van. Mentalize /gangs para iniciar qualquer um dos farms', '2021-02-17 20:38:11', 1, 0),
	(561, '000-000', '027-692', 'teste', '2021-02-19 10:34:51', 1, 1),
	(562, '000-000', '027-692', 'Salve cusão, Ta fazendo oque no ph? Minhas informações são valiosas cobro 2.000 por elas! [1] - Quero Informações do Ilegal / [2] - Só to de passagem. ( ME RESPONDA APENAS COM NUMEROS )', '2021-02-19 10:34:52', 1, 0),
	(563, '000-000', '027-692', '1', '2021-02-19 10:34:56', 1, 1),
	(564, '000-000', '027-692', 'Ta afim de saber oq? [1] - Loc da van do trafico [2] - Trafico de Ecstasy [3] - Trafico de Lean [4] - Trafico de Cpuchip [5] - Trocar o Cpuchip por Fueltech [6] - Loc pra vender as drogas e outros ilegais [7] - Comprar drogas prontas [8] - Compra de armas', '2021-02-19 10:34:57', 1, 0),
	(565, '000-000', '027-692', '8', '2021-02-19 10:35:03', 1, 1),
	(566, '000-000', '027-692', '1 - Pistolas, colete, muniçoes, lockpick, placa e outras coisinhas 2 - Armas pesadas, algemas, c4, capuz e corda.', '2021-02-19 10:35:05', 1, 0),
	(567, '000-000', '027-692', '1', '2021-02-19 10:35:06', 1, 1),
	(568, '000-000', '027-692', 'Loc: 1754.52, -1649.07 \n Localizaçao da van. Mentalize /gangs para iniciar qualquer um dos farms', '2021-02-19 10:35:08', 1, 0),
	(569, '000-000', '027-692', 'salve', '2021-02-19 10:54:06', 1, 1),
	(570, '000-000', '027-692', 'Salve cusão, Ta fazendo oque no ph? Minhas informações são valiosas cobro 2.000 por elas! [1] - Quero Informações do Ilegal / [2] - Só to de passagem. ( ME RESPONDA APENAS COM NUMEROS )', '2021-02-19 10:54:07', 1, 0),
	(571, '000-000', '027-692', '1', '2021-02-19 10:54:08', 1, 1),
	(572, '000-000', '027-692', 'Ta afim de saber oq? [1] - Loc da van do trafico [2] - Trafico de Ecstasy [3] - Trafico de Lean [4] - Trafico de Cpuchip [5] - Trocar o Cpuchip por Fueltech [6] - Loc pra vender as drogas e outros ilegais [7] - Comprar drogas prontas [8] - Compra de armas', '2021-02-19 10:54:10', 1, 0),
	(573, '000-000', '027-692', '3', '2021-02-19 10:54:24', 1, 1),
	(574, '000-000', '027-692', '1 - Primeira etapa 2 - Segunda etapa / Voce vai precisar da van e mentalizar /gangs', '2021-02-19 10:54:26', 1, 0),
	(575, '000-000', '027-692', 'salve', '2021-02-19 10:55:34', 1, 1),
	(576, '000-000', '027-692', 'a', '2021-02-19 10:55:38', 1, 1),
	(577, '000-000', '027-692', 'a', '2021-02-19 10:55:38', 1, 1),
	(578, '000-000', '027-692', 'a', '2021-02-19 10:55:39', 1, 1),
	(579, '000-000', '027-692', '2', '2021-02-19 10:55:39', 1, 1),
	(580, '000-000', '027-692', '3', '2021-02-19 10:55:39', 1, 1),
	(581, '000-000', '027-692', '4', '2021-02-19 10:55:39', 1, 1),
	(582, '000-000', '027-692', 'Loc: 75.77, -1970.07 segunda etapa de lean, ta ae', '2021-02-19 10:55:40', 1, 0),
	(583, '000-000', '027-692', 'Salve cusão, Ta fazendo oque no ph? Minhas informações são valiosas cobro 2.000 por elas! [1] - Quero Informações do Ilegal / [2] - Só to de passagem. ( ME RESPONDA APENAS COM NUMEROS )', '2021-02-19 10:55:41', 1, 0),
	(584, '000-000', '027-692', '1 - Primeira etapa 2 - Segunda etapa / Voce vai precisar da van e mentalizar /gangs', '2021-02-19 10:55:41', 1, 0),
	(585, '000-000', '027-692', '1', '2021-02-19 10:55:51', 1, 1),
	(586, '000-000', '027-692', 'Ta afim de saber oq? [1] - Loc da van do trafico [2] - Trafico de Ecstasy [3] - Trafico de Lean [4] - Trafico de Cpuchip [5] - Trocar o Cpuchip por Fueltech [6] - Loc pra vender as drogas e outros ilegais [7] - Comprar drogas prontas [8] - Compra de armas', '2021-02-19 10:55:52', 1, 0),
	(587, '000-000', '662-626', 'hey men', '2021-02-19 14:43:58', 1, 1),
	(588, '000-000', '662-626', 'Salve cusão, Ta fazendo oque no ph? Minhas informações são valiosas cobro 2.000 por elas! [1] - Quero Informações do Ilegal / [2] - Só to de passagem. ( ME RESPONDA APENAS COM NUMEROS )', '2021-02-19 14:43:59', 1, 0),
	(589, '000-000', '662-626', '1', '2021-02-19 14:44:11', 1, 1),
	(590, '000-000', '662-626', 'Ta afim de saber oq? [1] - Loc da van do trafico [2] - Trafico de Ecstasy [3] - Trafico de Lean [4] - Trafico de Cpuchip [5] - Trocar o Cpuchip por Fueltech [6] - Loc pra vender as drogas e outros ilegais [7] - Comprar drogas prontas [8] - Compra de armas', '2021-02-19 14:44:12', 1, 0),
	(591, '000-000', '662-626', '6', '2021-02-19 14:44:20', 1, 1),
	(592, '000-000', '662-626', 'Loc: 19.94, -1601.97 O dono de la conhece uns contatos, chegando la vai no armario que tem um gnomo e mentaliza /delivery que ele te entrega a lista', '2021-02-19 14:44:22', 1, 0),
	(593, '000-000', '342-696', 'Oi', '2021-02-19 18:57:17', 1, 1),
	(594, '000-000', '342-696', 'Salve cusão, Ta fazendo oque no ph? Minhas informações são valiosas cobro 2.000 por elas! [1] - Quero Informações do Ilegal / [2] - Só to de passagem. ( ME RESPONDA APENAS COM NUMEROS )', '2021-02-19 18:57:18', 1, 0),
	(595, '000-000', '342-696', '1', '2021-02-19 18:57:32', 1, 1),
	(596, '000-000', '342-696', 'Ta afim de saber oq? [1] - Loc da van do trafico [2] - Trafico de Ecstasy [3] - Trafico de Lean [4] - Trafico de Cpuchip [5] - Trocar o Cpuchip por Fueltech [6] - Loc pra vender as drogas e outros ilegais [7] - Comprar drogas prontas [8] - Compra de armas', '2021-02-19 18:57:33', 1, 0),
	(597, '000-000', '342-696', '1', '2021-02-19 18:57:47', 1, 1),
	(598, '000-000', '342-696', 'Loc: 1754.52, -1649.07 \n Localizaçao da van. Mentalize /gangs para iniciar qualquer um dos farms', '2021-02-19 18:57:48', 1, 0),
	(599, '000-000', '027-692', 'salve', '2021-02-20 09:23:20', 1, 1),
	(600, '000-000', '027-692', 'Salve, cada info é 10000 1 - Aceitar / 2 - Quero nao. ( ME RESPONDA APENAS COM NUMEROS )', '2021-02-20 09:23:21', 1, 0),
	(601, '000-000', '027-692', '1', '2021-02-20 09:23:23', 1, 1),
	(602, '000-000', '027-692', 'Ta afim de saber oq? 1 - Loc da van do trafico 2 - Trafico de Ecstasy 3 - Trafico de Lean 4 - Trafico de Cpuchip 5 - Trocar o Cpuchip por Fueltech 6 - Loc pra vender as drogas e outros ilegais 7 - Comprar drogas prontas 8 - Compra de armas e ilegais.', '2021-02-20 09:23:24', 1, 0),
	(603, '000-000', '027-692', '8', '2021-02-20 09:23:33', 1, 1),
	(604, '000-000', '027-692', '1 - Pistolas, colete, muniçoes, lockpick, placa e outras coisinhas 2 - Armas pesadas, algemas, c4, capuz e corda.', '2021-02-20 09:23:35', 1, 0),
	(605, '000-000', '027-692', '1', '2021-02-20 09:23:37', 1, 1),
	(606, '000-000', '027-692', 'Loc: 1754.52, -1649.07 \n Localizaçao da van. Mentalize /gangs para iniciar qualquer um dos farms', '2021-02-20 09:23:38', 1, 0),
	(607, '000-000', '027-692', 'teste', '2021-02-20 12:43:28', 1, 1),
	(608, '000-000', '027-692', 'Salve, cada info é 10000 1 - Aceitar / 2 - Quero nao. ( ME RESPONDA APENAS COM NUMEROS )', '2021-02-20 12:43:30', 1, 0),
	(609, '000-000', '027-692', '1', '2021-02-20 12:43:40', 1, 1),
	(610, '000-000', '027-692', 'Ta afim de saber oq? 1 - Loc da van do trafico 2 - Trafico de Ecstasy 3 - Trafico de Lean 4 - Trafico de Cpuchip 5 - Trocar o Cpuchip por Fueltech 6 - Loc pra vender as drogas e outros ilegais 7 - Comprar drogas prontas 8 - Compra de armas e ilegais.', '2021-02-20 12:43:41', 1, 0),
	(611, '000-000', '027-692', '6', '2021-02-20 12:44:16', 1, 1),
	(612, '000-000', '027-692', 'Loc: 19.94, -1601.97 O dono de la conhece uns contatos, chegando la vai no armario que tem um gnomo e mentaliza /delivery que ele te entrega a lista', '2021-02-20 12:44:18', 1, 0),
	(613, '000-000', '755-197', '1', '2021-02-20 20:02:54', 1, 1),
	(614, '000-000', '755-197', 'Salve, cada info é 10000 1 - Aceitar / 2 - Quero nao. ( ME RESPONDA APENAS COM NUMEROS )', '2021-02-20 20:02:55', 1, 0),
	(615, '000-000', '755-197', '1', '2021-02-20 20:02:56', 1, 1),
	(616, '000-000', '755-197', 'Ta afim de saber oq? 1 - Loc da van do trafico 2 - Trafico de Ecstasy 3 - Trafico de Lean 4 - Trafico de Cpuchip 5 - Trocar o Cpuchip por Fueltech 6 - Loc pra vender as drogas e outros ilegais 7 - Comprar drogas prontas 8 - Compra de armas e ilegais.', '2021-02-20 20:02:58', 1, 0),
	(617, '000-000', '755-197', '8', '2021-02-20 20:03:00', 1, 1),
	(618, '000-000', '755-197', '1 - Pistolas, colete, muniçoes, lockpick, placa e outras coisinhas 2 - Armas pesadas, algemas, c4, capuz e corda.', '2021-02-20 20:03:01', 1, 0),
	(619, '000-000', '755-197', '2', '2021-02-20 20:03:05', 1, 1),
	(620, '000-000', '755-197', '1 - Primeira etapa 2 - Segunda etapa / Voce vai precisar da van e mentalizar /gangs', '2021-02-20 20:03:06', 1, 0),
	(621, '000-000', '755-197', '2', '2021-02-20 20:03:08', 1, 1),
	(622, '000-000', '755-197', 'Loc: -159.89, -1636.28 fica no segundo andar.', '2021-02-20 20:03:10', 1, 0),
	(623, '000-000', '755-197', '.', '2021-02-21 08:32:03', 1, 1),
	(624, '000-000', '755-197', 'Salve, cada info é 10000 1 - Aceitar / 2 - Quero nao. ( ME RESPONDA APENAS COM NUMEROS )', '2021-02-21 08:32:04', 1, 0),
	(625, '000-000', '885-808', 'OPA', '2021-02-21 08:32:05', 1, 1),
	(626, '000-000', '885-808', 'Salve, cada info é 10000 1 - Aceitar / 2 - Quero nao. ( ME RESPONDA APENAS COM NUMEROS )', '2021-02-21 08:32:07', 1, 0),
	(627, '000-000', '885-808', '1', '2021-02-21 08:32:19', 1, 1),
	(628, '000-000', '755-197', '1', '2021-02-21 08:32:20', 1, 1),
	(629, '000-000', '885-808', 'Ta afim de saber oq? 1 - Loc da van do trafico 2 - Trafico de Ecstasy 3 - Trafico de Lean 4 - Trafico de Cpuchip 5 - Trocar o Cpuchip por Fueltech 6 - Loc pra vender as drogas e outros ilegais 7 - Comprar drogas prontas 8 - Compra de armas e ilegais.', '2021-02-21 08:32:20', 1, 0),
	(630, '000-000', '755-197', 'Ta afim de saber oq? 1 - Loc da van do trafico 2 - Trafico de Ecstasy 3 - Trafico de Lean 4 - Trafico de Cpuchip 5 - Trocar o Cpuchip por Fueltech 6 - Loc pra vender as drogas e outros ilegais 7 - Comprar drogas prontas 8 - Compra de armas e ilegais.', '2021-02-21 08:32:22', 1, 0),
	(631, '000-000', '755-197', '6', '2021-02-21 08:32:42', 1, 1),
	(632, '000-000', '755-197', 'Loc: 19.94, -1601.97 O dono de la conhece uns contatos, chegando la vai no armario que tem um gnomo e mentaliza /delivery que ele te entrega a lista', '2021-02-21 08:32:43', 1, 0),
	(633, '000-000', '885-808', '6', '2021-02-21 08:32:44', 1, 1),
	(634, '000-000', '885-808', 'Loc: 19.94, -1601.97 O dono de la conhece uns contatos, chegando la vai no armario que tem um gnomo e mentaliza /delivery que ele te entrega a lista', '2021-02-21 08:32:45', 1, 0),
	(635, '000-000', '166-262', 'oi', '2021-02-21 11:13:21', 1, 1),
	(636, '000-000', '166-262', 'Salve, Tenho as informações que você precisa 1 - Aceitar / 2 - Quero nao. ( ME RESPONDA APENAS COM NUMEROS )', '2021-02-21 11:13:23', 1, 0),
	(637, '000-000', '166-262', '1', '2021-02-21 11:13:30', 1, 1),
	(638, '000-000', '166-262', 'Ta afim de saber oq? 1 - Loc da van do trafico 2 - Trafico de Ecstasy 3 - Trafico de Lean 4 - Trafico de Cpuchip 5 - Trocar o Cpuchip por Fueltech 6 - Loc pra vender as drogas e outros ilegais 7 - Comprar drogas prontas 8 - Compra de armas e ilegais.', '2021-02-21 11:13:31', 1, 0),
	(639, '000-000', '166-262', '8', '2021-02-21 11:13:39', 1, 1),
	(640, '000-000', '166-262', '1 - Pistolas, colete, muniçoes, lockpick, placa e outras coisinhas 2 - Armas pesadas, algemas, c4, capuz e corda.', '2021-02-21 11:13:41', 1, 0),
	(641, '000-000', '166-262', '2]', '2021-02-21 11:13:55', 1, 1),
	(642, '000-000', '166-262', '2', '2021-02-21 11:13:57', 1, 1),
	(643, '000-000', '166-262', '1 - Primeira etapa 2 - Segunda etapa / Voce vai precisar da van e mentalizar /gangs', '2021-02-21 11:13:58', 1, 0),
	(644, '000-000', '166-262', 'oi', '2021-02-21 11:15:55', 1, 1),
	(645, '000-000', '166-262', '1', '2021-02-21 11:16:02', 1, 1),
	(646, '000-000', '166-262', 'Loc: 1417.1, 6339.17 primeira etapa de ectasy, ta na mao', '2021-02-21 11:16:03', 1, 0),
	(647, '000-000', '166-262', '8', '2021-02-21 11:16:18', 1, 1),
	(648, '000-000', '166-262', 'Salve, Tenho as informações que você precisa 1 - Aceitar / 2 - Quero nao. ( ME RESPONDA APENAS COM NUMEROS )', '2021-02-21 11:16:19', 1, 0),
	(649, '000-000', '166-262', '1', '2021-02-21 11:16:23', 1, 1),
	(650, '000-000', '166-262', 'Ta afim de saber oq? 1 - Loc da van do trafico 2 - Trafico de Ecstasy 3 - Trafico de Lean 4 - Trafico de Cpuchip 5 - Trocar o Cpuchip por Fueltech 6 - Loc pra vender as drogas e outros ilegais 7 - Comprar drogas prontas 8 - Compra de armas e ilegais.', '2021-02-21 11:16:24', 1, 0),
	(651, '000-000', '166-262', '6', '2021-02-21 11:16:39', 1, 1),
	(652, '000-000', '166-262', 'Loc: 19.94, -1601.97 O dono de la conhece uns contatos, chegando la vai no armario que tem um gnomo e mentaliza /delivery que ele te entrega a lista', '2021-02-21 11:16:40', 1, 0),
	(653, '000-000', '166-262', '8', '2021-02-21 11:16:47', 1, 1),
	(654, '000-000', '166-262', 'Salve, Tenho as informações que você precisa 1 - Aceitar / 2 - Quero nao. ( ME RESPONDA APENAS COM NUMEROS )', '2021-02-21 11:16:48', 1, 0),
	(655, '000-000', '166-262', '1', '2021-02-21 11:16:51', 1, 1),
	(656, '000-000', '166-262', 'Ta afim de saber oq? 1 - Loc da van do trafico 2 - Trafico de Ecstasy 3 - Trafico de Lean 4 - Trafico de Cpuchip 5 - Trocar o Cpuchip por Fueltech 6 - Loc pra vender as drogas e outros ilegais 7 - Comprar drogas prontas 8 - Compra de armas e ilegais.', '2021-02-21 11:16:52', 1, 0),
	(657, '000-000', '166-262', '8', '2021-02-21 11:16:53', 1, 1),
	(658, '000-000', '166-262', '1 - Pistolas, colete, muniçoes, lockpick, placa e outras coisinhas 2 - Armas pesadas, algemas, c4, capuz e corda.', '2021-02-21 11:16:55', 1, 0),
	(659, '000-000', '166-262', '1', '2021-02-21 11:16:59', 1, 1),
	(660, '000-000', '166-262', 'Loc: 1754.52, -1649.07 \n Localizaçao da van. Mentalize /gangs para iniciar qualquer um dos farms', '2021-02-21 11:17:00', 1, 0),
	(661, '000-000', '166-262', '8', '2021-02-21 11:21:27', 1, 1),
	(662, '000-000', '166-262', 'Salve, Tenho as informações que você precisa 1 - Aceitar / 2 - Quero nao. ( ME RESPONDA APENAS COM NUMEROS )', '2021-02-21 11:21:28', 1, 0),
	(663, '000-000', '166-262', '1', '2021-02-21 11:21:31', 1, 1),
	(664, '000-000', '166-262', 'Ta afim de saber oq? 1 - Loc da van do trafico 2 - Trafico de Ecstasy 3 - Trafico de Lean 4 - Trafico de Cpuchip 5 - Trocar o Cpuchip por Fueltech 6 - Loc pra vender as drogas e outros ilegais 7 - Comprar drogas prontas 8 - Compra de armas e ilegais.', '2021-02-21 11:21:32', 1, 0),
	(665, '000-000', '166-262', '7', '2021-02-21 11:21:50', 1, 1),
	(666, '000-000', '166-262', 'Loc: 911.13, 3644.9 Esse tiozao tem umas paradas da boa, mais so aceita outro tipo de dinheiro.', '2021-02-21 11:21:51', 1, 0),
	(667, '000-000', '166-262', '8', '2021-02-21 11:23:36', 1, 1),
	(668, '000-000', '166-262', 'Salve, Tenho as informações que você precisa 1 - Aceitar / 2 - Quero nao. ( ME RESPONDA APENAS COM NUMEROS )', '2021-02-21 11:23:37', 1, 0),
	(669, '000-000', '166-262', '1', '2021-02-21 11:23:42', 1, 1),
	(670, '000-000', '166-262', 'Ta afim de saber oq? 1 - Loc da van do trafico 2 - Trafico de Ecstasy 3 - Trafico de Lean 4 - Trafico de Cpuchip 5 - Trocar o Cpuchip por Fueltech 6 - Loc pra vender as drogas e outros ilegais 7 - Comprar drogas prontas 8 - Compra de armas e ilegais.', '2021-02-21 11:23:43', 1, 0),
	(671, '000-000', '166-262', '8', '2021-02-21 11:23:46', 1, 1),
	(672, '000-000', '166-262', '1 - Pistolas, colete, muniçoes, lockpick, placa e outras coisinhas 2 - Armas pesadas, algemas, c4, capuz e corda.', '2021-02-21 11:23:47', 1, 0),
	(673, '000-000', '166-262', '2', '2021-02-21 11:23:50', 1, 1),
	(674, '000-000', '166-262', '1 - Primeira etapa 2 - Segunda etapa / Voce vai precisar da van e mentalizar /gangs', '2021-02-21 11:23:51', 1, 0),
	(675, '000-000', '166-262', '2', '2021-02-21 11:23:59', 1, 1),
	(676, '000-000', '166-262', 'Loc: -159.89, -1636.28 fica no segundo andar.', '2021-02-21 11:24:00', 1, 0),
	(677, '000-000', '166-262', '8', '2021-02-21 11:32:21', 1, 1),
	(678, '000-000', '166-262', 'Salve, Tenho as informações que você precisa 1 - Aceitar / 2 - Quero nao. ( ME RESPONDA APENAS COM NUMEROS )', '2021-02-21 11:32:23', 1, 0),
	(679, '000-000', '166-262', '1', '2021-02-21 11:32:25', 1, 1),
	(680, '000-000', '166-262', 'Ta afim de saber oq? 1 - Loc da van do trafico 2 - Trafico de Ecstasy 3 - Trafico de Lean 4 - Trafico de Cpuchip 5 - Trocar o Cpuchip por Fueltech 6 - Loc pra vender as drogas e outros ilegais 7 - Comprar drogas prontas 8 - Compra de armas e ilegais.', '2021-02-21 11:32:26', 1, 0),
	(681, '000-000', '070-477', '000', '2021-02-21 17:38:25', 1, 1),
	(682, '000-000', '070-477', 'Salve, Tenho as informações que você precisa 1 - Aceitar / 2 - Quero nao. ( ME RESPONDA APENAS COM NUMEROS )', '2021-02-21 17:38:27', 1, 0),
	(683, '000-000', '070-477', '1', '2021-02-21 17:38:31', 1, 1),
	(684, '000-000', '070-477', 'Ta afim de saber oq? 1 - Loc da van do trafico 2 - Trafico de Ecstasy 3 - Trafico de Lean 4 - Trafico de Cpuchip 5 - Trocar o Cpuchip por Fueltech 6 - Loc pra vender as drogas e outros ilegais 7 - Comprar drogas prontas 8 - Compra de armas e ilegais.', '2021-02-21 17:38:32', 1, 0),
	(694, '000-000', '010-791', 'Salve, Tenho as informações que você precisa 1 - Aceitar / 2 - Quero nao. ( ME RESPONDA APENAS COM NUMEROS )', '2021-02-24 12:12:44', 1, 0),
	(695, '0000000000', '207-576', '000', '2021-02-24 12:12:45', 1, 1),
	(696, '207-576', '0000000000', '000', '2021-02-24 12:12:45', 0, 0),
	(697, '000-000', '010-791', '1', '2021-02-24 12:12:46', 1, 1),
	(698, '000-000', '010-791', 'Ta afim de saber oq? 1 - Loc da van do trafico 2 - Trafico de Ecstasy 3 - Trafico de Lean 4 - Trafico de Cpuchip 5 - Trocar o Cpuchip por Fueltech 6 - Loc pra vender as drogas e outros ilegais 7 - Comprar drogas prontas 8 - Compra de armas e ilegais.', '2021-02-24 12:12:47', 1, 0),
	(699, '0000000000', '207-576', '.', '2021-02-24 12:12:49', 1, 1),
	(700, '207-576', '0000000000', '.', '2021-02-24 12:12:49', 0, 0),
	(701, '000-000', '082-880', '8', '2021-02-24 12:12:56', 1, 1),
	(702, '000-000', '082-880', '1 - Pistolas, colete, muniçoes, lockpick, placa e outras coisinhas 2 - Armas pesadas, algemas, c4, capuz e corda.', '2021-02-24 12:12:57', 1, 0),
	(703, '000-000', '010-791', '6', '2021-02-24 12:12:58', 1, 1),
	(704, '000-000', '010-791', 'Loc: 19.94, -1601.97 O dono de la conhece uns contatos, chegando la vai no armario que tem um gnomo e mentaliza /delivery que ele te entrega a lista', '2021-02-24 12:12:59', 1, 0),
	(705, '000-000', '082-880', '2', '2021-02-24 12:13:07', 1, 1),
	(706, '000-000', '082-880', '1 - Primeira etapa 2 - Segunda etapa / Voce vai precisar da van e mentalizar /gangs', '2021-02-24 12:13:09', 1, 0),
	(707, '000-000', '082-880', '2', '2021-02-24 12:13:47', 1, 1),
	(708, '000-000', '082-880', 'Loc: -159.89, -1636.28 fica no segundo andar.', '2021-02-24 12:13:49', 1, 0);
/*!40000 ALTER TABLE `phone_messages` ENABLE KEYS */;

-- Dumping structure for table vrp_base.twitter_accounts
CREATE TABLE IF NOT EXISTS `twitter_accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table vrp_base.twitter_accounts: ~0 rows (approximately)
/*!40000 ALTER TABLE `twitter_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_accounts` ENABLE KEYS */;

-- Dumping structure for table vrp_base.twitter_likes
CREATE TABLE IF NOT EXISTS `twitter_likes` (
  `id` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table vrp_base.twitter_likes: ~0 rows (approximately)
/*!40000 ALTER TABLE `twitter_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_likes` ENABLE KEYS */;

-- Dumping structure for table vrp_base.twitter_tweets
CREATE TABLE IF NOT EXISTS `twitter_tweets` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table vrp_base.twitter_tweets: ~0 rows (approximately)
/*!40000 ALTER TABLE `twitter_tweets` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_tweets` ENABLE KEYS */;

-- Dumping structure for table vrp_base.vrp_barbershop
CREATE TABLE IF NOT EXISTS `vrp_barbershop` (
  `user_id` int(11) NOT NULL DEFAULT 0,
  `fathers` int(11) NOT NULL DEFAULT 0,
  `kinship` int(11) NOT NULL DEFAULT 0,
  `eyecolor` int(11) NOT NULL DEFAULT 0,
  `skincolor` int(11) NOT NULL DEFAULT 0,
  `acne` int(11) NOT NULL DEFAULT 0,
  `stains` int(11) NOT NULL DEFAULT 0,
  `freckles` int(11) NOT NULL DEFAULT 0,
  `aging` int(11) NOT NULL DEFAULT 15,
  `hair` int(11) NOT NULL DEFAULT 0,
  `haircolor` int(11) NOT NULL DEFAULT 0,
  `haircolor2` int(11) NOT NULL DEFAULT 0,
  `makeup` int(11) NOT NULL DEFAULT 0,
  `makeupintensity` int(11) NOT NULL DEFAULT 0,
  `makeupcolor` int(11) NOT NULL DEFAULT 0,
  `lipstick` int(11) NOT NULL DEFAULT 0,
  `lipstickintensity` int(11) NOT NULL DEFAULT 0,
  `lipstickcolor` int(11) NOT NULL DEFAULT 0,
  `eyebrow` int(11) NOT NULL DEFAULT 0,
  `eyebrowintensity` int(11) NOT NULL DEFAULT 10,
  `eyebrowcolor` int(11) NOT NULL DEFAULT 0,
  `beard` int(11) NOT NULL DEFAULT 0,
  `beardintentisy` int(11) NOT NULL DEFAULT 10,
  `beardcolor` int(11) NOT NULL DEFAULT 0,
  `blush` int(11) NOT NULL DEFAULT 0,
  `blushintentisy` int(11) NOT NULL DEFAULT 0,
  `blushcolor` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table vrp_base.vrp_barbershop: ~24 rows (approximately)
/*!40000 ALTER TABLE `vrp_barbershop` DISABLE KEYS */;
INSERT INTO `vrp_barbershop` (`user_id`, `fathers`, `kinship`, `eyecolor`, `skincolor`, `acne`, `stains`, `freckles`, `aging`, `hair`, `haircolor`, `haircolor2`, `makeup`, `makeupintensity`, `makeupcolor`, `lipstick`, `lipstickintensity`, `lipstickcolor`, `eyebrow`, `eyebrowintensity`, `eyebrowcolor`, `beard`, `beardintentisy`, `beardcolor`, `blush`, `blushintentisy`, `blushcolor`) VALUES
	(1, 0, 0, 0, 0, 0, 0, 0, 15, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 10, 0, 0, 0, 0),
	(2, 0, 9, 0, 0, 0, 0, 0, 15, 21, 19, 0, 24, 3, 0, 0, 0, 0, 24, 0, 0, 23, 10, 0, 0, 0, 0),
	(3, 31, 0, 17, 45, 0, 0, 0, 15, 61, 21, 55, 12, 10, 61, 1, 10, 52, 2, 10, 0, 0, 0, 0, 4, 2, 27),
	(4, 0, 0, 0, 0, 0, 0, 0, 15, 15, 10, 0, 0, 0, 0, 0, 0, 0, 10, 6, 0, 0, 0, 0, 19, 7, 34),
	(5, 17, 0, 2, 0, 0, 0, 0, 15, 11, 1, 5, 0, 0, 0, 0, 0, 0, 9, 10, 0, 0, 10, 3, 0, 0, 0),
	(6, 25, 0, 18, 6, 0, 0, 0, 15, 21, 29, 20, 0, 0, 0, 0, 0, 0, 2, 10, 0, 0, 10, 0, 0, 0, 0),
	(7, 0, 1, 0, 0, 0, 0, 0, 15, 19, 0, 0, 0, 2, 0, 0, 0, 0, 0, 10, 0, 0, 10, 0, 0, 0, 0),
	(8, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 10, 0, 0, 0, 0),
	(9, 6, 10, 0, 0, 0, 0, 0, 15, 53, 14, 2, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 10, 0, 0, 0, 0),
	(10, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 10, 0, 0, 0, 0),
	(11, 0, 0, 0, 0, 0, 0, 0, 15, 51, 1, 3, 0, 0, 0, 0, 0, 0, 0, 10, 0, 7, 10, 2, 0, 0, 0),
	(12, 0, 0, 0, 12, 0, 0, 0, 15, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 10, 0, 0, 0, 0),
	(13, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 10, 0, 0, 0, 0),
	(14, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 10, 0, 0, 0, 0),
	(15, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 10, 0, 0, 0, 0),
	(16, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 10, 0, 0, 0, 0),
	(17, 24, 0, 2, 35, 0, 0, 0, 15, 21, 28, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 18, 10, 34, 0, 0, 0),
	(18, 45, 0, 4, 34, 0, 0, 0, 15, 28, 60, 60, 2, 10, 0, 0, 5, 22, 2, 9, 0, 13, 0, 0, 0, 0, 0),
	(19, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 10, 0, 0, 0, 0),
	(20, 0, 10, 0, 0, 0, 0, 0, 15, 26, 31, 22, 0, 0, 0, 6, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0),
	(21, 0, 7, 0, 21, 0, 0, 0, 15, 29, 8, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0),
	(22, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 10, 0, 0, 0, 0),
	(23, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 10, 0, 0, 0, 0),
	(24, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 10, 0, 0, 0, 0);
/*!40000 ALTER TABLE `vrp_barbershop` ENABLE KEYS */;

-- Dumping structure for table vrp_base.vrp_chests
CREATE TABLE IF NOT EXISTS `vrp_chests` (
  `permiss` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `x` text NOT NULL,
  `y` text NOT NULL,
  `z` text NOT NULL,
  `grid` int(11) NOT NULL DEFAULT 0,
  `weight` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table vrp_base.vrp_chests: ~0 rows (approximately)
/*!40000 ALTER TABLE `vrp_chests` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrp_chests` ENABLE KEYS */;

-- Dumping structure for table vrp_base.vrp_fines
CREATE TABLE IF NOT EXISTS `vrp_fines` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `nuser_id` int(11) NOT NULL DEFAULT 0,
  `date` varchar(25) NOT NULL DEFAULT '0.0.0',
  `price` int(11) NOT NULL DEFAULT 0,
  `text` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  KEY `nuser_id` (`nuser_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table vrp_base.vrp_fines: ~0 rows (approximately)
/*!40000 ALTER TABLE `vrp_fines` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrp_fines` ENABLE KEYS */;

-- Dumping structure for table vrp_base.vrp_homes
CREATE TABLE IF NOT EXISTS `vrp_homes` (
  `home` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `owner` int(1) NOT NULL DEFAULT 0,
  `vault` int(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (`home`,`user_id`),
  KEY `home` (`home`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table vrp_base.vrp_homes: ~3 rows (approximately)
/*!40000 ALTER TABLE `vrp_homes` DISABLE KEYS */;
INSERT INTO `vrp_homes` (`home`, `user_id`, `owner`, `vault`) VALUES
	('Hotel009', 2, 1, 25),
	('Hotel010', 27, 1, 25),
	('Hotel013', 33, 1, 25),
	('Middle166', 8, 1, 250),
	('Middle171', 33, 1, 250);
/*!40000 ALTER TABLE `vrp_homes` ENABLE KEYS */;

-- Dumping structure for table vrp_base.vrp_houses
CREATE TABLE IF NOT EXISTS `vrp_houses` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `coords` text DEFAULT NULL,
  `owned` tinyint(2) DEFAULT 0,
  `price` int(11) DEFAULT NULL,
  `tier` tinyint(2) DEFAULT NULL,
  `garage` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 CHECKSUM=1;

-- Dumping data for table vrp_base.vrp_houses: ~0 rows (approximately)
/*!40000 ALTER TABLE `vrp_houses` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrp_houses` ENABLE KEYS */;

-- Dumping structure for table vrp_base.vrp_infos
CREATE TABLE IF NOT EXISTS `vrp_infos` (
  `steam` varchar(50) NOT NULL,
  `whitelist` tinyint(1) DEFAULT 0,
  `banned` tinyint(1) DEFAULT 0,
  `gems` int(11) NOT NULL DEFAULT 0,
  `premium` int(12) NOT NULL DEFAULT 0,
  `predays` int(2) NOT NULL DEFAULT 0,
  `priority` int(3) NOT NULL DEFAULT 0,
  `chars` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`steam`),
  KEY `steam` (`steam`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table vrp_base.vrp_infos: ~26 rows (approximately)
/*!40000 ALTER TABLE `vrp_infos` DISABLE KEYS */;
INSERT INTO `vrp_infos` (`steam`, `whitelist`, `banned`, `gems`, `premium`, `predays`, `priority`, `chars`) VALUES
	('steam:110000106aa37b0', 1, 0, 0, 0, 0, 0, 1),
	('steam:11000010796f706', 1, 0, 50000, 1613614831, 30, 10, 1),
	('steam:110000107ed442a', 1, 0, 0, 0, 0, 0, 1),
	('steam:110000108287464', 1, 0, 0, 0, 0, 0, 1),
	('steam:11000010a7fd179', 1, 0, 0, 0, 0, 0, 1),
	('steam:11000010b9d449a', 1, 0, 0, 0, 0, 0, 1),
	('steam:110000112d073f0', 1, 0, 0, 0, 0, 0, 1),
	('steam:110000113afc34d', 1, 0, 0, 0, 0, 0, 1),
	('steam:1100001154d0856', 1, 0, 0, 0, 0, 0, 1),
	('steam:1100001175d5dd6', 1, 0, 0, 0, 0, 0, 1),
	('steam:110000117fa6cb6', 1, 0, 0, 0, 0, 0, 1),
	('steam:11000011add146e', 1, 0, 0, 0, 0, 0, 1),
	('steam:11000011be68a38', 1, 0, 0, 0, 0, 0, 1),
	('steam:11000013345d788', 1, 0, 0, 0, 0, 0, 1),
	('steam:110000134320833', 1, 0, 0, 0, 0, 0, 1),
	('steam:1100001346a5763', 1, 0, 0, 0, 0, 0, 1),
	('steam:110000134ad46e3', 1, 0, 6199, 1613614831, 30, 50, 2),
	('steam:1100001357ec4d9', 1, 0, 0, 0, 0, 0, 1),
	('steam:110000136337247', 1, 0, 0, 0, 0, 0, 1),
	('steam:11000013ca1dd07', 1, 0, 0, 0, 0, 0, 1),
	('steam:11000013cddcd55', 1, 0, 0, 0, 0, 0, 1),
	('steam:11000013d226750', 1, 0, 0, 0, 0, 0, 1),
	('steam:11000013fc66aea', 1, 0, 0, 0, 0, 0, 1),
	('steam:11000013fd6b931', 1, 0, 0, 0, 0, 0, 1),
	('steam:110000142c4b0d9', 1, 0, 0, 0, 0, 0, 1),
	('steam:110000143cc4cf7', 1, 0, 0, 0, 0, 0, 1),
	('steam:1100001440ca564', 1, 0, 0, 0, 0, 0, 1),
	('steam:110000144b3f0c0', 1, 0, 0, 0, 0, 0, 1),
	('steam:1100001457aa826', 1, 0, 0, 0, 0, 0, 1);
/*!40000 ALTER TABLE `vrp_infos` ENABLE KEYS */;

-- Dumping structure for table vrp_base.vrp_invoice
CREATE TABLE IF NOT EXISTS `vrp_invoice` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `nuser_id` int(11) NOT NULL DEFAULT 0,
  `date` varchar(25) NOT NULL DEFAULT '0.0.0',
  `price` int(11) NOT NULL DEFAULT 0,
  `text` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `nuser_id` (`nuser_id`),
  KEY `user_id` (`user_id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table vrp_base.vrp_invoice: ~0 rows (approximately)
/*!40000 ALTER TABLE `vrp_invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrp_invoice` ENABLE KEYS */;

-- Dumping structure for table vrp_base.vrp_permissions
CREATE TABLE IF NOT EXISTS `vrp_permissions` (
  `id` int(11) unsigned NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `permiss` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table vrp_base.vrp_permissions: ~93 rows (approximately)
/*!40000 ALTER TABLE `vrp_permissions` DISABLE KEYS */;
INSERT INTO `vrp_permissions` (`id`, `user_id`, `permiss`) VALUES
	(1, 1, 'Admin'),
	(2, 2, 'Owner'),
	(0, 1, 'Police'),
	(0, 1, 'Mecanic'),
	(0, 1, 'Mecanico'),
	(0, 1, 'grota'),
	(1, 2, 'Admin'),
	(0, 2, 'grota'),
	(0, 33, 'Admin'),
	(0, 33, 'Owner'),
	(0, 3, 'TheLost'),
	(0, 2, 'TheLost'),
	(0, 2, 'waitPolice'),
	(0, 2, 'boate'),
	(0, 4, 'Admin'),
	(0, 4, 'Ower'),
	(0, 4, 'Owner'),
	(0, 5, 'Owner'),
	(0, 5, 'Admin'),
	(0, 6, 'Admin'),
	(0, 6, 'Owner'),
	(0, 4, 'sargento'),
	(0, 5, 'police'),
	(0, 2, 'waitParamedic'),
	(0, 8, 'Owner'),
	(0, 8, 'Admin'),
	(0, 8, 'mecanico'),
	(0, 0, 'nil'),
	(0, 8, 'mecanic'),
	(0, 3, 'Police'),
	(0, 11, 'boate'),
	(0, 11, 'grota'),
	(0, 11, 'Admin'),
	(0, 11, 'Owner'),
	(0, 12, 'Admin'),
	(0, 12, 'Owner'),
	(0, 12, 'grota'),
	(0, 12, 'Mecanic'),
	(0, 12, 'mecanico.permissao'),
	(0, 2, 'Paramedic'),
	(0, 2, 'Police'),
	(0, 16, 'Admin'),
	(0, 16, 'adm'),
	(0, 15, 'Admin'),
	(0, 15, 'Policial'),
	(0, 15, 'Recruta'),
	(0, 15, 'Mecanico'),
	(0, 20, 'Paramedic'),
	(0, 20, 'Admin'),
	(0, 20, 'Owner'),
	(0, 13, 'Owner'),
	(1, 13, 'Admin'),
	(1, 27, 'Owner'),
	(0, 27, 'Admin'),
	(0, 27, 'Police'),
	(0, 22, 'Admin'),
	(0, 22, 'Owner'),
	(0, 22, 'boate'),
	(0, 27, 'boate'),
	(0, 3, 'Owner'),
	(0, 3, 'Admin'),
	(0, 29, 'Policia'),
	(0, 29, 'Capitão'),
	(0, 29, 'Recruta'),
	(0, 2, 'Ofiicer'),
	(0, 2, 'Oficer'),
	(0, 29, 'Oficer'),
	(0, 29, 'Policial'),
	(0, 29, 'Samu'),
	(0, 29, 'Medico'),
	(0, 29, 'Set'),
	(0, 29, 'CET'),
	(0, 29, 'POLICIALFEDERAL'),
	(0, 29, 'Paycheckpolicial'),
	(0, 29, 'PayCheckRecruta'),
	(0, 29, 'Police'),
	(0, 33, 'Paramedic'),
	(0, 33, 'Taxi'),
	(0, 2, 'Mecanicol'),
	(0, 2, 'Mecanico'),
	(0, 33, 'Mecanico'),
	(0, 34, 'Owner'),
	(0, 34, 'Admin'),
	(0, 43, 'Aluno'),
	(0, 34, 'Sheriff'),
	(0, 34, 'Police'),
	(0, 1, 'Doctor'),
	(0, 8, 'taxi'),
	(0, 8, 'taxista'),
	(0, 35, 'Admin'),
	(0, 35, 'Suporte'),
	(0, 3, 'Policial'),
	(0, 35, 'Police'),
	(0, 37, 'Police'),
	(0, 33, 'Policee'),
	(0, 33, 'Police'),
	(0, 8, 'Med');
/*!40000 ALTER TABLE `vrp_permissions` ENABLE KEYS */;

-- Dumping structure for table vrp_base.vrp_player_houses
CREATE TABLE IF NOT EXISTS `vrp_player_houses` (
  `id` int(255) NOT NULL,
  `house` varchar(50) NOT NULL,
  `identifier` varchar(50) DEFAULT NULL,
  `keyholders` text DEFAULT NULL,
  `decorations` text DEFAULT NULL,
  `stash` text DEFAULT NULL,
  `outfit` text DEFAULT NULL,
  `logout` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 CHECKSUM=1;

-- Dumping data for table vrp_base.vrp_player_houses: ~0 rows (approximately)
/*!40000 ALTER TABLE `vrp_player_houses` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrp_player_houses` ENABLE KEYS */;

-- Dumping structure for table vrp_base.vrp_salary
CREATE TABLE IF NOT EXISTS `vrp_salary` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `date` varchar(25) DEFAULT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=457 DEFAULT CHARSET=latin1;

-- Dumping data for table vrp_base.vrp_salary: ~89 rows (approximately)
/*!40000 ALTER TABLE `vrp_salary` DISABLE KEYS */;
INSERT INTO `vrp_salary` (`id`, `user_id`, `date`, `price`) VALUES
	(269, 1, '13.02.2021', 5000),
	(270, 1, '13.02.2021', 5000),
	(271, 1, '13.02.2021', 5000),
	(285, 3, '14.02.2021', 5000),
	(288, 3, '14.02.2021', 5000),
	(291, 3, '15.02.2021', 5000),
	(296, 5, '15.02.2021', 5000),
	(298, 5, '15.02.2021', 5000),
	(307, 3, '15.02.2021', 5000),
	(316, 3, '16.02.2021', 5000),
	(319, 3, '16.02.2021', 5000),
	(326, 3, '17.02.2021', 5000),
	(328, 3, '17.02.2021', 5000),
	(335, 2, '17.02.2021', 1000),
	(336, 2, '17.02.2021', 5000),
	(337, 2, '17.02.2021', 6000),
	(338, 2, '18.02.2021', 1000),
	(339, 2, '18.02.2021', 5000),
	(340, 2, '18.02.2021', 6000),
	(341, 2, '19.02.2021', 1000),
	(342, 2, '19.02.2021', 5000),
	(343, 2, '19.02.2021', 6000),
	(344, 2, '19.02.2021', 1000),
	(345, 2, '19.02.2021', 5000),
	(346, 2, '19.02.2021', 6000),
	(347, 2, '19.02.2021', 1000),
	(348, 2, '19.02.2021', 5000),
	(349, 2, '19.02.2021', 6000),
	(350, 3, '19.02.2021', 5000),
	(352, 2, '19.02.2021', 1000),
	(353, 2, '19.02.2021', 5000),
	(354, 2, '19.02.2021', 6000),
	(355, 3, '19.02.2021', 5000),
	(356, 20, '19.02.2021', 6000),
	(357, 2, '19.02.2021', 1000),
	(358, 2, '19.02.2021', 5000),
	(359, 2, '19.02.2021', 6000),
	(360, 3, '19.02.2021', 5000),
	(361, 27, '20.02.2021', 1000),
	(362, 27, '20.02.2021', 5000),
	(363, 27, '20.02.2021', 1000),
	(364, 27, '20.02.2021', 5000),
	(365, 27, '21.02.2021', 1000),
	(366, 27, '21.02.2021', 5000),
	(367, 27, '21.02.2021', 1000),
	(368, 27, '21.02.2021', 5000),
	(369, 33, '21.02.2021', 1000),
	(370, 33, '21.02.2021', 6000),
	(371, 33, '21.02.2021', 1000),
	(372, 33, '21.02.2021', 5000),
	(373, 33, '21.02.2021', 500),
	(374, 33, '21.02.2021', 6000),
	(375, 34, '21.02.2021', 5000),
	(376, 33, '21.02.2021', 1000),
	(377, 33, '21.02.2021', 5000),
	(378, 33, '21.02.2021', 500),
	(379, 33, '21.02.2021', 6000),
	(380, 34, '21.02.2021', 5000),
	(381, 13, '22.02.2021', 1000),
	(382, 33, '22.02.2021', 1000),
	(383, 33, '22.02.2021', 5000),
	(384, 33, '22.02.2021', 500),
	(385, 33, '22.02.2021', 6000),
	(386, 13, '22.02.2021', 1000),
	(387, 13, '22.02.2021', 1000),
	(388, 13, '22.02.2021', 1000),
	(390, 33, '23.02.2021', 1000),
	(391, 33, '23.02.2021', 5000),
	(392, 33, '23.02.2021', 500),
	(393, 33, '23.02.2021', 6000),
	(394, 8, '23.02.2021', 500),
	(395, 33, '23.02.2021', 1000),
	(396, 33, '23.02.2021', 5000),
	(397, 33, '23.02.2021', 500),
	(398, 33, '23.02.2021', 6000),
	(399, 33, '23.02.2021', 1000),
	(400, 33, '23.02.2021', 5000),
	(401, 33, '23.02.2021', 500),
	(402, 33, '23.02.2021', 6000),
	(403, 33, '23.02.2021', 1000),
	(404, 33, '23.02.2021', 5000),
	(405, 33, '23.02.2021', 500),
	(406, 33, '23.02.2021', 6000),
	(407, 33, '23.02.2021', 1000),
	(408, 33, '23.02.2021', 5000),
	(409, 33, '23.02.2021', 500),
	(410, 33, '23.02.2021', 6000),
	(411, 13, '23.02.2021', 1000),
	(412, 13, '23.02.2021', 1000),
	(413, 33, '23.02.2021', 1000),
	(414, 33, '23.02.2021', 5000),
	(415, 33, '23.02.2021', 500),
	(416, 33, '23.02.2021', 6000),
	(417, 35, '23.02.2021', 5000),
	(418, 33, '23.02.2021', 1000),
	(419, 33, '23.02.2021', 5000),
	(420, 33, '23.02.2021', 500),
	(421, 33, '23.02.2021', 6000),
	(422, 35, '23.02.2021', 5000),
	(423, 37, '23.02.2021', 5000),
	(424, 33, '23.02.2021', 1000),
	(425, 33, '23.02.2021', 5000),
	(426, 33, '23.02.2021', 500),
	(427, 33, '23.02.2021', 6000),
	(428, 35, '23.02.2021', 5000),
	(429, 13, '24.02.2021', 1000),
	(430, 33, '24.02.2021', 1000),
	(431, 33, '24.02.2021', 5000),
	(432, 33, '24.02.2021', 500),
	(433, 33, '24.02.2021', 6000),
	(434, 33, '24.02.2021', 1000),
	(435, 33, '24.02.2021', 5000),
	(436, 33, '24.02.2021', 500),
	(437, 33, '24.02.2021', 6000),
	(438, 13, '24.02.2021', 1000),
	(439, 33, '24.02.2021', 1000),
	(440, 33, '24.02.2021', 5000),
	(441, 33, '24.02.2021', 500),
	(442, 33, '24.02.2021', 6000),
	(443, 13, '24.02.2021', 1000),
	(444, 33, '24.02.2021', 1000),
	(445, 33, '24.02.2021', 5000),
	(446, 33, '24.02.2021', 500),
	(447, 33, '24.02.2021', 6000),
	(448, 33, '24.02.2021', 1000),
	(449, 33, '24.02.2021', 5000),
	(450, 33, '24.02.2021', 500),
	(451, 33, '24.02.2021', 6000),
	(452, 33, '24.02.2021', 1000),
	(453, 33, '24.02.2021', 5000),
	(454, 33, '24.02.2021', 500),
	(455, 33, '24.02.2021', 6000),
	(456, 35, '24.02.2021', 5000);
/*!40000 ALTER TABLE `vrp_salary` ENABLE KEYS */;

-- Dumping structure for table vrp_base.vrp_srv_data
CREATE TABLE IF NOT EXISTS `vrp_srv_data` (
  `dkey` varchar(100) NOT NULL,
  `dvalue` text DEFAULT NULL,
  PRIMARY KEY (`dkey`),
  KEY `dkey` (`dkey`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table vrp_base.vrp_srv_data: ~7 rows (approximately)
/*!40000 ALTER TABLE `vrp_srv_data` DISABLE KEYS */;
INSERT INTO `vrp_srv_data` (`dkey`, `dvalue`) VALUES
	('chest:33:dodgechargersrt', '{}'),
	('chest:8:mule3', '{"carp":{"amount":12},"octopus":{"amount":4},"shrimp":{"amount":4}}'),
	('custom:8:ellie', '{"trimdesign":-1,"transmission":2,"color":{"1":49,"2":111},"roofscoops":-1,"strutbrace":-1,"plaques":-1,"camcover":-1,"btiresvariation":false,"suspension":-1,"speakers":-1,"plateindex":1,"neoncolor":{"3":0,"2":0,"1":255},"brakes":2,"doors":-1,"xenoncolor":8,"ornaments":-1,"neon":1,"doors2":-1,"armor":4,"plateholder":-1,"engineblock":-1,"vanityplates":-1,"tiresvariation":false,"roof":3,"dialdesign":-1,"exhaust":6,"tank":-1,"engine":3,"headlights":1,"fbumper":-1,"tyresmoke":-1,"rollcage":-1,"aerials":-1,"archcover":-1,"hood":-1,"wheeltype":2,"tires":9,"skirts":-1,"horn":29,"extracolor":{"1":5,"2":156},"hydraulics":-1,"dashboard":-1,"grille":-1,"windowtint":5,"liveries":6,"trunk":-1,"shiftleavers":-1,"steeringwheels":-1,"seats":-1,"smokecolor":{"3":255,"2":255,"1":255},"fenders":-1,"rbumper":-1,"btires":-1,"spoiler":-1,"turbo":1}'),
	('homesVault:Hotel010', '{}'),
	('homesVault:Hotel013', '{}'),
	('homesVault:Middle171', '{}'),
	('jailitens:14', '[]'),
	('jailitens:2', '[]'),
	('jailitens:3', '[]');
/*!40000 ALTER TABLE `vrp_srv_data` ENABLE KEYS */;

-- Dumping structure for table vrp_base.vrp_users
CREATE TABLE IF NOT EXISTS `vrp_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `steam` varchar(100) DEFAULT NULL,
  `registration` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT 'Individuo',
  `name2` varchar(50) DEFAULT 'Indigente',
  `bank` int(12) NOT NULL DEFAULT 4500,
  `garage` int(3) NOT NULL DEFAULT 2,
  `prison` int(6) NOT NULL DEFAULT 0,
  `locate` int(1) NOT NULL DEFAULT 1,
  `deleted` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

-- Dumping data for table vrp_base.vrp_users: ~36 rows (approximately)
/*!40000 ALTER TABLE `vrp_users` DISABLE KEYS */;
INSERT INTO `vrp_users` (`id`, `steam`, `registration`, `phone`, `name`, `name2`, `bank`, `garage`, `prison`, `locate`, `deleted`) VALUES
	(1, 'steam:11000010a7fd179', '01BKQ771', '718-174', 'Magrin', 'Pokas', 2650, 2, 0, 1, 0),
	(2, 'steam:110000134ad46e3', '77WDA816', '027-692', 'magrin', 'pokas2', 23235, 3, 0, 2, 0),
	(3, 'steam:1100001346a5763', '10VEP027', '692-070', 'Ruby ', 'Pokas', 2865, 2, 0, 2, 1),
	(4, 'steam:110000134320833', '27UWB219', '666-715', 'Julia', 'Corleone', 3649, 2, 0, 1, 0),
	(5, 'steam:1100001457aa826', '78NDC382', '089-273', 'Vitor ', 'Corleone ', 2357, 2, 0, 1, 0),
	(6, 'steam:110000143cc4cf7', '09EUC946', '636-506', 'Dom', 'Cortes Martins', 3915, 2, 0, 1, 0),
	(7, 'steam:110000117fa6cb6', '33QSW761', '136-744', 'ra', 'mo', 361, 2, 0, 1, 0),
	(8, 'steam:1100001154d0856', '58JDM341', '796-486', 'Tarik', 'Rock', 2991237, 2, 0, 1, 0),
	(9, 'steam:11000013d226750', '67OOH315', '246-300', 'Rurian', 'Jost', 4500, 2, 0, 1, 0),
	(10, 'steam:11000011be68a38', '82BAY043', '856-636', 'Ninho', 'Santos', 3450, 2, 0, 1, 0),
	(11, 'steam:1100001440ca564', '04OUN109', '446-813', 'Maiki', 'Carioca', 4000, 2, 0, 1, 0),
	(12, 'steam:11000013ca1dd07', '54HUI451', '662-626', 'Sebastian', 'Chaves', 2454, 2, 0, 1, 1),
	(13, 'steam:11000010796f706', '88AAM650', '450-694', 'Leo', 'Ribeiro', 4500, 2, 0, 1, 0),
	(14, 'steam:11000013fc66aea', '80GDZ666', '715-785', 'Neo', 'DiMarolla', 3900, 2, 0, 2, 0),
	(15, 'steam:11000010b9d449a', '26DTS110', '342-696', 'Ganja', 'Jr', 2370, 2, 0, 1, 1),
	(16, 'steam:110000142c4b0d9', '11LIN836', '267-241', 'Tucki ', 'Lohanny', 4500, 2, 0, 1, 0),
	(17, 'steam:110000113afc34d', '69GAS047', '746-186', 'TEUC', 'UNOMEU', 4500, 2, 0, 1, 0),
	(18, 'steam:11000013cddcd55', '32TUW021', '966-671', 'Bianca', 'Lohanny', 4500, 2, 0, 1, 1),
	(19, 'steam:1100001175d5dd6', '57WND038', '208-927', 'Mariana', 'Gomes', 4500, 2, 0, 1, 0),
	(20, 'steam:1100001357ec4d9', '77MRE863', '277-802', 'Nysaca', 'Takashi', 10400, 2, 0, 1, 0),
	(21, 'steam:110000134ad46e3', '90IBT364', '660-705', 'Magrin2', 'Pokas', 4500, 2, 0, 1, 1),
	(22, 'steam:110000108287464', '41GZX836', '885-808', 'Murilo', 'Cowboy', 3802, 2, 0, 1, 0),
	(23, 'steam:110000134ad46e3', '77WBG196', '667-157', 'teste', 'teste2', 4500, 2, 0, 1, 1),
	(24, 'steam:110000134ad46e3', '63ROC685', '634-052', 'magrin', 'pokas', 4500, 2, 0, 1, 1),
	(25, 'steam:11000010796f706', '51CHV208', '927-309', 'Maria', 'do Bairro', 4500, 2, 0, 1, 1),
	(26, 'steam:11000010796f706', '63KAO217', '627-059', 'Maria', 'Viela', 4500, 2, 0, 1, 0),
	(27, 'steam:110000134ad46e3', '00OSO364', '755-197', 'magrin', 'pokas3', 11863730, 2, 0, 1, 1),
	(28, 'steam:1100001346a5763', '50VFW800', '465-045', 'Ruby', 'Maravicherry', 4500, 2, 0, 1, 1),
	(29, 'steam:11000010b9d449a', '95LHU345', '166-262', 'Ganja', 'Jr', 500, 2, 0, 1, 0),
	(30, 'steam:11000013cddcd55', '66JSI477', '781-046', 'Bianca', 'Lohanny', 4500, 2, 0, 1, 0),
	(31, 'steam:11000013ca1dd07', '51NXO165', '943-598', 'Sebastian', 'Chaves', 4500, 2, 0, 1, 1),
	(32, 'steam:11000013ca1dd07', '61WRK277', '802-196', 'Sebestian', 'Chaves', 4500, 2, 0, 1, 0),
	(33, 'steam:110000134ad46e3', '90BXO502', '010-791', 'Magrin', 'PokasZ', 77192980, 2, 0, 1, 0),
	(34, 'steam:110000106aa37b0', '16AGU692', '070-477', 'Hand', 'Perigone', 412385, 2, 0, 1, 0),
	(35, 'steam:1100001346a5763', '04OAR942', '075-769', 'Ruby', 'licia', 4460, 2, 0, 1, 0),
	(36, 'steam:11000010796f706', '07BLT746', '186-327', 'Leia', 'Ribeiro', 4500, 2, 0, 1, 0),
	(37, 'steam:11000013345d788', '45ARY420', '757-694', 'Felipe', 'Lourenço', 1815, 2, 0, 1, 0),
	(38, 'steam:110000107ed442a', '82ZBI073', '646-607', 'OMal', 'PsicO', 5437, 2, 0, 1, 0),
	(39, 'steam:110000136337247', '01BTZ130', '057-536', 'Druw', 'Cueiu', 4482, 2, 0, 1, 0),
	(40, 'steam:11000011add146e', '47OOD975', '082-880', 'dwadawd', 'wadawdawd', 2880, 2, 0, 1, 0),
	(41, 'steam:11000013fd6b931', '50LOA694', '207-576', 'alpha', 'config', 4490, 2, 0, 1, 0);
/*!40000 ALTER TABLE `vrp_users` ENABLE KEYS */;

-- Dumping structure for table vrp_base.vrp_user_data
CREATE TABLE IF NOT EXISTS `vrp_user_data` (
  `user_id` int(11) NOT NULL,
  `dkey` varchar(100) NOT NULL,
  `dvalue` text DEFAULT NULL,
  PRIMARY KEY (`user_id`,`dkey`),
  KEY `user_id` (`user_id`),
  KEY `dkey` (`dkey`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table vrp_base.vrp_user_data: ~77 rows (approximately)
/*!40000 ALTER TABLE `vrp_user_data` DISABLE KEYS */;
INSERT INTO `vrp_user_data` (`user_id`, `dkey`, `dvalue`) VALUES
	(1, 'Datatable', '{"inventory":[],"position":{"z":31.48,"y":-1268.59,"x":333.28},"skin":1885233650,"health":190,"backpack":75,"stress":21,"weaps":[],"thirst":37,"inventorys":{"13":{"amount":1,"item":"skate"},"10":{"item":"rose","amount":1},"3":{"item":"WEAPON_SMG","amount":1},"2":{"item":"dollars","amount":380},"1":{"item":"emptybottle","amount":2},"6":{"item":"teddy","amount":1},"5":{"item":"lockpick","amount":1},"4":{"item":"lighter","amount":1},"15":{"amount":2000,"item":"dollars"}},"hunger":37,"armour":0}'),
	(2, 'Clothings', '{"ear":{"defaultItem":-1,"item":-1,"texture":0,"defaultTexture":0},"bag":{"defaultItem":0,"item":0,"texture":0,"defaultTexture":0},"shoes":{"defaultItem":1,"item":25,"texture":0,"defaultTexture":0},"glass":{"defaultItem":0,"item":0,"texture":0,"defaultTexture":0},"hat":{"defaultItem":-1,"item":-1,"texture":0,"defaultTexture":0},"arms":{"defaultItem":0,"item":20,"texture":0,"defaultTexture":0},"accessory":{"defaultItem":0,"item":1,"texture":0,"defaultTexture":0},"mask":{"defaultItem":0,"item":121,"texture":0,"defaultTexture":0},"torso2":{"defaultItem":0,"item":143,"texture":0,"defaultTexture":0},"decals":{"defaultItem":0,"item":0,"texture":0,"defaultTexture":0},"pants":{"defaultItem":0,"item":25,"texture":0,"defaultTexture":0},"vest":{"defaultItem":0,"item":0,"texture":0,"defaultTexture":0},"bracelet":{"defaultItem":-1,"item":-1,"texture":0,"defaultTexture":0},"watch":{"defaultItem":-1,"item":-1,"texture":0,"defaultTexture":0},"t-shirt":{"defaultItem":1,"item":56,"texture":0,"defaultTexture":0}}'),
	(2, 'Datatable', '{"weaps":[],"stress":18,"health":176,"hunger":8,"position":{"z":110.86,"x":199.07,"y":163.47},"backpack":100,"inventory":[],"inventorys":{"26":{"amount":2,"item":"legos"},"10":{"amount":1,"item":"premium04"},"14":{"amount":31,"item":"fueltech"},"6":{"amount":1,"item":"blackcard"},"7":{"amount":1,"item":"adrenaline"},"8":{"amount":2405,"item":"dollars"},"9":{"amount":1,"item":"skate"},"16":{"amount":1,"item":"identity"},"11":{"amount":1,"item":"lockpick"},"27":{"amount":4,"item":"emptybottle"},"20":{"amount":23,"item":"water"},"13":{"amount":1,"item":"WEAPON_FLASHLIGHT"},"12":{"amount":3,"item":"silk"},"18":{"amount":1,"item":"identity"},"19":{"amount":1,"item":"cocaine"},"2":{"amount":3,"item":"WEAPON_PISTOL"},"28":{"amount":1,"item":"raceticket"},"4":{"amount":1,"item":"lockpick"},"5":{"amount":3,"item":"emptybottle"},"22":{"amount":10,"item":"glass"},"21":{"amount":42,"item":"hamburger"},"3":{"amount":1,"item":"WEAPON_ASSAULTRIFLE"},"23":{"amount":1,"item":"rose"},"24":{"amount":1,"item":"cellphone"},"1":{"amount":1,"item":"cpuchip"},"25":{"amount":1,"item":"lighter"},"17":{"amount":5,"item":"dollars2"}},"armour":0,"delivery":0,"thirst":77,"skin":1885233650}'),
	(3, 'Clothings', '{"shoes":{"texture":0,"defaultItem":1,"item":9,"defaultTexture":0},"ear":{"texture":0,"defaultItem":-1,"item":-1,"defaultTexture":0},"watch":{"texture":0,"defaultItem":-1,"item":-1,"defaultTexture":0},"bracelet":{"texture":0,"defaultItem":-1,"item":-1,"defaultTexture":0},"bag":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"hat":{"texture":0,"defaultItem":-1,"item":-1,"defaultTexture":0},"t-shirt":{"texture":0,"defaultItem":1,"item":27,"defaultTexture":0},"torso2":{"texture":0,"defaultItem":0,"item":143,"defaultTexture":0},"decals":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"glass":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"arms":{"texture":0,"defaultItem":0,"item":23,"defaultTexture":0},"mask":{"texture":0,"defaultItem":0,"item":121,"defaultTexture":0},"vest":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"accessory":{"texture":0,"defaultItem":0,"item":1,"defaultTexture":0},"pants":{"texture":0,"defaultItem":0,"item":31,"defaultTexture":0}}'),
	(3, 'Datatable', '{"health":197,"weaps":[],"armour":0,"thirst":58,"position":{"y":-1462.35,"x":412.02,"z":29.35},"stress":10,"inventory":[],"hunger":89,"backpack":75,"inventorys":{"1":{"item":"skate","amount":1},"5":{"item":"water","amount":19},"4":{"item":"weed","amount":2},"3":{"item":"cellphone","amount":1},"2":{"item":"identity","amount":1},"9":{"item":"emptybottle","amount":1},"8":{"item":"lockpick","amount":1},"7":{"item":"hamburger","amount":14},"10":{"item":"dollars","amount":2000},"27":{"item":"emptybottle","amount":2},"15":{"item":"radio","amount":1},"11":{"item":"delivery","amount":1},"6":{"item":"chocolate","amount":4}},"skin":-1667301416}'),
	(4, 'Datatable', '{"position":{"z":56.13,"y":-1073.78,"x":145.78},"hunger":77,"weaps":[],"stress":30,"inventory":[],"armour":0,"delivery":0,"backpack":75,"thirst":88,"inventorys":{"3":{"amount":1,"item":"skate"},"2":{"amount":1,"item":"identity"},"5":{"amount":6618,"item":"dollars"},"4":{"amount":1,"item":"water"},"7":{"amount":9,"item":"paperbag"},"6":{"amount":1,"item":"emptybottle"},"9":{"amount":2,"item":"soda"},"8":{"amount":3,"item":"sandwich"},"13":{"amount":29,"item":"plastic"},"10":{"amount":2,"item":"tacos"},"11":{"amount":2,"item":"hotdog"},"1":{"amount":1,"item":"cellphone"},"12":{"amount":4,"item":"lockpick"}},"health":166,"skin":-1667301416}'),
	(5, 'currentCharacterMode', '{"sundamageModel":-1,"ageingModel":-1,"cheekboneWidth":0,"makeupModel":-1,"lips":0,"eyebrowsWidth":0,"eyebrowsColor":0,"chinShape":0,"fathersID":0,"chinLength":0,"mothersID":21,"noseHeight":0,"chinPosition":0,"noseTip":0,"noseWidth":0,"lipstickColor":0,"secondHairColor":0,"frecklesModel":-1,"chestModel":-1,"neckWidth":0,"hairModel":4,"blushColor":0,"noseBridge":0,"noseLength":0,"complexionModel":-1,"blemishesModel":-1,"cheeksWidth":0,"eyebrowsModel":0,"chinWidth":0,"jawWidth":0,"firstHairColor":0,"blushModel":-1,"noseShift":0,"beardModel":-1,"cheekboneHeight":0,"eyebrowsHeight":0,"jawHeight":0,"chestColor":0,"shapeMix":0.5,"eyesColor":0,"beardColor":0,"lipstickModel":-1,"skinColor":6}'),
	(5, 'Datatable', '{"delivery":0,"backpack":25,"inventory":[],"weaps":[],"stress":25,"position":{"y":-2850.6,"z":60.08,"x":-242.75},"hunger":42,"skin":1885233650,"health":190,"inventorys":{"9":{"amount":3,"item":"cola"},"7":{"amount":9,"item":"cigarette"},"8":{"amount":2,"item":"lighter"},"5":{"amount":2792,"item":"dollars"},"6":{"amount":4,"item":"paperbag"},"3":{"amount":1,"item":"skate"},"4":{"amount":2,"item":"water"},"1":{"amount":1,"item":"cellphone"},"2":{"amount":1,"item":"identity"}},"thirst":72,"armour":0}'),
	(5, 'spawnController', '2'),
	(6, 'Datatable', '{"position":{"z":6.01,"y":-2794.23,"x":-454.86},"hunger":47,"weaps":[],"stress":22,"inventory":[],"armour":0,"delivery":0,"backpack":50,"thirst":72,"inventorys":{"3":{"amount":1,"item":"backpackm"},"2":{"amount":1,"item":"identity"},"5":{"amount":6652,"item":"dollars"},"4":{"amount":1,"item":"water"},"7":{"amount":2,"item":"lockpick"},"6":{"amount":3,"item":"paperbag"},"9":{"amount":1,"item":"emptybottle"},"8":{"amount":44,"item":"plastic"},"1":{"amount":1,"item":"cellphone"}},"health":179,"skin":1885233650}'),
	(7, 'Clothings', '{"bag":{"defaultItem":0,"item":0,"defaultTexture":0,"texture":0},"bracelet":{"defaultItem":-1,"item":-1,"defaultTexture":0,"texture":0},"t-shirt":{"defaultItem":1,"item":1,"defaultTexture":0,"texture":0},"decals":{"defaultItem":0,"item":0,"defaultTexture":0,"texture":0},"accessory":{"defaultItem":0,"item":1,"defaultTexture":0,"texture":0},"watch":{"defaultItem":-1,"item":-1,"defaultTexture":0,"texture":0},"shoes":{"defaultItem":1,"item":3,"defaultTexture":0,"texture":0},"ear":{"defaultItem":-1,"item":-1,"defaultTexture":0,"texture":0},"arms":{"defaultItem":0,"item":0,"defaultTexture":0,"texture":0},"pants":{"defaultItem":0,"item":4,"defaultTexture":0,"texture":0},"mask":{"defaultItem":0,"item":0,"defaultTexture":0,"texture":0},"vest":{"defaultItem":0,"item":0,"defaultTexture":0,"texture":0},"glass":{"defaultItem":0,"item":0,"defaultTexture":0,"texture":0},"hat":{"defaultItem":-1,"item":-1,"defaultTexture":0,"texture":0},"torso2":{"defaultItem":0,"item":4,"defaultTexture":0,"texture":0}}'),
	(7, 'Datatable', '{"inventorys":{"3":{"item":"skate","amount":1},"4":{"item":"water","amount":1},"5":{"item":"dollars","amount":2000},"6":{"item":"radio","amount":1},"7":{"item":"soda","amount":1},"8":{"item":"cola","amount":1},"1":{"item":"cellphone","amount":1},"2":{"item":"identity","amount":1}},"skin":1885233650,"stress":2,"weaps":[],"thirst":90,"inventory":[],"backpack":5,"health":191,"armour":0,"position":{"x":60.43,"y":-149.61,"z":55.24},"hunger":66}'),
	(8, 'currentCharacterMode', '{"sundamageModel":-1,"ageingModel":-1,"cheekboneWidth":0,"noseShift":0,"firstHairColor":29,"eyesColor":9,"eyebrowsColor":0,"chinShape":0,"fathersID":10,"chinLength":0,"mothersID":33,"noseHeight":0.14,"chinPosition":0,"noseTip":-0.4,"noseLength":0.49,"lipstickColor":0,"secondHairColor":42,"frecklesModel":-1,"chestModel":-1,"neckWidth":0,"hairModel":2,"blushColor":0,"noseBridge":0,"cheeksWidth":-0.03,"complexionModel":-1,"blemishesModel":-1,"jawWidth":0,"eyebrowsModel":10,"chinWidth":0,"beardColor":18,"noseWidth":0,"blushModel":-1,"jawHeight":0,"beardModel":6,"cheekboneHeight":0,"lips":0,"shapeMix":0.8,"chestColor":0,"eyebrowsWidth":-0.07,"eyebrowsHeight":-0.08,"makeupModel":-1,"lipstickModel":-1,"skinColor":6}'),
	(8, 'Datatable', '{"skin":1885233650,"thirst":25,"armour":0,"backpack":100,"hunger":22,"weaps":[],"stress":23,"inventorys":{"1":{"amount":6,"item":"hamburger"},"2":{"amount":10,"item":"cola"},"3":{"amount":1,"item":"fishingrod"},"4":{"amount":1,"item":"skate"},"5":{"amount":9421,"item":"dollars"},"6":{"amount":1,"item":"identity"},"7":{"amount":1,"item":"camera"},"8":{"amount":1,"item":"WEAPON_VINTAGEPISTOL"},"9":{"amount":1,"item":"radio"},"14":{"amount":1,"item":"WEAPON_COMBATPISTOL"},"16":{"amount":49,"item":"copper"},"26":{"amount":1,"item":"vape"},"25":{"amount":190,"item":"WEAPON_RIFLE_AMMO"},"24":{"amount":1,"item":"lighter"},"23":{"amount":6,"item":"weed"},"22":{"amount":5,"item":"joint"},"11":{"amount":1,"item":"cellphone"},"10":{"amount":1,"item":"binoculars"},"20":{"amount":1,"item":"WEAPON_CARBINERIFLE"},"21":{"amount":1,"item":"emptybottle"},"13":{"amount":4,"item":"weed"},"12":{"amount":3,"item":"backpackm"}},"health":133,"position":{"x":-831.11,"y":5408.45,"z":34.56},"delivery":0,"inventory":[]}'),
	(8, 'spawnController', '2'),
	(9, 'Datatable', '{"position":{"z":53.97,"y":-224.46,"x":194.21},"hunger":84,"weaps":[],"inventory":[],"armour":0,"backpack":5,"thirst":84,"inventorys":{"3":{"amount":1,"item":"skate"},"2":{"amount":1,"item":"identity"},"5":{"amount":2000,"item":"dollars"},"4":{"amount":2,"item":"water"},"1":{"amount":1,"item":"cellphone"}},"health":188,"skin":1885233650}'),
	(10, 'Datatable', '{"position":{"z":29.73,"y":-894.76,"x":47.95},"hunger":98,"weaps":[],"inventory":[],"armour":0,"thirst":98,"backpack":5,"inventorys":{"3":{"amount":1,"item":"skate"},"2":{"amount":1,"item":"identity"},"5":{"amount":2000,"item":"dollars"},"4":{"amount":2,"item":"water"},"1":{"amount":1,"item":"cellphone"}},"health":165,"skin":1885233650}'),
	(11, 'Datatable', '{"position":{"z":21.68,"y":-681.84,"x":-1156.16},"hunger":70,"weaps":[],"stress":5,"inventory":[],"armour":0,"delivery":0,"backpack":50,"thirst":70,"inventorys":{"3":{"amount":1,"item":"skate"},"2":{"amount":1,"item":"identity"},"5":{"amount":2996,"item":"dollars"},"4":{"amount":2,"item":"water"},"7":{"amount":5,"item":"weed"},"6":{"amount":1,"item":"joint"},"9":{"amount":20,"item":"lockpick"},"8":{"amount":4,"item":"joint"},"1":{"amount":1,"item":"cellphone"}},"health":143,"skin":1885233650}'),
	(12, 'Clothings', '{"bag":{"defaultItem":0,"defaultTexture":0,"texture":0,"item":0},"hat":{"defaultItem":-1,"defaultTexture":0,"texture":0,"item":-1},"ear":{"defaultItem":-1,"defaultTexture":0,"texture":0,"item":-1},"torso2":{"defaultItem":0,"defaultTexture":0,"texture":0,"item":18},"vest":{"defaultItem":0,"defaultTexture":0,"texture":0,"item":0},"decals":{"defaultItem":0,"defaultTexture":0,"texture":0,"item":0},"glass":{"defaultItem":0,"defaultTexture":0,"texture":0,"item":0},"pants":{"defaultItem":0,"defaultTexture":0,"texture":0,"item":0},"accessory":{"defaultItem":0,"defaultTexture":0,"texture":0,"item":0},"mask":{"defaultItem":0,"defaultTexture":0,"texture":0,"item":0},"watch":{"defaultItem":-1,"defaultTexture":0,"texture":0,"item":-1},"arms":{"defaultItem":0,"defaultTexture":0,"texture":0,"item":2},"shoes":{"defaultItem":1,"defaultTexture":0,"texture":0,"item":0},"t-shirt":{"defaultItem":1,"defaultTexture":0,"texture":0,"item":2},"bracelet":{"defaultItem":-1,"defaultTexture":0,"texture":0,"item":-1}}'),
	(12, 'currentCharacterMode', '{"eyebrowsWidth":0,"eyesColor":0,"frecklesModel":-1,"noseTip":0,"cheekboneWidth":0,"cheeksWidth":0,"noseWidth":0,"hairModel":4,"jawHeight":0,"blushColor":0,"chinLength":0,"firstHairColor":0,"eyebrowsHeight":0,"chestColor":0,"noseHeight":0,"noseBridge":0,"neckWidth":0,"shapeMix":0.5,"chinPosition":0,"noseLength":0,"eyebrowsColor":0,"skinColor":12,"noseShift":0,"lips":0,"beardModel":-1,"jawWidth":0,"mothersID":21,"ageingModel":-1,"chinShape":0,"chinWidth":0,"chestModel":-1,"makeupModel":-1,"cheekboneHeight":0,"lipstickColor":0,"blushModel":-1,"eyebrowsModel":0,"secondHairColor":0,"sundamageModel":-1,"fathersID":0,"complexionModel":-1,"beardColor":0,"lipstickModel":-1,"blemishesModel":-1}'),
	(12, 'Datatable', '{"skin":1885233650,"inventory":[],"inventorys":{"22":{"item":"skate","amount":1},"1":{"item":"cellphone","amount":1},"24":{"item":"absolut","amount":1},"3":{"item":"emptybottle","amount":1},"2":{"item":"identity","amount":1},"5":{"item":"dollars","amount":2001},"4":{"item":"lockpick","amount":9},"7":{"item":"dollars2","amount":9},"6":{"item":"emptybottle","amount":1},"18":{"item":"joint","amount":4}},"thirst":44,"weaps":[],"health":190,"armour":0,"stress":44,"position":{"z":-98.51,"y":-996.36,"x":402.55},"hunger":20,"backpack":25}'),
	(12, 'spawnController', '2'),
	(13, 'currentCharacterMode', '{"noseBridge":0,"fathersID":4,"lipstickModel":8,"makeupModel":13,"chinShape":0,"cheekboneHeight":0,"chinLength":0,"lipstickColor":8,"firstHairColor":14,"cheekboneWidth":0,"cheeksWidth":0,"noseWidth":0,"jawHeight":0,"jawWidth":0,"eyesColor":22,"eyebrowsColor":9,"lips":0,"beardOpacity":5,"noseShift":0,"complexionModel":12,"beardColor":42,"frecklesModel":5,"chinWidth":0,"noseLength":0,"secondHairColor":40,"shapeMix":0.7,"blushModel":21,"ageingModel":5,"neckWidth":0,"eyebrowsHeight":0,"eyebrowsOpacity":3,"beardModel":8,"mothersID":24,"hairModel":38,"eyebrowsWidth":0,"skinColor":38,"blemishesModel":2,"eyebrowsModel":30,"noseTip":0,"chinPosition":0,"blushColor":9,"noseHeight":0}'),
	(13, 'Datatable', '{"stress":40,"weaps":[],"position":{"x":407.35,"z":29.27,"y":-983.16},"inventorys":{"10":{"item":"skate","amount":1},"14":{"item":"WEAPON_RIFLE_AMMO","amount":44},"2":{"item":"water","amount":19},"8":{"item":"WEAPON_PISTOL","amount":1},"12":{"item":"identity","amount":1},"6":{"item":"WEAPON_KNIFE","amount":1},"5":{"item":"emptybottle","amount":6},"4":{"item":"WEAPON_CARBINERIFLE","amount":1},"3":{"item":"hamburger","amount":19},"13":{"item":"WEAPON_PISTOL_AMMO","amount":41},"1":{"item":"cellphone","amount":1}},"thirst":58,"inventory":[],"hunger":58,"backpack":100,"health":121,"armour":0,"skin":1885233650}'),
	(13, 'spawnController', '2'),
	(14, 'Clothings', '{"mask":{"defaultTexture":0,"texture":0,"item":11,"defaultItem":0},"accessory":{"defaultTexture":0,"texture":0,"item":0,"defaultItem":0},"shoes":{"defaultTexture":0,"texture":0,"item":0,"defaultItem":1},"torso2":{"defaultTexture":0,"texture":0,"item":0,"defaultItem":0},"arms":{"defaultTexture":0,"texture":0,"item":0,"defaultItem":0},"hat":{"defaultTexture":0,"texture":1,"item":45,"defaultItem":-1},"bag":{"defaultTexture":0,"texture":0,"item":0,"defaultItem":0},"bracelet":{"defaultTexture":0,"texture":0,"item":-1,"defaultItem":-1},"pants":{"defaultTexture":0,"texture":0,"item":0,"defaultItem":0},"watch":{"defaultTexture":0,"texture":0,"item":-1,"defaultItem":-1},"ear":{"defaultTexture":0,"texture":0,"item":-1,"defaultItem":-1},"glass":{"defaultTexture":0,"texture":0,"item":0,"defaultItem":0},"t-shirt":{"defaultTexture":0,"texture":0,"item":1,"defaultItem":1},"decals":{"defaultTexture":0,"texture":0,"item":0,"defaultItem":0},"vest":{"defaultTexture":0,"texture":0,"item":0,"defaultItem":0}}'),
	(14, 'Datatable', '{"weaps":[],"armour":0,"inventorys":{"7":{"amount":215,"item":"WEAPON_PISTOL_AMMO"},"8":{"amount":2,"item":"bluecard"},"11":{"amount":300,"item":"dollars"},"12":{"amount":273940,"item":"dollars"},"3":{"amount":1,"item":"WEAPON_PISTOL"},"4":{"amount":246,"item":"WEAPON_RIFLE_AMMO"},"5":{"amount":1,"item":"skate"},"6":{"amount":1,"item":"water"},"15":{"amount":1,"item":"emptybottle"},"1":{"amount":274540,"item":"dollars"},"14":{"amount":5,"item":"dollars2"},"13":{"amount":1,"item":"radio"},"10":{"amount":1,"item":"cellphone"},"9":{"amount":1,"item":"watch"}},"skin":1885233650,"health":101,"hunger":50,"stress":0,"backpack":100,"inventory":[],"thirst":75,"position":{"x":1398.2,"y":1245.86,"z":107.78}}'),
	(15, 'Datatable', '{"armour":0,"health":186,"backpack":5,"inventorys":{"24":{"amount":1,"item":"water"},"17":{"amount":1,"item":"lockpick"},"19":{"amount":1,"item":"radio"},"23":{"amount":1,"item":"water"},"22":{"amount":2,"item":"skate"},"2":{"amount":1,"item":"identity"},"1":{"amount":1,"item":"cellphone"},"18":{"amount":3,"item":"lockpick"},"4":{"amount":1,"item":"lockpick"},"5":{"amount":2000,"item":"dollars"}},"inventory":[],"stress":16,"position":{"z":11.86,"x":-1876.99,"y":-584.45},"hunger":30,"thirst":30,"weaps":[],"skin":1885233650}'),
	(16, 'Datatable', '{"weaps":[],"thirst":99,"inventorys":{"1":{"item":"cellphone","amount":1},"2":{"item":"identity","amount":1},"3":{"item":"skate","amount":1},"4":{"item":"water","amount":1},"5":{"item":"dollars","amount":2000},"6":{"item":"emptybottle","amount":1}},"backpack":5,"skin":1885233650,"inventory":[],"health":178,"hunger":94,"position":{"x":157.22,"y":-1029.76,"z":29.78},"armour":0}'),
	(17, 'Datatable', '{"weaps":[],"thirst":95,"inventorys":{"1":{"item":"cellphone","amount":1},"2":{"item":"identity","amount":1},"3":{"item":"skate","amount":1},"4":{"item":"emptybottle","amount":1},"5":{"item":"dollars","amount":2000},"6":{"item":"emptybottle","amount":1}},"backpack":5,"skin":1885233650,"inventory":[],"position":{"x":129.43,"y":-1713.66,"z":29.25},"hunger":91,"health":193,"armour":0}'),
	(18, 'Datatable', '{"weaps":[],"thirst":90,"inventorys":{"1":{"item":"cellphone","amount":1},"2":{"item":"identity","amount":1},"3":{"item":"skate","amount":1},"4":{"item":"water","amount":2},"5":{"item":"dollars","amount":2000}},"skin":-1667301416,"inventory":[],"health":168,"hunger":90,"position":{"x":128.14,"y":-1729.75,"z":29.14},"armour":0}'),
	(19, 'Datatable', '{"weaps":[],"thirst":88,"inventorys":{"1":{"item":"cellphone","amount":1},"2":{"item":"identity","amount":1},"3":{"item":"skate","amount":1},"4":{"item":"water","amount":2},"5":{"item":"dollars","amount":2000}},"backpack":5,"skin":-1667301416,"inventory":[],"health":169,"hunger":88,"position":{"x":137.63,"y":-1706.16,"z":29.3},"armour":0}'),
	(20, 'Clothings', '{"arms":{"texture":0,"defaultTexture":0,"defaultItem":0,"item":5},"t-shirt":{"texture":0,"defaultTexture":0,"defaultItem":1,"item":1},"decals":{"texture":0,"defaultTexture":0,"defaultItem":0,"item":0},"accessory":{"texture":0,"defaultTexture":0,"defaultItem":0,"item":0},"bag":{"texture":0,"defaultTexture":0,"defaultItem":0,"item":0},"bracelet":{"texture":0,"defaultTexture":0,"defaultItem":-1,"item":-1},"ear":{"texture":0,"defaultTexture":0,"defaultItem":-1,"item":-1},"watch":{"texture":0,"defaultTexture":0,"defaultItem":-1,"item":-1},"shoes":{"texture":0,"defaultTexture":0,"defaultItem":1,"item":0},"pants":{"texture":0,"defaultTexture":0,"defaultItem":0,"item":0},"glass":{"texture":0,"defaultTexture":0,"defaultItem":0,"item":0},"mask":{"texture":0,"defaultTexture":0,"defaultItem":0,"item":0},"hat":{"texture":0,"defaultTexture":0,"defaultItem":-1,"item":-1},"vest":{"texture":0,"defaultTexture":0,"defaultItem":0,"item":0},"torso2":{"texture":0,"defaultTexture":0,"defaultItem":0,"item":1}}'),
	(20, 'Datatable', '{"health":173,"weaps":[],"armour":0,"thirst":65,"inventory":[],"stress":10,"backpack":5,"hunger":74,"position":{"y":1933.21,"x":-2590.0,"z":167.31},"skin":-1667301416,"inventorys":{"1":{"item":"cellphone","amount":1},"8":{"item":"dollars2","amount":1523},"7":{"item":"hamburger","amount":1},"6":{"item":"postit","amount":2},"5":{"item":"dollars","amount":1590},"4":{"item":"water","amount":2},"3":{"item":"skate","amount":1},"2":{"item":"identity","amount":1}}}'),
	(21, 'Datatable', '{"weaps":[],"inventory":[],"health":175,"hunger":98,"position":{"z":32.64,"x":199.44,"y":-1769.67},"inventorys":{"1":{"amount":1,"item":"cellphone"},"2":{"amount":1,"item":"identity"},"3":{"amount":1,"item":"skate"},"4":{"amount":2,"item":"water"},"5":{"amount":2000,"item":"dollars"}},"armour":0,"backpack":5,"thirst":98,"skin":-1667301416}'),
	(22, 'Clothings', '{"decals":{"defaultItem":0,"texture":0,"item":0,"defaultTexture":0},"ear":{"defaultItem":-1,"texture":0,"item":-1,"defaultTexture":0},"torso2":{"defaultItem":0,"texture":0,"item":0,"defaultTexture":0},"t-shirt":{"defaultItem":1,"texture":0,"item":1,"defaultTexture":0},"shoes":{"defaultItem":1,"texture":0,"item":0,"defaultTexture":0},"glass":{"defaultItem":0,"texture":0,"item":0,"defaultTexture":0},"accessory":{"defaultItem":0,"texture":0,"item":0,"defaultTexture":0},"bracelet":{"defaultItem":-1,"texture":0,"item":-1,"defaultTexture":0},"mask":{"defaultItem":0,"texture":0,"item":0,"defaultTexture":0},"hat":{"defaultItem":-1,"texture":0,"item":-1,"defaultTexture":0},"pants":{"defaultItem":0,"texture":0,"item":0,"defaultTexture":0},"vest":{"defaultItem":0,"texture":0,"item":0,"defaultTexture":0},"watch":{"defaultItem":-1,"texture":0,"item":-1,"defaultTexture":0},"arms":{"defaultItem":0,"texture":0,"item":0,"defaultTexture":0},"bag":{"defaultItem":0,"texture":0,"item":0,"defaultTexture":0}}'),
	(22, 'currentCharacterMode', '{"eyebrowsWidth":0,"eyesColor":0,"frecklesModel":-1,"noseTip":0,"cheekboneWidth":0,"cheeksWidth":0,"noseWidth":0,"hairModel":4,"jawHeight":0,"blushColor":0,"chinLength":0,"firstHairColor":0,"blemishesModel":-1,"chestColor":0,"noseHeight":0,"noseBridge":0,"neckWidth":0,"lipstickColor":0,"chinPosition":0,"noseShift":0,"eyebrowsColor":0,"eyebrowsHeight":0,"blushModel":-1,"lips":0,"beardModel":-1,"chinWidth":0,"mothersID":21,"beardColor":0,"chinShape":0,"complexionModel":-1,"chestModel":-1,"makeupModel":-1,"shapeMix":0.5,"cheekboneHeight":0,"jawWidth":0,"eyebrowsModel":0,"secondHairColor":0,"sundamageModel":-1,"fathersID":0,"ageingModel":-1,"noseLength":0,"lipstickModel":-1,"skinColor":6}'),
	(22, 'Datatable', '{"skin":1885233650,"inventory":[],"inventorys":{"7":{"item":"dollars2","amount":5021},"6":{"amount":1,"item":"cellphone"},"9":{"amount":1,"item":"identity"},"8":{"amount":1,"item":"skate"},"12":{"item":"cigarette","amount":1},"1":{"item":"hamburger","amount":8},"3":{"item":"lockpick","amount":1},"10":{"amount":2300,"item":"dollars"},"5":{"item":"radio","amount":1},"4":{"amount":2,"item":"water"},"13":{"item":"lighter","amount":1},"14":{"item":"donut","amount":1},"11":{"item":"cocaine","amount":5},"2":{"item":"water","amount":10}},"thirst":15,"weaps":[],"backpack":100,"health":108,"stress":3,"position":{"z":39.01,"y":-133.89,"x":-338.61},"armour":0,"hunger":43}'),
	(22, 'spawnController', '2'),
	(23, 'Datatable', '{"skin":1885233650,"inventory":[],"weaps":[],"inventorys":{"2":{"amount":1,"item":"identity"},"3":{"amount":1,"item":"skate"},"1":{"amount":1,"item":"cellphone"},"4":{"amount":2,"item":"water"},"5":{"amount":2000,"item":"dollars"}},"hunger":100,"thirst":100,"position":{"z":30.83,"x":27.67,"y":-1763.31}}'),
	(24, 'Datatable', '{"backpack":5,"armour":0,"health":200,"position":{"y":-1763.31,"z":30.83,"x":27.67},"inventory":[],"inventorys":{"1":{"item":"cellphone","amount":1},"2":{"item":"identity","amount":1},"3":{"item":"skate","amount":1},"4":{"item":"water","amount":2},"5":{"item":"dollars","amount":2000}},"weaps":[],"skin":1885233650}'),
	(25, 'Datatable', '{"inventorys":{"5":{"amount":2000,"item":"dollars"},"4":{"amount":2,"item":"water"},"3":{"amount":1,"item":"skate"},"2":{"amount":1,"item":"identity"},"1":{"amount":1,"item":"cellphone"}},"health":175,"armour":0,"position":{"y":-1763.31,"x":27.67,"z":30.83},"thirst":99,"weaps":[],"skin":-1667301416,"hunger":99,"inventory":[]}'),
	(26, 'currentCharacterMode', '{"mothersID":21,"noseTip":0,"eyebrowsWidth":0.45,"blushModel":-1,"blushColor":1,"beardOpacity":5,"cheekboneHeight":-0.42,"cheekboneWidth":0,"neckWidth":0,"secondHairColor":0,"eyesColor":0,"skinColor":38,"beardModel":-1,"fathersID":12,"eyebrowsHeight":0,"frecklesModel":-1,"beardColor":0,"noseBridge":0,"complexionModel":-1,"jawHeight":0,"chinPosition":0,"shapeMix":0.75,"hairModel":58,"lips":-1,"makeupModel":-1,"lipstickModel":0,"eyebrowsOpacity":5,"lipstickColor":0,"chinShape":0,"eyebrowsColor":0,"ageingModel":-1,"blemishesModel":-1,"cheeksWidth":0,"chinWidth":0,"firstHairColor":0,"eyebrowsModel":0,"chinLength":0,"noseLength":0,"noseHeight":0,"noseShift":0,"noseWidth":0,"jawWidth":0}'),
	(26, 'Datatable', '{"position":{"z":29.67,"y":-1715.03,"x":117.07},"armour":0,"weaps":[],"backpack":5,"hunger":17,"health":105,"inventory":[],"inventorys":{"5":{"item":"dollars","amount":2000},"4":{"item":"water","amount":2},"3":{"item":"skate","amount":1},"2":{"item":"identity","amount":1},"1":{"item":"cellphone","amount":1}},"thirst":17,"skin":-1667301416}'),
	(26, 'spawnController', '2'),
	(27, 'Clothings', '{"ear":{"texture":0,"item":-1,"defaultItem":-1,"defaultTexture":0},"vest":{"texture":0,"item":0,"defaultItem":0,"defaultTexture":0},"mask":{"texture":0,"item":121,"defaultItem":0,"defaultTexture":0},"shoes":{"texture":0,"item":9,"defaultItem":1,"defaultTexture":0},"glass":{"texture":0,"item":0,"defaultItem":0,"defaultTexture":0},"t-shirt":{"texture":0,"item":27,"defaultItem":1,"defaultTexture":0},"arms":{"texture":0,"item":23,"defaultItem":0,"defaultTexture":0},"decals":{"texture":0,"item":0,"defaultItem":0,"defaultTexture":0},"bracelet":{"texture":0,"item":-1,"defaultItem":-1,"defaultTexture":0},"pants":{"texture":2,"item":31,"defaultItem":0,"defaultTexture":0},"bag":{"texture":0,"item":0,"defaultItem":0,"defaultTexture":0},"accessory":{"texture":0,"item":1,"defaultItem":0,"defaultTexture":0},"torso2":{"texture":0,"item":202,"defaultItem":0,"defaultTexture":0},"watch":{"texture":0,"item":-1,"defaultItem":-1,"defaultTexture":0},"hat":{"texture":2,"item":13,"defaultItem":-1,"defaultTexture":0}}'),
	(27, 'currentCharacterMode', '{"hairModel":28,"frecklesModel":11,"noseBridge":0.63,"eyebrowsColor":10,"shapeMix":1,"mothersID":31,"jawWidth":-0.41,"blushColor":14,"eyesColor":0,"complexionModel":0,"chinLength":0,"lipstickModel":0,"eyebrowsModel":10,"beardModel":0,"noseWidth":0,"lips":-1,"makeupModel":0,"lipstickColor":23,"beardOpacity":0,"chinPosition":0,"blemishesModel":0,"secondHairColor":34,"gender":1,"chinWidth":0,"noseLength":0,"noseHeight":0.86,"neckWidth":-1,"skinColor":0,"noseShift":0,"fathersID":4,"cheeksWidth":0,"firstHairColor":12,"cheekboneWidth":0,"eyebrowsWidth":0,"chinShape":0,"blushModel":0,"beardColor":0,"noseTip":-0.43,"cheekboneHeight":-1,"jawHeight":-0.9,"ageingModel":0,"eyebrowsHeight":-0.48,"eyebrowsOpacity":10}'),
	(27, 'Datatable', '{"position":{"z":29.22,"x":-0.23,"y":-1611.79},"skin":-1667301416,"inventory":[],"health":186,"backpack":100,"hunger":94,"stress":40,"inventorys":{"18":{"item":"plastic","amount":38},"19":{"item":"aluminum","amount":5},"8":{"item":"skate","amount":1},"9":{"item":"water","amount":1},"15":{"item":"rose","amount":1},"14":{"item":"toolbox","amount":1},"17":{"item":"cocaine","amount":41},"16":{"item":"toolboxes1","amount":1},"12":{"item":"lockpick","amount":1},"13":{"item":"emptybottle","amount":1},"10":{"item":"dollars","amount":5064},"11":{"item":"delivery","amount":1},"2":{"item":"water","amount":5},"3":{"item":"emptybottle","amount":5},"1":{"item":"hamburger","amount":6},"6":{"item":"cellphone","amount":1},"7":{"item":"identity","amount":1},"4":{"item":"radio","amount":1},"5":{"item":"teddy","amount":1}},"weaps":[],"armour":0,"thirst":64}'),
	(27, 'spawnController', '2'),
	(28, 'Datatable', '{"inventorys":{"5":{"amount":2000,"item":"dollars"},"4":{"amount":2,"item":"water"},"3":{"amount":1,"item":"skate"},"2":{"amount":1,"item":"identity"},"1":{"amount":1,"item":"cellphone"}},"health":175,"armour":0,"position":{"y":-996.36,"x":402.55,"z":-99.01},"thirst":98,"weaps":[],"skin":-1667301416,"hunger":98,"inventory":[]}'),
	(29, 'currentCharacterMode', '{"eyebrowsWidth":0,"eyesColor":1,"frecklesModel":-1,"noseTip":0,"cheekboneWidth":-0.88,"cheeksWidth":0.59,"noseWidth":0,"hairModel":6,"jawHeight":0,"blushColor":0,"chinLength":0,"firstHairColor":0,"eyebrowsHeight":0.67,"chestColor":0,"noseHeight":0,"noseBridge":0,"neckWidth":0,"shapeMix":0.25,"chinPosition":0,"lipstickColor":0,"ageingModel":-1,"complexionModel":-1,"blushModel":-1,"lips":0,"beardModel":3,"chinWidth":-0.79,"skinColor":3,"noseShift":0,"chinShape":0,"beardColor":0,"chestModel":-1,"makeupModel":-1,"cheekboneHeight":0,"noseLength":0.76,"eyebrowsColor":0,"eyebrowsModel":1,"secondHairColor":28,"sundamageModel":-1,"fathersID":44,"jawWidth":0,"mothersID":26,"lipstickModel":-1,"blemishesModel":-1}'),
	(29, 'Datatable', '{"position":{"z":11.83,"x":-1944.61,"y":-527.77},"skin":1885233650,"inventory":[],"health":179,"backpack":75,"hunger":50,"stress":23,"inventorys":{"19":{"amount":1,"item":"lockpick"},"8":{"amount":698,"item":"dollars"},"9":{"item":"hamburger","amount":1},"14":{"amount":5,"item":"rubber"},"10":{"amount":50,"item":"WEAPON_RIFLE_AMMO"},"2":{"amount":1,"item":"lockpick"},"3":{"amount":1,"item":"skate"},"23":{"amount":1,"item":"keyboard"},"1":{"amount":1,"item":"cellphone"},"6":{"amount":1,"item":"identity"},"7":{"amount":5,"item":"aluminum"},"4":{"amount":1,"item":"WEAPON_COMBATPISTOL"},"5":{"amount":3,"item":"aluminum"}},"armour":0,"weaps":[],"thirst":52}'),
	(29, 'spawnController', '2'),
	(30, 'currentCharacterMode', '{"eyebrowsWidth":0,"eyesColor":32,"frecklesModel":-1,"noseTip":0,"cheekboneWidth":0,"cheeksWidth":0,"noseWidth":-0.3,"cheekboneHeight":0,"beardColor":0,"blushColor":0,"chinLength":0,"firstHairColor":0,"blemishesModel":-1,"chestColor":0,"noseHeight":0,"noseBridge":0,"neckWidth":0,"shapeMix":1,"chinPosition":0,"jawHeight":0,"noseLength":0,"chinWidth":0,"blushModel":-1,"lips":-0.34,"beardModel":-1,"jawWidth":0,"skinColor":12,"eyebrowsHeight":0,"chinShape":0,"hairModel":38,"chestModel":-1,"makeupModel":0,"lipstickColor":0,"eyebrowsColor":0,"mothersID":21,"eyebrowsModel":2,"secondHairColor":0,"sundamageModel":-1,"fathersID":44,"noseShift":0,"ageingModel":-1,"lipstickModel":0,"complexionModel":-1}'),
	(30, 'Datatable', '{"position":{"z":7.0,"x":-1281.7,"y":-1118.26},"skin":-1667301416,"inventory":[],"health":173,"backpack":25,"hunger":84,"inventorys":{"3":{"item":"skate","amount":1},"1":{"item":"cellphone","amount":1},"6":{"item":"identity","amount":1},"4":{"item":"water","amount":2},"5":{"item":"dollars","amount":2000}},"armour":0,"weaps":[],"thirst":84}'),
	(30, 'spawnController', '2'),
	(31, 'currentCharacterMode', '{"eyebrowsWidth":0,"eyesColor":0,"frecklesModel":-1,"noseTip":0,"cheekboneWidth":0,"cheeksWidth":0,"noseWidth":0,"cheekboneHeight":0,"jawHeight":0,"blushColor":0,"chinLength":0,"firstHairColor":0,"blemishesModel":-1,"chestColor":0,"noseHeight":0,"noseBridge":0,"neckWidth":0,"shapeMix":0.5,"chinPosition":0,"noseShift":0,"noseLength":0,"skinColor":6,"blushModel":-1,"lips":0,"beardModel":-1,"complexionModel":-1,"mothersID":21,"hairModel":4,"chinShape":0,"beardColor":0,"chestModel":-1,"makeupModel":-1,"eyebrowsHeight":0,"chinWidth":0,"eyebrowsColor":0,"eyebrowsModel":0,"secondHairColor":0,"sundamageModel":-1,"fathersID":0,"ageingModel":-1,"jawWidth":0,"lipstickModel":-1,"lipstickColor":0}'),
	(31, 'Datatable', '{"weaps":[],"skin":1885233650,"inventory":[],"inventorys":{"1":{"item":"cellphone","amount":1},"3":{"item":"skate","amount":1},"2":{"item":"identity","amount":1},"5":{"item":"dollars","amount":2000},"4":{"item":"water","amount":2}},"position":{"z":-99.01,"y":-996.36,"x":402.55},"armour":0,"health":200}'),
	(31, 'spawnController', '2'),
	(32, 'currentCharacterMode', '{"makeupModel":-1,"noseWidth":0,"blushModel":-1,"lips":0,"hairModel":4,"noseTip":0,"sundamageModel":-1,"complexionModel":-1,"skinColor":6,"noseBridge":0,"mothersID":21,"cheekboneHeight":0,"frecklesModel":-1,"neckWidth":0,"fathersID":0,"chestColor":0,"chestModel":-1,"chinPosition":0,"lipstickColor":0,"beardModel":-1,"ageingModel":-1,"jawWidth":0,"eyebrowsWidth":0,"jawHeight":0,"blemishesModel":-1,"eyebrowsModel":0,"noseShift":0,"chinShape":0,"eyebrowsHeight":0,"cheekboneWidth":0,"shapeMix":0.5,"chinLength":0,"secondHairColor":0,"blushColor":0,"chinWidth":0,"beardColor":0,"cheeksWidth":0,"eyesColor":0,"eyebrowsColor":0,"lipstickModel":-1,"firstHairColor":0,"noseLength":0,"noseHeight":0}'),
	(32, 'Datatable', '{"position":{"x":405.56,"y":-993.42,"z":-99.0},"skin":1885233650,"health":200,"armour":0,"inventory":[],"weaps":[],"inventorys":{"4":{"amount":2,"item":"water"},"5":{"amount":2000,"item":"dollars"},"1":{"amount":1,"item":"cellphone"},"2":{"amount":1,"item":"identity"},"3":{"amount":1,"item":"skate"}}}'),
	(32, 'spawnController', '2'),
	(33, 'Clothings', '{"accessory":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":-1},"glass":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":23},"hat":{"defaultItem":-1,"texture":0,"defaultTexture":0,"item":-1},"mask":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":0},"torso2":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":-1},"bag":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":0},"watch":{"defaultItem":-1,"texture":0,"defaultTexture":0,"item":-1},"t-shirt":{"defaultItem":1,"texture":4,"defaultTexture":0,"item":5},"arms":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":1},"decals":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":0},"bracelet":{"defaultItem":-1,"texture":0,"defaultTexture":0,"item":-1},"ear":{"defaultItem":-1,"texture":0,"defaultTexture":0,"item":-1},"pants":{"defaultItem":0,"texture":4,"defaultTexture":0,"item":6},"vest":{"defaultItem":0,"texture":0,"defaultTexture":0,"item":0},"shoes":{"defaultItem":1,"texture":6,"defaultTexture":0,"item":68}}'),
	(33, 'currentCharacterMode', '{"cheekboneHeight":0,"cheeksWidth":0,"chestColor":0,"chinShape":0,"chinPosition":0,"neckWidth":0,"eyebrowsHeight":0,"hairModel":40,"shapeMix":0.5,"blemishesModel":-1,"chestModel":-1,"eyebrowsColor":0,"firstHairColor":0,"noseTip":0,"lipstickModel":-1,"frecklesModel":-1,"beardModel":-1,"noseShift":0,"eyebrowsWidth":0,"fathersID":0,"jawHeight":0,"eyebrowsModel":0,"secondHairColor":0,"complexionModel":-1,"noseLength":0,"noseWidth":0,"blushColor":0,"chinLength":0,"eyesColor":0,"sundamageModel":-1,"jawWidth":0,"ageingModel":-1,"mothersID":21,"skinColor":6,"blushModel":-1,"makeupModel":-1,"noseBridge":0,"lips":0,"cheekboneWidth":0,"noseHeight":0,"beardColor":0,"chinWidth":0,"lipstickColor":0}'),
	(33, 'Datatable', '{"stress":0,"weaps":[],"position":{"x":162.56,"z":41.8,"y":-459.11},"armour":100,"thirst":91,"inventory":[],"hunger":95,"backpack":100,"health":200,"inventorys":{"10":{"item":"WEAPON_MACHETE","amount":1},"12":{"item":"identity","amount":1},"15":{"item":"cellphone","amount":1},"11":{"item":"lockpick","amount":1},"16":{"item":"skate","amount":1},"9":{"item":"emptybottle","amount":1},"8":{"item":"water","amount":8},"7":{"item":"WEAPON_KNIFE","amount":1},"6":{"item":"blackcard","amount":1},"5":{"item":"dollars","amount":4730},"4":{"item":"emptybottle","amount":1},"3":{"item":"hamburger","amount":16},"13":{"item":"radio","amount":2},"1":{"item":"WEAPON_CARBINERIFLE","amount":1}},"skin":1885233650}'),
	(33, 'spawnController', '2'),
	(34, 'Clothings', '{"t-shirt":{"defaultTexture":0,"defaultItem":1,"texture":0,"item":1},"torso2":{"defaultTexture":0,"defaultItem":0,"texture":0,"item":0},"decals":{"defaultTexture":0,"defaultItem":0,"texture":0,"item":0},"accessory":{"defaultTexture":0,"defaultItem":0,"texture":0,"item":0},"glass":{"defaultTexture":0,"defaultItem":0,"texture":0,"item":0},"hat":{"defaultTexture":0,"defaultItem":-1,"texture":0,"item":0},"bag":{"defaultTexture":0,"defaultItem":0,"texture":0,"item":0},"ear":{"defaultTexture":0,"defaultItem":-1,"texture":0,"item":-1},"bracelet":{"defaultTexture":0,"defaultItem":-1,"texture":0,"item":-1},"watch":{"defaultTexture":0,"defaultItem":-1,"texture":0,"item":-1},"mask":{"defaultTexture":0,"defaultItem":0,"texture":0,"item":2},"pants":{"defaultTexture":0,"defaultItem":0,"texture":0,"item":0},"shoes":{"defaultTexture":0,"defaultItem":1,"texture":0,"item":0},"arms":{"defaultTexture":0,"defaultItem":0,"texture":0,"item":0},"vest":{"defaultTexture":0,"defaultItem":0,"texture":0,"item":0}}'),
	(34, 'currentCharacterMode', '{"noseWidth":0,"hairModel":33,"sundamageModel":-1,"chinWidth":0,"cheekboneHeight":0,"eyebrowsHeight":0,"lipstickColor":0,"cheeksWidth":0,"jawHeight":0,"secondHairColor":0,"chestColor":0,"mothersID":21,"chestModel":-1,"lips":0,"fathersID":0,"eyebrowsModel":0,"noseBridge":0,"chinPosition":0,"skinColor":7,"blushColor":0,"shapeMix":0.7,"blemishesModel":-1,"beardColor":0,"eyesColor":27,"lipstickModel":-1,"eyebrowsWidth":0,"noseShift":0,"neckWidth":0,"complexionModel":-1,"noseLength":0,"noseHeight":0,"frecklesModel":-1,"makeupModel":-1,"chinShape":0,"firstHairColor":0,"chinLength":0,"beardModel":-1,"ageingModel":-1,"eyebrowsColor":0,"noseTip":0,"cheekboneWidth":0,"jawWidth":0,"blushModel":-1}'),
	(34, 'Datatable', '{"stress":56,"weaps":[],"position":{"x":28.83,"z":29.61,"y":-1770.9},"armour":0,"thirst":68,"inventory":[],"hunger":76,"backpack":100,"health":200,"inventorys":{"11":{"item":"lockpick","amount":1},"12":{"item":"water","amount":1},"13":{"item":"bait","amount":31},"14":{"item":"bait","amount":1},"10":{"item":"dollars2","amount":500},"19":{"item":"bucket","amount":1},"18":{"item":"compost","amount":1},"17":{"item":"teddy","amount":1},"9":{"item":"rose","amount":1},"15":{"item":"skate","amount":1},"8":{"item":"blackcard","amount":1},"7":{"item":"c4","amount":1},"6":{"item":"emptybottle","amount":2},"5":{"item":"identity","amount":1},"4":{"item":"vape","amount":1},"3":{"item":"fishingrod","amount":1},"2":{"item":"cannabisseed","amount":1},"1":{"item":"cellphone","amount":1}},"skin":1885233650}'),
	(34, 'spawnController', '2'),
	(35, 'Clothings', '{"accessory":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"mask":{"item":103,"defaultItem":0,"defaultTexture":0,"texture":5},"glass":{"item":5,"defaultItem":0,"defaultTexture":0,"texture":0},"arms":{"item":58,"defaultItem":0,"defaultTexture":0,"texture":0},"shoes":{"item":57,"defaultItem":1,"defaultTexture":0,"texture":0},"watch":{"item":4,"defaultItem":-1,"defaultTexture":0,"texture":0},"bracelet":{"item":10,"defaultItem":-1,"defaultTexture":0,"texture":0},"vest":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"bag":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"pants":{"item":56,"defaultItem":0,"defaultTexture":0,"texture":0},"torso2":{"item":83,"defaultItem":0,"defaultTexture":0,"texture":0},"t-shirt":{"item":5,"defaultItem":1,"defaultTexture":0,"texture":0},"hat":{"item":120,"defaultItem":-1,"defaultTexture":0,"texture":0},"decals":{"item":0,"defaultItem":0,"defaultTexture":0,"texture":0},"ear":{"item":1,"defaultItem":-1,"defaultTexture":0,"texture":0}}'),
	(35, 'currentCharacterMode', '{"cheekboneHeight":-1,"cheeksWidth":-1,"chinShape":-1,"chinPosition":0,"neckWidth":-1,"eyebrowsHeight":0,"hairModel":23,"shapeMix":1,"eyebrowsOpacity":5,"blemishesModel":-1,"eyebrowsColor":0,"firstHairColor":55,"noseTip":-0.35,"lipstickModel":3,"frecklesModel":-1,"beardModel":-1,"noseShift":0,"eyebrowsModel":0,"complexionModel":11,"beardOpacity":5,"fathersID":4,"cheekboneWidth":0,"makeupModel":7,"lipstickColor":0,"noseWidth":0,"beardColor":63,"chinLength":0,"jawHeight":-1,"eyesColor":7,"noseLength":0.36,"ageingModel":-1,"mothersID":31,"skinColor":45,"blushModel":2,"secondHairColor":21,"noseBridge":0.57,"eyebrowsWidth":0,"lips":-0.41,"noseHeight":0.99,"jawWidth":-1,"chinWidth":0,"blushColor":10}'),
	(35, 'Datatable', '{"weaps":[],"position":{"x":10.97,"z":28.75,"y":-1143.33},"inventorys":{"7":{"item":"identity","amount":1},"5":{"item":"dollars","amount":2000},"4":{"item":"water","amount":1},"3":{"item":"skate","amount":1},"2":{"item":"WEAPON_PISTOL","amount":1},"1":{"item":"cellphone","amount":1}},"thirst":43,"inventory":[],"hunger":13,"backpack":5,"health":101,"armour":0,"skin":-1667301416}'),
	(35, 'spawnController', '2'),
	(36, 'currentCharacterMode', '{"cheekboneWidth":0,"chinShape":0,"skinColor":45,"chinPosition":0,"noseShift":0,"secondHairColor":35,"blushModel":-1,"fathersID":4,"cheeksWidth":0,"noseHeight":0.86,"lips":-1,"beardModel":-1,"noseLength":0,"gender":1,"neckWidth":-1,"noseBridge":0.63,"ageingModel":-1,"hairModel":53,"lipstickColor":0,"frecklesModel":-1,"lipstickModel":3,"eyebrowsModel":0,"eyesColor":30,"eyebrowsHeight":-0.48,"firstHairColor":33,"eyebrowsWidth":0,"makeupModel":2,"blushColor":0,"noseWidth":0,"eyebrowsColor":0,"blemishesModel":-1,"noseTip":-0.43,"sundamageModel":-1,"chinWidth":0,"chestColor":0,"mothersID":31,"jawHeight":-0.9,"chinLength":0,"complexionModel":-1,"jawWidth":-0.41,"beardColor":0,"chestModel":16,"shapeMix":1,"cheekboneHeight":-1}'),
	(36, 'Datatable', '{"position":{"x":137.59,"z":30.81,"y":-1706.28},"health":175,"backpack":5,"thirst":76,"hunger":76,"weaps":[],"skin":-1667301416,"inventorys":{"4":{"amount":2,"item":"water"},"3":{"amount":1,"item":"skate"},"2":{"amount":1,"item":"identity"},"1":{"amount":1,"item":"cellphone"},"5":{"amount":2000,"item":"dollars"}},"armour":0,"inventory":[]}'),
	(36, 'spawnController', '2'),
	(37, 'Clothings', '{"arms":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"watch":{"texture":0,"defaultItem":-1,"item":-1,"defaultTexture":0},"bracelet":{"texture":0,"defaultItem":-1,"item":-1,"defaultTexture":0},"vest":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"shoes":{"texture":0,"defaultItem":1,"item":0,"defaultTexture":0},"bag":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"glass":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"pants":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"mask":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"torso2":{"texture":0,"defaultItem":0,"item":4,"defaultTexture":0},"decals":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0},"t-shirt":{"texture":0,"defaultItem":1,"item":16,"defaultTexture":0},"ear":{"texture":0,"defaultItem":-1,"item":-1,"defaultTexture":0},"hat":{"texture":0,"defaultItem":-1,"item":-1,"defaultTexture":0},"accessory":{"texture":0,"defaultItem":0,"item":0,"defaultTexture":0}}'),
	(37, 'currentCharacterMode', '{"complexionModel":-1,"neckWidth":0,"noseBridge":0,"ageingModel":-1,"cheeksWidth":0,"shapeMix":0,"fathersID":0,"chinWidth":0,"blushColor":0,"noseHeight":0,"mothersID":21,"chinShape":0,"eyesColor":23,"lipstickColor":0,"noseTip":0,"chinLength":0,"lips":0,"lipstickModel":-1,"noseWidth":0,"eyebrowsModel":0,"skinColor":12,"blushModel":-1,"sundamageModel":-1,"beardColor":0,"frecklesModel":-1,"noseShift":0,"hairModel":48,"cheekboneHeight":0,"blemishesModel":-1,"eyebrowsHeight":0,"eyebrowsWidth":0,"jawWidth":0,"noseLength":0,"beardModel":0,"cheekboneWidth":0,"chinPosition":0,"chestModel":-1,"makeupModel":-1,"eyebrowsColor":0,"secondHairColor":35,"chestColor":0,"jawHeight":0,"firstHairColor":55}'),
	(37, 'Datatable', '{"weaps":[],"backpack":5,"position":{"z":29.5,"x":27.86,"y":-1347.99},"hunger":59,"inventorys":{"10":{"item":"lighter","amount":1},"2":{"item":"identity","amount":1},"3":{"item":"skate","amount":1},"1":{"item":"cellphone","amount":1},"6":{"item":"emptybottle","amount":1},"4":{"item":"emptybottle","amount":1},"14":{"item":"chocolate","amount":1},"9":{"item":"radio","amount":1}},"stress":15,"health":189,"armour":0,"thirst":100,"inventory":[],"skin":1885233650}'),
	(37, 'spawnController', '2'),
	(38, 'Clothings', '{"pants":{"defaultTexture":0,"texture":2,"defaultItem":0,"item":2},"accessory":{"defaultTexture":0,"texture":0,"defaultItem":0,"item":51},"hat":{"defaultTexture":0,"texture":0,"defaultItem":-1,"item":-1},"glass":{"defaultTexture":0,"texture":0,"defaultItem":0,"item":0},"bracelet":{"defaultTexture":0,"texture":0,"defaultItem":-1,"item":-1},"decals":{"defaultTexture":0,"texture":0,"defaultItem":0,"item":0},"watch":{"defaultTexture":0,"texture":0,"defaultItem":-1,"item":-1},"vest":{"defaultTexture":0,"texture":0,"defaultItem":0,"item":0},"ear":{"defaultTexture":0,"texture":0,"defaultItem":-1,"item":-1},"mask":{"defaultTexture":0,"texture":0,"defaultItem":0,"item":0},"shoes":{"defaultTexture":0,"texture":0,"defaultItem":1,"item":0},"torso2":{"defaultTexture":0,"texture":7,"defaultItem":0,"item":73},"bag":{"defaultTexture":0,"texture":0,"defaultItem":0,"item":0},"arms":{"defaultTexture":0,"texture":0,"defaultItem":0,"item":0},"t-shirt":{"defaultTexture":0,"texture":5,"defaultItem":1,"item":11}}'),
	(38, 'currentCharacterMode', '{"frecklesModel":-1,"firstHairColor":29,"noseHeight":0,"blushColor":0,"chinShape":0,"shapeMix":0,"cheeksWidth":0,"blemishesModel":-1,"eyebrowsHeight":0,"makeupModel":-1,"noseTip":0,"complexionModel":-1,"chinWidth":0,"skinColor":0,"ageingModel":-1,"neckWidth":0,"eyebrowsWidth":0,"beardColor":0,"sundamageModel":-1,"eyebrowsColor":0,"mothersID":21,"noseShift":0,"hairModel":19,"beardModel":-1,"chestModel":-1,"lipstickColor":0,"cheekboneHeight":0,"eyesColor":0,"chinLength":0,"noseLength":0,"chinPosition":0,"noseBridge":0,"cheekboneWidth":0,"noseWidth":0,"lipstickModel":-1,"lips":0,"jawWidth":0,"secondHairColor":29,"fathersID":44,"chestColor":0,"eyebrowsModel":0,"jawHeight":0,"blushModel":-1}'),
	(38, 'Datatable', '{"weaps":[],"backpack":50,"position":{"z":29.5,"x":25.76,"y":-1346.68},"hunger":47,"inventorys":{"11":{"item":"sandwich","amount":1},"10":{"item":"energetic","amount":1},"2":{"item":"identity","amount":1},"3":{"item":"emptybottle","amount":1},"1":{"item":"cellphone","amount":1},"6":{"item":"skate","amount":1},"7":{"item":"emptybottle","amount":1},"4":{"item":"hennessy","amount":1},"5":{"item":"chandon","amount":1},"8":{"item":"chocolate","amount":1},"9":{"item":"cigarette","amount":1}},"health":139,"armour":0,"thirst":55,"inventory":[],"skin":1885233650}'),
	(38, 'spawnController', '2'),
	(39, 'currentCharacterMode', '{"noseWidth":0,"noseLength":0,"firstHairColor":0,"blushColor":0,"noseTip":0,"chinLength":0,"cheeksWidth":0,"noseHeight":0,"beardColor":0,"jawWidth":0,"eyebrowsHeight":0,"eyesColor":0,"ageingModel":-1,"complexionModel":-1,"eyebrowsWidth":0,"blushModel":-1,"neckWidth":0,"chinPosition":0,"chestColor":0,"beardModel":-1,"noseBridge":0,"lipstickColor":0,"lips":0,"jawHeight":0,"hairModel":4,"eyebrowsColor":0,"chestModel":-1,"blemishesModel":-1,"mothersID":21,"chinWidth":0,"noseShift":0,"fathersID":0,"sundamageModel":-1,"frecklesModel":-1,"eyebrowsModel":0,"skinColor":0,"lipstickModel":-1,"shapeMix":0.5,"chinShape":0,"secondHairColor":0,"cheekboneWidth":0,"cheekboneHeight":0,"makeupModel":-1}'),
	(39, 'Datatable', '{"weaps":[],"armour":0,"skin":1885233650,"health":196,"inventorys":{"7":{"item":"coffee","amount":1},"8":{"item":"emptybottle","amount":1},"5":{"item":"dollars","amount":2000},"6":{"item":"radio","amount":1},"3":{"item":"skate","amount":1},"4":{"item":"water","amount":1},"1":{"item":"cellphone","amount":1},"2":{"item":"identity","amount":1}},"inventory":[],"backpack":5,"hunger":74,"position":{"x":-21.89,"y":-1730.45,"z":29.31},"thirst":95}'),
	(39, 'spawnController', '2'),
	(40, 'currentCharacterMode', '{"noseWidth":0,"noseLength":0,"firstHairColor":0,"blushColor":0,"noseTip":0,"chinLength":0,"cheeksWidth":0,"blushModel":-1,"beardColor":0,"jawWidth":0,"eyebrowsHeight":0,"eyesColor":0,"lipstickColor":0,"complexionModel":-1,"noseHeight":0,"jawHeight":0,"ageingModel":-1,"chinPosition":0,"chestColor":0,"fathersID":0,"noseBridge":0,"cheekboneWidth":0,"neckWidth":0,"chestModel":-1,"lips":0,"eyebrowsColor":0,"sundamageModel":-1,"blemishesModel":-1,"mothersID":21,"chinWidth":0,"noseShift":0,"eyebrowsWidth":0,"shapeMix":0.5,"beardModel":-1,"eyebrowsModel":0,"skinColor":6,"lipstickModel":-1,"hairModel":4,"chinShape":0,"secondHairColor":0,"frecklesModel":-1,"cheekboneHeight":0,"makeupModel":-1}'),
	(40, 'Datatable', '{"weaps":[],"armour":0,"skin":1885233650,"position":{"x":-17.88,"y":-1729.53,"z":29.31},"inventorys":{"5":{"item":"dollars","amount":2000},"6":{"item":"emptybottle","amount":1},"1":{"item":"cellphone","amount":1},"2":{"item":"identity","amount":1}},"inventory":[],"backpack":5,"hunger":74,"stress":15,"health":200,"thirst":82}'),
	(40, 'spawnController', '2'),
	(41, 'currentCharacterMode', '{"noseWidth":0,"noseLength":0,"firstHairColor":0,"blushColor":0,"noseTip":0,"chinLength":0,"cheeksWidth":0,"blushModel":-1,"beardColor":0,"jawWidth":0,"eyebrowsHeight":0,"eyesColor":0,"lipstickColor":0,"jawHeight":0,"noseShift":0,"complexionModel":-1,"cheekboneWidth":0,"chinPosition":0,"eyebrowsWidth":0,"frecklesModel":-1,"noseBridge":0,"neckWidth":0,"ageingModel":-1,"fathersID":0,"shapeMix":0.5,"eyebrowsColor":0,"beardModel":-1,"blemishesModel":-1,"mothersID":21,"chinWidth":0,"chestModel":-1,"hairModel":4,"lips":0,"chestColor":0,"eyebrowsModel":0,"skinColor":6,"lipstickModel":-1,"noseHeight":0,"chinShape":0,"secondHairColor":0,"sundamageModel":-1,"cheekboneHeight":0,"makeupModel":-1}'),
	(41, 'Datatable', '{"backpack":5,"weaps":[],"inventory":[],"skin":1885233650,"position":{"x":3.49,"z":29.31,"y":-1723.48},"health":156,"hunger":75,"inventorys":{"4":{"amount":1,"item":"water"},"10":{"amount":1,"item":"compost"},"2":{"amount":1,"item":"identity"},"9":{"amount":1,"item":"radio"},"1":{"amount":1,"item":"cellphone"},"3":{"amount":1,"item":"skate"},"5":{"amount":2000,"item":"dollars"}},"armour":0,"thirst":82}'),
	(41, 'spawnController', '2');
/*!40000 ALTER TABLE `vrp_user_data` ENABLE KEYS */;

-- Dumping structure for table vrp_base.vrp_vehicles
CREATE TABLE IF NOT EXISTS `vrp_vehicles` (
  `user_id` int(11) NOT NULL,
  `vehicle` varchar(100) NOT NULL,
  `plate` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `arrest` int(1) NOT NULL DEFAULT 0,
  `time` int(11) NOT NULL DEFAULT 0,
  `premiumtime` int(11) NOT NULL DEFAULT 0,
  `rentaltime` int(11) NOT NULL DEFAULT 0,
  `engine` int(4) NOT NULL DEFAULT 1000,
  `body` int(4) NOT NULL DEFAULT 1000,
  `fuel` int(3) NOT NULL DEFAULT 100,
  `work` varchar(10) NOT NULL DEFAULT 'false',
  `doors` varchar(254) NOT NULL,
  `windows` varchar(254) NOT NULL,
  `tyres` varchar(254) NOT NULL,
  PRIMARY KEY (`user_id`,`vehicle`),
  KEY `user_id` (`user_id`),
  KEY `vehicle` (`vehicle`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table vrp_base.vrp_vehicles: ~86 rows (approximately)
/*!40000 ALTER TABLE `vrp_vehicles` DISABLE KEYS */;
INSERT INTO `vrp_vehicles` (`user_id`, `vehicle`, `plate`, `phone`, `arrest`, `time`, `premiumtime`, `rentaltime`, `engine`, `body`, `fuel`, `work`, `doors`, `windows`, `tyres`) VALUES
	(1, 'crownvictoria', '70LTS461', '718-174', 0, 0, 0, 0, 1000, 1000, 94, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"6":1,"7":1,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":1,"6":1,"7":2,"0":1}'),
	(1, 'dodgecharger2014', '17TWD081', '718-174', 0, 0, 0, 0, 1000, 1000, 100, 'true', '', '', ''),
	(1, 'dodgecharger2015', '60GUQ920', '718-174', 0, 0, 0, 0, 1000, 1000, 100, 'true', '', '', ''),
	(1, 'fbi', '86KHT780', '718-174', 0, 0, 0, 0, 1000, 1000, 100, 'true', '', '', ''),
	(1, 'fbi2', '21ZQR671', '718-174', 0, 0, 0, 0, 1000, 1000, 100, 'true', '', '', ''),
	(1, 'gburrito2', '46UTE718', '718-174', 0, 0, 0, 0, 1000, 1000, 100, 'true', '', '', ''),
	(1, 'trash', '52DTQ270', '718-174', 0, 0, 0, 0, 1000, 1000, 100, 'true', '', '', ''),
	(2, 'ambulance', '27UWB219', '027-692', 0, 0, 0, 0, 993, 994, 98, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":false,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(2, 'bmwi8', 'MAGRINRUBY', '027-692', 0, 0, 1613615049, 0, 1000, 1000, 100, 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(2, 'crownvictoria', '50GCE079', '027-692', 0, 0, 0, 0, 1000, 1000, 100, 'true', '', '', ''),
	(2, 'dodgecharger2014', '65CSV563', '027-692', 0, 0, 0, 0, 1000, 1000, 99, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(2, 'dodgecharger2015', '40OGD762', '027-692', 0, 0, 0, 0, 1000, 1000, 99, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(2, 'fbi', '17CYM663', '027-692', 1, 1613323254, 0, 0, 1000, 1000, 100, 'true', '', '', ''),
	(2, 'fbi2', '08ZHT309', '027-692', 0, 0, 0, 0, 1000, 1000, 100, 'true', '', '', ''),
	(2, 'flatbed', '77MRE863', '027-692', 0, 0, 0, 0, 983, 985, 97, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(2, 'fordexplorer', '78NDC382', '027-692', 0, 0, 0, 0, 989, 942, 98, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(2, 'fordmustanggt', '19QRP715', '027-692', 0, 0, 0, 0, 1000, 1000, 100, 'true', '', '', ''),
	(2, 'fordraptor', '63HTU802', '027-692', 0, 0, 0, 0, 1000, 1000, 100, 'true', '', '', ''),
	(2, 'fordtaurus', '04TSM618', '027-692', 0, 0, 0, 0, 1000, 1000, 100, 'true', '', '', ''),
	(2, 'gburrito2', '25UDL233', '027-692', 0, 0, 0, 0, 1000, 1000, 100, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(2, 'nissangtr2', '46PBL506', '027-692', 0, 0, 1613615147, 0, 753, 849, 96, 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(2, 'policebike', '02UQX207', '027-692', 0, 0, 0, 0, 1000, 1000, 100, 'true', '', '', ''),
	(2, 'polmav', '89HTI091', '027-692', 0, 0, 0, 0, 1000, 1000, 100, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(2, 'ratloader', '27QXG070', '027-692', 0, 0, 0, 0, 1000, 1000, 100, 'true', '', '', ''),
	(2, 'riot', '77WDA816', '027-692', 0, 0, 0, 0, 1000, 1000, 100, 'true', '', '', ''),
	(2, 'stockade', '14JMM496', '027-692', 0, 0, 0, 0, 994, 997, 97, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(2, 'taco', '71NUW510', '027-692', 0, 0, 0, 0, 997, 988, 96, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":false}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(2, 'taxi', '55RCJ285', '027-692', 0, 0, 0, 0, 1000, 1000, 100, 'true', '', '', ''),
	(3, 'trash', '33RQB020', '692-070', 0, 0, 0, 0, 998, 998, 99, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(4, 'taco', '06YMG075', '666-715', 0, 0, 0, 0, 1000, 1000, 98, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(4, 'trash', '82ZBI073', '666-715', 0, 0, 0, 0, 975, 980, 95, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(5, 'boxville4', '58JRH672', '089-273', 0, 0, 0, 0, 990, 992, 97, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(5, 'crownvictoria', '14SUJ148', '089-273', 0, 0, 0, 0, 112, 332, 97, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":1,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":1,"2":2,"3":2,"4":1,"5":2,"6":2,"7":1,"0":2}'),
	(5, 'polmav', '63XOA099', '089-273', 0, 0, 0, 0, 961, 967, 100, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(5, 'taco', '55DYU508', '089-273', 0, 0, 0, 0, 985, 988, 94, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(6, 'boxville4', '17TPD409', '636-506', 0, 0, 0, 0, 999, 999, 99, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(6, 'bus', '92XIC367', '636-506', 0, 0, 0, 0, 1000, 1000, 98, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":1,"3":1,"4":false,"5":false,"6":1,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(6, 'flatbed', '33NCZ508', '636-506', 0, 0, 0, 0, 995, 995, 98, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(6, 'taco', '88AAM650', '636-506', 0, 0, 0, 0, 1000, 1000, 98, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(6, 'taxi', '03LFQ961', '636-506', 0, 0, 0, 0, 1000, 1000, 100, 'true', '', '', ''),
	(6, 'trash', '64QPA705', '636-506', 0, 0, 0, 0, 959, 966, 96, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(7, 'flatbed', '04BNP154', '136-744', 0, 0, 0, 0, 1000, 1000, 100, 'true', '', '', ''),
	(7, 'nil', '90BXO502', '136-744', 0, 0, 0, 0, 1000, 1000, 100, 'true', '', '', ''),
	(8, 'amarock', '46PAS056', '796-486', 0, 0, 0, 0, 1000, 1000, 100, 'false', '', '', ''),
	(8, 'boxville4', '83RVW580', '796-486', 0, 0, 0, 0, 1000, 1000, 100, 'true', '', '', ''),
	(8, 'bus', '86FJH678', '796-486', 0, 0, 0, 0, 1000, 1000, 55, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":1,"3":1,"4":false,"5":false,"6":1,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(8, 'ellie', '62QTG416', '796-486', 0, 0, 0, 0, 997, 997, 97, 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(8, 'flatbed', '75BVF880', '796-486', 0, 0, 0, 0, 980, 984, 86, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(8, 'mule3', '50VFW800', '796-486', 0, 0, 0, 0, 1000, 1000, 98, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(8, 'nil', '77TEI666', '796-486', 0, 0, 0, 0, 1000, 1000, 100, 'true', '', '', ''),
	(8, 'nissanskyliner34', '48RFG868', '796-486', 0, 0, 0, 0, 1000, 1000, 100, 'false', '', '', ''),
	(8, 'ratloader', '65BLO069', '796-486', 0, 0, 0, 0, 1000, 1000, 100, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(8, 'stockade', '58JDM341', '796-486', 0, 0, 0, 0, 1000, 1000, 94, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(8, 'taco', '03XQW161', '796-486', 0, 0, 0, 0, 1000, 1000, 99, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(8, 'taxi', '84JEF471', '796-486', 0, 0, 0, 0, 959, 966, 93, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":1,"3":false,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(8, 'trash', '48HZB307', '796-486', 0, 0, 0, 0, 1000, 1000, 100, 'true', '', '', ''),
	(8, 'vagner', '13CAO753', '796-486', 0, 0, 0, 0, 1000, 1000, 93, 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(10, 'tribike', '54ILG860', '856-636', 0, 0, 0, 0, 1000, 1000, 100, 'false', '', '', ''),
	(11, 'taco', '72KWE177', '446-813', 0, 0, 0, 0, 1000, 1000, 100, 'true', '', '', ''),
	(12, 'nil', '88NVB819', '662-626', 0, 0, 0, 0, 1000, 1000, 100, 'true', '', '', ''),
	(12, 'trash', '36QBB206', '662-626', 0, 0, 0, 0, 1000, 1000, 100, 'true', '', '', ''),
	(15, 'boxville4', '18RKH778', '342-696', 0, 0, 0, 0, 1000, 1000, 99, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(15, 'trash', '38HAV927', '342-696', 0, 0, 0, 0, 943, 952, 97, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(20, 'ambulance', '57OIR475', '277-802', 0, 0, 0, 0, 889, 907, 89, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":false,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(20, 'polmav', '09OOB201', '277-802', 0, 0, 0, 0, 1000, 1000, 100, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(27, 'crownvictoria', '19TBH964', '755-197', 0, 0, 0, 0, 1000, 1000, 100, 'true', '', '', ''),
	(27, 'dodgecharger2014', '76ZKV290', '755-197', 0, 0, 0, 0, 1000, 1000, 100, 'true', '', '', ''),
	(27, 'dodgecharger2015', '30TKQ466', '755-197', 0, 0, 0, 0, 1000, 1000, 100, 'true', '', '', ''),
	(27, 'fordexplorer', '81IVU641', '755-197', 0, 0, 0, 0, 1000, 1000, 100, 'true', '', '', ''),
	(27, 'fordraptor', '75EBX446', '755-197', 0, 0, 0, 0, 1000, 1000, 100, 'true', '', '', ''),
	(27, 'fordtaurus', '81VQU045', '755-197', 0, 0, 0, 0, 1000, 1000, 100, 'true', '', '', ''),
	(27, 'trash', '10HVH089', '755-197', 0, 0, 0, 0, 1000, 1000, 64, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(29, 'bus', '66PUC578', '166-262', 0, 0, 0, 0, 1000, 1000, 100, 'true', '', '', ''),
	(29, 'gburrito2', '51CHV208', '166-262', 0, 0, 0, 0, 977, 987, 96, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(29, 'nil', '66UCN785', '166-262', 0, 0, 0, 0, 1000, 1000, 100, 'true', '', '', ''),
	(29, 'taxi', '32TUW021', '166-262', 0, 0, 0, 0, 998, 999, 99, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(29, 'trash', '46ATK439', '166-262', 0, 0, 0, 0, 1000, 1000, 99, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(33, 'banshee', '94RPJ650', '010-791', 0, 0, 0, 0, 1000, 1000, 100, 'false', '', '', ''),
	(33, 'benson', '68PRJ405', '010-791', 0, 0, 0, 0, 1000, 1000, 100, 'false', '', '', ''),
	(33, 'bus', '70PXB095', '010-791', 0, 0, 0, 0, 998, 998, 98, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":1,"3":1,"4":false,"5":false,"6":1,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(33, 'dodgechargersrt', '22LWJ366', '010-791', 0, 0, 1616782949, 0, 1000, 1000, 100, 'false', '', '', ''),
	(33, 'polmav', '61WRK277', '010-791', 0, 0, 0, 0, 1000, 1000, 100, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(33, 'taxi', '20EBT913', '010-791', 0, 0, 0, 0, 1000, 1000, 100, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(34, 'dinghy', '85DMJ444', '070-477', 0, 0, 0, 0, 1000, 1000, 100, 'true', '', '', ''),
	(34, 'fbi', '55BGC107', '070-477', 0, 0, 0, 0, 1000, 1000, 100, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(34, 'fordmustanggt', '17QHU059', '070-477', 0, 0, 0, 0, 984, 986, 99, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":false}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(34, 'fordraptor', '64TOO197', '070-477', 0, 0, 0, 0, 1000, 1000, 100, 'true', '', '', ''),
	(34, 'fordtaurus', '85RJK052', '070-477', 0, 0, 0, 0, 1000, 1000, 100, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(34, 'ratloader', '69GAS047', '070-477', 0, 0, 0, 0, 1000, 1000, 100, 'true', '', '', ''),
	(34, 'stockade', '46PJR506', '070-477', 0, 0, 0, 0, 1000, 1000, 100, 'true', '', '', ''),
	(34, 'taco', '10VEP027', '070-477', 0, 0, 0, 0, 1000, 1000, 100, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"6":false,"7":false,"0":1}', '{"1":2,"2":2,"3":2,"4":2,"5":2,"6":2,"7":2,"0":2}'),
	(37, 'bus', '76HUA590', '757-694', 0, 0, 0, 0, 1000, 1000, 100, 'true', '', '', ''),
	(38, 'nil', '56JKA521', '646-607', 0, 0, 0, 0, 1000, 1000, 100, 'true', '', '', ''),
	(38, 'taxi', '91ICA575', '646-607', 0, 0, 0, 0, 1000, 1000, 100, 'true', '', '', '');
/*!40000 ALTER TABLE `vrp_vehicles` ENABLE KEYS */;

-- Dumping structure for table vrp_base.vrp_weapons
CREATE TABLE IF NOT EXISTS `vrp_weapons` (
  `user_id` int(11) NOT NULL DEFAULT 0,
  `weapon` text NOT NULL,
  `ammo` int(11) NOT NULL DEFAULT 0,
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table vrp_base.vrp_weapons: ~0 rows (approximately)
/*!40000 ALTER TABLE `vrp_weapons` DISABLE KEYS */;
INSERT INTO `vrp_weapons` (`user_id`, `weapon`, `ammo`) VALUES
	(13, 'WEAPON_RIFLE_AMMO', 67),
	(33, 'WEAPON_PISTOL_AMMO', 249),
	(33, 'WEAPON_RIFLE_AMMO', 78);
/*!40000 ALTER TABLE `vrp_weapons` ENABLE KEYS */;

-- Dumping structure for table vrp_base.yordi_news
CREATE TABLE IF NOT EXISTS `yordi_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(10) NOT NULL,
  `firstname` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL,
  `lastname` varchar(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table vrp_base.yordi_news: 0 rows
/*!40000 ALTER TABLE `yordi_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `yordi_news` ENABLE KEYS */;

-- Dumping structure for table vrp_base.yordi_twitter_accounts
CREATE TABLE IF NOT EXISTS `yordi_twitter_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table vrp_base.yordi_twitter_accounts: ~1 rows (approximately)
/*!40000 ALTER TABLE `yordi_twitter_accounts` DISABLE KEYS */;
INSERT INTO `yordi_twitter_accounts` (`id`, `username`, `password`, `avatar_url`) VALUES
	(1, 'Tucki TremBala', '123123', NULL);
/*!40000 ALTER TABLE `yordi_twitter_accounts` ENABLE KEYS */;

-- Dumping structure for table vrp_base.yordi_twitter_likes
CREATE TABLE IF NOT EXISTS `yordi_twitter_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_twitter_likes_twitter_accounts` (`authorId`),
  KEY `FK_twitter_likes_twitter_tweets` (`tweetId`),
  CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `yordi_twitter_accounts` (`id`),
  CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `yordi_twitter_tweets` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table vrp_base.yordi_twitter_likes: ~0 rows (approximately)
/*!40000 ALTER TABLE `yordi_twitter_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `yordi_twitter_likes` ENABLE KEYS */;

-- Dumping structure for table vrp_base.yordi_twitter_tweets
CREATE TABLE IF NOT EXISTS `yordi_twitter_tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `FK_twitter_tweets_twitter_accounts` (`authorId`),
  CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `yordi_twitter_accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table vrp_base.yordi_twitter_tweets: ~1 rows (approximately)
/*!40000 ALTER TABLE `yordi_twitter_tweets` DISABLE KEYS */;
INSERT INTO `yordi_twitter_tweets` (`id`, `authorId`, `realUser`, `message`, `time`, `likes`) VALUES
	(1, 1, '16', 'q putaria e essa doido kaakak', '2021-02-19 15:27:18', 0);
/*!40000 ALTER TABLE `yordi_twitter_tweets` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
