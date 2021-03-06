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
	@if($solicitud->status=="P")

		<h1 class="text-center">Solicitud de Documentos UCLA</h1>
		<h2 class="text-center">Usted ha hecho una solicitud de Documentos: Para realizar el pago puede hacer el deposito o transferencia (solo al mismo banco) Banco Provincial en la cuenta corriente 0108-0906-11-0100009808 UCLA RIF-G-20000077-5</h2>
		<p><strong>Código de la Solicitud:</strong> {{ $solicitud->uuid }}</p>
		<p><strong>Nombre del Solicitante:</strong> {{ $solicitud->user->name }}</p>
		<p><strong>Cédula del Solicitante:</strong> {{ $solicitud->user->cedula }}</p>
		<p><strong>Carrera:</strong> {{ $solicitud->carrera->nombre }}</p>
		<p><strong>Documentos Solicitados:</strong></p>

		@php
		$total=0;
		@endphp
		<ul>
			@foreach($solicitud->solicitudes_documentos as $documento)
			@php
			$total = $total+$documento->precio_fact;
			@endphp
			<li>{{ $documento->precio_fact }}</b> Bs.S {{ $documento->documento->nombre }}</li>
			@endforeach
		</ul>


		<p><strong>Total:</strong> {{ $total }} Bs.S</p>
		<p><strong>Estado: </strong>Pendiente</p>
		<p><strong>Fecha de la Solicitud:</strong> {{ $solicitud->created_at->format('d-m-Y') }}</p>

	@elseif($solicitud->status=="E")

	<h1 class="text-center">Su solicitud está en proceso de culminación</h1>
	<p><strong>Código de la Solicitud:</strong> {{ $solicitud->uuid }}</p>
	<p><strong>Nombre del Solicitante:</strong> {{ $solicitud->user->name }}</p>
	<p><strong>Cédula del Solicitante:</strong> {{ $solicitud->user->cedula }}</p>
	<p><strong>Carrera:</strong> {{ $solicitud->carrera->nombre }}</p>
	<p><strong>Documentos Solicitados:</strong></p>

	@php
	$total=0;
	@endphp
	<ul>
		@foreach($solicitud->solicitudes_documentos as $documento)
		@php
		$total = $total+$documento->precio_fact;
		@endphp
		<li>{{ $documento->precio_fact }}</b> Bs.S {{ $documento->documento->nombre }}</li>
		@endforeach
	</ul>


	<p><strong>Total:</strong> {{ $total }} Bs.S</p>
	<p><strong>Estado: </strong>En proceso</p>
	<p><strong>Fecha de la Solicitud:</strong> {{ $solicitud->created_at->format('d-m-Y') }}</p>
	<p><strong>Fecha Procesada:</strong> {{ $solicitud->updated_at->format('d-m-Y') }}</p>

	@elseif($solicitud->status=="A")

	<h1 class="text-center">La solicitud ha sido aprobada, sus documentos se les serán enviados al correo</h1>
	<p><strong>Código de la Solicitud:</strong> {{ $solicitud->uuid }}</p>
		<p><strong>Nombre del Solicitante:</strong> {{ $solicitud->user->name }}</p>
		<p><strong>Cédula del Solicitante:</strong> {{ $solicitud->user->cedula }}</p>
		<p><strong>Carrera:</strong> {{ $solicitud->carrera->nombre }}</p>
		<p><strong>Documentos Solicitados:</strong></p>

		@php
		$total=0;
		@endphp
		<ul>
			@foreach($solicitud->solicitudes_documentos as $documento)
			@php
			$total = $total+$documento->precio_fact;
			@endphp
			<li>{{ $documento->precio_fact }}</b> Bs.S {{ $documento->documento->nombre }}</li>
			@endforeach
		</ul>


		<p><strong>Total:</strong> {{ $total }} Bs.S</p>
		<p><strong>Estado: </strong>Aprobado</p>
		<p><strong>Fecha de la Solicitud:</strong> {{ $solicitud->created_at->format('d-m-Y') }}</p>
		<p><strong>Fecha de Aprobación:</strong> {{ $solicitud->updated_at->format('d-m-Y') }}</p>


	@elseif($solicitud->status=="M")

	<h1 class="text-center">La solicitud ha sido rechazada, al parecer no cumplió con los requisitos correspondientes, comuníquese con nosotros para más detalles</h1>
	<p><strong>Código de la Solicitud:</strong> {{ $solicitud->uuid }}</p>
		<p><strong>Nombre del Solicitante:</strong> {{ $solicitud->user->name }}</p>
		<p><strong>Cédula del Solicitante:</strong> {{ $solicitud->user->cedula }}</p>
		<p><strong>Carrera:</strong> {{ $solicitud->carrera->nombre }}</p>
		<p><strong>Documentos Solicitados:</strong></p>

		@php
		$total=0;
		@endphp
		<ul>
			@foreach($solicitud->solicitudes_documentos as $documento)
			@php
			$total = $total+$documento->precio_fact;
			@endphp
			<li>{{ $documento->precio_fact }}</b> Bs.S {{ $documento->documento->nombre }}</li>
			@endforeach
		</ul>


		<p><strong>Total:</strong> {{ $total }} Bs.S</p>
		<p><strong>Estado: </strong>Rechazado</p>
		<p><strong>Fecha de la Solicitud:</strong> {{ $solicitud->created_at->format('d-m-Y') }}</p>
		<p><strong>Fecha de Rechazo:</strong> {{ $solicitud->updated_at->format('d-m-Y') }}</p>

	@endif

	<h2 class="text-center">¡Gracias por utilizar nuestros servicios!</h2>

</body>
</html>