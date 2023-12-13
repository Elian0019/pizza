<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Detalle de Venta</title>
    <link rel="stylesheet" href="{{asset('/vendor/dist/css/adminlte.min.css')}}">
</head>
<body>



  <!-- Content Wrapper. Contains page content -->

  <div >
      <!-- Content Header (Page header) -->


      <!-- Main content -->
      <section class="content">

          <div class="container-fluid">
              <div class="row">
                  <div class="col-12">
                      <div class="card mb-4" >
                          <!-- /.card-header -->
                          <div class="card-body">
                            <div class="row mb-0">
                                <div class="col-sm-12 mb-0">
                                   <center><h1>Detalle del pedido</h1></center>
                                </div>
                            </div>
                              <div class="form-inline">
                                <label class=" mr-2 text-bold" for="">Cliente: </label>
                                    <label class=" mr-2 font-weight-normal" for="">{{$clienteNombre}} </label>
                              </div>
                              <div class="form-inline">
                                <label class=" mr-2 text-bold" for="">Direccion de la tienda: </label>
                                    <label class=" mr-2 font-weight-normal" for="">Av. Pampa de La Madre, Montero </label>
                              </div>
                              <div class="form-inline">
                                <label class=" mr-2 text-bold" for="">Fecha: </label>
                                    <label class=" mr-2 font-weight-normal" for="">{{$mydate}} </label>
                              </div>
                        <br>
                              <table id="example2" class="table table-bordered table-sm table-hover table-striped ">

                                <thead>
                                      <tr>
                                          <th> cantidad </th>
                                          <th> nombre </th>
                                          <th> descripcion </th>
                                          <th> precio </th>
                                          <th> subtotal </th>

                                      </tr>
                                  </thead>
                                  <tbody>
                                      @foreach ($pedidos as $pedido)
                                          <tr>
                                              <td>{{$pedido->cantidad}}</td>
                                              <td>{{$pedido->pnombre}}</td>
                                              <td>{{$pedido->pdescripcion}}</td>
                                              <td>{{$pedido->pprecio}}</td>
                                              <td class="text-right">{{$pedido->subtotal}}</td>

                                          </tr>
                                      @endforeach
                                  </tbody>

                              </table>
                              <br>
                              <div class="d-flex justify-content-end">
                                  <div class="form-group">
                                    <div class="input-group input-group-sm mb-3">
                                        <div class="input-group-prepend">
                                          <span class="input-group-text" id="inputGroup-sizing-sm" >Total: </span>
                                        </div>
                                        <input type="text" class="form-control text-bold text-right" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" value="{{$total}}">
                                      </div>
                                  </div>
                              </div>
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

</body>
</html>
