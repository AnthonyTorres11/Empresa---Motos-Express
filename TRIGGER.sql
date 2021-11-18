--TRIGGER--
create or replace function tr_entrega()
returns trigger as $tr_entrega$
declare
caducidad_licencia int;
nentrega int;
begin
select count (*) into caducidad_licencia from licencia where id_empleado=new.id_empleado;
		 select id_empleado into nentrega from empleado ;  
if(caducidad_licencia > 0) then
   raise exception SQLSTATE 'E0008' using
        message = 'Este Motorizado no se le puede asignar una entrega porque tiene licencia caducada..';
	return false;
end if;
return new;
end;
$tr_entrega$ language plpgsql;
create trigger tr_entrega
before insert or update on empleado
for each row
execute procedure tr_entrega();

INSERT INTO EMPLEADO(ID_EMPLEADO, ID_EMPRESA, CEDULA_EMPLEADO, NOMBRE_EMPLEADO, APELLIDO_EMPLEADO, CORREO_EMPLEADO, DIRECCION_EMPLEADO, CELULAR_EMPLEADO, TIPO_EMPLEADO)
VALUES('5', '1', '1312310055', 'EDISSON CELESTINO', 'CHILAN VERA', 'THEDJ@GMAIL.COM', 'MANATA-20 DE MAYO', '0963222002','MOTORIZADO');