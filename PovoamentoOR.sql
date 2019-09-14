 -- inserindo empresarios (7 no total)
INSERT INTO tb_empresario  VALUES ('54716129000120', 'Antonio da Silva', 'antoniosilva@gmail.com', tp_nt_telefones('7068-8371', '1118-9220'));
INSERT INTO tb_empresario  VALUES ('35081586000140', 'Paulo Neto', 'paulneto@gmail.com', tp_nt_telefones('9466-9225'));
INSERT INTO tb_empresario  VALUES ('38703183000184', 'Jose Henrique Ribeiro', 'jose.h.ribeiro@gmail.com', tp_nt_telefones('4328-1226', '2473-9880', '8204-8463'));
INSERT INTO tb_empresario  VALUES ('13938576000146', 'Jorge Cavalcanti', 'jorgecavalcanti@gmail.com', tp_nt_telefones('9223-5118'));
INSERT INTO tb_empresario  VALUES ('91646028000156', 'Igor Ferreira', 'igorferreira@gmail.com', tp_nt_telefones('8871-3665', '5307-2795'));
INSERT INTO tb_empresario  VALUES ('81561657000120', 'Oscar Franco', 'oscarfranco@gmail.com', tp_nt_telefones('8436-6251'));
INSERT INTO tb_empresario  VALUES ('81520527000149', 'Joao Paulo Oliveira', 'jp_oliveira@gmail.com', tp_nt_telefones('7109-8285', '1027-0523'));

 -- inserindo artistas (13 no total)
INSERT INTO tb_artista VALUES ('98898788010', 'Oliver Santos', 'Mc Livinho');
INSERT INTO tb_artista VALUES ('79804406098', 'Larissa Machado', 'Anitta');
INSERT INTO tb_artista VALUES ('33745793021', 'Jose Pereira', 'Projota');
INSERT INTO tb_artista VALUES ('14551960020', 'Roberto Carlos', NULL);
INSERT INTO tb_artista VALUES ('85404802049', 'Wesley Oliveira', 'Wesley Safadao');
INSERT INTO tb_artista VALUES ('03883182010', 'Troinha da Silva', 'Troinha');
INSERT INTO tb_artista VALUES ('02890971007', 'Thiago Barbosa', 'Thiaguinho');
INSERT INTO tb_artista VALUES ('45534928069', 'Gustavo Lima', NULL);
INSERT INTO tb_artista VALUES ('02935519019', 'Leandro Roque', 'Emicida');
INSERT INTO tb_artista VALUES ('84592495063', 'Jose Walter', 'Mano Walter');
INSERT INTO tb_artista VALUES ('90543686563', 'Roger Taylor', 'Queen');
INSERT INTO tb_artista VALUES ('89234562178', 'Caetano Veloso', NULL);
INSERT INTO tb_artista VALUES ('37130522579', 'Paloma Santos', 'Mc Loma');

 -- inserindo produtoras (5 no total)
INSERT INTO tb_produtora VALUES (521, 'Music Productions', '26318191000128');
INSERT INTO tb_produtora VALUES (489, 'House Produtora', '35708030000131');
INSERT INTO tb_produtora VALUES (801, 'International Productions', '34829949000110');
INSERT INTO tb_produtora VALUES (631, 'Brasil Produtora', '70557749000110');
INSERT INTO tb_produtora VALUES (366, 'Musica Popular Brasileira', '23455437424554');

 -- inserindo contratos(13 no total)
INSERT INTO tb_contrato_artista_produtora VALUES (
	'98898788010',
	 521, 
	 (SELECT REF(A) FROM tb_artista A WHERE A.CPF = '98898788010'), 
	 (SELECT REF(P) FROM tb_produtora P WHERE P.Codigo_P = 521), 
	 (SELECT REF(E) FROM tb_empresario E WHERE E.CNPJ = '54716129000120'));

INSERT INTO tb_contrato_artista_produtora VALUES (
	'79804406098',
	 521, 
	 (SELECT REF(A) FROM tb_artista A WHERE A.CPF = '79804406098'), 
	 (SELECT REF(P) FROM tb_produtora P WHERE P.Codigo_P = 521), 
	 NULL);

INSERT INTO tb_contrato_artista_produtora VALUES (
	'33745793021',
	 489, 
	 (SELECT REF(A) FROM tb_artista A WHERE A.CPF = '33745793021'), 
	 (SELECT REF(P) FROM tb_produtora P WHERE P.Codigo_P = 489), 
	 (SELECT REF(E) FROM tb_empresario E WHERE E.CNPJ = '35081586000140'));

