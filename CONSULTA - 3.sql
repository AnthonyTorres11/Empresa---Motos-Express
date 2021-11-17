--Histórico – Unidades dañadas por motorisados
--(En el año 2021 juan macias 50 daño de moto)

select NOMBRE_EMPLEADO,
       APELLIDO_EMPLEADO,
	   CANTIDAD_DANO,
	   PLACA ,
	   FECHA_DANIO 
	   from   MOTOCICLETA inner join   EMPLEADO
on MOTOCICLETA.ID_MOTO= EMPLEADO.ID_EMPLEADO
where MOTOCICLETA.ANIO='2021'
group by NOMBRE_EMPLEADO,
         APELLIDO_EMPLEADO,
		 CANTIDAD_DANO,PLACA ,
		 FECHA_DANIO;