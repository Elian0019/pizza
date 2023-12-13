
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Pizza - Delimar</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nothing+You+Could+Do" rel="stylesheet">

    <link rel="stylesheet" href="vendor/assets/boostrap4/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="vendor/assets/boostrap4/css/animate.css">

    <link rel="stylesheet" href="vendor/assets/boostrap4/css/owl.carousel.min.css">
    <link rel="stylesheet" href="vendor/assets/boostrap4/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="vendor/assets/boostrap4/css/magnific-popup.css">
    <link rel="stylesheet" href="vendor/assets/boostrap4/css/aos.css">
    <link rel="stylesheet" href="vendor/assets/boostrap4/css/ionicons.min.css">
    <link rel="stylesheet" href="vendor/assets/boostrap4/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="vendor/assets/boostrap4/css/jquery.timepicker.css">
    <link rel="stylesheet" href="vendor/assets/boostrap4/css/flaticon.css">
    <link rel="stylesheet" href="vendor/assets/boostrap4/css/icomoon.css">
    <link rel="stylesheet" href="vendor/assets/boostrap4/css/style.css">
  </head>
  <body>
    @extends('layouts.basehome')
  	<!--<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
		      <a class="navbar-brand" href="index.html"><span class="flaticon-pizza-1 mr-1"></span>Pizza<br><small>Delimar</small></a>
		      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
		        <span class="oi oi-menu"></span> Menu
		      </button>
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item active"><a href="index.html" class="nav-link">Home</a></li>
	          <li class="nav-item"> <a href="{{ url('/') }}" class="nav-link">Productos</a></li>
	          <li class="nav-item"><a href="{{ route('contactanos.index') }}" class="nav-link">Enviar SMS</a></li>
	          <li class="nav-item">
                <a id="dropdownSubMenu1" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link dropdown-toggle">Categorias</a>
                <ul aria-labelledby="dropdownSubMenu1" class="dropdown-menu border-0 shadow">

                    @if (isset($categorias))
                      @foreach ($categorias as $categoria)
                        <li><a href="{{ route('cargar.categoria',$categoria->id) }}" class="dropdown-item">{{$categoria->nombre}} </a></li>
                      @endforeach
                    @else
                      <li><a href="#" class="dropdown-item">No hay categoria </a></li>

                    @endif


                    <li class="dropdown-divider"></li>


                  </ul>
              </li>

	          <li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
	          <li class="nav-item"><a href="{{asset('administracion')}}" class="nav-link">Admin</a></li>
	        </ul>
	      </div>
		  </div>
	  </nav>
     END nav -->

    <section class="home-slider owl-carousel img" style="background-image: url(images/bg_1.jpg);">
     <!-- <div class="slider-item">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text align-items-center" data-scrollax-parent="true">

            <div class="col-md-6 col-sm-12 ftco-animate">
            	<span class="subheading">Delicious</span>
              <h1 class="mb-4">Italian Cuizine</h1>


            </div>
            <div class="col-md-6 ftco-animate">
            	<img src="vendor/assets/boostrap4/images/bg_1.png" class="img-fluid" alt="">
            </div>

          </div>
        </div>
      </div>
    -->
    <!--  <div class="slider-item">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text align-items-center" data-scrollax-parent="true">

            <div class="col-md-6 col-sm-12 order-md-last ftco-animate">
            	<span class="subheading">Crunchy</span>
              <h1 class="mb-4">Italian Pizza</h1>
              <p class="mb-4 mb-md-5">A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
              <p><a href="#" class="btn btn-primary p-3 px-xl-4 py-xl-3">Order Now</a> <a href="#" class="btn btn-white btn-outline-white p-3 px-xl-4 py-xl-3">View Menu</a></p>
            </div>
            <div class="col-md-6 ftco-animate">
            	<img src="vendor/assets/boostrap4/images/bg_2.png" class="img-fluid" alt="">
            </div>

          </div>
        </div>
      </div>-->

      <div class="slider-item" style="background-image: url(vendor/assets/boostrap4/images/bg_3.jpg);">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">

            <div class="col-md-7 col-sm-12 text-center ftco-animate">
            	<span class="subheading">Bienvenido</span>
              <h1 class="mb-4">Pide la pizza que mas te guste</h1>
              <p class="mb-4 mb-md-5">Deliciosas pizzas solo en Delimar</p>
            </div>

          </div>
        </div>
      </div>
    </section>



    <section class="ftco-about d-md-flex">
    	<div class="one-half img" style="background-image: url(vendor/assets/boostrap4/images/about.jpg);"></div>
    	<div class="one-half ftco-animate">
        <div class="heading-section ftco-animate ">
          <h2 class="mb-4 text-white">Bienvenido a <span class="flaticon-pizza">Pizza</span> Delimar</h2>
        </div>
        <div>
  				<p class="text-white">Bienvenido a Delimar, el rincón acogedor donde el arte de la pizza cobra vida. Sumérgete en una experiencia gastronómica única mientras te entregamos el sabor auténtico de Italia en cada bocado. En Delimar, nos enorgullece crear pizzas excepcionales utilizando ingredientes frescos y de la más alta calidad, combinados con pasión y experiencia culinaria. Nuestro menú ofrece una variedad tentadora de pizzas, desde las clásicas Margherita hasta innovadoras combinaciones de sabores que deleitarán tu paladar. Cada pizza se hornea a la perfección, creando una fusión de quesos fundidos, salsas deliciosas y ingredientes frescos que harán que vuelvas por más. Además de nuestras pizzas artesanales, en Delimar también te ofrecemos una selección refrescante de gaseosas para complementar tu experiencia culinaria. Desde las clásicas hasta opciones más exóticas, tenemos la bebida perfecta para acompañar tu pizza favorita.</p>
  			</div>
    	</div>
    </section>




    <section class="ftco-menu">
    	<div class="container-fluid">
    		<div class="row d-md-flex">
	    		<div class="col-lg-4 ftco-animate img f-menu-img mb-5 mb-md-0" style="background-image: url(vendor/assets/boostrap4/images/about.jpg);">
	    		</div>
	    		<div class="col-lg-8 ftco-animate p-md-5">
		    		<div class="row">
		          <div class="col-md-12 nav-link-wrap mb-5">
		            <div class="nav ftco-animate nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
		              <a class="nav-link active" id="v-pills-1-tab" data-toggle="pill" href="#v-pills-1" role="tab" aria-controls="v-pills-1" aria-selected="true">Todos</a>
		            </div>
		          </div>
		          <div class="col-md-12 d-flex align-items-center">

		            <div class="tab-content ftco-animate" id="v-pills-tabContent">

		              <div class="tab-pane fade show active" id="v-pills-1" role="tabpanel" aria-labelledby="v-pills-1-tab">

                        <div class="row row-cols-1 row-cols-sm-2  row-cols-md-3 row-cols-lg-4  g-3">
