-- Criar e usar o banco
CREATE DATABASE IF NOT EXISTS startup;
USE startup;

-- Tipo de imóvel
CREATE TABLE TB_TipodeImovel (
  id_tipo INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  PRIMARY KEY(id_tipo)
);

-- Região
CREATE TABLE TB_regiao (
  id_regiao INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  PRIMARY KEY(id_regiao)
);

-- Plano de anúncio
CREATE TABLE TB_PlanodeAnuncio (
  id_plano INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  preco DECIMAL(12,2) NOT NULL,
  duracao_dias INT NOT NULL,
  PRIMARY KEY(id_plano)
);

-- Usuário
CREATE TABLE TB_USUARIO (
  id_usuario INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  telefone VARCHAR(20),
  tipo ENUM('Comprador', 'Vendedor', 'Locador', 'Corretor') NOT NULL,
  PRIMARY KEY(id_usuario)
);

-- Corretor (usuário especializado)
CREATE TABLE TB_Corretor (
  id_corretor INT UNSIGNED NOT NULL AUTO_INCREMENT,
  id_usuario INT UNSIGNED NOT NULL,
  email VARCHAR(100) NOT NULL,
  creci VARCHAR(20) NOT NULL,
  experiencia INT UNSIGNED,
  PRIMARY KEY(id_corretor),
  FOREIGN KEY (id_usuario) REFERENCES TB_USUARIO(id_usuario)
);

-- Notificações enviadas a usuários
CREATE TABLE TB_notificacao (
  id_notificacao INT UNSIGNED NOT NULL AUTO_INCREMENT,
  id_usuario INT UNSIGNED NOT NULL,
  mensagem TEXT NOT NULL,
  data_envio DATE NOT NULL,
  PRIMARY KEY(id_notificacao),
  FOREIGN KEY (id_usuario) REFERENCES TB_USUARIO(id_usuario)
);

-- Imóvel
CREATE TABLE TB_Imovel (
  id_imovel INT UNSIGNED NOT NULL AUTO_INCREMENT,
  titulo VARCHAR(100) NOT NULL,
  descricao TEXT,
  preco DECIMAL(12,2) NOT NULL,
  endereco VARCHAR(200) NOT NULL,
  data_anuncio DATE NOT NULL,
  id_tipo INT UNSIGNED NOT NULL,
  id_regiao INT UNSIGNED NOT NULL,
  id_usuario INT UNSIGNED NOT NULL,
  id_plano INT UNSIGNED NOT NULL,
  status ENUM('Disponível', 'Indisponível', 'Vendido', 'Alugado') DEFAULT 'Disponível',
  PRIMARY KEY(id_imovel),
  FOREIGN KEY (id_tipo) REFERENCES TB_TipodeImovel(id_tipo),
  FOREIGN KEY (id_regiao) REFERENCES TB_regiao(id_regiao),
  FOREIGN KEY (id_usuario) REFERENCES TB_USUARIO(id_usuario),
  FOREIGN KEY (id_plano) REFERENCES TB_PlanodeAnuncio(id_plano)
);

-- Favoritos (relacionamento usuário x imóvel)
CREATE TABLE TB_favoritos (
  id_favorito INT UNSIGNED NOT NULL AUTO_INCREMENT,
  id_usuario INT UNSIGNED NOT NULL,
  id_imovel INT UNSIGNED NOT NULL,
  data_adicionado DATE NOT NULL,
  PRIMARY KEY(id_favorito),
  FOREIGN KEY (id_usuario) REFERENCES TB_USUARIO(id_usuario),
  FOREIGN KEY (id_imovel) REFERENCES TB_Imovel(id_imovel)
);

-- Multimídia de imóvel (fotos, vídeos)
CREATE TABLE TB_Multimidia (
  id_midia INT UNSIGNED NOT NULL AUTO_INCREMENT,
  id_imovel INT UNSIGNED NOT NULL,
  tipo ENUM('Imagem', 'Vídeo') NOT NULL,
  url VARCHAR(255) NOT NULL,
  PRIMARY KEY(id_midia),
  FOREIGN KEY (id_imovel) REFERENCES TB_Imovel(id_imovel)
);

-- Transações (venda/aluguel)
CREATE TABLE TB_transacao (
  id_transacao INT UNSIGNED NOT NULL AUTO_INCREMENT,
  id_imovel INT UNSIGNED NOT NULL,
  id_usuario_comprador INT UNSIGNED NOT NULL,
  data DATE NOT NULL,
  tipo ENUM('Compra', 'Aluguel') NOT NULL,
  valor DECIMAL(12,2) NOT NULL,
  PRIMARY KEY(id_transacao),
  FOREIGN KEY (id_imovel) REFERENCES TB_Imovel(id_imovel),
  FOREIGN KEY (id_usuario_comprador) REFERENCES TB_USUARIO(id_usuario)
);
