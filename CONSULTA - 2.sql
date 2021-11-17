--Histórico de Dinero cobrado por enviós a cada sector 
--(Año 2021 sector los esteros 100.000.000 dolares)

select  CANTIDAD_ENVIO,
        NOMBRE_SECTOR,
		FECHA_ENTREGA, 
		AVG(PRECIO_PAGAR + VALOR_ENTREGA) as DINERO_COBRADO 
		from ENTREGA inner join SECTOR
on ENTREGA.ID_ENTREGA= ID_SECTOR
where ENTREGA.ANIO='2021'
group by CANTIDAD_ENVIO,
         NOMBRE_SECTOR,
		 FECHA_ENTREGA
order by NOMBRE_SECTOR;