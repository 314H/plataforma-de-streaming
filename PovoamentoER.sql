 -- inserindo Empresarios (7 no total)
INSERT INTO Empresario (CNPJ, Nome, Email) VALUES ('54716129000120', 'Antonio da Silva', 'antoniosilva@gmail.com');
INSERT INTO Empresario (CNPJ, Nome, Email) VALUES ('35081586000140', 'Paulo Neto', 'paulneto@gmail.com');
INSERT INTO Empresario (CNPJ, Nome, Email) VALUES ('38703183000184', 'Jose Henrique Ribeiro', 'jose.h.ribeiro@gmail.com');
INSERT INTO Empresario (CNPJ, Nome, Email) VALUES ('13938576000146', 'Jorge Cavalcanti', 'jorgecavalcanti@gmail.com');
INSERT INTO Empresario (CNPJ, Nome, Email) VALUES ('91646028000156', 'Igor Ferreira', 'igorferreira@gmail.com');
INSERT INTO Empresario (CNPJ, Nome, Email) VALUES ('81561657000120', 'Oscar Franco', 'oscarfranco@gmail.com');
INSERT INTO Empresario (CNPJ, Nome, Email) VALUES ('81520527000149', 'Joao Paulo Oliveira', 'jp_oliveira@gmail.com');

 -- inserindo Telefones_Empresario (12 no total)
INSERT INTO Telefones_Empresario (CNPJ_Empresario, Telefone) VALUES ('54716129000120', 70688371687);
INSERT INTO Telefones_Empresario (CNPJ_Empresario, Telefone) VALUES ('54716129000120', 11189220045);
INSERT INTO Telefones_Empresario (CNPJ_Empresario, Telefone) VALUES ('35081586000140', 94669225567);
INSERT INTO Telefones_Empresario (CNPJ_Empresario, Telefone) VALUES ('38703183000184', 43281226733);
INSERT INTO Telefones_Empresario (CNPJ_Empresario, Telefone) VALUES ('38703183000184', 24739802361);
INSERT INTO Telefones_Empresario (CNPJ_Empresario, Telefone) VALUES ('38703183000184', 82048463333);
INSERT INTO Telefones_Empresario (CNPJ_Empresario, Telefone) VALUES ('13938576000146', 92235118090);
INSERT INTO Telefones_Empresario (CNPJ_Empresario, Telefone) VALUES ('91646028000156', 88713665833);
INSERT INTO Telefones_Empresario (CNPJ_Empresario, Telefone) VALUES ('91646028000156', 53072795988);
INSERT INTO Telefones_Empresario (CNPJ_Empresario, Telefone) VALUES ('81561657000120', 84366251649);
INSERT INTO Telefones_Empresario (CNPJ_Empresario, Telefone) VALUES ('81520527000149', 71098285561);
INSERT INTO Telefones_Empresario (CNPJ_Empresario, Telefone) VALUES ('81520527000149', 10270523851);

 -- inserindo Artistas (13 no total)
INSERT INTO Artista (CPF, Nome_real, Nome_artistico) VALUES ('98898788010', 'Oliver Santos', 'Mc Livinho');
INSERT INTO Artista (CPF, Nome_real, Nome_artistico) VALUES ('79804406098', 'Larissa Machado', 'Anitta');
INSERT INTO Artista (CPF, Nome_real, Nome_artistico) VALUES ('33745793021', 'Jose Pereira', 'Projota');
INSERT INTO Artista (CPF, Nome_real, Nome_artistico) VALUES ('14551960020', 'Roberto Carlos', NULL);
INSERT INTO Artista (CPF, Nome_real, Nome_artistico) VALUES ('85404802049', 'Wesley Oliveira', 'Wesley Safadao');
INSERT INTO Artista (CPF, Nome_real, Nome_artistico) VALUES ('03883182010', 'Troinha da Silva', 'Troinha');
INSERT INTO Artista (CPF, Nome_real, Nome_artistico) VALUES ('02890971007', 'Thiago Barbosa', 'Thiaguinho');
INSERT INTO Artista (CPF, Nome_real, Nome_artistico) VALUES ('45534928069', 'Gustavo Lima', NULL);
INSERT INTO Artista (CPF, Nome_real, Nome_artistico) VALUES ('02935519019', 'Leandro Roque', 'Emicida');
INSERT INTO Artista (CPF, Nome_real, Nome_artistico) VALUES ('84592495063', 'Jose Walter', 'Mano Walter');
INSERT INTO Artista (CPF, Nome_real, Nome_artistico) VALUES ('90543686563', 'Roger Taylor', 'Queen');
INSERT INTO Artista (CPF, Nome_real, Nome_artistico) VALUES ('89234562178', 'Caetano Veloso', NULL);
INSERT INTO Artista (CPF, Nome_real, Nome_artistico) VALUES ('37130522579', 'Paloma Santos', 'Mc Loma');

 -- inserindo Produtoras (5 no total)
