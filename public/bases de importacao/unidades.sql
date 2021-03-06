-- phpMyAdmin SQL Dump
-- version 3.3.7deb5build0.10.10.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: Dez 12, 2011 as 08:13 AM
-- Versão do Servidor: 5.1.49
-- Versão do PHP: 5.3.3-1ubuntu9.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `biblioteca_development`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `unidades`
--

CREATE TABLE IF NOT EXISTS `unidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `unidades_gpd_id` int(11) DEFAULT NULL,
  `endereco` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `complemento` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bairro` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cidade` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diretor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coordenador` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `responsavel_bib` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `obs` text COLLATE utf8_unicode_ci,
  `tipo_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=71 ;

--
-- Extraindo dados da tabela `unidades`
--

INSERT INTO `unidades` (`id`, `nome`, `created_at`, `updated_at`, `unidades_gpd_id`, `endereco`, `num`, `complemento`, `bairro`, `cidade`, `fone`, `email`, `diretor`, `coordenador`, `responsavel_bib`, `obs`, `tipo_id`) VALUES
(1, 'PROF. SYLVINO CHINELATTO (CAIC)', '2010-10-19 15:00:39', '2011-04-11 17:02:50', 3, 'RUA DOS IDEAIS', 0, 'CEP: 13470-488', 'JD. DA PAZ', NULL, '3462-3398 3462-0230', 'caic.seduc@gmail.com', 'LUIS CARLOS MALDONADO DA SILVA', 'MARIA AUXILIADORA FERRAZ OLIVEIRA', NULL, '', 1),
(2, 'PROF. ANISIO SPINOLA TEIXEIRA (CIEP S.JERONIMO)', '2010-10-19 15:05:05', '2011-08-15 14:49:51', 4, 'RUA HUMBERTO POLO', 200, 'CEP: 13469-740', 'SAO JERONIMO', NULL, '3461-3317 3408-1311', 'saojeronimo.seduc@gmail.com', 'DAMARIS CRISTINA DE SIQUEIRA SOARES', 'MARCELO PESSOA SIMAO', NULL, '', 4),
(3, 'PROF. MILTON SANTOS (CIEP PRAIA AZUL)', '2010-10-19 15:09:56', '2011-06-20 15:56:54', 5, 'RUA FELICIO ZAMPERLIN', 200, 'CEP:  13476-622', 'PRAIA AZUL', NULL, '3467-1717 3467-1114', 'praiaazul.seduc@gmail.com', 'ELIZABETH CARNE BORGES', 'MARIA CLEIDE RAMOS OLIVEIRA FERREIRA', NULL, '', 4),
(4, 'PROF. OCTAVIO CESAR BORGHI (CIEP C.JARDIM)', '2010-10-19 15:31:41', '2011-05-11 15:02:25', 6, 'RUA DAS HORTENCIAS', 1550, 'CEP: 13467-190', 'CIDADE JARDIM', NULL, '3461-3962 3462-0343', 'ciepcidadejardim@yahoo.com', 'PERCI MOREIRA', 'ANA AMELIA ANCAO BORGES DOMINGUES', NULL, '', 4),
(5, 'PROF. ONIVA DE MOURA BRIZOLA (CIEP ZANAGA)', '2010-10-19 15:35:21', '2011-07-18 15:32:03', 7, 'RUA ARI BARROSO', 105, '', 'ZANAGA II', NULL, '3469-1445 3469-6262', 'ciepzanaga@yahoo.com', 'SUZETE DE CASSIA VOLPATO STOCK', 'ROGERIA LOPES DA SILVA', NULL, '', 4),
(6, 'PROF. PHILOMENA MAGALY MALUF ROSSETTI (CIEP S.VITO)', '2010-10-19 15:38:22', '2011-03-30 11:02:56', 8, 'RUA CHUCRI ZOGBI', 10, 'CEP: 13473-280', 'SAO VITO', NULL, '3468-1182 3468-0260 (orelhão)', 'ciepsaovito@yahoo.com.br', 'PEDRO FELTRIN NALI', 'VANDA MARGARETH PASTORI', NULL, '', 4),
(7, 'PROF. MARIA NILDE MASCELANI (CIEP JAGUARI)', '2010-10-19 15:41:28', '2011-06-08 10:31:09', 9, 'RUA NARA LEAO', 0, 'CEP: 13473-651', '', NULL, '3478-6932', 'jaguari.seduc@gmail.com', 'AMARILDO JOSE DA ROCHA', 'DINAMEIRE PERPETUA PINHEIRO PASQUAL', NULL, '', 4),
(8, 'DARCY RIBEIRO', '2010-10-19 15:43:50', '2011-05-26 11:03:22', 11, 'RUA DA IGUALDADE', 65, 'CEP: 13470-470', 'JD. DA PAZ', NULL, '3462-2796 3408-1310', 'darcy.seduc@gmail.com', 'DENILSON FARIA DE SOUZA', 'ZILDA ANTUNES TRINDADE', NULL, '', 7),
(9, 'PAULO FREIRE', '2010-10-19 15:46:31', '2011-05-16 12:24:41', 12, 'RUA JALES', 61, 'CEP:  13467-473', 'PQ. NOVO MUNDO', NULL, '3462-5609 3408-1314', 'paulofreire.seduc@gmail.com', 'VANGRI D. ROSSI', 'SUELI MARIA BERNARDO BERALDO', NULL, '', 7),
(10, 'FLORESTAN FERNANDES', '2010-10-19 15:48:33', '2011-03-18 18:18:14', 13, 'RUA JAPAO', 701, 'CEP: 13470-300', 'MORADA DO SOL', NULL, '3407-6090 3405-0434', 'emefff@yahoo.com.br', 'MARIA APARECIDA PEDROSO', 'MARIA ELIANA BROSSI GIORDANO', NULL, '', 7),
(11, 'ANAJA', '2010-10-19 15:51:08', '2011-04-01 13:31:42', 29, 'RUA DOS LILASES', 611, 'CEP: 13467-200', '', NULL, '3462-6078 3405-0227', 'anaja.seduc@gmail.com', '', 'APARECIDA SANCHES SUEYOSHI', NULL, '', 5),
(12, 'BURITI', '2010-10-19 15:55:09', '2011-04-01 13:18:47', 30, 'RUA 12 DE NOVEMBRO', 1068, 'CEP: 13465-490', '', NULL, '3405-4223 3405-0233', 'buriti.seduc@gmail.com', '', 'LARESSA MILETTA SOUSA ROCHA', NULL, '', 5),
(13, 'CHUI', '2010-10-19 15:57:19', '2011-04-01 13:33:14', 32, 'RUA DOS TUCANOS', 256, 'CEP: 13467-330', '', NULL, '3461-3937 3405-0498', 'chui.seduc@gmail.com', '', 'ELAINE CRISTINA PASSONI', NULL, '', 5),
(14, 'CURIMÃ', '2010-10-19 15:58:38', '2011-03-28 17:21:12', 33, 'RUA GEORGES MOUTRAN', 475, 'CEP: 13473-270', 'SÃƒO VITO', NULL, '3468-3232 3478-0348', 'curima.seduc@gmail.com', '', 'EDUARDO ANTONIO JORDAOO', NULL, '', 5),
(15, 'MAJOI', '2010-10-19 15:59:58', '2010-12-03 13:16:03', 34, 'RUA MAESTRO SILVIO BIANCHI', 49, 'CEP: 13472-490', 'CORDENONSI', NULL, '3461-5820 3405-0222', 'majoi.seduc@gmail.com', '', 'SILVIA ROVINA ADAMI', NULL, '', 5),
(16, 'MARACA', '2010-10-19 16:01:07', '2010-12-02 15:20:44', 35, 'RUA DAS PRIMAVERAS', 65, 'CEP: 13466-530', 'JD SAO PEDRO', NULL, '3461-8049 3405-0229', 'maraca.seduc@gmail.com', '', 'CATIA CRISTINA BAIRD PEDROSA', NULL, '', 5),
(17, 'TAPERA', '2010-10-19 16:02:22', '2010-12-03 13:14:35', 37, 'RUA SAO JOAQUIM', 650, 'CEP: 13472-380', 'SAO MANOEL', NULL, '3468-6083 3478-0359', 'tapera.seduc@gmail.com', '', 'DULCINEIA PEREIRA PIRES', NULL, '', 5),
(18, 'WANDA POLLO MULLER', '2010-10-19 16:04:28', '2011-02-07 12:48:43', 38, 'RUA SERRA DO MAR', 450, 'CEP: 13470-410', 'PQ DA LIBERDADE', NULL, '3405-4424', 'liberdade.seduc@gmail.com', 'ANA LUCIA DE ANDRADE RODRIGUES', 'CLAUDETE FATIMA DE OLIVEIRA', NULL, '', 5),
(19, 'ARAPIRANGA', '2010-10-19 16:08:03', '2010-12-03 12:57:54', 16, 'RUA DA ESPERANCA ', 50, 'CEP: 13470-464', 'JD. DA PAZ', NULL, '3407-4905 3462-0443', 'arapiranga.seduc@gmail.com', 'ANA CLARA BONON', 'LUCIANA CRUZ FERNANDES RICARDO', NULL, '', 2),
(20, 'ARAUNA', '2010-10-19 16:09:41', '2011-04-01 13:30:20', 17, 'RUA DOS COLIBRIS', 721, 'CEP: 13467-303', '', NULL, '3407-5070 3405-0385', 'arauna.seduc@gmail.com', 'OLGA BASTOS TRABALLI TARDELI', 'MARCIA TONIN', NULL, '', 2),
(21, 'BITU', '2010-10-19 16:10:54', '2010-12-03 13:01:57', 18, 'RUA CHINA', 271, 'CEP: 13470-190', 'PQ DAS NACOES', NULL, '3462-6073 3407-5075', 'bitu.seduc@gmail.com', 'MARILZA BARRIENTOS DA SILVA', 'FABIANA CIA SOUZA', NULL, '', 2),
(22, 'CURIO', '2010-10-19 16:12:23', '2010-12-03 13:08:53', 19, 'RUA AFONSO ARINOS', 145, 'CEP: 13474-580', 'ZANAGA', NULL, '3469-2129 3469-0308', 'curio.seduc@gmail.com', 'MARIA APARECIDA ANTONIASSI BERALDO', 'JOELMA STRAPASSON DE MORAES', NULL, '', 2),
(23, 'GRAUNA', '2010-10-19 16:14:06', '2011-02-25 18:15:27', 20, 'RUA DOS LIRIOS', 1090, 'CEP: 13467-160', 'CIDADE JARDIM', NULL, '3407-5072 3405-0228', 'grauna.seduc@gmail.com', 'PAULA APARECIDA MORELATO GALLO', 'MARIA PAULA MARTINS BOER FRACETTO', NULL, '', 2),
(24, 'JURITI', '2010-10-19 16:16:33', '2011-02-25 18:20:53', 21, 'RUA SOLIMOES', 850, 'CEP: 13469-410', 'SAO ROQUE', NULL, '3407-5073 3461-9745', 'juriti.seduc@gmail.com', 'MILENE CRISTINA GOBBO BARREIRA', 'ADRIANA REGINA MARTINS', NULL, '', 2),
(25, 'MAIRA', '2010-10-19 16:20:14', '2011-02-25 18:21:49', 22, 'RUA ARY DELL AGNESE', 321, 'CEP: 	13469-560', 'PQ. GRAMADO', NULL, '3407-5225 3405-0236', 'maira.seduc@gmail.com', 'SALETE CRISTINA PELISSON DA CRUZ', 'SILVANA CARLA DE PAULA STEFANI', NULL, '', 2),
(26, 'MANACA', '2010-10-19 16:22:24', '2011-02-25 18:23:00', 23, 'RUA SÃO VITO', 1363, 'CEP: 13477-350', 'SÃO VITO', NULL, '3468-3567 3478-0358', 'manaca.seduc@gmail.com', 'YARA MARIA CORREA MARTINS', 'KATIA GISLAINE DA SILVA', NULL, '', 2),
(27, 'PANAMBY', '2010-10-19 16:23:43', '2011-03-30 13:38:20', 24, 'RUA MARANHAO', 1610, 'CEP: 13476-735', 'PRAIA AZUL', NULL, '3467-1705 3467-0319', 'panamby.seduc@gmail.com', 'LUCINETE ALMEIDA DO NASCIMENTO', '', NULL, '', 2),
(28, 'PITANGA', '2010-10-19 16:25:16', '2011-04-01 13:10:28', 25, 'RUA YOLANDA LEITE CAMARGO', 40, 'CEP:  13476-679', '', NULL, '3467-1631 3467-0360', 'pitanga.seduc@gmail.com', 'VANILDE HELENA LACIS LINARELLO', 'GISLAINE ANTUNES NOVAES', NULL, '', 2),
(29, 'PITANGA II', '2010-10-19 16:29:06', '2011-04-01 13:11:25', 36, 'RUA MARANHÃO', 1134, 'CEP: 13478-260', '', NULL, '3467-3252', 'pitanga2.seduc@gmail.com', '', 'SILMARA PATRICIA JUNKE SANCHETTO', NULL, '', 5),
(30, 'TAHIRA', '2010-10-19 16:34:28', '2011-03-25 15:53:23', 26, 'RUA ITANHAEM', 311, 'CEP: 	13468-430', 'JD. IPIRANGA', NULL, '3407-2270 3461-3783', 'tahira.seduc@gmail.com', 'INES DE FATIMA DE OLIVEIRA', 'ANA LÃšCIA DE CASTRO PATTARO', NULL, '', 2),
(31, 'TARAGUA', '2010-10-19 16:36:51', '2010-12-03 13:11:29', 27, 'RUA JOSE FRIGERI', 270, 'CEP: 13474-160', 'JD. BRASIL', NULL, '3465-1779 3465-3479', 'taragua.seduc@gmail.com', 'PATRICIA OLIVA CAVICCHIOLLI', 'KETTY REGIANE MANZZI DOS SANTOS', NULL, '', 2),
(32, 'URUPE', '2010-10-19 16:46:14', '2011-02-25 19:02:34', 28, 'RUA CAETANO DE CAMPOS', 30, 'CEP: 13474-451', 'PROFILURB', NULL, '3469-1277 3469-3119', 'urupe.seduc@gmail.com', 'RITA DE CASSIA PINTO RINALDI', 'JACQUELINE ESPINOSA DA SILVA', NULL, '', 2),
(33, 'ARAÇARI', '2010-10-19 16:48:17', '2011-03-18 12:56:09', 39, 'JOÃO CRIVELANI', 51, 'CEP: 13473-590', 'VILA BERTINE', NULL, '3468-6125 3468-0426', 'aracari.seduc@gmail.com', '', 'IZILEIDY ANDRADE CHAGAS PINTO', NULL, '', 8),
(34, 'ARACATI', '2010-10-19 16:50:01', '2010-12-02 15:17:23', 40, 'RUA ARY MEIRELLES', 907, 'CEP: 13466-310', 'VILA GALLO', NULL, '3462-6173 3405-0231', 'aracati.seduc@gmail.com', 'LUCILA APARECIDA FORTI FIEL CRUZ', 'SILVIA REGINA MORETTO DA SILVA', NULL, '', 8),
(35, 'ARACY', '2010-10-19 16:52:41', '2011-02-08 11:19:23', 41, 'RUA EMILIO COLOMBO', 240, 'CEP: 13469-700', 'SAO JERONIMO', NULL, '3462-6091 3405-0238', 'aracy.seduc@gmail.com', 'SANDRA GUIMARÃES LOPES', 'ANA LUCIA DOS SANTOS DE SOUZA', NULL, '', 8),
(36, 'BACURI', '2010-10-19 16:55:17', '2010-12-03 13:02:20', 42, 'RUA SETE DE SETEMBRO', 22, 'CEP: 13465-320', 'VILA REDHER', NULL, '3462-5884 3405-0232', 'bacuri.seduc@gmail.com', '', 'TELMA CRISTINA MOREIRA', NULL, '', 8),
(37, 'BATUIRA', '2010-10-19 16:59:02', '2011-03-28 17:31:34', 43, 'RUA HUMBERTO CASAGRANDE', 635, 'CEP: 13477-530', 'SAOO LUIS', NULL, '3468-1073 3748-0439', 'batuira.seduc@gmail.com', '', 'MARLI', NULL, '', 8),
(38, 'BORE', '2010-10-19 17:00:26', '2011-04-01 13:27:04', 44, 'RUA ANTONIO CASTILHO', 594, 'CEP: 13469-030', '', NULL, '3407-5082 3405-0254', 'bore.seduc@gmail.com', '', 'LUCIANE MARIA CHIARANDA BORTOLOTO', NULL, '', 8),
(39, 'CARANDA', '2010-10-19 17:02:03', '2011-04-01 13:34:05', 45, 'RUA DOS TUCANOS', 200, 'CEP: 13467-330', '', NULL, '3407-5081 3405-0230', 'caranda.seduc@gmail.com', 'MARIA ELISETE MAGALHAES DA SILVA', 'MARCIA MARIA DE OLIVEIRA FERREIRA', NULL, '', 8),
(40, 'CECI', '2010-10-19 17:03:44', '2011-03-02 14:23:34', 46, 'RUA ALBINA BASSETO', 230, 'CEP: 13468-730', 'JD. BRASILIA', NULL, '3462-4817 3405-0256', 'ceci.seduc@gmail.com', '', 'LUZIA', NULL, '', 8),
(41, 'CORIMBO', '2010-10-19 17:05:19', '2011-04-01 13:35:14', 47, 'RUA DOS JEQUITIBAS', 881, 'CEP: 13468-170', 'JD. SÃO PAULO', NULL, '3462-5086 3405-0244', 'corimbo.seduc@gmail.com', '', 'LUZIA DE FATIMA DA ROCHA REDIGULO', NULL, '', 8),
(42, 'CUNHATAI', '2010-10-19 17:10:53', '2010-12-02 15:18:45', 48, 'RUA NETUNO', 265, 'CEP: 13479-110', 'JD. ALVORADA', NULL, '3407-5083', 'cunhatai.seduc@gmail.com', 'ROSELI APARECIDA GALETE GOMES', 'MARCIA REGINA MELOSI QUADRELLI', NULL, '', 8),
(43, 'CURUMIM', '2010-10-19 17:12:00', '2011-02-25 18:11:58', 49, 'RUA AGOSTINHO PILOTTO', 52, 'CEP: 13475-405', 'PRAIA DOS NAMORADOS', NULL, '3465-1171', 'curumim.seduc@gmail.com', '', 'IZILEIDY ANDRADE CHAGAS PINTO', NULL, '', 8),
(44, 'INDAIA', '2010-10-19 17:14:14', '2011-02-25 18:16:53', 50, 'RUA SAO MIGUEL', 280, 'CEP: 13473-100', 'SAO VITO', NULL, '3468-2152 3478-0355', 'indaia.seduc@gmail.com', 'MARIZILDA PINTO', 'MARIA ANGELA DA COSTA MANSO COSTA', NULL, '', 8),
(45, 'JACINA', '2010-10-19 17:17:32', '2011-02-25 18:18:12', 51, 'AVENIDA PAULISTA', 270, 'CEP: 13478-580', 'COLINA', NULL, '3462-3996 3405-0226', 'jacina.seduc@gmail.com', '', 'CATIA CILENE BARBOSA DOMINICI', NULL, '', 8),
(46, 'JACY', '2010-10-19 17:18:41', '2011-02-25 18:19:57', 52, 'RUA OSNI MARTINELLI ', 37, 'CEP:  13470-650', 'MÃRIO COVAS', NULL, '3462-6070 3405-0515', 'jacy.seduc@gmail.com', '', 'TELMA CRISTINA MOREIRA', NULL, '', 8),
(47, 'MANAI', '2010-10-19 17:20:51', '2011-02-25 18:29:41', 53, 'RUA GUARUJA', 480, 'CEP: 13467-540', 'PQ. NOVO MUNDO', NULL, '3462-6157 3405-0313', 'manai.seduc@gmail.com', '', 'LUCIANA SEGATTI CASORLA', NULL, '', 8),
(48, 'PATATIVA', '2010-10-19 18:01:49', '2011-02-25 18:40:00', 54, 'AV. AFONSO SCHIMIDT', 920, 'CEP: 13474-510', 'ZANAGA II', NULL, '3469-1979 3469-0310', 'patativa.seduc@gmail.com', '', 'MARIA DO CARMO JUSTI FUKAMATSU', NULL, '', 8),
(49, 'PATURI', '2010-10-19 18:08:17', '2011-02-25 18:41:15', 55, 'RUA ERNESTO FURINI', 290, 'CEP:  13473-320', 'VILA MARIANA', NULL, '3468-6094 3478-0334', 'paturi.seduc@gmail.com', 'MARCIA CRISTINA SANTOS BACCHIEGA', 'LUCILIA MESTRE DE OLIVEIRA', NULL, '', 8),
(50, 'POTIRA', '2010-10-19 18:09:59', '2011-03-29 12:02:37', 56, 'RUA FRANCISCO DE ASSIS', 184, 'CEP: 13472-220', 'SAO MANOEL', NULL, '3468-6437 3478-0357', 'potira.seduc@gmail.com', '', 'ROSELI BUOSO CONES', NULL, '', 8),
(51, 'SABIA', '2010-10-19 18:11:54', '2011-04-01 12:00:03', 57, 'RUA DONA AMABILE BOER', 713, 'CEP: 13.471-612', 'JARDIM PAULISTANO', NULL, '3407-0894 3405-0255', 'sabia.seduc@gmail.com', '', 'DALVA', NULL, '', 8),
(52, 'TANGARA', '2010-10-19 18:12:58', '2011-02-25 18:59:33', 58, 'RUA VENEZUELA', 133, 'CEP: 13465-792', 'FREZZARIN', NULL, '3461-9548 3405-0245', 'tangara.seduc@gmail.com', '', 'BEATRIZ CRISTINA PERES', NULL, '', 8),
(53, 'SEDUC', '2010-10-22 09:48:24', '2011-06-15 17:22:13', 15, 'RUA DAS IMBUIAS', 230, 'CEP: 13468-090', 'JARDIM SAO PAULO', NULL, '3475-9715', 'informatica@seducpma.com', '', '', NULL, 'CNPJ PMA 45.781.176/0001-66  CEP 3.468-090', 9),
(59, 'PATRIMONIO', '2010-10-28 10:06:41', '2011-03-24 15:55:54', 0, 'AV. CILOS', 2295, '3462-2019', '', NULL, '3462-2019', '', 'ELY  /   MATEUS', '', NULL, 'MATERIAL PARA DESCARTE COM OU SEM PATRIMONIO.', 11),
(60, 'CAIC - CRECHE', '2010-11-10 13:08:48', '2011-03-24 17:34:35', 31, 'RUA DOS IDEAIS', 0, 'CEP: 13470-488', 'SAO JERONIMO', NULL, '3462-6074', 'crechecaic.seduc@gmail.com', 'ALINE G G POLACHINI', '', NULL, '', 5),
(61, 'MAOS QUE ACOLHEM', '2010-11-22 13:35:27', '2011-02-25 18:31:00', 0, 'RUA CUBA', 735, 'CEP: 13465-773', 'FREZZARIN', NULL, '3405-2227 3405-2310', 'vanessa.mqa.seduc@gmail.com', 'VANESSA FORNAZIEIRO', '', NULL, '', 3),
(62, 'CASA DO CONTO', '2010-11-26 12:52:38', '2011-02-25 18:05:58', 0, 'RUA CARIOBA', 2500, 'CEP: 13472-714', 'CENTRO', NULL, '3405-5878', 'casadoconto.seduc@gmail.com', '', 'CRISTINA ', NULL, '', 12),
(63, 'TEMPO DE VIVER', '2010-11-26 12:58:42', '2011-06-10 13:46:57', 14, 'RUA CARLOS BENOTTO 215', 215, 'CEP: 13478-150', 'JARDIM SANTANA', NULL, '3405-1494', 'tempodeviver.seduc@gmail.com', 'CLAUDIA', 'FANNY', NULL, '', 3),
(64, 'MERENDA ESCOLAR', '2010-12-21 16:24:29', '2011-02-25 18:34:34', 0, 'RUA FRANCISCO LAPIERRE ', 787, 'CEP: 13466-510', 'JARDIM SAO PEDRO', NULL, '3461-6157', 'merenda@americana.sp.gov.br', 'CRISTIANO', '', NULL, '', 9),
(65, 'PAÇO MUNICIPAL AMERICANA', '2011-03-25 14:59:38', '2011-08-15 15:11:15', 0, 'AV. BRASIL', 85, '', '', NULL, '19-3475-9000', '', '', '', NULL, '', 11),
(66, 'PROF. OCTAVIO SOARES DE ARRUDA', '2011-11-16 14:55:48', '2011-11-16 14:57:39', 0, 'RUA TURUMAS', 158, '', 'NOVA AMERICANA', NULL, '3406 1855', '', '', '', NULL, '', 7),
(67, 'PROFA. DELMIRA DE OLIVEIRA LOPES', '2011-11-16 14:57:07', '2011-11-16 14:58:11', 0, 'RUA DOS NARCISOS', 130, '3406 1829', 'VILA MATHIENSEN', NULL, '', '', '', '', NULL, '', 7),
(68, 'PROF. JOÃO DE CASTRO GONÇALVES', '2011-11-16 14:59:15', '2011-11-16 15:01:27', 0, 'RUA TIBIRIÇAS', 449, '', 'CONSERVA', NULL, '3461 1131', '', '', '', NULL, '', 7),
(69, 'PROF JONAS CORREIA', '2011-11-16 15:00:07', '2011-11-16 15:00:07', 0, 'RUA JOAO BERBESTEIN', 601, '', 'VILA MARGARIDA', NULL, '3468 2568', '', '', '', NULL, '', 7),
(70, 'PROF. MARCELONO TOMBI', '2011-11-16 15:00:52', '2011-11-16 15:00:52', 0, 'RUA SOLIMOES', 780, '', 'NOVA AMERICANA', NULL, '3461 7569', '', '', '', NULL, '', 7);