INSERT INTO tb_contrato_artista_produtora VALUES (
	'03883182010',
	 521, 
	 (SELECT REF(A) FROM tb_artista A WHERE A.CPF = '03883182010'), 
	 (SELECT REF(P) FROM tb_produtora P WHERE P.Codigo_P = 521), 
	 NULL);

INSERT INTO tb_contrato_artista_produtora VALUES (
	'85404802049',
	 801, 
	 (SELECT REF(A) FROM tb_artista A WHERE A.CPF = '85404802049'), 
	 (SELECT REF(P) FROM tb_produtora P WHERE P.Codigo_P = 801), 
	 (SELECT REF(E) FROM tb_empresario E WHERE E.CNPJ = '38703183000184'));

INSERT INTO tb_contrato_artista_produtora VALUES (
	'02890971007',
	 631, 
	 (SELECT REF(A) FROM tb_artista A WHERE A.CPF = '02890971007'), 
	 (SELECT REF(P) FROM tb_produtora P WHERE P.Codigo_P = 631), 
	 NULL);

INSERT INTO tb_contrato_artista_produtora VALUES (
	'45534928069',
	 631, 
	 (SELECT REF(A) FROM tb_artista A WHERE A.CPF = '45534928069'), 
	 (SELECT REF(P) FROM tb_produtora P WHERE P.Codigo_P = 631), 
	 (SELECT REF(E) FROM tb_empresario E WHERE E.CNPJ = '13938576000146'));

INSERT INTO tb_contrato_artista_produtora VALUES (
	'02935519019',
	 489, 
	 (SELECT REF(A) FROM tb_artista A WHERE A.CPF = '02935519019'), 
	 (SELECT REF(P) FROM tb_produtora P WHERE P.Codigo_P = 489), 
	 (SELECT REF(E) FROM tb_empresario E WHERE E.CNPJ = '81561657000120'));

INSERT INTO tb_contrato_artista_produtora VALUES (
	'84592495063',
	 521, 
	 (SELECT REF(A) FROM tb_artista A WHERE A.CPF = '84592495063'), 
	 (SELECT REF(P) FROM tb_produtora P WHERE P.Codigo_P = 521), 
	 (SELECT REF(E) FROM tb_empresario E WHERE E.CNPJ = '35081586000140'));

INSERT INTO tb_contrato_artista_produtora VALUES (
	'03883182010',
	 631, 
	 (SELECT REF(A) FROM tb_artista A WHERE A.CPF = '03883182010'), 
	 (SELECT REF(P) FROM tb_produtora P WHERE P.Codigo_P = 631), 
	 NULL);

INSERT INTO tb_contrato_artista_produtora VALUES (
	'90543686563',
	 801, 
	 (SELECT REF(A) FROM tb_artista A WHERE A.CPF = '90543686563'), 
	 (SELECT REF(P) FROM tb_produtora P WHERE P.Codigo_P = 801), 
	 (SELECT REF(E) FROM tb_empresario E WHERE E.CNPJ = '13938576000146'));

INSERT INTO tb_contrato_artista_produtora VALUES (
	'37130522579',
	 631, 
	 (SELECT REF(A) FROM tb_artista A WHERE A.CPF = '37130522579'), 
	 (SELECT REF(P) FROM tb_produtora P WHERE P.Codigo_P = 631), 
	 NULL);