INSERT INTO Produtora (Codigo_P, Nome, CNPJ) VALUES (521, 'Music Productions', '26318191000128');
INSERT INTO Produtora (Codigo_P, Nome, CNPJ) VALUES (489, 'House Produtora', '35708030000131');
INSERT INTO Produtora (Codigo_P, Nome, CNPJ) VALUES (801, 'International Productions', '34829949000110');
INSERT INTO Produtora (Codigo_P, Nome, CNPJ) VALUES (631, 'Brasil Produtora', '70557749000110');
INSERT INTO Produtora (Codigo_P, Nome, CNPJ) VALUES (366, 'Musica Popular Brasileira', '23455437424554');

 -- inserindo Contratos(13 no total)
INSERT INTO Contrato_Artista_Produtora (CPF_Artista, Codigo_Produtora, CNPJ_Empresario) VALUES ('98898788010', 521, '54716129000120');
INSERT INTO Contrato_Artista_Produtora (CPF_Artista, Codigo_Produtora, CNPJ_Empresario) VALUES ('79804406098', 521, NULL);
INSERT INTO Contrato_Artista_Produtora (CPF_Artista, Codigo_Produtora, CNPJ_Empresario) VALUES ('33745793021', 489, '35081586000140');
INSERT INTO Contrato_Artista_Produtora (CPF_Artista, Codigo_Produtora, CNPJ_Empresario) VALUES ('03883182010', 521, NULL);
INSERT INTO Contrato_Artista_Produtora (CPF_Artista, Codigo_Produtora, CNPJ_Empresario) VALUES ('85404802049', 801, '38703183000184');
INSERT INTO Contrato_Artista_Produtora (CPF_Artista, Codigo_Produtora, CNPJ_Empresario) VALUES ('02890971007', 631, NULL);
INSERT INTO Contrato_Artista_Produtora (CPF_Artista, Codigo_Produtora, CNPJ_Empresario) VALUES ('45534928069', 631, '13938576000146');
INSERT INTO Contrato_Artista_Produtora (CPF_Artista, Codigo_Produtora, CNPJ_Empresario) VALUES ('02935519019', 489, '81561657000120');
INSERT INTO Contrato_Artista_Produtora (CPF_Artista, Codigo_Produtora, CNPJ_Empresario) VALUES ('84592495063', 521, '35081586000140');
INSERT INTO Contrato_Artista_Produtora (CPF_Artista, Codigo_Produtora, CNPJ_Empresario) VALUES ('03883182010', 631, NULL);
INSERT INTO Contrato_Artista_Produtora (CPF_Artista, Codigo_Produtora, CNPJ_Empresario) VALUES ('90543686563', 801, '13938576000146');
INSERT INTO Contrato_Artista_Produtora (CPF_Artista, Codigo_Produtora, CNPJ_Empresario) VALUES ('37130522579', 631, NULL);
INSERT INTO Contrato_Artista_Produtora (CPF_Artista, Codigo_Produtora, CNPJ_Empresario) VALUES ('89234562178', 366, '13938576000146');


 -- inserindo Usuario(20 no total)
 INSERT INTO Usuario (Login, Senha, Email) VALUES ('robsonfidalgo','balasoft123','robsonfidalgo@gmail.com');
 INSERT INTO Usuario (Login, Senha, Email) VALUES ('bielsensual', '123carona123', 'biel_doido@hotmail.com');
 INSERT INTO Usuario (Login, Senha, Email) VALUES ('jotaPE', '9QEQSHwcxuFXqwPr', 'joaopedrocosta94@gmail.com');
 INSERT INTO Usuario (Login, Senha, Email) VALUES ('tarik', '36325654', 'pedro_silva@hotmail.com');
 INSERT INTO Usuario (Login, Senha, Email) VALUES ('americoBolsonaro', 'bolsominion', 'bolsonaro2018@gmail.com');
 INSERT INTO Usuario (Login, Senha, Email) VALUES ('lulinha', 'ehgolpesim', 'caioalmeida_@yahoo.com.br');
 INSERT INTO Usuario (Login, Senha, Email) VALUES ('luladrao', 'rouboumeucorassaum', 'dilminha@cin.ufpe.br');
 INSERT INTO Usuario (Login, Senha, Email) VALUES ('trolldanet', '123456', 'ijmg@cin.ufpe.br');
 INSERT INTO Usuario (Login, Senha, Email) VALUES ('joao_almeida', 'Cin9232', 'joao_almeida@yahoo.com.br');
 INSERT INTO Usuario (Login, Senha, Email) VALUES ('bolsominion2018', 'mariadorosarios2', 'bolsolula@gmail.com');
 INSERT INTO Usuario (Login, Senha, Email) VALUES ('acmneto', 'EhBrincadeira123', 'acmn@cac.ufpe.br');
 INSERT INTO Usuario (Login, Senha, Email) VALUES ('cepodemadeira', 'BemSocado', 'cepo_madeira@gmail.com');
 INSERT INTO Usuario (Login, Senha, Email) VALUES ('pablovittar', 'oiamigxs', 'anitta@seinao.ufpe.br');
 INSERT INTO Usuario (Login, Senha, Email) VALUES ('nauticocampeao2018', 'Hexaehluxo', 'nauticocampeao@gmail.com');
 INSERT INTO Usuario (Login, Senha, Email) VALUES ('zealunodocin', 'soupaguso', 'paguso@cin.ufpe.br');
 INSERT INTO Usuario (Login, Senha, Email) VALUES ('drmonteiro', 'Fisica<3', 'drmonteiro@yahoo.com.br');
 INSERT INTO Usuario (Login, Senha, Email) VALUES ('andrezinhuhn', 'aMetaEh5', 'andre@gmail.com');
 INSERT INTO Usuario (Login, Senha, Email) VALUES ('meu_nome_eh_julia', 'tuntstunts', 'julia.alcantra@yahoo.com.br');
 INSERT INTO Usuario (Login, Senha, Email) VALUES ('jorginho', 'senhaDe1a10', 'jorge.almeida@gmail.com');
 INSERT INTO Usuario (Login, Senha, Email) VALUES ('hta', 'aGatinha123', 'agata@hotmail.com');

