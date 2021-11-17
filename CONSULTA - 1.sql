--Histórico de envíos por motorisados  y por año
--(En el año 2021 el motorizado juando macia realizó un total de de 300 entregas)

select top(2)NOMBRE_EMPLEADO,
       APELLIDO_EMPLEADO,
       FECHA_ENTREGA,HORA_ENTREGA,
       CANTDAD_ENTREGA 
from EMPLEADO inner join ENTREGA
on EMPLEADO.ID_EMPLEADO= ID_ENTREGA
where ENTREGA.ANIO='2021'
group by NOMBRE_EMPLEADO,
         APELLIDO_EMPLEADO,
		 FECHA_ENTREGA,HORA_ENTREGA,
		 CANTDAD_ENTREGA
order by NOMBRE_EMPLEADO;