INSERT INTO tb_contrato_artista_produtora VALUES (
	'89234562178',
	 366, 
	 (SELECT REF(A) FROM tb_artista A WHERE A.CPF = '89234562178'), 
	 (SELECT REF(P) FROM tb_produtora P WHERE P.Codigo_P = 366), 
	 (SELECT REF(E) FROM tb_empresario E WHERE E.CNPJ = '13938576000146'));


 -- inserindo usuario(20 no total)
 
 INSERT INTO tb_usuario VALUES ('robsonfidalgo','balasoft123','robsonfidalgo@gmail.com');
 INSERT INTO tb_usuario VALUES ('bielsensual', '123carona123', 'biel_doido@hotmail.com');
 INSERT INTO tb_usuario VALUES ('jotaPE', '9QEQSHwcxuFXqwPr', 'joaopedrocosta94@gmail.com');
 INSERT INTO tb_usuario VALUES ('tarik', '36325654', 'pedro_silva@hotmail.com');
 INSERT INTO tb_usuario VALUES ('americoBolsonaro', 'bolsominion', 'bolsonaro2018@gmail.com');
 INSERT INTO tb_usuario VALUES ('lulinha', 'ehgolpesim', 'caioalmeida_@yahoo.com.br');
 INSERT INTO tb_usuario VALUES ('luladrao', 'rouboumeucorassaum', 'dilminha@cin.ufpe.br');
 INSERT INTO tb_usuario VALUES ('trolldanet', '123456', 'ijmg@cin.ufpe.br');
 INSERT INTO tb_usuario VALUES ('joao_almeida', 'Cin9232', 'joao_almeida@yahoo.com.br');
 INSERT INTO tb_usuario VALUES ('bolsominion2018', 'mariadorosarios2', 'bolsolula@gmail.com');
 INSERT INTO tb_usuario VALUES ('acmneto', 'EhBrincadeira123', 'acmn@cac.ufpe.br');
 INSERT INTO tb_usuario VALUES ('cepodemadeira', 'BemSocado', 'cepo_madeira@gmail.com');
 INSERT INTO tb_usuario VALUES ('pablovittar', 'oiamigxs', 'anitta@seinao.ufpe.br');
 INSERT INTO tb_usuario VALUES ('nauticocampeao2018', 'Hexaehluxo', 'nauticocampeao@gmail.com');
 INSERT INTO tb_usuario VALUES ('zealunodocin', 'soupaguso', 'paguso@cin.ufpe.br');
 INSERT INTO tb_usuario VALUES ('drmonteiro', 'Fisica<3', 'drmonteiro@yahoo.com.br');
 INSERT INTO tb_usuario VALUES ('andrezinhuhn', 'aMetaEh5', 'andre@gmail.com');
 INSERT INTO tb_usuario VALUES ('meu_nome_eh_julia', 'tuntstunts', 'julia.alcantra@yahoo.com.br');
 INSERT INTO tb_usuario VALUES ('jorginho', 'senhaDe1a10', 'jorge.almeida@gmail.com');
 INSERT INTO tb_usuario VALUES ('hta', 'aGatinha123', 'agata@hotmail.com');

 -- inserindo Premium(10 no total)
INSERT INTO tb_premium VALUES ('jorginho', 'senhaDe1a10', 'jorge.almeida@gmail.com', '4024007116609222', tp_endereco('51044904', 'Edificio 342'), tp_nt_telefones('9674-0127'));
INSERT INTO tb_premium VALUES ('hta', 'aGatinha123', 'agata@hotmail.com', '4024007116609222', tp_endereco('51044904', 'Ed. 360'), tp_nt_telefones('8021-5288'));
INSERT INTO tb_premium VALUES ('bielsensual', '123carona123', 'biel_doido@hotmail.com', '4556950364649869', tp_endereco('54204201', NULL), tp_nt_telefones('8101-0411'));
INSERT INTO tb_premium VALUES ('robsonfidalgo','balasoft123','robsonfidalgo@gmail.com', '4024007192270212', tp_endereco(NULL, NULL), tp_nt_telefones('9763-8647', '93057912'));
INSERT INTO tb_premium VALUES ('luladrao', 'rouboumeucorassaum', 'dilminha@cin.ufpe.br', '4485027760394881', tp_endereco('25728495', NULL), tp_nt_telefones('8854-0632', '9795-4576'));
INSERT INTO tb_premium VALUES ('andrezinhuhn', 'aMetaEh5', 'andre@gmail.com', '5469807625057436', tp_endereco(NULL, 'Rua Jose dos Cantos 920 apart 701'), tp_nt_telefones('9976-4312'));
INSERT INTO tb_premium VALUES ('drmonteiro', 'Fisica<3', 'drmonteiro@yahoo.com.br', '4532291325346', tp_endereco(NULL, 'Edificio 12001 apartamento 1301'), tp_nt_telefones('8557-1650'));
INSERT INTO tb_premium VALUES ('tarik', '36325654', 'pedro_silva@hotmail.com', '6363696248306790', tp_endereco('59301020', 'Avenida Coronel Machado 1063'), tp_nt_telefones());
INSERT INTO tb_premium VALUES ('zealunodocin', 'soupaguso', 'paguso@cin.ufpe.br', '2333593492342942', tp_endereco('09583019', NULL), tp_nt_telefones());
INSERT INTO tb_premium VALUES ('nauticocampeao2018', 'Hexaehluxo', 'nauticocampeao@gmail.com', '5469807625057436', tp_endereco('94829492', NULL), tp_nt_telefones('9984-3215'));

 

