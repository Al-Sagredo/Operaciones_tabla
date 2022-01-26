--DESAFIO
--PARTE 1
CREATE USER POSTS IDENTIFIED BY 1234;
GRANT ALL PRIVILEGES TO posts;

create table post (id varchar2(25), "nombre de usuario" varchar2(25), "fecha de creacion" date, contenido varchar2(25), descripcion varchar2(25));																																															

INSERT INTO post (id, "nombre de usuario", "fecha de creacion", contenido, descripcion) 
values('1', 'Pamela', to_date('26-01-2022', 'dd-mm-yyyy'), 'me gusta', 'positivo');
insert into post (id, "nombre de usuario", "fecha de creacion", contenido, descripcion) 
values ('2', 'Pamela', TO_DATE('2021-08-16', 'yyyy-mm-dd'), 'me encanta', 'positivo');
insert into post (id, "nombre de usuario", "fecha de creacion", contenido, descripcion) 
values ('3', 'Carlos', TO_DATE('2021-08-17', 'yyyy-mm-dd'), 'no me gusta', 'negativo');
ALTER TABLE post ADD (Titulo varchar2(25));
UPDATE post SET Titulo='Primer post de Pamela' WHERE id='1';
UPDATE post SET Titulo='Segundo post de Pamela' WHERE id='2';
UPDATE post SET Titulo='Primer post de Carlos' WHERE id='3';
insert into post (id, "nombre de usuario", "fecha de creacion", contenido, descripcion, titulo) 
values ('4', 'Pedro', TO_DATE('2021-09-17', 'yyyy-mm-dd'), 'me enoja', 'negativo', 'primer post de pedro');
insert into post (id, "nombre de usuario", "fecha de creacion", contenido, descripcion, titulo) 
values ('5', 'Pedro', TO_DATE('2021-08-20', 'yyyy-mm-dd'), 'me emociona', 'positivo', 'Segundo post de pedro');
DELETE FROM post WHERE "nombre de usuario"='Carlos';
INSERT INTO post (id,"nombre de usuario", "fecha de creacion", contenido, descripcion, titulo) 
VALUES ('6', 'Carlos',TO_DATE('2021-10-17', 'yyyy-mm-dd'), 'me entristece', 'negativo', 'Nuevo post de Carlos');
ALTER TABLE POST ADD PRIMARY KEY(ID);

--PARTE 2

CREATE TABLE COMENTARIOS (ID VARCHAR2(25), FECHA DATE, HORA_DE_CREACION VARCHAR2(25), CONTENIDO VARCHAR2(25), FOREIGN KEY(ID) REFERENCES POST(ID));

INSERT INTO COMENTARIOS(ID, FECHA, HORA_DE_CREACION, CONTENIDO) VALUES ('2',TO_DATE('2021-09-20', 'yyyy-mm-dd'), '12:00', 'Pamela es linda');
INSERT INTO COMENTARIOS(ID, FECHA, HORA_DE_CREACION, CONTENIDO) VALUES ('2',TO_DATE('2021-09-21', 'yyyy-mm-dd'), '14:25', 'Pamela es mi novia');
INSERT INTO COMENTARIOS(ID, FECHA, HORA_DE_CREACION, CONTENIDO) VALUES ('6',TO_DATE('2021-09-25', 'yyyy-mm-dd'), '21:02', 'Carlos es un amargado');
INSERT INTO COMENTARIOS(ID, FECHA, HORA_DE_CREACION, CONTENIDO) VALUES ('6',TO_DATE('2021-09-25', 'yyyy-mm-dd'), '21:27', 'quien es Carlos');
INSERT INTO COMENTARIOS(ID, FECHA, HORA_DE_CREACION, CONTENIDO) VALUES ('6',TO_DATE('2021-09-25', 'yyyy-mm-dd'), '21:48', 'Carlos de donde eres?');
INSERT INTO COMENTARIOS(ID, FECHA, HORA_DE_CREACION, CONTENIDO) VALUES ('6',TO_DATE('2021-09-26', 'yyyy-mm-dd'), '08:01', 'buenos dias');
insert into post (id, "nombre de usuario", "fecha de creacion", contenido, descripcion, titulo) 
values ('7', 'Margarita', TO_DATE('2021-11-20', 'yyyy-mm-dd'), 'Buenos dias', 'positivo', 'Primer post de Margarita');
INSERT INTO COMENTARIOS(ID, FECHA, HORA_DE_CREACION, CONTENIDO) VALUES ('7',TO_DATE('2021-11-26', 'yyyy-mm-dd'), '21:50', 'Hola Margarita');
INSERT INTO COMENTARIOS(ID, FECHA, HORA_DE_CREACION, CONTENIDO) VALUES ('7',TO_DATE('2021-11-26', 'yyyy-mm-dd'), '22:48', 'Como estas Margarita');
INSERT INTO COMENTARIOS(ID, FECHA, HORA_DE_CREACION, CONTENIDO) VALUES ('7',TO_DATE('2021-11-27', 'yyyy-mm-dd'), '09:20', 'Margarita eres hermosa');
INSERT INTO COMENTARIOS(ID, FECHA, HORA_DE_CREACION, CONTENIDO) VALUES ('7',TO_DATE('2021-11-27', 'yyyy-mm-dd'), '10:40', 'Quieres salir conmigo');
INSERT INTO COMENTARIOS(ID, FECHA, HORA_DE_CREACION, CONTENIDO) VALUES ('7',TO_DATE('2021-11-27', 'yyyy-mm-dd'), '15:10', 'Margarita te quiero comer');



