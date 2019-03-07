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

</style>
<div class="col-sm-offset-5 col-sm-7 col-md-offset-4 col-md-8 col-lg-offset-3 col-lg-9 main main_solicitud_create">
	
	<ol class="breadcrumb">
		<li><a href="#"><em class="fa fa-dollar"></em></a></li>
		<li class="active">Precio por Documentos</li>
	</ol>

	@include('common.success')
	@include('common.errors')


	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Editar Precio</h1>
		</div>
	</div>

{!! Form::open(array('route' => ['precioDocumentos.update',$precio_documento],'method' => 'PUT')) !!}
<div class="panel panel-primary">
	<div class="panel-body">
		<div class="row">
			<div class="col-md-12">
				<div class="form-group">
					<input type="text" class="form-control" name="precio" value="{{ $precio_documento->precio }}">
				</div>
			</div>
		</div>
	</div>
	<div class="panel-footer">
		<input type="submit" class="btn btn-primary" value="Actualizar">
		<a href="{{ route('precioDocumentos.index') }}" class="btn btn-default">Regresar</a>
		
	</div>
</div>
{!! Form::close() !!}

</div>
@endsection