/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     12/11/2021 22:05:51                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('EMPLEADO') and o.name = 'FK_EMPLEADO_EMPLEADO__EMPRESA')
alter table EMPLEADO
   drop constraint FK_EMPLEADO_EMPLEADO__EMPRESA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ENTREGA') and o.name = 'FK_ENTREGA_EMPLEADO__EMPLEADO')
alter table ENTREGA
   drop constraint FK_ENTREGA_EMPLEADO__EMPLEADO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ENTREGA') and o.name = 'FK_ENTREGA_RELATIONS_SOLICITU')
alter table ENTREGA
   drop constraint FK_ENTREGA_RELATIONS_SOLICITU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LICENCIA') and o.name = 'FK_LICENCIA_EMPLEADO__EMPLEADO')
alter table LICENCIA
   drop constraint FK_LICENCIA_EMPLEADO__EMPLEADO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LICENCIA') and o.name = 'FK_LICENCIA_REVISION__REVISION')
alter table LICENCIA
   drop constraint FK_LICENCIA_REVISION__REVISION
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LUGAR') and o.name = 'FK_LUGAR_SECTOR_LU_SECTOR')
alter table LUGAR
   drop constraint FK_LUGAR_SECTOR_LU_SECTOR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MOTOCICLETA') and o.name = 'FK_MOTOCICL_EMPLEADO__EMPLEADO')
alter table MOTOCICLETA
   drop constraint FK_MOTOCICL_EMPLEADO__EMPLEADO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SECTOR') and o.name = 'FK_SECTOR_ENTREGA_S_ENTREGA')
alter table SECTOR
   drop constraint FK_SECTOR_ENTREGA_S_ENTREGA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SOLICITUD') and o.name = 'FK_SOLICITU_EMPLEADO__EMPLEADO')
alter table SOLICITUD
   drop constraint FK_SOLICITU_EMPLEADO__EMPLEADO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SOLICITUD') and o.name = 'FK_SOLICITU_RELATIONS_CLIENTE')
alter table SOLICITUD
   drop constraint FK_SOLICITU_RELATIONS_CLIENTE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CLIENTE')
            and   type = 'U')
   drop table CLIENTE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('EMPLEADO')
            and   name  = 'EMPLEADO_EMPRESA_FK'
            and   indid > 0
            and   indid < 255)
   drop index EMPLEADO.EMPLEADO_EMPRESA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('EMPLEADO')
            and   type = 'U')
   drop table EMPLEADO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('EMPRESA')
            and   type = 'U')
   drop table EMPRESA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ENTREGA')
            and   name  = 'RELATIONSHIP_13_FK'
            and   indid > 0
            and   indid < 255)
   drop index ENTREGA.RELATIONSHIP_13_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ENTREGA')
            and   name  = 'EMPLEADO_ENTREGA_FK'
            and   indid > 0
            and   indid < 255)
   drop index ENTREGA.EMPLEADO_ENTREGA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ENTREGA')
            and   type = 'U')
   drop table ENTREGA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LICENCIA')
            and   name  = 'EMPLEADO_LICENCIA_FK'
            and   indid > 0
            and   indid < 255)
   drop index LICENCIA.EMPLEADO_LICENCIA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LICENCIA')
            and   name  = 'REVISION_LICENCIA_FK'
            and   indid > 0
            and   indid < 255)
   drop index LICENCIA.REVISION_LICENCIA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LICENCIA')
            and   type = 'U')
   drop table LICENCIA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LUGAR')
            and   name  = 'SECTOR_LUGAR_FK'
            and   indid > 0
            and   indid < 255)
   drop index LUGAR.SECTOR_LUGAR_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LUGAR')
            and   type = 'U')
   drop table LUGAR
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MOTOCICLETA')
            and   name  = 'EMPLEADO_MOTOCICLETA_FK'
            and   indid > 0
            and   indid < 255)
   drop index MOTOCICLETA.EMPLEADO_MOTOCICLETA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MOTOCICLETA')
            and   type = 'U')
   drop table MOTOCICLETA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('REVISION')
            and   type = 'U')
   drop table REVISION
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SECTOR')
            and   name  = 'ENTREGA_SECTOR_FK'
            and   indid > 0
            and   indid < 255)
   drop index SECTOR.ENTREGA_SECTOR_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SECTOR')
            and   type = 'U')
   drop table SECTOR
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SOLICITUD')
            and   name  = 'EMPLEADO_SOLICITUD_FK'
            and   indid > 0
            and   indid < 255)
   drop index SOLICITUD.EMPLEADO_SOLICITUD_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SOLICITUD')
            and   name  = 'RELATIONSHIP_12_FK'
            and   indid > 0
            and   indid < 255)
   drop index SOLICITUD.RELATIONSHIP_12_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SOLICITUD')
            and   type = 'U')
   drop table SOLICITUD