@foreach ( $productos as $row )
@php
$imagen = "img/productos/".$row->id.".jpg";
if (!file_exists($imagen)) {$imagen = "img/productos/150x150.png";}
@endphp
                            <div class="col-md-4 text-center">
		              			<div class="menu-wrap">
		              				<a href="#" class="menu-img img mb-4" style="background-image: url({{$imagen}});"></a>
		              				<div class="text">
		              					<h3 ><a href="#">{{$row->nombre}}</a></h3>
		              					<p class="text-white">{{$row->descripcion}}</p>
		              					<p class="price"><span>{{$row->precio}} Bs </span></p>
		              					<p><a  onclick="addproducto({{$row->id}})" class="btn btn-white btn-outline-white">Añadir al carrito</a></p>
		              				</div>
		              			</div>
		              		</div>
@endforeach
		              	</div>
		              </div>

		              <div class="tab-pane fade" id="v-pills-2" role="tabpanel" aria-labelledby="v-pills-2-tab">
		                <div class="row">
		              		<div class="col-md-4 text-center">
		              			<div class="menu-wrap">
		              				<a href="#" class="menu-img img mb-4" style="background-image: url(vendor/assets/boostrap4/images/drink-1.jpg);"></a>
		              				<div class="text">
		              					<h3><a href="#">Lemonade Juice</a></h3>
		              					<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
		              					<p class="price"><span>$2.90</span></p>
		              					<p><a href="#" class="btn btn-white btn-outline-white">Add to cart</a></p>
		              				</div>
		              			</div>
		              		</div>
		              		<div class="col-md-4 text-center">
		              			<div class="menu-wrap">
		              				<a href="#" class="menu-img img mb-4" style="background-image: url(vendor/assets/boostrap4/images/drink-2.jpg);"></a>
		              				<div class="text">
		              					<h3><a href="#">Pineapple Juice</a></h3>
		              					<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
		              					<p class="price"><span>$2.90</span></p>
		              					<p><a href="#" class="btn btn-white btn-outline-white">Add to cart</a></p>
		              				</div>
		              			</div>
		              		</div>
		              		<div class="col-md-4 text-center">
		              			<div class="menu-wrap">
		              				<a href="#" class="menu-img img mb-4" style="background-image: url(vendor/assets/boostrap4/images/drink-3.jpg);"></a>
		              				<div class="text">
		              					<h3><a href="#">Soda Drinks</a></h3>
		              					<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
		              					<p class="price"><span>$2.90</span></p>
		              					<p><a href="#" class="btn btn-white btn-outline-white">Add to cart</a></p>
		              				</div>
		              			</div>
		              		</div>
		              	</div>
		              </div>

		              <div class="tab-pane fade" id="v-pills-3" role="tabpanel" aria-labelledby="v-pills-3-tab">
		                <div class="row">
		              		<div class="col-md-4 text-center">
		              			<div class="menu-wrap">
		              				<a href="#" class="menu-img img mb-4" style="background-image: url(vendor/assets/boostrap4/images/burger-1.jpg);"></a>
		              				<div class="text">
		              					<h3><a href="#">Itallian Pizza</a></h3>
		              					<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
		              					<p class="price"><span>$2.90</span></p>
		              					<p><a href="#" class="btn btn-white btn-outline-white">Add to cart</a></p>
		              				</div>
		              			</div>
		              		</div>
		              		<div class="col-md-4 text-center">
		              			<div class="menu-wrap">
		              				<a href="#" class="menu-img img mb-4" style="background-image: url(vendor/assets/boostrap4/images/burger-2.jpg);"></a>
		              				<div class="text">
		              					<h3><a href="#">Itallian Pizza</a></h3>
		              					<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
		              					<p class="price"><span>$2.90</span></p>
		              					<p><a href="#" class="btn btn-white btn-outline-white">Add to cart</a></p>
		              				</div>
		              			</div>
		              		</div>
		              		<div class="col-md-4 text-center">
		              			<div class="menu-wrap">
		              				<a href="#" class="menu-img img mb-4" style="background-image: url(vendor/assets/boostrap4/images/burger-3.jpg);"></a>
		              				<div class="text">
		              					<h3><a href="#">Itallian Pizza</a></h3>
		              					<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
		              					<p class="price"><span>$2.90</span></p>
		              					<p><a href="#" class="btn btn-white btn-outline-white">Add to cart</a></p>
		              				</div>
		              			</div>
		              		</div>
		              	</div>
		              </div>

		              <div class="tab-pane fade" id="v-pills-4" role="tabpanel" aria-labelledby="v-pills-4-tab">
		                <div class="row">
		              		<div class="col-md-4 text-center">
		              			<div class="menu-wrap">
		              				<a href="#" class="menu-img img mb-4" style="background-image: url(vendor/assets/boostrap4/images/pasta-1.jpg);"></a>
		              				<div class="text">
		              					<h3><a href="#">Itallian Pizza</a></h3>
		              					<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
		              					<p class="price"><span>$2.90</span></p>
		              					<p><a href="#" class="btn btn-white btn-outline-white">Add to cart</a></p>
		              				</div>
		              			</div>
		              		</div>
		              		<div class="col-md-4 text-center">
		              			<div class="menu-wrap">
		              				<a href="#" class="menu-img img mb-4" style="background-image: url(vendor/assets/boostrap4/images/pasta-2.jpg);"></a>
		              				<div class="text">
		              					<h3><a href="#">Itallian Pizza</a></h3>
		              					<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
		              					<p class="price"><span>$2.90</span></p>
		              					<p><a href="#" class="btn btn-white btn-outline-white">Add to cart</a></p>
		              				</div>
		              			</div>
		              		</div>
		              		<div class="col-md-4 text-center">
		              			<div class="menu-wrap">
		              				<a href="#" class="menu-img img mb-4" style="background-image: url(vendor/assets/boostrap4/images/pasta-3.jpg);"></a>
		              				<div class="text">
		              					<h3><a href="#">Itallian Pizza</a></h3>
		              					<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
		              					<p class="price"><span>$2.90</span></p>
		              					<p><a href="#" class="btn btn-white btn-outline-white">Add to cart</a></p>
		              				</div>
		              			</div>
		              		</div>
		              	</div>
		              </div>
		            </div>
		          </div>
		        </div>
		      </div>
		    </div>
    	</div>
    </section>




  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

  <script  type="text/javascript">

    //ESTA FUNICION ES PARA ELIMINAR UNA REGISTRO DE LA TABLA TEMPORAL
    function addproducto(id_producto) {
        var url='{{url('')}}/carrito-agregar/'+ id_producto;
        $.ajax({
            url: url,
            method:"GET",
            success: function(resultado){
                if (resultado == 0) {
                }
                else{
                    var resultado= JSON.parse(resultado);
                    // alert(resultado.datos);
                    $("#ContadorCart").html(resultado.datos);
                    if (resultado.datos) {
                      toastr.success('Producto añadido correctamente','Añadido')
                    }
                }
            }
        });
    }

  </script>
  <script src="vendor/assets/boostrap4/js/jquery.min.js"></script>
  <script src="vendor/assets/boostrap4/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="vendor/assets/boostrap4/js/popper.min.js"></script>
  <script src="vendor/assets/boostrap4/js/bootstrap.min.js"></script>
  <script src="vendor/assets/boostrap4/js/jquery.easing.1.3.js"></script>
  <script src="vendor/assets/boostrap4/js/jquery.waypoints.min.js"></script>
  <script src="vendor/assets/boostrap4/js/jquery.stellar.min.js"></script>
  <script src="vendor/assets/boostrap4/js/owl.carousel.min.js"></script>
  <script src="vendor/assets/boostrap4/js/jquery.magnific-popup.min.js"></script>
  <script src="vendor/assets/boostrap4/js/aos.js"></script>
  <script src="vendor/assets/boostrap4/js/jquery.animateNumber.min.js"></script>
  <script src="vendor/assets/boostrap4/js/bootstrap-datepicker.js"></script>
  <script src="vendor/assets/boostrap4/js/jquery.timepicker.min.js"></script>
  <script src="vendor/assets/boostrap4/js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="vendor/assets/boostrap4/js/google-map.js"></script>
  <script src="vendor/assets/boostrap4/js/main.js"></script>

  </body>
</html>
