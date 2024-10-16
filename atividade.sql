-- 1
select departamento.nome_depto, funcionario.nome_funcionario from funcionario
inner join departamento 
on funcionario.sigla_depto = departamento.sigla_depto;

-- 2
 
 select departamento.nome_depto, projeto.nome_projeto from funcionario
 inner join departamento on departamento.nome_depto = departamento.nome_depto
 inner join projeto 
 on projeto.nome_projeto = projeto.nome_projeto;

-- 3

select funcionario.nome_funcionario, projeto.nome_projeto from funcionario
inner join projeto 
on funcionario.codfuncionario = projeto.codfuncionario
where funcionario.sigla_depto = 'vend';

-- 4
select projeto.nome_projeto, funcionario.nome_funcionario from funcionario
left join projeto on funcionario.nome_funcionario= projeto.nome_projeto;

-- 5

select funcionario.nome_funcionario, departamento.nome_depto from funcionario
left join departamento 
on funcionario.codfuncionario = departamento.sigla_depto;

-- 6

select projeto.nome_projeto, funcionario.nome_funcionario from projeto
left join funcionario 
on projeto.codfuncionario = funcionario.codfuncionario;

-- 7

select funcionario.nome_funcionario, projeto.nome_projeto from funcionario
right join projeto on funcionario.codfuncionario = projeto.codfuncionario;

-- 8

select departamento.nome_depto, funcionario.nome_funcionario from departamento
right join funcionario 
on departamento.sigla_depto = funcionario.sigla_depto;

-- 9 
select projeto.nome_projeto, funcionario.nome_funcionario from funcionario
right join projeto on projeto.nome_projeto = projeto.nome_projeto