-- inserindo Cliente Servidor(7 no total)
INSERT INTO tb_cliente_servidor VALUES (
	'robsonfidalgo',
	'jotaPE',
	(SELECT REF(cs) FROM tb_usuario cs WHERE cs.Login = 'robsonfidalgo'),
	(SELECT REF(cs) FROM tb_usuario cs WHERE cs.Login = 'jotaPE')
);

INSERT INTO tb_cliente_servidor VALUES (
	'tarik',
	'jorginho',
	(SELECT REF(cs) FROM tb_usuario cs WHERE cs.Login = 'tarik'),
	(SELECT REF(cs) FROM tb_usuario cs WHERE cs.Login = 'jorginho')
);

INSERT INTO tb_cliente_servidor VALUES (
	'acmneto',
	'trolldanet',
	(SELECT REF(cs) FROM tb_usuario cs WHERE cs.Login = 'acmneto'),
	(SELECT REF(cs) FROM tb_usuario cs WHERE cs.Login = 'trolldanet')
);

INSERT INTO tb_cliente_servidor VALUES (
	'jotaPE',
	'tarik',
	(SELECT REF(cs) FROM tb_usuario cs WHERE cs.Login = 'jotaPE'),
	(SELECT REF(cs) FROM tb_usuario cs WHERE cs.Login = 'tarik')
);

INSERT INTO tb_cliente_servidor VALUES (
	'joao_almeida',
	'robsonfidalgo',
	(SELECT REF(cs) FROM tb_usuario cs WHERE cs.Login = 'joao_almeida'),
	(SELECT REF(cs) FROM tb_usuario cs WHERE cs.Login = 'robsonfidalgo')
);

INSERT INTO tb_cliente_servidor VALUES (
	'luladrao',
	'lulinha',
	(SELECT REF(cs) FROM tb_usuario cs WHERE cs.Login = 'luladrao'),
	(SELECT REF(cs) FROM tb_usuario cs WHERE cs.Login = 'lulinha')
);

INSERT INTO tb_cliente_servidor VALUES (
	'hta',
	'pablovittar',
	(SELECT REF(cs) FROM tb_usuario cs WHERE cs.Login = 'hta'),
	(SELECT REF(cs) FROM tb_usuario cs WHERE cs.Login = 'pablovittar')
);

-- inserindo Dispositivos dos Premiums (10 no total)
INSERT INTO tb_dispositivo VALUES (0, 'Galaxy s7', 'Samsung','robsonfidalgo', (SELECT REF(cs) FROM tb_premium cs WHERE cs.Login = 'robsonfidalgo'));
INSERT INTO tb_dispositivo VALUES (1, 'Galaxy prime', 'Samsung','robsonfidalgo', (SELECT REF(cs) FROM tb_premium cs WHERE cs.Login = 'robsonfidalgo'));
INSERT INTO tb_dispositivo VALUES (2, 'Moto G5', 'Motorola','drmonteiro', (SELECT REF(cs) FROM tb_premium cs WHERE cs.Login = 'drmonteiro'));
INSERT INTO tb_dispositivo VALUES (3, 'LG J8', 'LG','drmonteiro', (SELECT REF(cs) FROM tb_premium cs WHERE cs.Login = 'drmonteiro'));
INSERT INTO tb_dispositivo VALUES (4, 'Galaxy s6', 'Samsung','luladrao', (SELECT REF(cs) FROM tb_premium cs WHERE cs.Login = 'luladrao'));
INSERT INTO tb_dispositivo VALUES (5, 'Iphone X', 'Apple','zealunodocin', (SELECT REF(cs) FROM tb_premium cs WHERE cs.Login = 'zealunodocin'));
INSERT INTO tb_dispositivo VALUES (6, 'Xperia XZ', 'Sony','bielsensual', (SELECT REF(cs) FROM tb_premium cs WHERE cs.Login = 'bielsensual'));
INSERT INTO tb_dispositivo VALUES (7, 'Lenovo K5', 'Lenovo','jorginho', (SELECT REF(cs) FROM tb_premium cs WHERE cs.Login = 'jorginho'));
INSERT INTO tb_dispositivo VALUES (8, NULL, 'Sony','bielsensual', (SELECT REF(cs) FROM tb_premium cs WHERE cs.Login = 'bielsensual'));
INSERT INTO tb_dispositivo VALUES (9, 'Iphone 8', 'Apple','jorginho', (SELECT REF(cs) FROM tb_premium cs WHERE cs.Login = 'jorginho'));

 -- inserindo Playlists (10 no total)