go

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   ID_CLIENTE           int                  not null,
   CEDULA_CLIENTE       varchar(10)          not null,
   NOMBRE_CLIENTE       varchar(30)          not null,
   APELLIDO_CLIENTE     varchar(30)          not null,
   CORREO_CLIENTE       varchar(30)          not null,
   FECHA_NACIMIENTI_CLIENTE date             not null,
   TELEFONO_CLIENTE     varchar(30)          not null,
   constraint PK_CLIENTE primary key nonclustered (ID_CLIENTE)
)
go

/*------------TABLA CLIENTE-------------*/

INSERT INTO CLIENTE(ID_CLIENTE, CEDULA_CLIENTE, NOMBRE_CLIENTE, APELLIDO_CLIENTE, CORREO_CLIENTE, FECHA_NACIMIENTI_CLIENTE, TELEFONO_CLIENTE)
VALUES ('1', '0512639678', 'ROBERT CENTENO', 'MOREIRA CENTENO', 'ROBERTHMOREIRA@GMAIL.COM', '25/12/1985', '0993209428');
INSERT INTO CLIENTE(ID_CLIENTE, CEDULA_CLIENTE, NOMBRE_CLIENTE, APELLIDO_CLIENTE, CORREO_CLIENTE, FECHA_NACIMIENTI_CLIENTE, TELEFONO_CLIENTE)
VALUES ('2', '1304789561','ANTHONY JAVIER', 'TORRES SANCHEZ', 'TORRESJAVIER@GMAIL.COM', '15/08/1998', '0997895852');
INSERT INTO CLIENTE(ID_CLIENTE, CEDULA_CLIENTE, NOMBRE_CLIENTE, APELLIDO_CLIENTE, CORREO_CLIENTE, FECHA_NACIMIENTI_CLIENTE, TELEFONO_CLIENTE)
VALUES ('3', '1353145698','ALCIVAR PILAY', 'BRYAN ELIAN', 'AWUACATICO@GMAIL.COM', '07/01/2000', '0980741236');
INSERT INTO CLIENTE(ID_CLIENTE, CEDULA_CLIENTE, NOMBRE_CLIENTE, APELLIDO_CLIENTE, CORREO_CLIENTE, FECHA_NACIMIENTI_CLIENTE, TELEFONO_CLIENTE)
VALUES ('4', '0145781032','LINETH ALISSON', 'CEDEÑO ALAVA', 'LINNETH_23@GMAIL.COM', '10/07/1975', '0912369874');
INSERT INTO CLIENTE(ID_CLIENTE, CEDULA_CLIENTE, NOMBRE_CLIENTE, APELLIDO_CLIENTE, CORREO_CLIENTE, FECHA_NACIMIENTI_CLIENTE, TELEFONO_CLIENTE)
VALUES ('5', '1306369170','DANIELA VALENTINA', 'ZAPATA GARCIA', 'VALENTINAZG@GMAIL.COM', '20/05/2001', '0997895852');

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
   ID_EMPLEADO          int                  not null,
   ID_EMPRESA           int                  null,
   CEDULA_EMPLEADO      varchar(10)          not null,
   NOMBRE_EMPLEADO      varchar(30)          not null,
   APELLIDO_EMPLEADO    varchar(30)          not null,
   CORREO_EMPLEADO      varchar(30)          not null,
   DIRECCION_EMPLEADO   varchar(30)          not null,
   CELULAR_EMPLEADO     varchar(30)          not null,
   TIPO_EMPLEADO        varchar(30)          not null,
   constraint PK_EMPLEADO primary key nonclustered (ID_EMPLEADO)
)
go

/*------------TABLA EMPLEADO-------------*/

