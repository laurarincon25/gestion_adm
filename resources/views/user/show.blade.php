
@extends('layouts.estudiante')

@section('content')

<div class="col-sm-offset-5 col-sm-7 col-md-offset-4 col-md-8 col-lg-offset-3 col-lg-9 main main_solicitud_create">

<style>
h3 {
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
    font-size: 30px;
    font-family: "Times New Roman", Times, serif;
    text-align: center;

}

</style>

	<ol class="breadcrumb">
		<li><a href="#"><em class="fa fa-user"></em></a></li>
		<li class="active">Perfil</li>
	</ol>

	@include('common.success')

	<div class="page-header">

		<h3 style="text-align: center">Mi perfil <p><small>Edite la información personal para mantener actualizado sus datos del perfil</small></p></h3>
	</div>
	@if($user)
	<ul class="list-group">
		<li class="list-group-item"><b>Cédula: </b>{{ $user->cedula }}</li>
		<li class="list-group-item"><b>Nombre completo: </b>{{ $user->name }}</li>
		<li class="list-group-item"><b>Correo: </b>{{ $user->email }}</li>
		<li class="list-group-item"><b>Dirección: </b>{{ $user->address }}</li>
		<li class="list-group-item"><b>Teléfono: </b>{{ $user->phone }}</li>
	</ul>
	@endif

	<a href="{{ route('user.edit',$user->id) }}" class="btn btn-primary">Editar Información</a>


</div>
@endsection