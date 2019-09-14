REM   Script: typesATUAL
REM   atual

CREATE OR REPLACE TYPE tp_nt_telefones AS VARRAY(4) OF VARCHAR2(9); --telefones como varray
/

CREATE OR REPLACE TYPE tp_empresario AS OBJECT (
  CNPJ VARCHAR2(35), 
  Nome VARCHAR2(35), 
  Email VARCHAR2(35),
    Telefones tp_nt_telefones
)FINAL;
/

CREATE OR REPLACE TYPE tp_artista AS OBJECT (
  CPF VARCHAR2(35),  
  Nome_real VARCHAR2(35),  
  Nome_artistico VARCHAR2(35) 
)FINAL;
/

CREATE OR REPLACE TYPE tp_produtora AS OBJECT (  
  Codigo_P NUMBER,  
  Nome VARCHAR2(35),  
  CNPJ VARCHAR2(35)
)FINAL;
/

CREATE OR REPLACE TYPE tp_contrato_artista_produtora AS OBJECT (  
  CPF_Artista VARCHAR2 (35),
  Codigo_Produtora NUMBER,
  ref_artista REF tp_artista,   
  ref_produtora REF tp_produtora,  
  ref_empresario REF tp_empresario 
)FINAL;
/

CREATE OR REPLACE TYPE tp_usuario AS OBJECT (
  Login VARCHAR2 (35),
  Senha VARCHAR2 (35),
  Email VARCHAR2 (35),
  CONSTRUCTOR FUNCTION tp_usuario (Login VARCHAR2, Senha VARCHAR2, Email VARCHAR2) RETURN SELF AS RESULT,
  MEMBER FUNCTION infos RETURN VARCHAR2
)NOT FINAL;
/

CREATE OR REPLACE TYPE BODY tp_usuario AS
  CONSTRUCTOR FUNCTION tp_usuario (Login VARCHAR2, Senha VARCHAR2, Email VARCHAR2)
  RETURN SELF AS RESULT IS
  BEGIN
    SELF.Login := '@'||Login;
    SELF.Senha := Senha;
    SELF.Email := Email;
    RETURN;
  END;

  MEMBER FUNCTION infos RETURN VARCHAR2 IS 
  BEGIN
    RETURN 'Login: '||SELF.Login||', Email: '||SELF.Email;
  END;
END;
/

CREATE OR REPLACE TYPE tp_endereco AS OBJECT (
  CEP VARCHAR2(35),
  Descricao VARCHAR2 (35)
)FINAL;
/

CREATE OR REPLACE TYPE tp_premium UNDER tp_usuario (
  Cartao VARCHAR2(35),
  Endereco tp_endereco,
  Telefones tp_nt_telefones,
  OVERRIDING MEMBER FUNCTION infos RETURN VARCHAR2
)FINAL;
/

CREATE OR REPLACE TYPE BODY tp_premium AS
  OVERRIDING MEMBER FUNCTION infos RETURN VARCHAR2 IS 
  BEGIN
    RETURN 'Login: '||SELF.Login||', Email: '||SELF.Email||', Cartão: '||SELF.Cartao;
  END;
END;
/

CREATE OR REPLACE TYPE tp_cliente_servidor AS OBJECT (
  Login_Servidor VARCHAR2 (35),
  Login_Cliente VARCHAR2 (35),
  ref_cliente REF tp_usuario,
  ref_servidor REF tp_usuario
)FINAL;
/

CREATE OR REPLACE TYPE tp_dispositivo AS OBJECT (
  Codigo_D NUMBER,
  Modelo VARCHAR2 (35),
  Marca VARCHAR2 (35),
  Login_Premium VARCHAR2 (35),
  ref_premium REF tp_premium
)FINAL;
/

CREATE OR REPLACE TYPE tp_nt_dispositivos AS TABLE OF tp_dispositivo; --dispositivos como nested table
/

CREATE OR REPLACE TYPE tp_nt_generos AS TABLE OF VARCHAR2(35);
/

