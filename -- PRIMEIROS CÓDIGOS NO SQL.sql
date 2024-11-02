-- PRIMEIROS CÓDIGOS NO SQL

-- Selecionando todas as colunas de uma tabela 
select * from  administradores;
select * from usuarios;
select * from fases;
select * from itensjogo;
select * from itensjogosdousuario;
select * from jogos;
select * from jogosdosusuarios;

-- Selecionando algumas colunas de uma tabela 
select * from usuarios;

select 
	nome as Nome_Jogadores, 
    email 
 from  usuarios; 

select * from itensjogo ;

-- Trabalhar com valores destintos: DISTINCT 

select distinct forca from itensjogo;

-- Ordenar as informações de uma tabela: ORDER BY 

select * from  itensjogo
order by forca asc;

select * from usuarios
order by nome asc, sobrenome asc;

select 
* 
from 
	usuarios
order by
	data_nacimento desc
limit 5; 
    
    -- FILTROS: WHERE
    
select * from usuarios
where Qtd_Filhos > 0;

select * from usuarios
where renda_anual >=50000
order by reda_anual; 

select * from usuarios
where escolaridade = 'parcial'; 

select * from jogos 
where jogos = 'luta';

select * from usuarios
where sexo = 'm' and qtd_filhos > 0 and escolaridade = 'parcial'
order by qtd_filhos;

select * from jogos 
where jogo_luta = 'sonc' or preco_unt >= 1000; 

-- QUERO SELECIONAR TODOS OS JOGOS QUE SAO DA MARCA SONC OU DELL: OR 

select * from jogos 
where marca_do_jogo = 'DELL' or marca_do_jogo = 'sonc';

-- QUERO SELECIONAR TODOS OS JOGOS QUE SAO DA MARCA SONC OU DELL
-- ( DE UMA FORMA SIMPLIFICADA )

select * from jogos
where marca_do_jogo in ('dell','sonc');

select * from jogos
where marca_do_jogo between 1000 and 3000;

-- > para o operador OR podemos usar como alternativa o IN 
-- > para o operador AND podemos usar como alternativa o BETWEEN 

select * from jogos
where nome_do_jogo like '%RPG%'; 

select * from usuarios
where email is null; 



