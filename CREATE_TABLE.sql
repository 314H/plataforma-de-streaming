	CREATE TABLE Empresario ( 
	CNPJ VARCHAR2(35), 
	Nome VARCHAR2(35) NOT NULL, 
	Email VARCHAR2(35) NOT NULL UNIQUE, 
	CONSTRAINT Empresario_pk PRIMARY KEY (CNPJ) 
);

CREATE TABLE Telefones_Empresario ( 
	CNPJ_Empresario VARCHAR2(35),  
	Telefone NUMBER, 
	CONSTRAINT Telefones_Empresario_pk PRIMARY KEY (CNPJ_Empresario, Telefone), 
	CONSTRAINT Telefones_fk FOREIGN KEY (CNPJ_Empresario) REFERENCES Empresario(CNPJ) 
);

CREATE TABLE Artista (  
	CPF VARCHAR2(35),  
	Nome_real VARCHAR2(35) NOT NULL,  
	Nome_artistico VARCHAR2(35),  
	CONSTRAINT Artista_pk PRIMARY KEY (CPF)  
);

CREATE TABLE Produtora (  
	Codigo_P NUMBER,  
	Nome VARCHAR2(35) NOT NULL,  
	CNPJ VARCHAR2(35) NOT NULL UNIQUE,  
	CONSTRAINT Produtora_pk PRIMARY KEY (Codigo_P)  
);

CREATE TABLE Contrato_Artista_Produtora (  
    CPF_Artista VARCHAR2(35),   
    Codigo_Produtora NUMBER,  
    CNPJ_Empresario VARCHAR2(35),
	CONSTRAINT Codigo_pk PRIMARY KEY (CPF_Artista, Codigo_Produtora),  
    CONSTRAINT Codigo_fk1 FOREIGN KEY (CPF_Artista) REFERENCES Artista (CPF),   
    CONSTRAINT Codigo_fk2 FOREIGN KEY (Codigo_Produtora) REFERENCES Produtora (Codigo_P),
	CONSTRAINT Codigo_fk3 FOREIGN KEY (CNPJ_Empresario) REFERENCES Empresario (CNPJ)  
);

CREATE TABLE Usuario (
    Login VARCHAR2 (35),
    Senha VARCHAR (35) NOT NULL,
    Email VARCHAR (35) UNIQUE NOT NULL,
    CONSTRAINT Usuario_pk PRIMARY KEY (Login)
);

CREATE TABLE Cliente_Servidor (
    Login_Cliente VARCHAR2 (35),
    Login_Servidor VARCHAR2 (35),
    CONSTRAINT Cliente_Servidor_pk PRIMARY KEY (Login_Cliente, Login_Servidor),
    CONSTRAINT Cliente_Servidor_fk1 FOREIGN KEY (Login_Cliente) REFERENCES Usuario (Login),
    CONSTRAINT Cliente_Servidor_fk2 FOREIGN KEY (Login_Servidor) REFERENCES Usuario (Login)
);

CREATE TABLE Premium (
    Login_Premium VARCHAR2 (35),
    Cartao VARCHAR2(35) NOT NULL,
    CEP VARCHAR2(35),
    Descricao_End VARCHAR (35),
    CONSTRAINT Premium_pk PRIMARY KEY (Login_Premium),
    CONSTRAINT Premium_fk FOREIGN KEY (Login_Premium) REFERENCES Usuario (Login)
);

CREATE TABLE Telefone_Premium (
    Login_Premium VARCHAR2 (35),
    Telefone NUMBER,
    CONSTRAINT Telefone_Premium_pk PRIMARY KEY (Login_Premium, Telefone),
    CONSTRAINT Telefone_Premium_fk FOREIGN KEY (Login_Premium) REFERENCES Premium (Login_Premium)
);

CREATE TABLE Dispositivo (
    Login_Premium VARCHAR2 (35),
    Codigo_D NUMBER,
    Modelo VARCHAR2 (35),
    Marca VARCHAR2 (35),
    CONSTRAINT Dispositivo_pk PRIMARY KEY (Login_Premium, Codigo_D),
    CONSTRAINT Dispositivo_fk FOREIGN KEY (Login_Premium) REFERENCES Premium (Login_Premium)
);

CREATE TABLE Playlist (
    Codigo_Play NUMBER,
    Nome_criador VARCHAR2 (35) NOT NULL,
    Nome_playlist VARCHAR2 (35) NOT NULL,
    CONSTRAINT Playlist_pk PRIMARY KEY (Codigo_Play)
);

CREATE TABLE Generos_Playlist (
    Codigo_Play NUMBER, 
    Genero VARCHAR2 (35),
    CONSTRAINT Generos_Playlist_pk PRIMARY KEY (Codigo_Play, Genero),
    CONSTRAINT Generos_Playlist_fk FOREIGN KEY (Codigo_Play) REFERENCES Playlist (Codigo_Play)
);

