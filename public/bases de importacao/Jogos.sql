-- phpMyAdmin SQL Dump
-- version 3.1.2deb1ubuntu0.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: Dez 12, 2011 as 08:11 AM
-- Versão do Servidor: 5.0.75
-- Versão do PHP: 5.2.6-3ubuntu4.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Banco de Dados: `biblioteca_development`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogos`
--

CREATE TABLE IF NOT EXISTS `jogos` (
  `id` int(11) NOT NULL auto_increment,
  `localizacao_id` int(11) default NULL,
  `tombo_seduc` varchar(255) collate utf8_unicode_ci default NULL,
  `tombo_l` varchar(255) collate utf8_unicode_ci default NULL,
  `nome` varchar(255) collate utf8_unicode_ci default NULL,
  `faixa_etaria` varchar(255) collate utf8_unicode_ci default NULL,
  `tipo` varchar(255) collate utf8_unicode_ci default NULL,
  `fabricante` varchar(255) collate utf8_unicode_ci default NULL,
  `obs` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=29 ;

--
-- Extraindo dados da tabela `jogos`
--

INSERT INTO `jogos` (`id`, `localizacao_id`, `tombo_seduc`, `tombo_l`, `nome`, `faixa_etaria`, `tipo`, `fabricante`, `obs`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, '10 JOGOS', '5 ANOS', NULL, 'CEEL\n', NULL, '2011-12-02 14:53:15', '2011-12-02 14:53:15'),
(2, NULL, NULL, NULL, 'ANIMAIS DE ESTIMAÇÃO', '3 ANOS', NULL, 'CARISMA BRINQUEDOS\n', NULL, '2011-12-02 14:53:15', '2011-12-02 14:53:15'),
(3, NULL, NULL, NULL, 'AVENTURA PELOS CAMINHOS DO BRASIL', '8 ANOS', NULL, 'GROW\n', NULL, '2011-12-02 14:53:15', '2011-12-02 14:53:15'),
(4, NULL, NULL, NULL, 'BALACAR', '10 ANOS', NULL, 'GROW\n', NULL, '2011-12-02 14:53:15', '2011-12-02 14:53:15'),
(5, NULL, NULL, NULL, 'BANCO IMOBILIÁRIO', '6 ANOS', NULL, 'ESTRELA\n', NULL, '2011-12-02 14:53:15', '2011-12-02 14:53:15'),
(6, NULL, NULL, NULL, 'BAÚ LITERÁRIO', 'LIVRE', NULL, 'POSITIVO\n', NULL, '2011-12-02 14:53:15', '2011-12-02 14:53:15'),
(7, NULL, NULL, NULL, 'BRINCADEIRA DE APRENDER', '4 ANOS', NULL, 'BIG-STAR\n', NULL, '2011-12-02 14:53:15', '2011-12-02 14:53:15'),
(8, NULL, NULL, NULL, 'COLEÇÃO APRENDENDO COM ARTE', 'LIVRE', NULL, 'EDUCAÇÃO & CIA\n', NULL, '2011-12-02 14:53:15', '2011-12-02 14:53:15'),
(9, NULL, NULL, NULL, 'COM QUE LETRA', '10 ANOS', NULL, 'GROW\n', NULL, '2011-12-02 14:53:15', '2011-12-02 14:53:15'),
(10, NULL, NULL, NULL, 'CONHECENDO O BRASIL', '10 ANOS', NULL, 'TOYSTER\n', NULL, '2011-12-02 14:53:15', '2011-12-02 14:53:15'),
(11, NULL, NULL, NULL, 'CONTANDO A ARTE', 'LIVRE', NULL, 'EDUCAÇÃO & CIA\n', NULL, '2011-12-02 14:53:15', '2011-12-02 14:53:15'),
(12, NULL, NULL, NULL, 'DESCOBRIMENTO DO BRASIL', '3 ANOS', NULL, 'JAK\n', NULL, '2011-12-02 14:53:15', '2011-12-02 14:53:15'),
(13, NULL, NULL, NULL, 'ESCREVENDO CERTO', '9 ANOS', NULL, 'GROW\n', NULL, '2011-12-02 14:53:15', '2011-12-02 14:53:15'),
(14, NULL, NULL, NULL, 'EXPLORANDO O MUNDO O QUE VOCE DESCOBRIU HOJE ?', '4 ANOS', NULL, 'GROW\n', NULL, '2011-12-02 14:53:15', '2011-12-02 14:53:15'),
(15, NULL, NULL, NULL, 'MINHA PRIMEIRA BIBLIOTECA CORES E FORMAS', '', NULL, 'CE\n', NULL, '2011-12-02 14:53:15', '2011-12-02 14:53:15'),
(16, NULL, NULL, NULL, 'ORTOGRAFANDO', '', NULL, 'ADONIS\n', NULL, '2011-12-02 14:53:15', '2011-12-02 14:53:15'),
(17, NULL, NULL, NULL, 'PASSALETRA', '3 ANOS', NULL, 'GROW\n', NULL, '2011-12-02 14:53:15', '2011-12-02 14:53:15'),
(18, NULL, NULL, NULL, 'PEÇAS PARA JOGO DE XADREZ', '', NULL, 'JAEHRIG\n', NULL, '2011-12-02 14:53:15', '2011-12-02 14:53:15'),
(19, NULL, NULL, NULL, 'PERFIL JUNIOR', '7 ANOS', NULL, 'GROW\n', NULL, '2011-12-02 14:53:15', '2011-12-02 14:53:15'),
(20, NULL, NULL, NULL, 'PUZZLE 100 PEÇAS', '6 ANOS', NULL, 'GROW\n', NULL, '2011-12-02 14:53:15', '2011-12-02 14:53:15'),
(21, NULL, NULL, NULL, 'QUEBRA - CABEÇA PROGRESSIVO ANIMAIS DA FAZENDA', '3 ANOS', NULL, 'CARISMA BRINQUEDOS\n', NULL, '2011-12-02 14:53:15', '2011-12-02 14:53:15'),
(22, NULL, NULL, NULL, 'QUEBRA - CABEÇA PROGRESSIVO ANIMAIS DE ESTIMAÇÃO', '3 ANOS', NULL, 'CARISMA BRINQUEDOS\n', NULL, '2011-12-02 14:53:15', '2011-12-02 14:53:15'),
(23, NULL, NULL, NULL, 'QUEBRA - CABEÇA DINOSSAUROS', '6 ANOS', NULL, 'CARISMA BRINQUEDOS\n', NULL, '2011-12-02 14:53:15', '2011-12-02 14:53:15'),
(24, NULL, NULL, NULL, 'QUEBRA - CABEÇA GEOGRAFIA MAPA MUNDI E ETNIAS', '5 ANOS', NULL, 'CARLU BRINQUEDOS\n', NULL, '2011-12-02 14:53:15', '2011-12-02 14:53:15'),
(25, NULL, NULL, NULL, 'QUEBRA - CABEÇA HISTÓRIA LINHA DO TEMPO BRASIL COLÔNIA BRASIL ATUAL', '5 ANOS', NULL, 'CARLU BRINQUEDOS\n', NULL, '2011-12-02 14:53:15', '2011-12-02 14:53:15'),
(26, NULL, NULL, NULL, 'QUEBRA - CABEÇA MAPA RELEVO E ACIDENTES GEOGRÁFICOS', '5 ANOS', NULL, 'CARLU BRINQUEDOS\n', NULL, '2011-12-02 14:53:15', '2011-12-02 14:53:15'),
(27, NULL, NULL, NULL, 'SUPER TRINCA', '5 ANOS', NULL, 'SONATA\n', NULL, '2011-12-02 14:53:15', '2011-12-02 14:53:15'),
(28, NULL, NULL, NULL, 'TRANCA A TRANCA JUNIOR', '6 ANOS', NULL, 'SONATA\n', NULL, '2011-12-02 14:53:15', '2011-12-02 14:53:15');
