CREATE DATABASE posts;
CREATE TABLE post(id SERIAL PRIMARY KEY, nombre_usuario VARCHAR(10), fecha_creacion DATE, contenido VARCHAR(100), descripcion VARCHAR(200));

INSERT INTO post(nombre_usuario, fecha_creacion, contenido, descripcion) VALUES('Pamela', '2020-09-01', 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur');
INSERT INTO post(nombre_usuario, fecha_creacion, contenido, descripcion) VALUES('Pamela', '2020-09-01', 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur');
INSERT INTO post(nombre_usuario, fecha_creacion, contenido, descripcion) VALUES('Pamela', '2020-09-01', 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur');
INSERT INTO post(nombre_usuario, fecha_creacion, contenido, descripcion) VALUES('Carlos', '2020-09-02', 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur');


ALTER TABLE post ADD COLUMN titulo VARCHAR(20);

UPDATE post SET titulo='Finibus Bonorum' WHERE id=1;
UPDATE post SET titulo='Malorum' WHERE id=2;
UPDATE post SET titulo='Perspiciatis' WHERE id=3;
UPDATE post SET titulo='Pariatur' WHERE id=4;


INSERT INTO post(nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES('Pedro', '2020-09-03', 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur', 'Title');
INSERT INTO post(nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES('Pedro', '2020-09-03', 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur', 'Title');


DELETE FROM post where id=4;


INSERT INTO post(nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES('Carlos', '2020-09-03', 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur', 'Title');

-- Parte 2
CREATE TABLE comentarios(id INT, fecha_hora TIMESTAMP, contenido VARCHAR(100));
ALTER TABLE comentarios ADD FOREIGN KEY (id) REFERENCES post(id);


INSERT INTO comentarios(id, fecha_hora, contenido) VALUES(1, '2020-09-01 12:00:24', 'vitae dicta sunt explicabo');

INSERT INTO comentarios(id, fecha_hora, contenido) VALUES(1, '2020-09-01 15:12:42', 'vitae dicta sunt explicabo');

INSERT INTO comentarios(id, fecha_hora, contenido) VALUES(7, '2020-09-01 16:43:03', 'vitae dicta sunt explicabo');
INSERT INTO comentarios(id, fecha_hora, contenido) VALUES(7, '2020-09-01 16:43:03', 'vitae dicta sunt explicabo');
INSERT INTO comentarios(id, fecha_hora, contenido) VALUES(7, '2020-09-01 16:43:03', 'vitae dicta sunt explicabo');
INSERT INTO comentarios(id, fecha_hora, contenido) VALUES(7, '2020-09-01 16:43:03', 'vitae dicta sunt explicabo');


INSERT INTO post(nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES('Margarita', '2020-09-05', 'Ipsum lorem', 'Lorem ipsum dolor sit amet, consectetur', 'Consequatur');


INSERT INTO comentarios(id, fecha_hora, contenido) VALUES(8, '2020-09-01 20:21:59', 'dicta vitae explicabo sunt');
INSERT INTO comentarios(id, fecha_hora, contenido) VALUES(8, '2020-09-01 20:21:59', 'dicta vitae explicabo sunt');
INSERT INTO comentarios(id, fecha_hora, contenido) VALUES(8, '2020-09-01 20:21:59', 'dicta vitae explicabo sunt');
INSERT INTO comentarios(id, fecha_hora, contenido) VALUES(8, '2020-09-01 20:21:59', 'dicta vitae explicabo sunt');
INSERT INTO comentarios(id, fecha_hora, contenido) VALUES(8, '2020-09-01 20:21:59', 'dicta vitae explicabo sunt');

-- Adicional

SELECT post.nombre_usuario, comentarios.contenido FROM post FULL JOIN comentarios ON post.id=comentarios.id;







