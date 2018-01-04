CREATE DATABASE sistemaventa character set utf8
collate utf8_general_ci;

CREATE TABLE `CAT_PRODUCTOS`(
	id_prod varchar(50) not null,
    nombre_prod varchar(200),
    desc_prod varchar(200),
    stock_prod int(50),
    foto_prod varchar(200),
    unidad_prod varchar(200),
    precio_compra_prod double,
    precio_venta_prod double,
    existencias_prod double,
    id_categoria_prod int(50),
    id_proveedor int(50)
);

ALTER TABLE `CAT_PRODUCTOS` ADD PRIMARY KEY(id_prod);


CREATE TABLE `CAT_CATEGORIAS`(
	id_categoria_prod int(50) not null,
    nom_categoria_prod varchar(200),
    desc_categoria_prod varchar(200)
);

ALTER TABLE `CAT_CATEGORIAS` ADD PRIMARY KEY(id_categoria_prod);


CREATE TABLE `CAT_PROVEEDORES`(
	id_proveedor int(50) not null,
    nom_proveedor varchar(200),
    dir_proveedor varchar(200),
    telefono_proveedor varchar(200),
    email_proveedor varchar(200),
    contacto_proveedor varchar(200)
);

ALTER TABLE `CAT_PROVEEDORES` ADD PRIMARY KEY(id_proveedor);

CREATE TABLE `VENTAS`(
	id_venta int(50) not null,
    monto_venta double,
    fecha_venta date
);

ALTER TABLE `VENTAS` ADD PRIMARY KEY(id_venta);

CREATE TABLE `DETALLE_VENTA`(
	id_detalle_venta int(50) not null,
    id_venta int(50),
    id_prod varchar(200),
    cantidad_vendida double
);

ALTER TABLE `DETALLE_VENTA` ADD PRIMARY KEY(id_detalle_venta);

ALTER TABLE CAT_PRODUCTOS ADD CONSTRAINT relacion_productos_categorias FOREIGN KEY (id_categoria_prod) REFERENCES CAT_CATEGORIAS(id_categoria_prod);

ALTER TABLE CAT_PRODUCTOS ADD CONSTRAINT relacion_productos_proveedores FOREIGN KEY (id_proveedor) REFERENCES CAT_PROVEEDORES(id_proveedor);

ALTER TABLE DETALLE_VENTA ADD CONSTRAINT relacion_detalle_venta FOREIGN KEY (id_venta) REFERENCES VENTAS(id_venta);

ALTER TABLE DETALLE_VENTA ADD CONSTRAINT relacion_detalle_productos FOREIGN KEY (id_prod) REFERENCES CAT_PRODUCTOS(id_prod); 



