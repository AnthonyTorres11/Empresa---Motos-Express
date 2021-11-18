create or replace function envio(int)
returns  varchar as $$
	DECLARE 
		datoingre alias for $1; datos RECORD;
		cur_datos  cursor for SELECT
		    empleado.nombre_empleado as Nombre_Empleado,
		    empleado.id_empleado as id,
		    empleado.tipo_empleado as Tipo_empleado, 
			cliente.nombre_cliente as Nombre_cliente,
			solicitud.solicitudes_atendidas as Solicitud_Atendidas,
			solicitud.fecha_solicitud as Fecha_Atendido
			FROM empleado
		  	inner join cliente on empleado.id_empleado= cliente.id_cliente
			inner join solicitud on cliente.id_cliente= solicitud.id_solicitud WHERE empleado.id_empleado=$1
			group by empleado.nombre_empleado,empleado.id_empleado,empleado.tipo_empleado,cliente.nombre_cliente,
			solicitud.solicitudes_atendidas,solicitud.fecha_solicitud;
begin
	OPEN cur_datos;
		FETCh cur_datos INTO datos;
		RAISE NOTICE 
			'
			MOTORIZADO: % 
        ESTOS SON LOS SACRAMENTOS REALIZADOS Y LA CANTIDAD DE ESTE SACERDOTE:
			',
			datos.Nombre_Empleado;
		while (found) loop 
			RAISE NOTICE 
			'
			TIPO EMPLEADO: %
			NOMBRE CLIENTE: %
			SOLICITUD ATENDIDA: %
			ANIO ATENDIDO: %
			',
			datos.Tipo_empleado,datos.Nombre_cliente,datos.Solicitud_Atendidas,datos.Fecha_Atendido;
			FETCh cur_datos INTO datos;
		end loop;
END;
$$ LANGUAGE plpgsql;
SELECT envio(1)