CREATE TABLE Usuario_Acessa_Playlist (
    Login_Usuario VARCHAR2 (35), 
    Codigo_Play NUMBER,
    CONSTRAINT Usuario_Acessa_Playlist_pk PRIMARY KEY (Login_Usuario, Codigo_Play),
    CONSTRAINT Usuario_Acessa_Playlist_fk1 FOREIGN KEY (Login_Usuario) REFERENCES Usuario (Login),
    CONSTRAINT Usuario_Acessa_Playlist_fk2 FOREIGN KEY (Codigo_Play) REFERENCES Playlist (Codigo_Play)
);

CREATE TABLE Musica (
    Codigo_M NUMBER,
    Nome VARCHAR2 (35) NOT NULL,
    Codigo_Produtora NUMBER NOT NULL,
    Artista VARCHAR2 (35) NOT NULL,
    Valor_Licenca NUMBER NOT NULL,
    Album VARCHAR2 (35),
    CONSTRAINT Musica_pk PRIMARY KEY (Codigo_M),
    CONSTRAINT Musica_fk FOREIGN KEY (Codigo_Produtora) REFERENCES Produtora (Codigo_P)
);

CREATE TABLE Musica_Participa_Playlist (
    Codigo_M NUMBER, 
    Codigo_Play NUMBER,
    CONSTRAINT Musica_Participa_Playlist_pk PRIMARY KEY (Codigo_M, Codigo_Play),
    CONSTRAINT Musica_Participa_Playlist_fk1 FOREIGN KEY (Codigo_M) REFERENCES Musica (Codigo_M),
    CONSTRAINT Musica_Participa_Playlist_fk2 FOREIGN KEY (Codigo_Play) REFERENCES Playlist (Codigo_Play)
); 

CREATE TABLE Usuario_Ouvir_Musica (
    Codigo_M NUMBER, 
    Login VARCHAR(35),
    Data_Ouvir DATE,
    CONSTRAINT Usuario_Ouvir_Musica_pk PRIMARY KEY (Codigo_M, Login, Data_Ouvir),
    CONSTRAINT Usuario_Ouvir_Musica_fk1 FOREIGN KEY (Codigo_M) REFERENCES Musica (Codigo_M),
    CONSTRAINT Usuario_Ouvir_Musica_fk2 FOREIGN KEY (Login) REFERENCES Usuario (Login)
);

CREATE TABLE Generos_Musica (
    Codigo_M NUMBER, 
    Genero VARCHAR2 (35),
    CONSTRAINT Generos_Musica_pk PRIMARY KEY (Codigo_M, Genero),
    CONSTRAINT Generos_Musica_fk FOREIGN KEY (Codigo_M) REFERENCES Musica (Codigo_M)
);

CREATE TABLE Videoclipe (
    Codigo_V NUMBER,
    Codigo_M NUMBER NOT NULL,
    Diretor VARCHAR2 (35),
    Duracao NUMBER,
    CONSTRAINT Videoclipe_pk PRIMARY KEY (Codigo_V),
    CONSTRAINT Videoclipe_fk FOREIGN KEY (Codigo_M) REFERENCES Musica (Codigo_M)
);

CREATE TABLE Premium_Visualiza_Videoclipe (
    Login_Premium VARCHAR2 (35),
    Codigo_V NUMBER,
    CONSTRAINT Premium_Visualiza_Videoclipe_pk PRIMARY KEY (Login_Premium, Codigo_V),
    CONSTRAINT Premium_Visualiza_Videoclipe_fk1 FOREIGN KEY (Login_Premium) REFERENCES Premium (Login_Premium),
    CONSTRAINT Premium_Visualiza_Videoclipe_fk2 FOREIGN KEY (Codigo_V) REFERENCES Videoclipe (Codigo_V)
);

CREATE TABLE Premium_Cria_Edita_Playlist (
    Login_Premium VARCHAR2 (35), 
    Codigo_M NUMBER, 
    Codigo_Play NUMBER,
    CONSTRAINT Premium_Cria_Edita_Playlist_pk PRIMARY KEY (Login_Premium, Codigo_M, Codigo_Play),
    CONSTRAINT Premium_Cria_Edita_Playlist_fk1 FOREIGN KEY (Login_Premium) REFERENCES Premium (Login_Premium),
    CONSTRAINT Premium_Cria_Edita_Playlist_fk2 FOREIGN KEY (Codigo_M) REFERENCES Musica (Codigo_M),
    CONSTRAINT Premium_Cria_Edita_Playlist_fk3 FOREIGN KEY (Codigo_Play) REFERENCES Playlist (Codigo_Play)
);