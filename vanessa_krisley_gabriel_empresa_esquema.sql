CREATE TABLE FUNCIONARIO(
Pnome 				VARCHAR(15) NOT NULL,
Minicial 			CHAR,
Unome 				VARCHAR(15) NOT NULL,
Cpf 				CHAR(11) NOT NULL,
Datanasc 			DATE,
Endereco			VARCHAR(50),
Sexo 				CHAR,
Salario				DECIMAL(10,2),
Cpf_supervisor 		CHAR(11),
Dnr 				INT NOT NULL,
	PRIMARY KEY (Cpf),
    FOREIGN KEY (Cpf_supervisor) REFERENCES funcionario(Cpf)

);


CREATE TABLE DEPARTAMENTO(
	Dnome					CHAR(30) NOT NULL,
    Dnumero					INT NOT NULL, 
    cpf_gerente 			CHAR(11) NOT NULL,
    data_inicio_gerente		DATE NOT NULL,
    
	PRIMARY KEY(Dnumero)

);

CREATE TABLE LOCALIZACOES_DEP(
	Dnumero  				INT NOT NULL,
    Dlocal					CHAR(30) NOT NULL,
    
    PRIMARY KEY(Dnumero, Dlocal),    
    FOREIGN KEY(Dnumero) REFERENCES DEPARTAMENTO(Dnumero)
    
);

CREATE TABLE PROJETO(
	Projnome			CHAR(30) NOT NULL,
    Projnumero			INT NOT NULL,
    Projlocal			CHAR(30)  NOT NULL,
    Dnum				INT NOT NULL,
    
    PRIMARY KEY(Projnumero),
    FOREIGN KEY(Dnum) REFERENCES DEPARTAMENTO(Dnumero)

);

CREATE TABLE TRABALHA_EM(
	Fcpf 				CHAR(11) NOT NULL,
    Pnr					INT NOT NULL,
    Horas				INT,
    
    PRIMARY KEY(Fcpf, Pnr),
    FOREIGN KEY(Fcpf) REFERENCES FUNCIONARIO(Cpf),
    FOREIGN KEY(Pnr) REFERENCES PROJETO(projnumero)

);

CREATE TABLE DEPENDENTE(
	Fcpf				CHAR(11) NOT NULL,
    Nome_dependente		CHAR(30) NOT NULL,
    Sexo 				CHAR,
    Datanasc			DATE,
    Parentesco			CHAR  NOT NULL,
    
    PRIMARY KEY(Fcpf, Nome_dependente),
    FOREIGN KEY(Fcpf) REFERENCES FUNCIONARIO(Cpf)
    );
