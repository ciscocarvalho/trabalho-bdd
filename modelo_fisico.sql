CREATE TABLE Usuario (
 nome VARCHAR(100),
 email VARCHAR(100),
 data_nascimento DATE,
 id_usuario INT PRIMARY KEY,
);

CREATE TABLE CadastroUsuario (
 data_cadastro DATE,
 id_cadastro_usuario INT PRIMARY KEY,
 id_usuario INT FOREIGN KEY,
);

CREATE TABLE Imovel (
 valor_aluguel FLOAT,
 descricao VARCHAR(100),
 id_imovel INT PRIMARY KEY,
);

CREATE TABLE Feedback (
 comentario VARCHAR(100),
 avaliacao INT,
 id_feedback INT PRIMARY KEY,
 id_imovel INT FOREIGN KEY,
 id_usuario_inquilino INT FOREIGN KEY,
);

CREATE TABLE Telefone (
 numero VARCHAR(100),
 id_telefone INT PRIMARY KEY,
 id_usuario INT FOREIGN KEY,
);

CREATE TABLE UsuarioInquilino (
 id_usuario_inquilino INT PRIMARY KEY,
 id_imovel INT FOREIGN KEY,
);

CREATE TABLE RegistroAluguel (
 data_inicio DATE,
 data_fim DATE,
 id_registro_aluguel INT PRIMARY KEY,
 id_imovel INT FOREIGN KEY,
 id_usuario_inquilino INT FOREIGN KEY,
 id_usuario_proprietario INT FOREIGN KEY,
);

CREATE TABLE UsuarioProprietario (
 quantidade_imoveis INT,
 id_usuario_proprietario INT PRIMARY KEY,
 id_imovel INT FOREIGN KEY,
);

CREATE TABLE CadastroImovel (
 data_cadastro DATE,
 id_cadastro_imovel INT PRIMARY KEY,
 id_imovel INT FOREIGN KEY,
);

CREATE TABLE EnderecoImovel (
 id_endereco_imovel INT PRIMARY KEY,
 id_imovel INT FOREIGN KEY,
);

CREATE TABLE EnderecoUsuarioProprietario (
 id_usuario_proprietario INT PRIMARY KEY,
 id_endereco INT FOREIGN KEY,
);

CREATE TABLE Endereco (
 rua VARCHAR(100)
 cidade VARCHAR(100)
 bairro VARCHAR(100)
 numero VARCHAR(100)
 uf VARCHAR(100)
 id_endereco INT PRIMARY KEY,
);