-- inserindo Cliente Servidor(7 no total)
 INSERT INTO Cliente_Servidor (Login_Cliente , Login_Servidor) VALUES ('robsonfidalgo', 'jotaPE');
 INSERT INTO Cliente_Servidor (Login_Cliente , Login_Servidor) VALUES ('tarik', 'jorginho');
 INSERT INTO Cliente_Servidor (Login_Cliente , Login_Servidor) VALUES ('acmneto', 'trolldanet');
 INSERT INTO Cliente_Servidor (Login_Cliente , Login_Servidor) VALUES ('jotaPE', 'tarik');
 INSERT INTO Cliente_Servidor (Login_Cliente , Login_Servidor) VALUES ('joao_almeida', 'robsonfidalgo');
 INSERT INTO Cliente_Servidor (Login_Cliente , Login_Servidor) VALUES ('luladrao', 'lulinha');
 INSERT INTO Cliente_Servidor (Login_Cliente , Login_Servidor) VALUES ('hta', 'pablovittar');
 
 -- inserindo Premium(10 no total)
 INSERT INTO Premium (Login_Premium, Cartao, CEP, Descricao_End) VALUES ('jorginho', '4024007116609222', '51044904', 'Edificio 342');
 INSERT INTO Premium (Login_Premium, Cartao, CEP, Descricao_End) VALUES ('hta', '4024007116609222', '51044904', 'Ed. 360');
 INSERT INTO Premium (Login_Premium, Cartao, CEP, Descricao_End) VALUES ('bielsensual', '4556950364649869', '54204201', '');
 INSERT INTO Premium (Login_Premium, Cartao, CEP, Descricao_End) VALUES ('robsonfidalgo', '4024007192270212', NULL, NULL);
 INSERT INTO Premium (Login_Premium, Cartao, CEP, Descricao_End) VALUES ('luladrao', '4485027760394881', '25728495', NULL);
 INSERT INTO Premium (Login_Premium, Cartao, CEP, Descricao_End) VALUES ('andrezinhuhn', '5469807625057436', NULL, 'Rua Jose dos Cantos 920 apart 701');
 INSERT INTO Premium (Login_Premium, Cartao, CEP, Descricao_End) VALUES ('nauticocampeao2018', '5469807625057436', '94829492', NULL);
 INSERT INTO Premium (Login_Premium, Cartao, CEP, Descricao_End) VALUES ('tarik', '6363696248306790', '59301020', 'Avenida Coronel Machado 1063');
 INSERT INTO Premium (Login_Premium, Cartao, CEP, Descricao_End) VALUES ('drmonteiro', '4532291325346', NULL, 'Edificio 12001 apartamento 1301');
 INSERT INTO Premium (Login_Premium, Cartao, CEP, Descricao_End) VALUES ('zealunodocin', '2333593492342942', '09583019', NULL);
 
 -- inserindo telefones dos Premium (12 no total)
 INSERT INTO Telefone_Premium (Login_Premium, Telefone) VALUES ('jorginho', 96740127);
 INSERT INTO Telefone_Premium (Login_Premium, Telefone) VALUES ('hta', 80215288);
 INSERT INTO Telefone_Premium (Login_Premium, Telefone) VALUES ('bielsensual', 81010411);
 INSERT INTO Telefone_Premium (Login_Premium, Telefone) VALUES ('robsonfidalgo', 97638647);
 INSERT INTO Telefone_Premium (Login_Premium, Telefone) VALUES ('robsonfidalgo', 93057912);
 INSERT INTO Telefone_Premium (Login_Premium, Telefone) VALUES ('luladrao', 88540632);
 INSERT INTO Telefone_Premium (Login_Premium, Telefone) VALUES ('drmonteiro', 99062236);
 INSERT INTO Telefone_Premium (Login_Premium, Telefone) VALUES ('nauticocampeao2018', 99843215);
 INSERT INTO Telefone_Premium (Login_Premium, Telefone) VALUES ('andrezinhuhn', 99764312);
 INSERT INTO Telefone_Premium (Login_Premium, Telefone) VALUES ('drmonteiro', 985571650);
 INSERT INTO Telefone_Premium (Login_Premium, Telefone) VALUES ('luladrao', 997954576);
 INSERT INTO Telefone_Premium (Login_Premium, Telefone) VALUES ('jorginho', 31339596);
 
 -- inserindo Dispositivo dos Premium (13 no total)
 INSERT INTO Dispositivo (Login_Premium, Codigo_D, Modelo, Marca) VALUES('robsonfidalgo', 0, 'Galaxy s7','Samsung');
 INSERT INTO Dispositivo (Login_Premium, Codigo_D, Modelo, Marca) VALUES('robsonfidalgo', 1, 'Galaxy prime','Samsung');
 INSERT INTO Dispositivo (Login_Premium, Codigo_D, Modelo, Marca) VALUES('drmonteiro', 2, 'Moto G5','Motorola');
 INSERT INTO Dispositivo (Login_Premium, Codigo_D, Modelo, Marca) VALUES('drmonteiro', 3, 'LG J8','LG');
 INSERT INTO Dispositivo (Login_Premium, Codigo_D, Modelo, Marca) VALUES('luladrao', 4, 'Iphone 6s','Apple');
 INSERT INTO Dispositivo (Login_Premium, Codigo_D, Modelo, Marca) VALUES('zealunodocin', 5, 'Iphone X','Apple');
 INSERT INTO Dispositivo (Login_Premium, Codigo_D, Modelo, Marca) VALUES('zealunodocin', 6, 'Xperia XZ','Sony');
 INSERT INTO Dispositivo (Login_Premium, Codigo_D, Modelo, Marca) VALUES('bielsensual', 7, NULL,'Sony');
 INSERT INTO Dispositivo (Login_Premium, Codigo_D, Modelo, Marca) VALUES('bielsensual', 8, 'Mi 6','Xiaomi');
 INSERT INTO Dispositivo (Login_Premium, Codigo_D, Modelo, Marca) VALUES('jorginho', 9, 'Iphone 8','Apple');
 INSERT INTO Dispositivo (Login_Premium, Codigo_D, Modelo, Marca) VALUES('jorginho', 10, 'Lenovo K5','Lenovo');
 INSERT INTO Dispositivo (Login_Premium, Codigo_D, Modelo, Marca) VALUES('jorginho', 11, 'Iphone X','Apple');
 INSERT INTO Dispositivo (Login_Premium, Codigo_D, Modelo, Marca) VALUES('robsonfidalgo', 12, 'LG K10','LG');

 -- inserindo Playlists (10 no total)
