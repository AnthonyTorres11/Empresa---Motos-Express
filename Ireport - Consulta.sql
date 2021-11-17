SELECT
     entrega."id_entrega" AS entrega_id_entrega,
     entrega."id_empleado" AS entrega_id_empleado,
     entrega."sol_id_empleado" AS entrega_sol_id_empleado,
     entrega."id_cliente" AS entrega_id_cliente,
     entrega."tipo_entrega" AS entrega_tipo_entrega,
     entrega."cantdad_entrega" AS entrega_cantdad_entrega,
     entrega."precio_pagar" AS entrega_precio_pagar,
     entrega."id_solicitud" AS entrega_id_solicitud,
     sector."id_sector" AS sector_id_sector,
     sector."id_entrega" AS sector_id_entrega,
     sector."nombre_sector" AS sector_nombre_sector,
     sector."cuidad_psect" AS sector_cuidad_psect,
     sector."cd_postal_sect" AS sector_cd_postal_sect,
     sector."entrega_sect" AS sector_entrega_sect
FROM
     "public"."entrega" entrega INNER JOIN "public"."sector" sector ON entrega."id_entrega" = sector."id_entrega"