CREATE OR REPLACE TYPE tp_playlist AS OBJECT (
  Codigo_Play NUMBER,
  Nome_criador VARCHAR2 (35),
  Nome_playlist VARCHAR2 (35),
  Generos tp_nt_generos
)FINAL;
/

CREATE OR REPLACE TYPE tp_usuario_acessa_playlist AS OBJECT (
  Login_Usuario VARCHAR2 (35), 
    Codigo_Play NUMBER,
  ref_usuario REF tp_usuario,
  ref_playlist REF tp_playlist
)FINAL;
/

CREATE OR REPLACE TYPE tp_musica AS OBJECT (
  Codigo_M NUMBER,
  Nome VARCHAR2 (35),
  ref_produtora REF tp_produtora,
  Artista VARCHAR2 (35),
  Valor_Licenca NUMBER,
  Album VARCHAR2 (35),
  Generos tp_nt_generos,
  ORDER MEMBER FUNCTION comparaValor (X tp_musica) RETURN INTEGER
)FINAL;
/

CREATE OR REPLACE TYPE BODY tp_musica IS
  ORDER MEMBER FUNCTION comparaValor (X tp_musica)
  RETURN INTEGER IS
  BEGIN
  RETURN SELF.Valor_Licenca - X.Valor_Licenca;
  END;
END;
/

CREATE OR REPLACE TYPE tp_musica_participa_playlist AS OBJECT (
  Codigo_M NUMBER, 
    Codigo_Play NUMBER,
    ref_musica REF tp_musica, 
    ref_play REF tp_playlist
)FINAL; 
/

CREATE OR REPLACE TYPE tp_usuario_ouvir_musica AS OBJECT (
  Codigo_M NUMBER, 
    Login VARCHAR(35),
    ref_musica REF tp_musica, 
    ref_usuario REF tp_usuario,
    Data_Ouvir DATE,
    MAP MEMBER FUNCTION quantos_dias RETURN NUMBER
)FINAL;
/

CREATE OR REPLACE TYPE BODY tp_usuario_ouvir_musica AS
MAP MEMBER FUNCTION quantos_dias RETURN NUMBER IS

BEGIN
  RETURN to_date(SYSDATE, 'DD/MM/YYYY') - to_date(SELF.Data_Ouvir, 'DD/MM/YYYY');
  END;
END;
/

CREATE OR REPLACE TYPE tp_videoclipe AS OBJECT (
    Codigo_V NUMBER,
    ref_musica REF tp_musica,
    Diretor VARCHAR2 (35),
    Duracao NUMBER
)FINAL;
/

CREATE OR REPLACE TYPE tp_premium_visualiza_videoclipe AS OBJECT (
  Login_Premium VARCHAR2 (35),
    Codigo_V NUMBER,
    ref_premium REF tp_premium,
    ref_video REF tp_videoclipe
)FINAL;
/

CREATE OR REPLACE TYPE tp_premium_cria_edita_playlist AS OBJECT (
  Login_Premium VARCHAR2 (35), 
    Codigo_M NUMBER, 
    Codigo_Play NUMBER,
    ref_premium REF tp_premium, 
    ref_musica REF tp_musica, 
    ref_play REF tp_playlist
)FINAL;
/

--(9) Metodo not instantiable
CREATE OR REPLACE TYPE tp_abstrato AS OBJECT (
  id NUMBER,
  nome VARCHAR2(30),
  NOT INSTANTIABLE MEMBER PROCEDURE info
)NOT INSTANTIABLE NOT FINAL;
/


CREATE OR REPLACE TYPE tp_abstrato_filho UNDER tp_abstrato (
  dt_nasc DATE,
  OVERRIDING MEMBER PROCEDURE info
)FINAL;
/

CREATE OR REPLACE TYPE BODY tp_abstrato_filho AS
  OVERRIDING MEMBER PROCEDURE info AS
  BEGIN
      dbms_output.put_line('id: ' || SELF.id || ' nome: ' || SELF.nome || ' data de nascimento: ' || SELF.dt_nasc);
  END;
END;
/