INSERT INTO EMPLEADO(ID_EMPLEADO, ID_EMPRESA, CEDULA_EMPLEADO, NOMBRE_EMPLEADO, APELLIDO_EMPLEADO, CORREO_EMPLEADO, DIRECCION_EMPLEADO, CELULAR_EMPLEADO, TIPO_EMPLEADO)
VALUES('1', '1', '1312310012', 'FABIAN FRANSISCO', 'PIGUAVE CALDERON', 'DOBLEFDJ@GMAIL.COM', 'MANATA-CUBA', '0963222105','MOTORIZADO');
INSERT INTO EMPLEADO(ID_EMPLEADO, ID_EMPRESA, CEDULA_EMPLEADO, NOMBRE_EMPLEADO, APELLIDO_EMPLEADO, CORREO_EMPLEADO, DIRECCION_EMPLEADO, CELULAR_EMPLEADO, TIPO_EMPLEADO)
VALUES('2', '1', '0514785465', 'LUIS ANTONIO', 'FRANCO LOPEZ', 'RALFRANCO@GMAIL.COM', 'MANATA-LA VICTORIA', '0922244455','MOTORIZADO');
INSERT INTO EMPLEADO(ID_EMPLEADO, ID_EMPRESA, CEDULA_EMPLEADO, NOMBRE_EMPLEADO, APELLIDO_EMPLEADO, CORREO_EMPLEADO, DIRECCION_EMPLEADO, CELULAR_EMPLEADO, TIPO_EMPLEADO)
VALUES('3', '1', '1310055447', 'ELSA PATRICIA', 'VERA BURGOS', 'ELSAL@GMAIL.COM', 'MANATA-7 PUÑALADA', '0989896258','ADMINISTRATIVO');
INSERT INTO EMPLEADO(ID_EMPLEADO, ID_EMPRESA, CEDULA_EMPLEADO, NOMBRE_EMPLEADO, APELLIDO_EMPLEADO, CORREO_EMPLEADO, DIRECCION_EMPLEADO, CELULAR_EMPLEADO, TIPO_EMPLEADO)
VALUES('4', '1', '0214530012', 'ANGIE GABRIELA', 'TUBAY ZAMORA', 'LAPITUFINA@GMAIL.COM', 'MANATA-URBIRIOS', '0963222178','MOTORIZADO');
INSERT INTO EMPLEADO(ID_EMPLEADO, ID_EMPRESA, CEDULA_EMPLEADO, NOMBRE_EMPLEADO, APELLIDO_EMPLEADO, CORREO_EMPLEADO, DIRECCION_EMPLEADO, CELULAR_EMPLEADO, TIPO_EMPLEADO)
VALUES('5', '1', '1312310055', 'EDISSON CELESTINO', 'CHILAN VERA', 'THEDJ@GMAIL.COM', 'MANATA-20 DE MAYO', '0963222002','MOTORIZADO');

/*==============================================================*/
/* Index: EMPLEADO_EMPRESA_FK                                   */
/*==============================================================*/
create index EMPLEADO_EMPRESA_FK on EMPLEADO (
ID_EMPRESA ASC
)
go

/*==============================================================*/
/* Table: EMPRESA                                               */
/*==============================================================*/
create table EMPRESA (
   ID_EMPRESA           int                  not null,
   NOMBRE_EMPRESA       varchar(30)          not null,
   DIRECCION_EMPRESA    varchar(30)          not null,
   CIUDAD_EMPRESA       varchar(30)          not null,
   CORREO_EMPRESA       varchar(30)          not null,
   TELEFONO1_EMPRESA    varchar(30)          not null,
   TELEFONO2_EMPRESA    varchar(30)          not null,
   constraint PK_EMPRESA primary key nonclustered (ID_EMPRESA)
)
go

/*------------TABLA EMPRESA-------------*/

INSERT INTO EMPRESA(ID_EMPRESA, NOMBRE_EMPRESA, DIRECCION_EMPRESA, CIUDAD_EMPRESA, CORREO_EMPRESA, TELEFONO1_EMPRESA, TELEFONO2_EMPRESA)
VALUES('1', 'TORRES S.E.R', 'AV. FLAVIO REYES', 'MANTA', 'TORRESER@HOTMAIL.COM', '0956568970', '0915636363');

/*==============================================================*/
/* Table: ENTREGA                                               */
/*==============================================================*/
create table ENTREGA (
   ID_ENTREGA           int                  not null,
   ID_EMPLEADO          int                  null,
   SOL_ID_EMPLEADO      int                  null,
   ID_CLIENTE           int                  null,
   ID_SOLICITUD         int                  null,
   TIPO_ENTREGA         varchar(40)          not null,
   ENTREGA_XPESO        numeric(6,2)         not null,
   CANTDAD_ENTREGA      numeric(6,2)         not null,
   VALOR_ENTREGA        numeric(6,2)         not null,
   CANTIDAD_ENVIO       numeric(6,2)         not null,
   IVA                  numeric(6,2)         not null,
   PRECIO_PAGAR         numeric(6,2)         not null,
   FECHA_ENTREGA        Date                 not null,
   HORA_ENTREGA         Time                 not null,
   ANIO                 varchar(10)          not null,
   constraint PK_ENTREGA primary key nonclustered (ID_ENTREGA)
)
go

/*------------TABLA ENTREGA-------------*/

