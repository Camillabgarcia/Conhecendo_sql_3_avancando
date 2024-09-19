CREATE table produtos (
  id TEXT PRIMARY key,
  nome VARCHAR (255),
  descricao VARCHAR (255),
  preco DECIMAL (10, 2),
  categoria VARCHAR (50)
);

CREATE table colaboradores (
  ID TEXT PRIMARY KEY,
  Nome VARCHAR(255) NOT NULL,
  Cargo VARCHAR(100),
  DataContratacao DATE,
  Telefone VARCHAR(20),
  Email VARCHAR(100),
  Rua VARCHAR(100) NOT NULL,
  Bairro VARCHAR(100) NOT NULL,
  Cidade VARCHAR(100) NOT NULL,
  Estado VARCHAR(2) NOT NULL,
  cep VARCHAR(8) NOT NULL
);


CREATE table fornecedores(
  ID TEXT PRIMARY KEY,
  Nome VARCHAR(255) NOT NULL,
  Contato VARCHAR(100) NOT NULL,
  Telefone VARCHAR(20),
  Email VARCHAR(100),
  Rua VARCHAR(100) NOT NULL,
  Bairro VARCHAR(100) NOT NULL,
  Cidade VARCHAR(100) NOT NULL,
  Estado VARCHAR(2) NOT NULL,
  cep VARCHAR(8) NOT NULL
);

CREATE table clientes(

);

CREATE table pedidos(

);

CREATE table itens_pedidos(

);
