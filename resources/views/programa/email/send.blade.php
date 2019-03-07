<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<style type="text/css">
	.text-center{
		text-align: center;
	}
</style>
<body>
	@if($solicitud_programa->status=="P")

	<h1 class="text-center">Solicitud de Programa UCLA</h1>
	<h2 class="text-center">Usted ha hecho una solicitud de Programa:</h2>
	<p><strong>Código de la Solicitud:</strong> {{ $solicitud_programa->uuid }}</p>
	<p><strong>Nombre del Solicitante:</strong> {{ $solicitud_programa->user->name }}</p>
	<p><strong>Cédula del Solicitante:</strong> {{ $solicitud_programa->user->cedula }}</p>
	<p><strong>Carrera:</strong> {{ $solicitud_programa->carrera->nombre }}</p>
	<p><strong>Pensum Solicitado:</strong> {{ $solicitud_programa->pensum->nombre }}</p>
	<p><strong>Total:</strong> {{ $solicitud_programa->precio_fact }} Bs.S</p>
	<p><strong>Estado: </strong>Pendiente</p>
	<p><strong>Fecha de la Solicitud:</strong> {{ $solicitud_programa->created_at->format('d-m-Y') }}</p>

	@elseif($solicitud_programa->status=="E")

	<h1 class="text-center">Su solicitud está en proceso de culminación</h1>
	<p><strong>Código de la Solicitud:</strong> {{ $solicitud_programa->uuid }}</p>
	<p><strong>Nombre del Solicitante:</strong> {{ $solicitud_programa->user->name }}</p>
	<p><strong>Cédula del Solicitante:</strong> {{ $solicitud_programa->user->cedula }}</p>
	<p><strong>Carrera:</strong> {{ $solicitud_programa->carrera->nombre }}</p>
	<p><strong>Pensum Solicitado:</strong> {{ $solicitud_programa->pensum->nombre }}</p>
	<p><strong>Total:</strong> {{ $solicitud_programa->precio_fact }} Bs.S</p>
	<p><strong>Estado: </strong>En proceso</p>
	<p><strong>Fecha de la Solicitud:</strong> {{ $solicitud_programa->created_at->format('d-m-Y') }}</p>
	<p><strong>Fecha Procesada:</strong> {{ $solicitud_programa->updated_at->format('d-m-Y') }}</p>

	@elseif($solicitud_programa->status=="A")

	<h1 class="text-center">Su solicitud ha sido aprobada, el programa se le será enviado por correo (A excepción de las carreras de Analisis de Sistemas e Ingeniería en Informática con pensum anterior al año 2005 que deben dirigirse al DCYT para su entrega)</h1>
	<p><strong>Código de la Solicitud:</strong> {{ $solicitud_programa->uuid }}</p>
	<p><strong>Nombre del Solicitante:</strong> {{ $solicitud_programa->user->name }}</p>
	<p><strong>Cédula del Solicitante:</strong> {{ $solicitud_programa->user->cedula }}</p>
	<p><strong>Carrera:</strong> {{ $solicitud_programa->carrera->nombre }}</p>
	<p><strong>Pensum Solicitado:</strong> {{ $solicitud_programa->pensum->nombre }}</p>
	<p><strong>Total:</strong> {{ $solicitud_programa->precio_fact }} Bs.S</p>
	<p><strong>Estado: </strong>Aprobada</p>
	<p><strong>Fecha de la Solicitud:</strong> {{ $solicitud_programa->created_at->format('d-m-Y') }}</p>
	<p><strong>Fecha de Aprobación:</strong> {{ $solicitud_programa->updated_at->format('d-m-Y') }}</p>

@elseif($solicitud_programa->status=="M")

	<h1 class="text-center">La solicitud ha sido rechazada, al parecer no cumplió con los requisitos correspondientes, comuníquese con nosotros para más detalles, </h1>
	<p><strong>Código de la Solicitud:</strong> {{ $solicitud_programa->uuid }}</p>
	<p><strong>Nombre del Solicitante:</strong> {{ $solicitud_programa->user->name }}</p>
	<p><strong>Cédula del Solicitante:</strong> {{ $solicitud_programa->user->cedula }}</p>
	<p><strong>Carrera:</strong> {{ $solicitud_programa->carrera->nombre }}</p>
	<p><strong>Pensum Solicitado:</strong> {{ $solicitud_programa->pensum->nombre }}</p>
	<p><strong>Total:</strong> {{ $solicitud_programa->precio_fact }} Bs.S</p>
	<p><strong>Estado: </strong>Rechazada</p>
	<p><strong>Fecha de la Solicitud:</strong> {{ $solicitud_programa->created_at->format('d-m-Y') }}</p>
	<p><strong>Fecha Procesada:</strong> {{ $solicitud_programa->updated_at->format('d-m-Y') }}</p>
	@endif

	<h2 class="text-center">¡Gracias por utilizar nuestros servicios!</h2>

</body>
</html>