INSERT INTO tb_playlist VALUES ( 0, 'luladrao', 'Músicas para chorar', tp_nt_generos('MPB', 'Brega', 'Pagode'));
INSERT INTO tb_playlist VALUES ( 1, 'andrezinhuhn', 'Sabado a noite', tp_nt_generos('Forro', 'Funk'));
INSERT INTO tb_playlist VALUES ( 2, 'zealunodocin', 'Sextou!', tp_nt_generos('Eletronica'));
INSERT INTO tb_playlist VALUES ( 3, 'andrezinhuhn', 'Dia de chuva', tp_nt_generos('Rock'));
INSERT INTO tb_playlist VALUES ( 4, 'tarik', 'Oh happy day!', tp_nt_generos('MPB'));
INSERT INTO tb_playlist VALUES ( 5, 'nauticocampeao2018', 'Eletrohits2000', NULL);
INSERT INTO tb_playlist VALUES ( 6, 'bielsensual', 'Sofrência', tp_nt_generos('Brega'));
INSERT INTO tb_playlist VALUES ( 7, 'bielsensual', 'This is Rock n Roll, baby!', NULL);
INSERT INTO tb_playlist VALUES ( 8, 'andrezinhuhn', 'Aldair Playboy', tp_nt_generos('Brega'));
INSERT INTO tb_playlist VALUES ( 9, 'jorginho', 'Festinha hetero top', tp_nt_generos('Forro', 'Sertanejo'));


-- inserindo acessos a playlists(14 no total)
INSERT INTO tb_usuario_acessa_playlist VALUES (
	'jotaPE',
	 0,
	(SELECT REF(u) FROM tb_usuario u WHERE u.Login = 'jotaPE'),
	(SELECT REF(p) FROM tb_playlist p WHERE p.Codigo_Play = 0)
	);

INSERT INTO tb_usuario_acessa_playlist VALUES (
	'joao_almeida',
	 0,
	(SELECT REF(u) FROM tb_usuario u WHERE u.Login = 'joao_almeida'),
	(SELECT REF(p) FROM tb_playlist p WHERE p.Codigo_Play = 0)
	);

INSERT INTO tb_usuario_acessa_playlist VALUES (
	'americoBolsonaro',
	 0,
	(SELECT REF(u) FROM tb_usuario u WHERE u.Login = 'americoBolsonaro'),
	(SELECT REF(p) FROM tb_playlist p WHERE p.Codigo_Play = 0)
	);

INSERT INTO tb_usuario_acessa_playlist VALUES (
	'robsonfidalgo',
	 5,
	(SELECT REF(u) FROM tb_usuario u WHERE u.Login = 'robsonfidalgo'),
	(SELECT REF(p) FROM tb_playlist p WHERE p.Codigo_Play = 5)
	);

INSERT INTO tb_usuario_acessa_playlist VALUES (
	'drmonteiro',
	 3,
	(SELECT REF(u) FROM tb_usuario u WHERE u.Login = 'drmonteiro'),
	(SELECT REF(p) FROM tb_playlist p WHERE p.Codigo_Play = 3)
	);

INSERT INTO tb_usuario_acessa_playlist VALUES (
	'pablovittar',
	 6,
	(SELECT REF(u) FROM tb_usuario u WHERE u.Login = 'pablovittar'),
	(SELECT REF(p) FROM tb_playlist p WHERE p.Codigo_Play = 6)
	);

INSERT INTO tb_usuario_acessa_playlist VALUES (
	'cepodemadeira',
	 7,
	(SELECT REF(u) FROM tb_usuario u WHERE u.Login = 'cepodemadeira'),
	(SELECT REF(p) FROM tb_playlist p WHERE p.Codigo_Play = 7)
	);

INSERT INTO tb_usuario_acessa_playlist VALUES (
	'meu_nome_eh_julia',
	 8,
	(SELECT REF(u) FROM tb_usuario u WHERE u.Login = 'meu_nome_eh_julia'),
	(SELECT REF(p) FROM tb_playlist p WHERE p.Codigo_Play = 8)
	);

INSERT INTO tb_usuario_acessa_playlist VALUES (
	'acmneto',
	 2,
	(SELECT REF(u) FROM tb_usuario u WHERE u.Login = 'acmneto'),
	(SELECT REF(p) FROM tb_playlist p WHERE p.Codigo_Play = 2)
	);