INSERT INTO Playlist (Codigo_Play, Nome_criador, Nome_playlist) VALUES ( 0, 'luladrao', 'Músicas para chorar');
INSERT INTO Playlist (Codigo_Play, Nome_criador, Nome_playlist) VALUES ( 1, 'andrezinhuhn', 'Sabado a noite');
INSERT INTO Playlist (Codigo_Play, Nome_criador, Nome_playlist) VALUES ( 2, 'zealunodocin', 'Sextou!');
INSERT INTO Playlist (Codigo_Play, Nome_criador, Nome_playlist) VALUES ( 3, 'andrezinhuhn', 'Dia de chuva');
INSERT INTO Playlist (Codigo_Play, Nome_criador, Nome_playlist) VALUES ( 4, 'tarik', 'Oh happy day!');
INSERT INTO Playlist (Codigo_Play, Nome_criador, Nome_playlist) VALUES ( 5, 'nauticocampeao2018', 'Eletrohits2000');
INSERT INTO Playlist (Codigo_Play, Nome_criador, Nome_playlist) VALUES ( 6, 'bielsensual', 'Sofrência');
INSERT INTO Playlist (Codigo_Play, Nome_criador, Nome_playlist) VALUES ( 7, 'bielsensual', 'This is Rock n Roll, baby!');
INSERT INTO Playlist (Codigo_Play, Nome_criador, Nome_playlist) VALUES ( 8, 'andrezinhuhn', 'Aldair Playboy');
INSERT INTO Playlist (Codigo_Play, Nome_criador, Nome_playlist) VALUES ( 9, 'jorginho', 'Festinha hetero top');