INSERT INTO ENTREGA (ID_ENTREGA, ID_EMPLEADO, SOL_ID_EMPLEADO,ID_CLIENTE, ID_SOLICITUD, TIPO_ENTREGA, ENTREGA_XPESO, CANTDAD_ENTREGA, VALOR_ENTREGA, CANTIDAD_ENVIO, IVA, PRECIO_PAGAR,FECHA_ENTREGA,HORA_ENTREGA,ANIO)
VALUES('1', '1','1', '1', '1', 'SERVICIO DE ENCOMIENDAS', 12, 25, 5, 40, 12, 500,'10/5/2020','10:00','2020');
INSERT INTO ENTREGA (ID_ENTREGA, ID_EMPLEADO, SOL_ID_EMPLEADO,ID_CLIENTE, ID_SOLICITUD, TIPO_ENTREGA, ENTREGA_XPESO, CANTDAD_ENTREGA, VALOR_ENTREGA, CANTIDAD_ENVIO, IVA, PRECIO_PAGAR,FECHA_ENTREGA,HORA_ENTREGA,ANIO)
VALUES('2', '2','2', '2', '2', 'SERVICIO DE ENTREGAS DE COMIDAS', 25, 50, 3, 50, 12, 1200,'5/6/2021','8:00','2021');
INSERT INTO ENTREGA (ID_ENTREGA, ID_EMPLEADO, SOL_ID_EMPLEADO,ID_CLIENTE, ID_SOLICITUD, TIPO_ENTREGA, ENTREGA_XPESO, CANTDAD_ENTREGA, VALOR_ENTREGA, CANTIDAD_ENVIO, IVA, PRECIO_PAGAR,FECHA_ENTREGA,HORA_ENTREGA,ANIO)
VALUES('3', '3','3', '3', '3', 'SERVICIO DE ENCARGOS PERSONALES', 10, 30, 10, 40, 12, 300,'15/8/2019','11:25','2019');
INSERT INTO ENTREGA (ID_ENTREGA, ID_EMPLEADO,SOL_ID_EMPLEADO, ID_CLIENTE, ID_SOLICITUD, TIPO_ENTREGA, ENTREGA_XPESO, CANTDAD_ENTREGA, VALOR_ENTREGA, CANTIDAD_ENVIO, IVA, PRECIO_PAGAR,FECHA_ENTREGA,HORA_ENTREGA,ANIO)
VALUES('4', '4','4', '4', '4', 'SERVICIO DE ENVIOS DE PRODUCTOS', 15, 40,20, 40, 12, 200,'24/9/2021','14:00','2021');
INSERT INTO ENTREGA (ID_ENTREGA, ID_EMPLEADO, SOL_ID_EMPLEADO,ID_CLIENTE, ID_SOLICITUD, TIPO_ENTREGA, ENTREGA_XPESO, CANTDAD_ENTREGA, VALOR_ENTREGA, CANTIDAD_ENVIO, IVA, PRECIO_PAGAR,FECHA_ENTREGA,HORA_ENTREGA,ANIO)
VALUES('5', '5','5', '5', '5', 'SERVICIO DE ENCARGOS', 12, 60, 5, 55, 12, 3000,'18/6/2018','16:00','2018');
INSERT INTO ENTREGA (ID_ENTREGA, ID_EMPLEADO, SOL_ID_EMPLEADO,ID_CLIENTE, ID_SOLICITUD, TIPO_ENTREGA, ENTREGA_XPESO, CANTDAD_ENTREGA, VALOR_ENTREGA, CANTIDAD_ENVIO, IVA, PRECIO_PAGAR,FECHA_ENTREGA,HORA_ENTREGA,ANIO)
VALUES('6', '2','2', '2', '6', 'SERVICIO DE ENCOMIENDAS', 50, 98, 5, 100, 12, 2230,'8/9/2021','13:54','2021');
/*INSERT INTO ENTREGA (ID_ENTREGA, ID_EMPLEADO, ID_CLIENTE, ID_SOLICITUD, TIPO_ENTREGA, ENTREGA_XPESO, CANTDAD_ENTREGA, VALOR_ENTREGA, CANTIDAD_ENVIO, IVA, PRECIO_PAGAR)
VALUES('7', '2', '2', '4', 'SERVICIO DE TRANSPORTE PERSONAL', 50, 5000, 250, 500, 12, 4000);
INSERT INTO ENTREGA (ID_ENTREGA, ID_EMPLEADO, ID_CLIENTE, ID_SOLICITUD, TIPO_ENTREGA, ENTREGA_XPESO, CANTDAD_ENTREGA, VALOR_ENTREGA, CANTIDAD_ENVIO, IVA, PRECIO_PAGAR)
VALUES('8', '4', '2', '3', 'SERVICIO DE MERCADO', 10, 10, 10, 10, 12, 500);
INSERT INTO ENTREGA (ID_ENTREGA, ID_EMPLEADO, ID_CLIENTE, ID_SOLICITUD, TIPO_ENTREGA, ENTREGA_XPESO, CANTDAD_ENTREGA, VALOR_ENTREGA, CANTIDAD_ENVIO, IVA, PRECIO_PAGAR)
VALUES('9', '5', '2', '2', 'SERVICIO DE ENTREGAS DE COMIDAS RAPIDAS', 100, 256, 5, 300, 12, 2500);
INSERT INTO ENTREGA (ID_ENTREGA, ID_EMPLEADO, ID_CLIENTE, ID_SOLICITUD, TIPO_ENTREGA, ENTREGA_XPESO, CANTDAD_ENTREGA, VALOR_ENTREGA, CANTIDAD_ENVIO, IVA, PRECIO_PAGAR)
VALUES('10', '3', '3', '5', 'SERVICIO DE ENCOMIENDAS', 6, 15, 8, 12, 12, 150);
INSERT INTO ENTREGA (ID_ENTREGA, ID_EMPLEADO, ID_CLIENTE, ID_SOLICITUD, TIPO_ENTREGA, ENTREGA_XPESO, CANTDAD_ENTREGA, VALOR_ENTREGA, CANTIDAD_ENVIO, IVA, PRECIO_PAGAR)
VALUES('11', '5', '4', '2', 'SERVICIO DE ENCOMIENDAS', 15, 80, 20, 80, 12, 800);
INSERT INTO ENTREGA (ID_ENTREGA, ID_EMPLEADO, ID_CLIENTE, ID_SOLICITUD, TIPO_ENTREGA, ENTREGA_XPESO, CANTDAD_ENTREGA, VALOR_ENTREGA, CANTIDAD_ENVIO, IVA, PRECIO_PAGAR)
VALUES('12', '2', '5', '4', 'SERVICIO DE ENCOMIENDAS', 13, 30, 6, 30, 12, 600);*/


