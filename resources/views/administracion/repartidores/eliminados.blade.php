@extends('layouts.base')

@section('content')

    {{-- INICIO DEL CUERPO --}}

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
          <div class="container-fluid">
              <div class="row mb-0">
                  <div class="col-sm-6 mb-0">
                      <h1>Repartidores eliminados</h1>
                  </div>
                  
              </div>
          </div><!-- /.container-fluid -->
      </section>

      <!-- Main content -->
      <section class="content">
          <div class="container-fluid">
              <div class="row">
                  <div class="col-12">
                      <div class="card">

                          <!-- /.card-header -->
                          <div class="card-body">
                       
                            <table id="example2" class="table table-bordered table-sm table-hover table-striped ">
                                <thead>
                                    <tr>
                                        <th> id </th>
                                        <th> nombre </th>
                                        <th> apellidos </th>
                                        <th> edad </th>
                                        <th> telefono </th>
                                        <th> nro licencia </th>
                                        <th> login </th>
                                        <th width="7px">Acción</th>
                                            
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($repartidores as $repartidor)
                                        <tr>
                                            <td>{{ $repartidor->id }}</td>
                                            <td>{{ $repartidor->nombre }}</td>
                                            <td>{{ $repartidor->apellidos }}</td>
                                            <td>{{ $repartidor->edad }}</td>
                                            <td>{{ $repartidor->telefono }}</td>
                                            <td>{{ $repartidor->nro_licencia }}</td>
                                            @php($id_user=$repartidor->id_usuario)
                                            @foreach ($usuarios as $usuario)
                                              @if ($id_user == $usuario->id)
                                              <td>{{ $usuario->email }}</td>  
                                              @endif
                                            @endforeach

              
                                            <td class="text-center">
                                                <a href="#" data-href="{{ asset('administracion/repartidor/restaurar') }}/{{ $repartidor->id }}" rel="tooltip" title="Restaurar" data-toggle="modal" data-target="#modal-confirma" class="btn btn-secondary btn-sm"><i class="fas fa-arrow-alt-circle-up"></i></a>
                                            </td> 
                                          
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                          </div>
                          <!-- /.card-body -->

                      </div>
                      <!-- /.card -->

                  </div>
                  <!-- /.col -->
              </div>
              <!-- /.row -->
          </div>
          <!-- /.container-fluid -->
      </section>
      <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Modal -->
  <!-- Modal -->
  <div class="modal fade" id="modal-confirma" data-backdrop="static">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Restaurar Registro</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>¿Desea Restaurar este registro?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Cancelar</button>
                <a class="btn btn-danger btn-ok btn-sm">Confirmar</a>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
  </div>
    <!-- /.modal -->

@endsection