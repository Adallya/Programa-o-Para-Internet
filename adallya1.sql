delimiter $
create function contar_pac_convenio_nova(id int)
returns int 
deterministic
BEGIN
declare total_convenio int;
set total_convenio=(select count(*) from convenio where codigoconvenio = id);
if total_convenio = 0 then
	signal sqlstate '45000'
    set message_text = 'Não há paciente deste convênio';
end if;
return total_convenio;
end $

select contar_pac_convenio_nova(5);
