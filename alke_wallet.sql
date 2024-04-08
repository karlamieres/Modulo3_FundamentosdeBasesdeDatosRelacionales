/* se creo la BD*/
CREATE SCHEMA `alke_wallet` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci ;

/*tabla Usuario*/
CREATE TABLE `alke_wallet`.`usuario` (
  `user_id` INT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NULL,
  `correo_electrónico` VARCHAR(255) NULL,
  `contraseña` VARCHAR(255) NULL,
  `saldo` DECIMAL(10,2) NULL,
  PRIMARY KEY (`user_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;

/*tabla transaccion*/
CREATE TABLE `alke_wallet`.`transacción` (
  `transaction_id` INT NULL AUTO_INCREMENT,
  `sender_user_id` INT NULL,
  `receiver_user_id` INT NULL,
  `importe` DECIMAL(10,2) NULL,
  `transaction_date` DATE NULL,
  PRIMARY KEY (`transaction_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;

/*tabla moneda*/
CREATE TABLE `alke_wallet`.`moneda` (
  `currency_id` INT NULL AUTO_INCREMENT,
  `currency_name` VARCHAR(50) NULL,
  `currency_symbol` VARCHAR(10) NULL,
  PRIMARY KEY (`currency_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;

/*Insert tabla usuario*/
INSERT INTO `alke_wallet`.`usuario` (`nombre`, `correo_electrónico`, `contraseña`, `saldo`) VALUES ('andrea', 'andrea1@gmail.com', 'andrea1234', '100000');
INSERT INTO `alke_wallet`.`usuario` (`nombre`, `correo_electrónico`, `contraseña`, `saldo`) VALUES ('cristian', 'cristian.2@gmail.com', 'cristian1234', '150000');
INSERT INTO `alke_wallet`.`usuario` (`nombre`, `correo_electrónico`, `contraseña`, `saldo`) VALUES ('carmen', 'carmen.3@gmail.com', 'carmen1234', '200000');
SELECT * FROM alke_wallet.usuario;

/*Insert tabla transacción*/
INSERT INTO `alke_wallet`.`transacción` (`sender_user_id`, `receiver_user_id`, `importe`, `transaction_date`) VALUES ('1', '3', '20000', '2024/03/12');
INSERT INTO `alke_wallet`.`transacción` (`sender_user_id`, `receiver_user_id`, `importe`, `transaction_date`) VALUES ('2', '2', '30000', '2024/03/14');
INSERT INTO `alke_wallet`.`transacción` (`sender_user_id`, `receiver_user_id`, `importe`, `transaction_date`) VALUES ('3', '1', '25000', '2024/03/16');
SELECT * FROM alke_wallet.transacción;

/*Insert tabla money*/
INSERT INTO `alke_wallet`.`moneda` (`currency_name`, `currency_symbol`) VALUES ('dolar', 'us$');
INSERT INTO `alke_wallet`.`moneda` (`currency_name`, `currency_symbol`) VALUES ('clp', '$');
INSERT INTO `alke_wallet`.`moneda` (`currency_name`, `currency_symbol`) VALUES ('euro', '€');
SELECT * FROM alke_wallet.moneda;

/*consultas SQL*/
/*-	Consulta para obtener el nombre de la moneda elegida por un usuario especíﬁco*/
SELECT moneda.currency_name, moneda.currency_symbol, usuario.user_id
FROM moneda
INNER JOIN usuario ON moneda.currency_id = usuario.user_id
WHERE user_id = 1;

/*Consulta para obtener todas las transacciones registradas*/
SELECT * FROM transacción;

/*Consulta para obtener todas las transacciones realizadas por un
usuario específico (Usuario 2)*/
SELECT transacción.transaction_id, transacción.importe, transacción.transaction_date,
usuario.nombre, usuario.user_id
FROM transacción
INNER JOIN usuario ON transacción.transaction_id = usuario.user_id
WHERE user_id = 2;

/*Sentencia DML para modiﬁcar el campo correo electrónico de un usuario especíﬁco*/
SELECT * FROM alke_wallet.usuario;
UPDATE alke_wallet.usuario
SET correo_electrónico = 'soyglorioso@gmail.com'
WHERE user_id = 1;

/*Sentencia para eliminar los datos de una transacción (eliminado de la fila completa)(transacción n°2)*/
SELECT * FROM alke_wallet.transacción;
DELETE FROM alke_wallet.transacción
WHERE transaction_id = 2;