-- inserindo gêneros das playlists(12 no total)
INSERT INTO Generos_Playlist (Codigo_Play, Genero) VALUES (0, 'MPB');
INSERT INTO Generos_Playlist (Codigo_Play, Genero) VALUES (0, 'Brega');
INSERT INTO Generos_Playlist (Codigo_Play, Genero) VALUES (1, 'Forro');
INSERT INTO Generos_Playlist (Codigo_Play, Genero) VALUES (1, 'Funk');
INSERT INTO Generos_Playlist (Codigo_Play, Genero) VALUES (2, 'Eletronica');
INSERT INTO Generos_Playlist (Codigo_Play, Genero) VALUES (3, 'Rock');  
INSERT INTO Generos_Playlist (Codigo_Play, Genero) VALUES (4, 'MPB');
INSERT INTO Generos_Playlist (Codigo_Play, Genero) VALUES (0, 'Pagode');
INSERT INTO Generos_Playlist (Codigo_Play, Genero) VALUES (6, 'Brega');
INSERT INTO Generos_Playlist (Codigo_Play, Genero) VALUES (8, 'Brega');
INSERT INTO Generos_Playlist (Codigo_Play, Genero) VALUES (9, 'Forro');
INSERT INTO Generos_Playlist (Codigo_Play, Genero) VALUES (9, 'Sertanejo');     
                                                                 
-- inserindo acessos a playlists(20 no total)
INSERT INTO Usuario_Acessa_Playlist (Login_Usuario, Codigo_Play) VALUES ('jotaPE', 0);
INSERT INTO Usuario_Acessa_Playlist (Login_Usuario, Codigo_Play) VALUES ('joao_almeida', 0);
INSERT INTO Usuario_Acessa_Playlist (Login_Usuario, Codigo_Play) VALUES ('americoBolsonaro', 0);
INSERT INTO Usuario_Acessa_Playlist (Login_Usuario, Codigo_Play) VALUES ('robsonfidalgo', 5);
INSERT INTO Usuario_Acessa_Playlist (Login_Usuario, Codigo_Play) VALUES ('drmonteiro', 3);
INSERT INTO Usuario_Acessa_Playlist (Login_Usuario, Codigo_Play) VALUES ('jorginho', 2);
INSERT INTO Usuario_Acessa_Playlist (Login_Usuario, Codigo_Play) VALUES ('pablovittar', 6);
INSERT INTO Usuario_Acessa_Playlist (Login_Usuario, Codigo_Play) VALUES ('cepodemadeira', 7);
INSERT INTO Usuario_Acessa_Playlist (Login_Usuario, Codigo_Play) VALUES ('meu_nome_eh_julia', 8);
INSERT INTO Usuario_Acessa_Playlist (Login_Usuario, Codigo_Play) VALUES ('acmneto', 2);
INSERT INTO Usuario_Acessa_Playlist (Login_Usuario, Codigo_Play) VALUES ('acmneto', 4);
INSERT INTO Usuario_Acessa_Playlist (Login_Usuario, Codigo_Play) VALUES ('meu_nome_eh_julia', 5);
INSERT INTO Usuario_Acessa_Playlist (Login_Usuario, Codigo_Play) VALUES ('robsonfidalgo', 4);
INSERT INTO Usuario_Acessa_Playlist (Login_Usuario, Codigo_Play) VALUES ('trolldanet', 3);
INSERT INTO Usuario_Acessa_Playlist (Login_Usuario, Codigo_Play) VALUES ('lulinha', 6);
INSERT INTO Usuario_Acessa_Playlist (Login_Usuario, Codigo_Play) VALUES ('zealunodocin', 3);
INSERT INTO Usuario_Acessa_Playlist (Login_Usuario, Codigo_Play) VALUES ('meu_nome_eh_julia', 2);
INSERT INTO Usuario_Acessa_Playlist (Login_Usuario, Codigo_Play) VALUES ('tarik', 7);
INSERT INTO Usuario_Acessa_Playlist (Login_Usuario, Codigo_Play) VALUES ('trolldanet', 9);
INSERT INTO Usuario_Acessa_Playlist (Login_Usuario, Codigo_Play) VALUES ('tarik', 1);

