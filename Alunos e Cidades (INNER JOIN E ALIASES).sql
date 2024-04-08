/* tabela cidades */
create table cidades (
	id	INT PRIMARY KEY,
  	nome varchar (60) NOT NULL,
  	populacao int
);

/* tabela alunos */
CREATE TABLE alunos (
	id int PRIMARY KEY,
	nome varchar (60) not NULL,
	data_nasc date,
  	cidade_id int,
	
	FOREIGN KEY (cidade_id) REFERENCES cidades(id)
  	
);

/* inserção de valores em cidades */
insert into Cidades values (1, 'Arraial dos Tucanos', 42632);
insert into cidades values (2, 'Springfield', 13820);
insert into cidades values (3, 'Hill Valley', 27383);
insert into cidades values (4, 'Coruscant', 19138);
insert into cidades values (5, 'Minas Tirith', 31394);

/* inserção de valores em alunos */
insert into alunos values (1, 'Immanuel Kant', 		'1724-04-22', 4);
insert into alunos values (2, 'Alan Turing', 		'1912-06-23', 3);
insert into alunos values (3, 'George Boole', 		'2002-01-01', 1);
insert into alunos values (4, 'Lynn Margulis', 		'1991-08-12', 3);
insert into alunos values (5, 'Nicola Tesla', 		'2090-01-08', null);
insert into alunos values (6, 'Ada Lovelace', 		'1978-05-28', 4);
insert into alunos values (7, 'Claude Shannon', 	'1982-10-15', 3);
insert into alunos values (8, 'Charles Darwin', 	'2010-02-06', null);
insert into alunos values (9, 'Marie Curie', 		'2007-07-12', 3);
insert into alunos values (10, 'Carl Sagan', 		'2000-11-20', 1);
insert into alunos values (11, 'Tim Berners-Lee', 	'1973-12-05', 4);
insert into alunos values (12, 'Richard Feynman', 	'1982-09-12', 1);

--seleciona tabela cidades
SELECT*FROM cidades;

--seleciona tabela alunos
SELECT*FROM alunos;

--seleciona o aluno, sua respectiva cidade e sua população
SELECT alunos.id, alunos.nome AS nome_aluno, alunos.data_nasc, cidades.nome AS nome_cidade, 
cidades.populacao FROM alunos INNER JOIN cidades ON alunos.cidade_id = cidades.id;