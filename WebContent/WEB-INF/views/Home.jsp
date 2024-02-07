<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html lang="pt-br" data-bs-theme="dark">

<head>
   <title>MBIP</title>
  <!-- LINKS BOOTSTRAP -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

  <!-- ICONES -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
  <style>
  body {
	  background-color: #fff;
  }

	
	.bg-nav-green {
    background-color: #8bc34a;  !important;/* Bootstrap's .bg-success color for example */
}

.navbar-brand-white {
    color: #ffffff; /* White color */
  }
  
  .welcome-brand-white {
    color: #8F8F8F; /* White color */
  }
  
  footer {
  position: fixed;
  left: 0;
  bottom: 0;
  width: 100%;
  text-align: center;
}
  
  
	
  </style>
</head>

<body>


  <!-- nav bar -->
 <jsp:include page="header.jsp" />
  



  <header class="container my-4">
    <div class="row">
      <!-- vai ocupar todo o espaço se a tela for pequena -->
      <!-- col-lg-6 para telas grandes -->
      <div class="col-12 col-lg-6">
        <h1 class="text-center pt-5 mt-4 welcome-brand-white">WELCOME TO MBIP LOW CARBON MONITORING SYSTEM!</h1>
        <div class="text-center text-md-center">
          <a href="/MBIPproject2/form/show" type="button" class="btn btn-outline-success mt-2 ms-4" style="font-size: 2rem;" >Get Started!</a>

        </div>


      </div>

      <div class="col-12 col-lg-6 my-4 img-thumbnail">
        <!-- <img src="img/passport.jpg" alt="Passaporte no mapa mundi p-5" class="img-fluid img-thumbnail"> -->
        <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
          <div class="carousel-inner">
            
            <div class="carousel-item active">
              <img src="https://i.postimg.cc/PxksczNn/233005034-4474764365913100-7776126276834240198-n.jpg" class="d-block w-100" alt="vitória régiaa">
            </div>
            <div class="carousel-item">
              <img src="https://i.postimg.cc/TwqMXLWL/318129611-531330258917029-8821775629174519451-n.jpg" class="d-block w-100" alt="aurora boreal">
            </div>
<!--       Fim Aurora        -->
            
            

            <div class="carousel-item">
              <img src="https://i.postimg.cc/CxXVCVg1/46741503-565871910503011-4732197724101804032-o-1558367934.jpg" class="d-block w-100" alt="Egito">
            </div>         
          </div>
<!--        Fim de carousel-inner    -->
        </div>
      </div>


    </div>
  </header>

  <!-- Section CARDS -->
  <section class="py-8 py-md-11 ">
    <div class="container">
      <div class="row">
        
<!--   Mundo Inteiro      
        <div class="col-12 col-md-4">
          <div class="card  mb-6 mb-md-0" style="width: 18rem;">
            <div class="card-body">
              <h5 class="card-title text-center text-success" style="font-size: x-large;"><i class="bi bi-globe"></i>
              </h5>
              <h6 class="card-subtitle mb-2 text-body-secondary">Mundo inteiro</h6>
              <p class="card-text">Planejamos sua viagem para qualquer lugar do mundo.
                <br>
                <br>
                <br>
              </p>

            </div>
          </div>
        </div> -->

<!-- Experiência Personalizada 
        <div class="col-12 col-md-4">
          <div class="card mb-6 mb-md-0" style="width: 18rem; ">
            <div class="card-body ">
              <h5 class="card-title text-center text-success" style="font-size: x-large;"><i class="bi bi-suitcase"></i>
              </h5>
              <h6 class="card-subtitle mb-2 text-body-secondary">Experiências Personalizadas </h6>
              <p class="card-text">Nossas viagens são sob medida, você escolhe o itinerário, acomodações, atividades
                entre outros.</p>

            </div>
          </div>
        </div>-->

<!-- Atendimento 24h 
        <div class="col-12 col-md-4 ">
          <div class="card  mb-6 mb-md-0" style="width: 18rem;">
            <div class="card-body">
              <h5 class="card-title text-center text-success" style="font-size: x-large;"><i
                  class="bi bi-telephone"></i>
              </h5>
              <h6 class="card-subtitle mb-2 text-body-secondary">Atendimento 24h </h6>
              <p class="card-text">Nossas viagens são sob medida, você escolhe o itinerário, acomodações, atividades
                entre
                outros.</p>

            </div>
          </div>

        </div> -->
      </div>
    </div>
  </section>


  <!-- REDES SOCIAIS -->
  <section class=" mt-5 mt-5 pt-8 pb-4">
    <div class="container">
      <div class="row">
        <div class="offset-lg-2 col-lg-8 col-md-12 col-12">
          <div class="text-center px-lg-18 mb-8">
            
            <div class="mt-4">
              <a href="0" class="text-inherit text-success me-3" target="_blank" title="WhatsApp"><i
                  class="bi bi-whatsapp"></i></a>
              <a href="0" class="text-inherit text-success me-3" target="_blank" title="Instagram"><i
                  class="bi bi-instagram"></i></a>
              <a href="0" class="text-inherit text-success me-3" target="_blank" title="Facebook"><i
                  class="bi bi-facebook"></i></a>
            </div>
          </div>

        </div>
      </div>
    </div>

  </section>




  <footer class="mt-3 text-center bg-body-tertiary footer">
    <h2 style="font-size: 1rem;">Contact</h2>
    <ul style="list-style-type: none;">

      <li style="font-size: 0.9rem;">Whatsapp Admin: <a href="https://www.youtube.com/watch?v=_TyXLKNvk1Y" target="_blank"
          style="text-decoration: none;">+6012 345 678</li>

      <li style="font-size: 0.9rem;">Email: <a href="https://themes.getbootstrap.com/preview/?theme_id=61529"
          target="_blank" style="text-decoration: none;">mbip@gmail.com</a></li>
    </ul>
    <span>&copy; 2023 Copyright: MBIP.com</span>
  </footer>





</html>