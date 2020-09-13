<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registro</title>
</head>
<body>
	<h1>ReChord</h1>
	<h2>Datos Personales</h2>
	<form action="Registro">
		<div>
			Correo electrónico: <input type="text" name="correo" />
		</div>
		<div>&nbsp;</div>
		<div>
			Nombre: <input type="text" name="nombre" />
		</div>
		<div>&nbsp;</div>
		<div>
			Apellido: <input type="text" name="apellido" />
		</div>
		<div>&nbsp;</div>
		<div>
			Usuario: <input type="text" name="usuario" />
		</div>
		<div>&nbsp;</div>
		<div>
			Contraseña: <input type="text" name="pass" />
		</div>
		<div>&nbsp;</div>

		<div>
			<label for="start">Día de nacimiento:</label> <input type="date"
				id="start" name="fecha" value="2020-09-09" min="1980-01-01"
				max="2019-12-31">
		</div>
		<div>&nbsp;</div>
		<br />

		<div>
			<input type="submit" value="Cancelar" /> <input type="submit"
				value="Registrar" />
		</div>
	</form>
</body>
</html>