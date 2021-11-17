--Histórico de solicitudes atendidas por clientes
--(en el año 2021 el cliente Machuca 30 solicitudes)

select NOMBRE_CLIENTE,
       APELLIDO_CLIENTE,
	   SOLICITUDES_ATENDIDAS,
	   FECHA_SOLICITUD 
	   from SOLICITUD inner join CLIENTE 
on SOLICITUD.ID_SOLICITUD = CLIENTE.ID_CLIENTE
where SOLICITUD.ANIO='2021' 
group by SOLICITUDES_ATENDIDAS,
         NOMBRE_CLIENTE,
		 APELLIDO_CLIENTE,
		 FECHA_SOLICITUD;