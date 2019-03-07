@extends('layouts.estudiante')

@section('content')

<style>
h1 {
    font-size: 40px;
    color: #000000;
    margin-bottom: 45px;
    text-align: justify;
    text-align: center;
    text-indent: 30px;
    font-family: "Times New Roman", Times, serif;

}

p{
    text-align: justify;
    font-size: 17px;
    font-family: "Times New Roman", Times, serif;
    text-indent: 20px;
   
}

</style>
<div class="col-sm-offset-5 col-sm-7 col-md-offset-4 col-md-8 col-lg-offset-3 col-lg-9 main main_solicitud_create">
	
	<ol class="breadcrumb">
		<li><a href="#"><em class="fa fa-home"></em></a></li>
		<li class="active">Home</li>
	</ol>

	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Panel del Director Administrativo</h1>
		</div>
	</div>

	<div class="panel panel-container" >
		<div class="row" >
			<div class="col-lg-11" style="margin: 10px 0px 0px 10px">
				<p class="text-justify" style="color:#000000;">Administrar de forma eficiente los recursos financieros, personal humano y equipos pertenecientes a la Institución. Atendiendo y dando respuesta a todas las solicitudes realizadas por los usuarios con la finalidad de prestar un servicio de primera o solventar un problema de manera eficiente.</p>
			</div>
			
		</div>
	</div>

	<div class="panel-body">
		@if (session('status'))
		<div class="alert alert-success">
			{{ session('status') }}
		</div>
		@endif
	</div>

	<div class="panel panel-container">
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
				<div class="panel panel-teal panel-widget border-right">
					<br>
					<div class="row no-padding"><em class="fa fa-xl fa-file-archive-o"></em>
						<br>
						<br>
						<div class="text-muted">Solicitudes de Documentos</div>
						<a href="{{ route('solicitud.index') }}"><span class="badge">{{ count($solicitudes) }}</span></a>
					</div>
				</div>
			</div>

			<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
				<div class="panel panel-blue panel-widget border-right">
					<br>
					<div class="row no-padding"><em class="fa fa-xl fa-folder-open-o"></em>
						<br>
						<br>
						<div class="text-muted">Solicitudes de Programas</div>
						<a href="{{ route('programa.index') }}"><span class="badge">{{ count($solicitud_programas) }}</span></a>
					</div>
				</div>
			</div>

			<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
				<div class="panel panel-blue panel-widget border-right">
					<br>
					<div class="row no-padding"><em class="fa fa-xl fa fa-info-circle"></em>
						<br>
						<br>
						<div class="text-muted">Solicitudes de Servicios</div>
						<a href="{{ route('solicitudservicio.index') }}"><span class="badge">{{ count($solicitud_servicios) }}</span></a>
					</div>
				</div>
			</div>

		</div>
	</div>
</div>
@endsection