INSERT INTO tb_usuario_acessa_playlist VALUES (
	'acmneto',
	 4,
	(SELECT REF(u) FROM tb_usuario u WHERE u.Login = 'acmneto'),
	(SELECT REF(p) FROM tb_playlist p WHERE p.Codigo_Play = 4)
	);

INSERT INTO tb_usuario_acessa_playlist VALUES (
	'trolldanet',
	 3,
	(SELECT REF(u) FROM tb_usuario u WHERE u.Login = 'trolldanet'),
	(SELECT REF(p) FROM tb_playlist p WHERE p.Codigo_Play = 3)
	);

INSERT INTO tb_usuario_acessa_playlist VALUES (
	'meu_nome_eh_julia',
	 5,
	(SELECT REF(u) FROM tb_usuario u WHERE u.Login = 'meu_nome_eh_julia'),
	(SELECT REF(p) FROM tb_playlist p WHERE p.Codigo_Play = 5)
	);

INSERT INTO tb_usuario_acessa_playlist VALUES (
	'robsonfidalgo',
	 4,
	(SELECT REF(u) FROM tb_usuario u WHERE u.Login = 'robsonfidalgo'),
	(SELECT REF(p) FROM tb_playlist p WHERE p.Codigo_Play = 4)
	);

INSERT INTO tb_usuario_acessa_playlist VALUES (
	'lulinha',
	 6,
	(SELECT REF(u) FROM tb_usuario u WHERE u.Login = 'lulinha'),
	(SELECT REF(p) FROM tb_playlist p WHERE p.Codigo_Play = 6)
	);

-- inserindo musicas(11 no total)
INSERT INTO tb_musica VALUES (0, 'Balanca, Balanca', (SELECT REF(p) FROM tb_produtora p WHERE p.Codigo_P = 631), 'Troinha', 350, NULL, tp_nt_generos('Brega'));
INSERT INTO tb_musica VALUES (1, 'Cheia de Marra', (SELECT REF(p) FROM tb_produtora p WHERE p.Codigo_P = 521), 'Mc Livinho', 272, 'Vagabundo Romantico', NULL);
INSERT INTO tb_musica VALUES (2, 'Bohemian Rhapsody', (SELECT REF(p) FROM tb_produtora p WHERE p.Codigo_P = 801), 'Queen', 2575, 'A Night at the Opera', tp_nt_generos('Rock'));
INSERT INTO tb_musica VALUES (3, 'Papel Mache', (SELECT REF(p) FROM tb_produtora p WHERE p.Codigo_P = 631), 'Thiaguinho', 494, 'Tardezinha', tp_nt_generos('Pagode'));
INSERT INTO tb_musica VALUES (4, 'Sozinho', (SELECT REF(p) FROM tb_produtora p WHERE p.Codigo_P = 366), 'Caetano Veloso', 1539, 'Prenda Minha', tp_nt_generos('MPB'));
INSERT INTO tb_musica VALUES (5, 'Baiana', (SELECT REF(p) FROM tb_produtora p WHERE p.Codigo_P = 489), 'Emicida', 650, 'Sobre Crianças', tp_nt_generos('Rap'));
INSERT INTO tb_musica VALUES (6, 'Tudo de Bom', (SELECT REF(p) FROM tb_produtora p WHERE p.Codigo_P = 521), 'Mc Livinho', 651, 'Vagabundo Romântico', tp_nt_generos('Funk'));
INSERT INTO tb_musica VALUES (7, 'Bang', (SELECT REF(p) FROM tb_produtora p WHERE p.Codigo_P = 521), 'Anitta', 1661, 'Bang', NULL);
INSERT INTO tb_musica VALUES (8, 'Linda', (SELECT REF(p) FROM tb_produtora p WHERE p.Codigo_P = 489), 'Projota', 1618, 'A Milenar Arte de Meter o Louco', NULL);
INSERT INTO tb_musica VALUES (9, 'We Will Rock You', (SELECT REF(p) FROM tb_produtora p WHERE p.Codigo_P = 801), 'Queen', 2706, 'News of the World', tp_nt_generos('Rock'));
INSERT INTO tb_musica VALUES (10, 'Pantera Negra', (SELECT REF(p) FROM tb_produtora p WHERE p.Codigo_P = 489), 'Emicida', 1538, '2018', NULL);