-- inserindo musicas (25 no total)   
INSERT INTO Musica (Codigo_M, Nome, Codigo_Produtora, Artista, Valor_Licenca, Album) VALUES (0, 'Balanca, Balanca', 631, 'Troinha', 350, NULL);
INSERT INTO Musica (Codigo_M, Nome, Codigo_Produtora, Artista, Valor_Licenca, Album) VALUES (1, 'Cheia de Marra', 521, 'Mc Livinho', 272, 'Vagabundo Romantico');
INSERT INTO Musica (Codigo_M, Nome, Codigo_Produtora, Artista, Valor_Licenca, Album) VALUES (2, 'Bohemian Rhapsody', 801, 'Queen', 2575, 'A Night at the Opera'); 
INSERT INTO Musica (Codigo_M, Nome, Codigo_Produtora, Artista, Valor_Licenca, Album) VALUES (3, 'Papel Mache', 631, 'Thiaguinho', 494, 'Tardezinha');
INSERT INTO Musica (Codigo_M, Nome, Codigo_Produtora, Artista, Valor_Licenca, Album) VALUES (4, 'Sozinho', 366, 'Caetano Veloso', 1539, 'Prenda Minha'); 
INSERT INTO Musica (Codigo_M, Nome, Codigo_Produtora, Artista, Valor_Licenca, Album) VALUES (5, 'Baiana', 489, 'Emicida', 650, 'Sobre Crianças');                                                                 
INSERT INTO Musica (Codigo_M, Nome, Codigo_Produtora, Artista, Valor_Licenca, Album) VALUES (6, 'Tudo de Bom', 521, 'Mc Livinho', 651, 'Vagabundo Romântico');  
INSERT INTO Musica (Codigo_M, Nome, Codigo_Produtora, Artista, Valor_Licenca, Album) VALUES (7, 'Bang', 521, 'Anitta', 1661, 'Bang');
INSERT INTO Musica (Codigo_M, Nome, Codigo_Produtora, Artista, Valor_Licenca, Album) VALUES (8, 'Linda', 489, 'Projota', 1618, 'A Milenar Arte de Meter o Louco');
INSERT INTO Musica (Codigo_M, Nome, Codigo_Produtora, Artista, Valor_Licenca, Album) VALUES (9, 'We Will Rock You', 801, 'Queen', 2706, 'News of the World');
INSERT INTO Musica (Codigo_M, Nome, Codigo_Produtora, Artista, Valor_Licenca, Album) VALUES (10, 'Pantera Negra', 489, 'Emicida', 1538, '2018');
INSERT INTO Musica (Codigo_M, Nome, Codigo_Produtora, Artista, Valor_Licenca, Album) VALUES (11, 'Essa Mina e Louca', 521, 'Anitta', 1258, 'Bang');
INSERT INTO Musica (Codigo_M, Nome, Codigo_Produtora, Artista, Valor_Licenca, Album) VALUES (12, 'Vai Descendo', 631, 'Troinha', 574, NULL);                                                                 
INSERT INTO Musica (Codigo_M, Nome, Codigo_Produtora, Artista, Valor_Licenca, Album) VALUES (13, 'Faz Parte', 489, 'Projota', 606, '3Fs');  
INSERT INTO Musica (Codigo_M, Nome, Codigo_Produtora, Artista, Valor_Licenca, Album) VALUES (14, 'Emicidio', 489, 'Emicida', 1047, 'Emicidio');
INSERT INTO Musica (Codigo_M, Nome, Codigo_Produtora, Artista, Valor_Licenca, Album) VALUES (15, 'Energia Surreal', 631, 'Thiaguinho', 971, 'So Vem!');
INSERT INTO Musica (Codigo_M, Nome, Codigo_Produtora, Artista, Valor_Licenca, Album) VALUES (16, 'Another One Bites the Dust', 801, 'Queen', 2000, 'The Game');
INSERT INTO Musica (Codigo_M, Nome, Codigo_Produtora, Artista, Valor_Licenca, Album) VALUES (17, 'Samurai', 489, 'Projota', 680, 'Realizando Sonhos');
INSERT INTO Musica (Codigo_M, Nome, Codigo_Produtora, Artista, Valor_Licenca, Album) VALUES (18, 'Voce Nao Me Ensinou A Te Esquecer', 366, 'Caetano Veloso', 1630, 'Lisbela e o prisioneiro');
INSERT INTO Musica (Codigo_M, Nome, Codigo_Produtora, Artista, Valor_Licenca, Album) VALUES (19, 'Cheio de Marra', 521, 'Mc Livinho', 456, 'Vagabundo Romantico');                                                                 
INSERT INTO Musica (Codigo_M, Nome, Codigo_Produtora, Artista, Valor_Licenca, Album) VALUES (20, 'Laranjinha', 801, 'Wesley Safadao', 2855, 'WS In Miami Beach');  
INSERT INTO Musica (Codigo_M, Nome, Codigo_Produtora, Artista, Valor_Licenca, Album) VALUES (21, 'Nao Deixo Nao', 521, 'Mano Walter', 778, 'Ao vivo em Maceio');
INSERT INTO Musica (Codigo_M, Nome, Codigo_Produtora, Artista, Valor_Licenca, Album) VALUES (22, 'Apelido Carinhoso', 631, 'Gustavo Lima', 693, 'Buteco do Gustavo Lima, Vol. 2');
INSERT INTO Musica (Codigo_M, Nome, Codigo_Produtora, Artista, Valor_Licenca, Album) VALUES (23, 'Alô Dono do Bar', 801, 'Wesley Safadao', 2274, 'Diferente Nao, Estranho');
INSERT INTO Musica (Codigo_M, Nome, Codigo_Produtora, Artista, Valor_Licenca, Album) VALUES (24, 'Pode Balançar', 521, 'Troinha', 295, NULL);

