<div id="modal-pago-solicitud-{{ $solicitud->id }}" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      {!! Form::open(array('route' => ['solicitud.update',$solicitud],'method' => 'PUT','files' => true)) !!}
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
<<<<<<< HEAD
        <h3 class="text-center modal-title">Subir comprobante del pago</h3>
=======
        <h3 class="text-center modal-title">Suba el comprobante de pago</h3>
>>>>>>> 7013dd6075f3315ebb85a4576077c9eab25d3d1c
      </div>
      <div class="modal-body">
        {!! Form::file('pago_img', ['required']) !!}
      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-primary" data-dissmis="modal">Enviar</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
      </div>
    </div>
    {!! Form::close() !!}
  </div>
</div>
