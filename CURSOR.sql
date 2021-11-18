----CURSOR---
do  $$
declare 
 ndatos Record;
 fecha_solicitud int =0;
 c_ncursor cursor for select * from solicitud,cliente
 where solicitud.id_solicitud = cliente.id_cliente
order by fecha_solicitud  asc;	
begin
for ndatos in  c_ncursor loop
fetch  c_ncursor into ndatos;
--fecha_solicitud= fecha_solicitud  + count (ndatos.id_solicitud);
raise notice 'NOMBRE CLIENTE: %,CANTIDAD Solicitudes ATENDIDAS: %  ,CANTIDAD SOLICITUD CANCELADAS: %
,FECHA SOLICITUD: % ', ndatos.nombre_cliente, ndatos.solicitudes_atendidas,
ndatos.solictud_cancelada,ndatos.fecha_solicitud;
end loop;
end $$
language 'plpgsql';