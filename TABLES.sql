CREATE TABLE tb_empresario OF tp_empresario(
    PRIMARY KEY (CNPJ),
    Nome NOT NULL,
    email NOT NULL
);

CREATE TABLE tb_artista OF tp_artista(
    PRIMARY KEY (CPF),
    Nome_real NOT NULL
);

CREATE TABLE tb_produtora OF tp_produtora(
    PRIMARY KEY (Codigo_P),
    Nome NOT NULL,
    CNPJ NOT NULL UNIQUE
);

CREATE TABLE tb_contrato_artista_produtora OF tp_contrato_artista_produtora(
	PRIMARY KEY (CPF_Artista, Codigo_Produtora),
	FOREIGN KEY (ref_artista) REFERENCES tb_artista,
	FOREIGN KEY (ref_produtora) REFERENCES tb_produtora,
	FOREIGN KEY (ref_empresario) REFERENCES tb_empresario
);

CREATE TABLE tb_usuario OF tp_usuario(
    PRIMARY KEY (Login),
    Senha NOT NULL,
    Email NOT NULL UNIQUE
);


CREATE TABLE tb_premium OF tp_premium(
    PRIMARY KEY (Login),
    Cartao NOT NULL
);

CREATE TABLE tb_cliente_servidor OF tp_cliente_servidor(
    PRIMARY KEY (Login_Cliente, Login_Servidor),
	FOREIGN KEY (ref_cliente) REFERENCES tb_usuario,
	FOREIGN KEY (ref_servidor) REFERENCES tb_usuario
);

CREATE TABLE tb_dispositivo OF tp_dispositivo(
	PRIMARY KEY (Login_Premium, Codigo_D),
	ref_premium SCOPE IS tb_premium
);

CREATE TABLE tb_playlist OF tp_playlist(
	PRIMARY KEY (Codigo_Play),
	Nome_criador NOT NULL,
	Nome_playlist NOT NULL
) NESTED TABLE Generos STORE AS tb_generos_playlist;

CREATE TABLE tb_usuario_acessa_playlist OF tp_usuario_acessa_playlist(
	PRIMARY KEY (Login_Usuario, Codigo_Play),
    FOREIGN KEY (ref_usuario) REFERENCES tb_usuario,
    FOREIGN KEY (ref_playlist) REFERENCES tb_playlist
);

CREATE TABLE tb_musica OF tp_musica(
	PRIMARY KEY (Codigo_M),
    FOREIGN KEY (ref_produtora) REFERENCES tb_produtora,
	Nome NOT NULL,
    Artista NOT NULL,
    Valor_Licenca NOT NULL
) NESTED TABLE Generos STORE AS tb_generos_musica;

CREATE TABLE tb_musica_participa_playlist OF tp_musica_participa_playlist(
	PRIMARY KEY (Codigo_M, Codigo_Play),
	FOREIGN KEY (ref_musica) REFERENCES tb_musica, 
 	FOREIGN KEY (ref_play) REFERENCES tb_playlist
);

CREATE TABLE tb_usuario_ouvir_musica OF tp_usuario_ouvir_musica(
	PRIMARY KEY (Codigo_M, Login, Data_Ouvir),
	FOREIGN KEY (ref_musica) REFERENCES tb_musica, 
 	FOREIGN KEY (ref_usuario) REFERENCES tb_usuario
);

CREATE TABLE tb_videoclipe OF tp_videoclipe(
	PRIMARY KEY(Codigo_V),
	FOREIGN KEY(ref_musica) REFERENCES tb_musica
);

CREATE TABLE tb_premium_visualiza_videoclipe OF tp_premium_visualiza_videoclipe(
	PRIMARY KEY(Login_Premium, Codigo_V),
	FOREIGN KEY (ref_premium) REFERENCES tb_premium,
	FOREIGN KEY (ref_video) REFERENCES tb_videoclipe	
);

CREATE TABLE tb_premium_cria_edita_playlist OF tp_premium_cria_edita_playlist(
	PRIMARY KEY (Login_Premium, Codigo_M, Codigo_Play),
  	FOREIGN KEY (ref_premium) REFERENCES tb_premium, 
  	FOREIGN KEY (ref_musica) REFERENCES tb_musica, 
  	FOREIGN KEY (ref_play) REFERENCES tb_playlist	
);

-- (9)
CREATE TABLE tb_abstrato OF tp_abstrato_filho(
	PRIMARY KEY (id)
);