-- inserindo Musicas Participantes numa Playlist(13 no total)
INSERT INTO Musica_Participa_Playlist (Codigo_M, Codigo_Play ) VALUES (3,8);
INSERT INTO Musica_Participa_Playlist (Codigo_M, Codigo_Play ) VALUES (12,8);
INSERT INTO Musica_Participa_Playlist (Codigo_M, Codigo_Play ) VALUES (24,8);
INSERT INTO Musica_Participa_Playlist (Codigo_M, Codigo_Play ) VALUES (15,2);
INSERT INTO Musica_Participa_Playlist (Codigo_M, Codigo_Play ) VALUES (23,2);
INSERT INTO Musica_Participa_Playlist (Codigo_M, Codigo_Play ) VALUES (22,6);
INSERT INTO Musica_Participa_Playlist (Codigo_M, Codigo_Play ) VALUES (2,7);
INSERT INTO Musica_Participa_Playlist (Codigo_M, Codigo_Play ) VALUES (9,7);
INSERT INTO Musica_Participa_Playlist (Codigo_M, Codigo_Play ) VALUES (22,3);
INSERT INTO Musica_Participa_Playlist (Codigo_M, Codigo_Play ) VALUES (21,2);
INSERT INTO Musica_Participa_Playlist (Codigo_M, Codigo_Play ) VALUES (15,1);
INSERT INTO Musica_Participa_Playlist (Codigo_M, Codigo_Play ) VALUES (11,1);
INSERT INTO Musica_Participa_Playlist (Codigo_M, Codigo_Play ) VALUES (8,1);

-- inserindo Usuarios que ouviram uma Musica(12 no total)
INSERT INTO Usuario_Ouvir_Musica (Codigo_M, Login, Data_Ouvir) VALUES (0,'bielsensual',  to_date ('2018-01-20', 'yyyy-mm-dd'));
INSERT INTO Usuario_Ouvir_Musica (Codigo_M, Login, Data_Ouvir) VALUES (1,'jotaPE', to_date ('2018-02-15', 'yyyy-mm-dd'));
INSERT INTO Usuario_Ouvir_Musica (Codigo_M, Login, Data_Ouvir) VALUES (2,'lulinha', to_date ('2018-03-05', 'yyyy-mm-dd'));
INSERT INTO Usuario_Ouvir_Musica (Codigo_M, Login, Data_Ouvir) VALUES (2,'drmonteiro', to_date ('2018-01-22', 'yyyy-mm-dd'));
INSERT INTO Usuario_Ouvir_Musica (Codigo_M, Login, Data_Ouvir) VALUES (3,'zealunodocin', to_date ('2018-03-23', 'yyyy-mm-dd'));
INSERT INTO Usuario_Ouvir_Musica (Codigo_M, Login, Data_Ouvir) VALUES (4,'tarik', to_date ('2018-04-24', 'yyyy-mm-dd'));
INSERT INTO Usuario_Ouvir_Musica (Codigo_M, Login, Data_Ouvir) VALUES (5,'tarik', to_date ('2018-01-25', 'yyyy-mm-dd'));
INSERT INTO Usuario_Ouvir_Musica (Codigo_M, Login, Data_Ouvir) VALUES (6,'jorginho', to_date ('2017-11-26', 'yyyy-mm-dd'));
INSERT INTO Usuario_Ouvir_Musica (Codigo_M, Login, Data_Ouvir) VALUES (6,'acmneto', to_date ('2017-10-12', 'yyyy-mm-dd'));
INSERT INTO Usuario_Ouvir_Musica (Codigo_M, Login, Data_Ouvir) VALUES (9,'hta', to_date ('2017-03-14', 'yyyy-mm-dd'));
INSERT INTO Usuario_Ouvir_Musica (Codigo_M, Login, Data_Ouvir) VALUES (11,'bielsensual', to_date ('2017-09-18', 'yyyy-mm-dd'));
INSERT INTO Usuario_Ouvir_Musica (Codigo_M, Login, Data_Ouvir) VALUES (13,'trolldanet', to_date ('2017-10-01', 'yyyy-mm-dd'));

-- inserindo Genero das Musicas(10 no total)
INSERT INTO Generos_Musica (Codigo_M, Genero) VALUES (0, 'Brega');
INSERT INTO Generos_Musica (Codigo_M, Genero) VALUES (2, 'Rock');
INSERT INTO Generos_Musica (Codigo_M, Genero) VALUES (4, 'MPB');
INSERT INTO Generos_Musica (Codigo_M, Genero) VALUES (5, 'Rap');
INSERT INTO Generos_Musica (Codigo_M, Genero) VALUES (9, 'Rock');
INSERT INTO Generos_Musica (Codigo_M, Genero) VALUES (12, 'Brega');
INSERT INTO Generos_Musica (Codigo_M, Genero) VALUES (15, 'Pagode');
INSERT INTO Generos_Musica (Codigo_M, Genero) VALUES (17, 'Rap');
INSERT INTO Generos_Musica (Codigo_M, Genero) VALUES (20, 'Forro');
INSERT INTO Generos_Musica (Codigo_M, Genero) VALUES (21, 'Forro');