/*==============================================================*/
/* Index: EMPLEADO_ENTREGA_FK                                   */
/*==============================================================*/
create index EMPLEADO_ENTREGA_FK on ENTREGA (
ID_EMPLEADO ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_13_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_13_FK on ENTREGA (
SOL_ID_EMPLEADO ASC,
ID_CLIENTE ASC,
ID_SOLICITUD ASC
)
go

/*==============================================================*/
/* Table: LICENCIA                                              */
/*==============================================================*/
create table LICENCIA (
   ID_LICENCIA          int                  not null,
   ID_REVISION          int                  null,
   ID_EMPLEADO          int                  null,
   EMISION_LICENCIA     date             not null,
   CADUCIDAD_LICENCIA   date             not null,
   ESTADO_LICENCIA      varchar(20)          not null,
   TIPO_LICENCIA        varchar(30)          not null,
   constraint PK_LICENCIA primary key nonclustered (ID_LICENCIA)
)
go

/*------------TABLA LICENCIA-------------*/

INSERT INTO LICENCIA (ID_LICENCIA, ID_REVISION, ID_EMPLEADO, EMISION_LICENCIA, CADUCIDAD_LICENCIA, ESTADO_LICENCIA, TIPO_LICENCIA)
VALUES('1', '1', '1', '12/10/2019', '12/10/2024', 'ACTIVA', 'B');
INSERT INTO LICENCIA (ID_LICENCIA, ID_REVISION, ID_EMPLEADO, EMISION_LICENCIA, CADUCIDAD_LICENCIA, ESTADO_LICENCIA, TIPO_LICENCIA)
VALUES('2', '2', '2', '05/11/2020', '05/11/2025', 'ACTIVA', 'A');
INSERT INTO LICENCIA (ID_LICENCIA, ID_REVISION, ID_EMPLEADO, EMISION_LICENCIA, CADUCIDAD_LICENCIA, ESTADO_LICENCIA, TIPO_LICENCIA)
VALUES('3', '3', '3', '25/11/2016', '25/11/2021', 'ACTIVA', 'C');
INSERT INTO LICENCIA (ID_LICENCIA, ID_REVISION, ID_EMPLEADO, EMISION_LICENCIA, CADUCIDAD_LICENCIA, ESTADO_LICENCIA, TIPO_LICENCIA)
VALUES('4', '4', '4', '14/02/2021', '14/02/2026', 'ACTIVA', 'A');
INSERT INTO LICENCIA (ID_LICENCIA, ID_REVISION, ID_EMPLEADO, EMISION_LICENCIA, CADUCIDAD_LICENCIA, ESTADO_LICENCIA, TIPO_LICENCIA)
VALUES('5', '5', '5', '07/06/2015', '07/06/2020', 'INACTIVA', 'B');

/*==============================================================*/
/* Index: REVISION_LICENCIA_FK                                  */
/*==============================================================*/
create index REVISION_LICENCIA_FK on LICENCIA (
ID_REVISION ASC
)
go

/*==============================================================*/
/* Index: EMPLEADO_LICENCIA_FK                                  */
/*==============================================================*/
create index EMPLEADO_LICENCIA_FK on LICENCIA (
ID_EMPLEADO ASC
)
go

/*==============================================================*/
/* Table: LUGAR                                                 */
/*==============================================================*/
create table LUGAR (
   ID_LUGAR             int                  not null,
   ID_SECTOR            int                  null,
   NOMBRE_LUGAR         varchar(35)          not null,
   CONCURRENCIA         varchar(30)          not null,
   ENTREGA_LUGAR        varchar(30)          not null,
   constraint PK_LUGAR primary key nonclustered (ID_LUGAR)
)
go

/*------------TABLA LUGAR-------------*/

INSERT INTO LUGAR(ID_LUGAR, ID_SECTOR, NOMBRE_LUGAR, CONCURRENCIA, ENTREGA_LUGAR)
VALUES('1', '1', '20 DE MAYO - CALLEJON 567', 'PELIGROSO', '50');
INSERT INTO LUGAR(ID_LUGAR, ID_SECTOR, NOMBRE_LUGAR, CONCURRENCIA, ENTREGA_LUGAR)
VALUES('2', '2', 'LAS MARGARITAS','NORMAL', '25');
INSERT INTO LUGAR(ID_LUGAR, ID_SECTOR, NOMBRE_LUGAR, CONCURRENCIA, ENTREGA_LUGAR)
VALUES('3', '3', 'BARRIO CUBA', 'PELIGROSO', '15');
INSERT INTO LUGAR(ID_LUGAR, ID_SECTOR, NOMBRE_LUGAR, CONCURRENCIA, ENTREGA_LUGAR)
VALUES('4', '4', 'BARRIO JIPIJAPA', 'NORMAL', '70');
INSERT INTO LUGAR(ID_LUGAR, ID_SECTOR, NOMBRE_LUGAR, CONCURRENCIA, ENTREGA_LUGAR)
VALUES('5', '5', '15 DE ABRIL', 'TRANQUILO', '100');

/*==============================================================*/
/* Index: SECTOR_LUGAR_FK                                       */
/*==============================================================*/
create index SECTOR_LUGAR_FK on LUGAR (
ID_SECTOR ASC
)
go

/*==============================================================*/
/* Table: MOTOCICLETA                                           */
/*==============================================================*/
create table MOTOCICLETA (
   ID_MOTO              int                  not null,
   ID_EMPLEADO          int                  null,
   PLACA                varchar(10)          not null,
   CILINDRAJE           varchar(20)          not null,
   FECHA_DANIO          Date                 not null,
   COLOR                varchar(20)          not null,
   ADQUISICION          varchar(30)          not null,
   REPARACIONES         varchar(5)           not null,
   CANTIDAD_DANO        varchar(5)           not null,
   ANIO                 varchar(10)          not null,
   constraint PK_MOTOCICLETA primary key nonclustered (ID_MOTO)
)
go

/*------------TABLA MOTOCICLETA-------------*/

INSERT INTO MOTOCICLETA(ID_MOTO, ID_EMPLEADO, PLACA, CILINDRAJE, FECHA_DANIO, COLOR, ADQUISICION, REPARACIONES, CANTIDAD_DANO,ANIO)
VALUES('1', '1', 'XYZ-4515', '150', '5/5/2019', 'ROJO', 'NUEVA', '15', '15','2019');
INSERT INTO MOTOCICLETA(ID_MOTO, ID_EMPLEADO, PLACA, CILINDRAJE, FECHA_DANIO, COLOR, ADQUISICION, REPARACIONES, CANTIDAD_DANO,ANIO)
VALUES('2', '3', 'JKL-7894', '100', '6/8/2018', 'AZUL', 'SEGUANDA MANO', '30', '30','2018');
INSERT INTO MOTOCICLETA(ID_MOTO, ID_EMPLEADO, PLACA, CILINDRAJE, FECHA_DANIO, COLOR, ADQUISICION, REPARACIONES, CANTIDAD_DANO,ANIO)
VALUES('3', '4', 'ABC-2589', '125', '14/8/2021', 'BLANCA', 'NUEVA', '25', '25','2021');
INSERT INTO MOTOCICLETA(ID_MOTO, ID_EMPLEADO, PLACA, CILINDRAJE, FECHA_DANIO, COLOR, ADQUISICION, REPARACIONES, CANTIDAD_DANO,ANIO)
VALUES('4', '5', 'QWE-9874', '150', '6/9/2018', 'NEGRA', 'SEGUNDA MANO', '20', '20','2018');
INSERT INTO MOTOCICLETA(ID_MOTO, ID_EMPLEADO, PLACA, CILINDRAJE, FECHA_DANIO, COLOR, ADQUISICION, REPARACIONES, CANTIDAD_DANO,ANIO)
VALUES('5', '4', 'FGH-2020', '125', '24/5/2020', 'ROJO', 'NUEVA', '5', '5','2020');
INSERT INTO MOTOCICLETA(ID_MOTO, ID_EMPLEADO, PLACA, CILINDRAJE, FECHA_DANIO, COLOR, ADQUISICION, REPARACIONES, CANTIDAD_DANO,ANIO)
VALUES('6', '2', 'MNB-4515', '150', '2/9/2021', 'VERDE', 'NUEVA', '2', '0','2021');
INSERT INTO MOTOCICLETA(ID_MOTO, ID_EMPLEADO, PLACA, CILINDRAJE, FECHA_DANIO, COLOR, ADQUISICION, REPARACIONES, CANTIDAD_DANO,ANIO)
VALUES('7', '2', 'NBA-2021', '120', '6/7/2021', 'ROJO', 'NUEVA', '0', '0','2021');
INSERT INTO MOTOCICLETA(ID_MOTO, ID_EMPLEADO, PLACA, CILINDRAJE, FECHA_DANIO, COLOR, ADQUISICION, REPARACIONES, CANTIDAD_DANO,ANIO)
VALUES('8', '1', 'UFC-0713', '250', '9/7/2022', 'AMARILLO-AZUL', 'NUEVA', '28', '23','2022');



/*==============================================================*/
/* Index: EMPLEADO_MOTOCICLETA_FK                               */
/*==============================================================*/
create index EMPLEADO_MOTOCICLETA_FK on MOTOCICLETA (
ID_EMPLEADO ASC
)
go

/*==============================================================*/
/* Table: REVISION                                              */
/*==============================================================*/
create table REVISION (
   ID_REVISION          int                  not null,
   ESTADO_EQUIPO        varchar(30)          not null,
   FECHA_REVISION       datetime             not null,
   DISPONIBILIDAD       varchar(20)          not null,
   constraint PK_REVISION primary key nonclustered (ID_REVISION)
)
go

/*------------TABLA REVISION-------------*/

INSERT INTO REVISION (ID_REVISION, ESTADO_EQUIPO, FECHA_REVISION, DISPONIBILIDAD)
VALUES('1', 'EXCELENTE', '12/05/2021', 'SIEMPRE');
INSERT INTO REVISION (ID_REVISION, ESTADO_EQUIPO, FECHA_REVISION, DISPONIBILIDAD)
VALUES('2', 'DAÑADO', '01/01/2021', 'CASI NUNCA');
INSERT INTO REVISION (ID_REVISION, ESTADO_EQUIPO, FECHA_REVISION, DISPONIBILIDAD)
VALUES('3', 'EXCELENTE', '13/07/2021', 'SIEMPRE');
INSERT INTO REVISION (ID_REVISION, ESTADO_EQUIPO, FECHA_REVISION, DISPONIBILIDAD)
VALUES('4', 'DAÑADO', '28/02/2021', 'NUNCA');
INSERT INTO REVISION (ID_REVISION, ESTADO_EQUIPO, FECHA_REVISION, DISPONIBILIDAD)
VALUES('5', 'EXCELENTE', '06/06/2021', 'SIEMPRE');


/*==============================================================*/
/* Table: SECTOR                                                */
/*==============================================================*/
create table SECTOR (
   ID_SECTOR            int                  not null,
   ID_ENTREGA           int                  null,
   NOMBRE_SECTOR        varchar(30)          not null,
   CUIDAD_PSECT         varchar(30)          not null,
   CD_POSTAL_SECT       varchar(20)          not null,
   ENTREGA_SECT         varchar(30)          not null,
   ANIO                 varchar(10)          not null,
   constraint PK_SECTOR primary key nonclustered (ID_SECTOR)
)
go

/*------------TABLA SECTOR-------------*/

INSERT INTO SECTOR(ID_SECTOR, ID_ENTREGA, NOMBRE_SECTOR, CUIDAD_PSECT, CD_POSTAL_SECT, ENTREGA_SECT,ANIO)
VALUES('1', '1','TARQUI', 'MANTA', 'GASV25458848', '25','2020');
INSERT INTO SECTOR(ID_SECTOR, ID_ENTREGA, NOMBRE_SECTOR, CUIDAD_PSECT, CD_POSTAL_SECT, ENTREGA_SECT,ANIO)
VALUES('2', '2','LA VICTORIA', 'MANTA', 'GASV25454687', '50','2021');
INSERT INTO SECTOR(ID_SECTOR, ID_ENTREGA, NOMBRE_SECTOR, CUIDAD_PSECT, CD_POSTAL_SECT, ENTREGA_SECT,ANIO)
VALUES('3', '3','ELOY ALFARO', 'MANTA', 'GASV25451258', '15','2019');
INSERT INTO SECTOR(ID_SECTOR, ID_ENTREGA, NOMBRE_SECTOR, CUIDAD_PSECT, CD_POSTAL_SECT, ENTREGA_SECT,ANIO)
VALUES('4', '4','ELOY ALFARO', 'MANTA', 'GASV25454562', '25','2021');
INSERT INTO SECTOR(ID_SECTOR, ID_ENTREGA, NOMBRE_SECTOR, CUIDAD_PSECT, CD_POSTAL_SECT, ENTREGA_SECT,ANIO)
VALUES('5', '5','LA AURORA', 'MANTA', 'GASV25457896', '80','2018');

/*==============================================================*/
/* Index: ENTREGA_SECTOR_FK                                     */
/*==============================================================*/
create index ENTREGA_SECTOR_FK on SECTOR (
ID_ENTREGA ASC
)
go

/*==============================================================*/
/* Table: SOLICITUD                                             */
/*==============================================================*/
create table SOLICITUD (
   ID_EMPLEADO          int                  not null,
   ID_CLIENTE           int                  not null,
   ID_SOLICITUD         int                  not null,
   ORIGEN_SOLICITUD     varchar(30)          not null,
   FECHA_SOLICITUD      date             not null,
   SOLICTUD_CANCELADA   numeric(6,2)         not null,
   SOLICITUDES_ATENDIDAS numeric(6,2)         not null,
   ANIO                  varchar(10)          not null,
   constraint PK_SOLICITUD primary key nonclustered (ID_EMPLEADO, ID_CLIENTE, ID_SOLICITUD)
)
go

/*------------TABLA SOLICITUD-------------*/

INSERT INTO SOLICITUD(ID_EMPLEADO, ID_CLIENTE, ID_SOLICITUD, ORIGEN_SOLICITUD, FECHA_SOLICITUD, SOLICTUD_CANCELADA, SOLICITUDES_ATENDIDAS,ANIO)
VALUES ('1', '1', '1', 'LLAMADA TELEFONICA', '12/10/2021', '50', '10','2021');
INSERT INTO SOLICITUD(ID_EMPLEADO, ID_CLIENTE, ID_SOLICITUD, ORIGEN_SOLICITUD, FECHA_SOLICITUD, SOLICTUD_CANCELADA, SOLICITUDES_ATENDIDAS,ANIO)
VALUES ('2', '2', '2', 'SMS VIA WHATSAPP', '07/06/2018', '80', '5','2018');
INSERT INTO SOLICITUD(ID_EMPLEADO, ID_CLIENTE, ID_SOLICITUD, ORIGEN_SOLICITUD, FECHA_SOLICITUD, SOLICTUD_CANCELADA, SOLICITUDES_ATENDIDAS,ANIO)
VALUES ('3', '3', '3', 'CORREO DE LA INSTITUCION', '29/08/2020', '45', '5','2020');
INSERT INTO SOLICITUD(ID_EMPLEADO, ID_CLIENTE, ID_SOLICITUD, ORIGEN_SOLICITUD, FECHA_SOLICITUD, SOLICTUD_CANCELADA, SOLICITUDES_ATENDIDAS,ANIO)
VALUES ('4', '4', '4', 'SMS VIA WHATSAPP', '14/01/2021', '60', '25','2021');
INSERT INTO SOLICITUD(ID_EMPLEADO, ID_CLIENTE, ID_SOLICITUD, ORIGEN_SOLICITUD, FECHA_SOLICITUD, SOLICTUD_CANCELADA, SOLICITUDES_ATENDIDAS,ANIO)
VALUES ('5', '5', '5', 'LLAMADA TELEFONICA', '31/12/2019', '150', '25','2019');


/*==============================================================*/
/* Index: RELATIONSHIP_12_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_12_FK on SOLICITUD (
ID_CLIENTE ASC
)
go

/*==============================================================*/
/* Index: EMPLEADO_SOLICITUD_FK                                 */
/*==============================================================*/
create index EMPLEADO_SOLICITUD_FK on SOLICITUD (
ID_EMPLEADO ASC
)
go

alter table EMPLEADO
   add constraint FK_EMPLEADO_EMPLEADO__EMPRESA foreign key (ID_EMPRESA)
      references EMPRESA (ID_EMPRESA)
go

alter table ENTREGA
   add constraint FK_ENTREGA_EMPLEADO__EMPLEADO foreign key (ID_EMPLEADO)
      references EMPLEADO (ID_EMPLEADO)
go

alter table ENTREGA
   add constraint FK_ENTREGA_RELATIONS_SOLICITU foreign key (SOL_ID_EMPLEADO, ID_CLIENTE, ID_SOLICITUD)
      references SOLICITUD (ID_EMPLEADO, ID_CLIENTE, ID_SOLICITUD)
go

alter table LICENCIA
   add constraint FK_LICENCIA_EMPLEADO__EMPLEADO foreign key (ID_EMPLEADO)
      references EMPLEADO (ID_EMPLEADO)
go

alter table LICENCIA
   add constraint FK_LICENCIA_REVISION__REVISION foreign key (ID_REVISION)
      references REVISION (ID_REVISION)
go

alter table LUGAR
   add constraint FK_LUGAR_SECTOR_LU_SECTOR foreign key (ID_SECTOR)
      references SECTOR (ID_SECTOR)
go

alter table MOTOCICLETA
   add constraint FK_MOTOCICL_EMPLEADO__EMPLEADO foreign key (ID_EMPLEADO)
      references EMPLEADO (ID_EMPLEADO)
go

alter table SECTOR
   add constraint FK_SECTOR_ENTREGA_S_ENTREGA foreign key (ID_ENTREGA)
      references ENTREGA (ID_ENTREGA)
go

alter table SOLICITUD
   add constraint FK_SOLICITU_EMPLEADO__EMPLEADO foreign key (ID_EMPLEADO)
      references EMPLEADO (ID_EMPLEADO)
go

alter table SOLICITUD
   add constraint FK_SOLICITU_RELATIONS_CLIENTE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE)
go

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