--inserindo musicas que partcipam de playlist(8 no total)
INSERT INTO tb_musica_participa_playlist VALUES (
	3,
	8,
	(SELECT REF(m) FROM tb_musica m WHERE m.Codigo_M = 3),
	(SELECT REF(p) FROM tb_playlist p WHERE p.Codigo_Play = 8)
	);

INSERT INTO tb_musica_participa_playlist VALUES (
	10,
	8,
	(SELECT REF(m) FROM tb_musica m WHERE m.Codigo_M = 10),
	(SELECT REF(p) FROM tb_playlist p WHERE p.Codigo_Play = 8)
	);

INSERT INTO tb_musica_participa_playlist VALUES (
	8,
	8,
	(SELECT REF(m) FROM tb_musica m WHERE m.Codigo_M = 8),
	(SELECT REF(p) FROM tb_playlist p WHERE p.Codigo_Play = 8)
	);

INSERT INTO tb_musica_participa_playlist VALUES (
	9,
	2,
	(SELECT REF(m) FROM tb_musica m WHERE m.Codigo_M = 9),
	(SELECT REF(p) FROM tb_playlist p WHERE p.Codigo_Play = 2)
	);

INSERT INTO tb_musica_participa_playlist VALUES (
	4,
	6,
	(SELECT REF(m) FROM tb_musica m WHERE m.Codigo_M = 4),
	(SELECT REF(p) FROM tb_playlist p WHERE p.Codigo_Play = 6)
	);

INSERT INTO tb_musica_participa_playlist VALUES (
	2,
	2,
	(SELECT REF(m) FROM tb_musica m WHERE m.Codigo_M = 1),
	(SELECT REF(p) FROM tb_playlist p WHERE p.Codigo_Play = 1)
	);

INSERT INTO tb_musica_participa_playlist VALUES (
	8,
	1,
	(SELECT REF(m) FROM tb_musica m WHERE m.Codigo_M = 8),
	(SELECT REF(p) FROM tb_playlist p WHERE p.Codigo_Play = 1)
	);

INSERT INTO tb_musica_participa_playlist VALUES (
	10,
	3,
	(SELECT REF(m) FROM tb_musica m WHERE m.Codigo_M = 10),
	(SELECT REF(p) FROM tb_playlist p WHERE p.Codigo_Play = 3)
	);

-- inserindo usuarios que ouviram uma musica(8 no total)
INSERT INTO tb_usuario_ouvir_musica VALUES (
	0,
	'bielsensual',
	(SELECT REF(m) FROM tb_musica m WHERE m.Codigo_M = 0),
	(SELECT REF(u) FROM tb_usuario u WHERE u.Login = 'bielsensual'),
	 to_date ('2018-01-20','yyyy-mm-dd')
	 );


INSERT INTO tb_usuario_ouvir_musica VALUES (
	1,
	'jotaPE',
	(SELECT REF(m) FROM tb_musica m WHERE m.Codigo_M = 1),
	(SELECT REF(u) FROM tb_usuario u WHERE u.Login = 'jotaPE'),
	 to_date ('2018-02-15','yyyy-mm-dd')
	 );

INSERT INTO tb_usuario_ouvir_musica VALUES (
	2,
	'lulinha',
	(SELECT REF(m) FROM tb_musica m WHERE m.Codigo_M = 2),
	(SELECT REF(u) FROM tb_usuario u WHERE u.Login = 'lulinha'),
	 to_date ('2018-03-05','yyyy-mm-dd')
	 );

INSERT INTO tb_usuario_ouvir_musica VALUES (
	2,
	'drmonteiro',
	(SELECT REF(m) FROM tb_musica m WHERE m.Codigo_M = 2),
	(SELECT REF(u) FROM tb_usuario u WHERE u.Login = 'drmonteiro'),
	 to_date ('2018-01-22','yyyy-mm-dd')
	 );

INSERT INTO tb_usuario_ouvir_musica VALUES (
	3,
	'zealunodocin',
	(SELECT REF(m) FROM tb_musica m WHERE m.Codigo_M = 3),
	(SELECT REF(u) FROM tb_usuario u WHERE u.Login = 'zealunodocin'),
	 to_date ('2018-03-23','yyyy-mm-dd')
	 );

INSERT INTO tb_usuario_ouvir_musica VALUES (
	4,
	'tarik',
	(SELECT REF(m) FROM tb_musica m WHERE m.Codigo_M = 4),
	(SELECT REF(u) FROM tb_usuario u WHERE u.Login = 'tarik'),
	 to_date ('2018-04-24','yyyy-mm-dd')
	 );

