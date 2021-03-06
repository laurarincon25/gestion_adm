<div id="modal-aprobar-solicitud-{{ $solicitud->id }}" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      {!! Form::open(array('route' => ['solicitud.update',$solicitud],'method' => 'PUT','files' => true)) !!}
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h3 class="text-center modal-title">Culminar Solicitud</h3>
      </div>
      <div class="modal-body">
        <p>¿Está seguro de culminar esta solicitud?</p>
        <input type="hidden" name="status" value="A">
      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-primary" data-dissmis="modal">Si</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
      </div>
    </div>
    {!! Form::close() !!}
  </div>
</div>