-- inserindo Videoclipes(6 no total)
INSERT INTO Videoclipe (Codigo_V, Codigo_M, Diretor, Duracao) VALUES (0, 2, 'Bryan Taylor', 160);
INSERT INTO Videoclipe (Codigo_V, Codigo_M, Diretor, Duracao) VALUES (1, 4, NULL, 240);
INSERT INTO Videoclipe (Codigo_V, Codigo_M, Diretor, Duracao) VALUES (2, 12, 'Kondzila', 300);
INSERT INTO Videoclipe (Codigo_V, Codigo_M, Diretor, Duracao) VALUES (3, 21, 'Kondzila',253);
INSERT INTO Videoclipe (Codigo_V, Codigo_M, Diretor, Duracao) VALUES (4, 10, NULL, 125);
INSERT INTO Videoclipe (Codigo_V, Codigo_M, Diretor, Duracao) VALUES (5, 23, 'Kondzila', 246);

-- inserindo Usuarios Premium que vizualizam um Videoclipe(10 no total)
INSERT INTO Premium_Visualiza_Videoclipe (Login_Premium, Codigo_V) VALUES ('jorginho', 0);
INSERT INTO Premium_Visualiza_Videoclipe (Login_Premium, Codigo_V) VALUES ('hta', 0);
INSERT INTO Premium_Visualiza_Videoclipe (Login_Premium, Codigo_V) VALUES ('hta', 1);
INSERT INTO Premium_Visualiza_Videoclipe (Login_Premium, Codigo_V) VALUES ('bielsensual', 1);
INSERT INTO Premium_Visualiza_Videoclipe (Login_Premium, Codigo_V) VALUES ('tarik', 2);
INSERT INTO Premium_Visualiza_Videoclipe (Login_Premium, Codigo_V) VALUES ('tarik', 5);
INSERT INTO Premium_Visualiza_Videoclipe (Login_Premium, Codigo_V) VALUES ('luladrao', 4);
INSERT INTO Premium_Visualiza_Videoclipe (Login_Premium, Codigo_V) VALUES ('drmonteiro', 3);
INSERT INTO Premium_Visualiza_Videoclipe (Login_Premium, Codigo_V) VALUES ('tarik', 3);
INSERT INTO Premium_Visualiza_Videoclipe (Login_Premium, Codigo_V) VALUES ('drmonteiro', 0);
INSERT INTO Premium_Visualiza_Videoclipe (Login_Premium, Codigo_V) VALUES ('robsonfidalgo', 2);

-- inserindo Premiums criando/editando uma Playlist(15 no total)
INSERT INTO Premium_Cria_Edita_Playlist (Login_Premium, Codigo_M, Codigo_Play) VALUES ('jorginho', 3, 8);
INSERT INTO Premium_Cria_Edita_Playlist (Login_Premium, Codigo_M, Codigo_Play) VALUES ('tarik', 12,8);
INSERT INTO Premium_Cria_Edita_Playlist (Login_Premium, Codigo_M, Codigo_Play) VALUES ('tarik', 24,8);
INSERT INTO Premium_Cria_Edita_Playlist (Login_Premium, Codigo_M, Codigo_Play) VALUES ('drmonteiro', 15,2);
INSERT INTO Premium_Cria_Edita_Playlist (Login_Premium, Codigo_M, Codigo_Play) VALUES ('drmonteiro', 23,2);
INSERT INTO Premium_Cria_Edita_Playlist (Login_Premium, Codigo_M, Codigo_Play) VALUES ('drmonteiro', 22,6);
INSERT INTO Premium_Cria_Edita_Playlist (Login_Premium, Codigo_M, Codigo_Play) VALUES('andrezinhuhn', 2,7);
INSERT INTO Premium_Cria_Edita_Playlist (Login_Premium, Codigo_M, Codigo_Play) VALUES('andrezinhuhn', 9,7);
INSERT INTO Premium_Cria_Edita_Playlist (Login_Premium, Codigo_M, Codigo_Play) VALUES('bielsensual', 22,3);
INSERT INTO Premium_Cria_Edita_Playlist (Login_Premium, Codigo_M, Codigo_Play) VALUES('bielsensual', 21,2);
INSERT INTO Premium_Cria_Edita_Playlist (Login_Premium, Codigo_M, Codigo_Play) VALUES('bielsensual', 15, 1);
INSERT INTO Premium_Cria_Edita_Playlist (Login_Premium, Codigo_M, Codigo_Play) VALUES('robsonfidalgo', 11, 1);
INSERT INTO Premium_Cria_Edita_Playlist (Login_Premium, Codigo_M, Codigo_Play) VALUES('robsonfidalgo', 8, 1);
INSERT INTO Premium_Cria_Edita_Playlist (Login_Premium, Codigo_M, Codigo_Play) VALUES('luladrao', 15, 1);
INSERT INTO Premium_Cria_Edita_Playlist (Login_Premium, Codigo_M, Codigo_Play) VALUES('nauticocampeao2018', 15, 1);
