set sql_safe_updates = 0;
create trigger update_horas_trabalho
before update on empregado
for each row
set new.salario = (new.valor_hora * 170);

select * from empregado;
update empregado
set salario = valor_hora * 170;

update empregado set salario = valor_hora * 170;

update empregado set valor_hora = 35
where matricula = 101;

create trigger insert_salario
before insert on empregado
for each row
set new.salario = (new.valor_hora * 170);
insert into empregado(matricula, nome, valor_hora, num_departamento)
values(104, "Adallya", 36, 1);