INSERT INTO tb_usuario_ouvir_musica VALUES (
	5,
	'tarik',
	(SELECT REF(m) FROM tb_musica m WHERE m.Codigo_M = 5),
	(SELECT REF(u) FROM tb_usuario u WHERE u.Login = 'tarik'),
	 to_date ('2018-01-25','yyyy-mm-dd')
	 );

INSERT INTO tb_usuario_ouvir_musica VALUES (
	6,
	'jorginho',
	(SELECT REF(m) FROM tb_musica m WHERE m.Codigo_M = 6),
	(SELECT REF(u) FROM tb_usuario u WHERE u.Login = 'jorginho'),
	 to_date ('2017-11-26','yyyy-mm-dd')
	 );

-----------------------------------
INSERT INTO tb_usuario_ouvir_musica_member VALUES (
	0,
	'bielsensual',
	(SELECT REF(m) FROM tb_musica m WHERE m.Codigo_M = 0),
	(SELECT REF(u) FROM tb_usuario u WHERE u.Login = 'bielsensual'),
	 to_date ('2018-01-20','yyyy-mm-dd')
	 );


INSERT INTO tb_usuario_ouvir_musica_member VALUES (
	1,
	'jotaPE',
	(SELECT REF(m) FROM tb_musica m WHERE m.Codigo_M = 1),
	(SELECT REF(u) FROM tb_usuario u WHERE u.Login = 'jotaPE'),
	 to_date ('2018-02-15','yyyy-mm-dd')
	 );

INSERT INTO tb_usuario_ouvir_musica_member VALUES (
	2,
	'lulinha',
	(SELECT REF(m) FROM tb_musica m WHERE m.Codigo_M = 2),
	(SELECT REF(u) FROM tb_usuario u WHERE u.Login = 'lulinha'),
	 to_date ('2018-03-05','yyyy-mm-dd')
	 );

INSERT INTO tb_usuario_ouvir_musica_member VALUES (
	2,
	'drmonteiro',
	(SELECT REF(m) FROM tb_musica m WHERE m.Codigo_M = 2),
	(SELECT REF(u) FROM tb_usuario u WHERE u.Login = 'drmonteiro'),
	 to_date ('2018-01-22','yyyy-mm-dd')
	 );

INSERT INTO tb_usuario_ouvir_musica_member VALUES (
	3,
	'zealunodocin',
	(SELECT REF(m) FROM tb_musica m WHERE m.Codigo_M = 3),
	(SELECT REF(u) FROM tb_usuario u WHERE u.Login = 'zealunodocin'),
	 to_date ('2018-03-23','yyyy-mm-dd')
	 );

INSERT INTO tb_usuario_ouvir_musica_member VALUES (
	4,
	'tarik',
	(SELECT REF(m) FROM tb_musica m WHERE m.Codigo_M = 4),
	(SELECT REF(u) FROM tb_usuario u WHERE u.Login = 'tarik'),
	 to_date ('2018-04-24','yyyy-mm-dd')
	 );

INSERT INTO tb_usuario_ouvir_musica_member VALUES (
	5,
	'tarik',
	(SELECT REF(m) FROM tb_musica m WHERE m.Codigo_M = 5),
	(SELECT REF(u) FROM tb_usuario u WHERE u.Login = 'tarik'),
	 to_date ('2018-01-25','yyyy-mm-dd')
	 );

INSERT INTO tb_usuario_ouvir_musica_member VALUES (
	6,
	'jorginho',
	(SELECT REF(m) FROM tb_musica m WHERE m.Codigo_M = 6),
	(SELECT REF(u) FROM tb_usuario u WHERE u.Login = 'jorginho'),
	 to_date ('2017-11-26','yyyy-mm-dd')
	 );
	 ---------------------------

-- inserindo videoclipes(4 no total)
INSERT INTO tb_videoclipe VALUES (0, (SELECT REF(m) FROM tb_musica m WHERE m.Codigo_M = 2), 'Bryan Taylor', 160);
INSERT INTO tb_videoclipe VALUES (1, (SELECT REF(m) FROM tb_musica m WHERE m.Codigo_M = 4), NULL, 240);
INSERT INTO tb_videoclipe VALUES (2, (SELECT REF(m) FROM tb_musica m WHERE m.Codigo_M = 10), 'James Stewart', 125);
INSERT INTO tb_videoclipe VALUES (3, (SELECT REF(m) FROM tb_musica m WHERE m.Codigo_M = 5), 'Faustao', 200);
