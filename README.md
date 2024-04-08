Requerimientos:


●	Diseñar una Bases de Datos que garantice la coherencia y la integridad de los datos
●	Crear una conexión a una Bases de Datos llamada Alfie WalleĒ

●	Crear Entidades:
 
1.	Usuario:  Representa  a  cada  usuario  individual  del  sistema  de monedero virtual.
- Atributos:
user_id (clave primaria) nombre
correo electrónico contraseña
saldo.
2.	Transacción: Representa cada transacción ﬁnanciera realizada por los usuarios.
- Atributos:
transaction_id (Primary Key)
sender_user_id (Foreign Key referenciando a User) receiver_user_id (Foreign Key referenciando a User) importe
transaction_date.
3.	Moneda: Representa las diferentes monedas que se pueden utilizar en el monedero virtual.
- Atributos:
currency_id (Primary Key) currency_name currency_symbol

●	Crear consultas SQL para:
-	Consulta para obtener el nombre de la moneda elegida por un usuario especíﬁco
-	Consulta para obtener todas las transacciones registradas
-	Consulta para obtener todas las transacciones realizadas por un usuario especíﬁco
-	Sentencia DML para modiﬁcar el campo correo electrónico de un usuario especíﬁco
-	Sentencia para eliminar los datos de una transacción (eliminado de la ﬁla completa)
