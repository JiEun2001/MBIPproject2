<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html lang="pt-br" data-bs-theme="dark">

<head>
   <title>Viajar é Preciso</title>
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
  
	
  </style>
</head>

<body>


  <!-- nav bar -->
  <nav class="navbar navbar-expand-lg bg-nav-green p-4 ">
    <div class="container">

      <!-- Logo -->
      <a class=" navbar-brand navbar-brand-white" href="#"><strong>MBIP <i class="bi bi-globe"></i></strong></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <!-- MENU -->
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="/MBIPproject2/Home">Home</a>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Forms
            </a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="/MBIPproject2/form/show">Water</a></li>
              <li><a class="dropdown-item" href="/MBIPproject2/electricForm/">Electric</a></li>
              <li><a class="dropdown-item" href="#">Recycle</a></li>
              <li><a class="dropdown-item" href="#">Transportation</a></li>
            </ul>
          </li>     
          </li>
          <li><a class="nav-link" aria-current="page" href="#">Track Progress</a>
          </li>


        </ul>
        <div class="d-flex">
          <a href="/MBIPproject2/" class="btn btn-success">Log Out</a>
        </div>
      </div>
    </div>
  </nav>


  <!-- Modal CONTATO-->
  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="exampleModalLabel">Contato</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>

        <div class="modal-body">
          <div class="mb-3">
            <label for="exampleFormControlInput2" class="form-label">Nome</label>
            <input type="name" class="form-control" id="exampleFormControlInput2" placeholder="Jessica Ferraz">
          </div>
          <div class="mb-3">
            <label for="exampleFormControlInput1" class="form-label">Email</label>
            <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
          </div>
          <div class="mb-3">
            <label for="inputPhone" class="form-label">Telefone</label>
            <input type="number" class="form-control" id="inputPhone" placeholder="(__)________">
          </div>
          <div class="mb-3">
            <label for="exampleFormControlTextarea1" class="form-label">Mensagem</label>
            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"
              placeholder="Escreva sua mensagem."></textarea>
          </div>

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fechar</button>
          <button type="button" class="btn btn-primary">Enviar</button>
        </div>
      </div>
    </div>
  </div>



  <header class="container my-4">
    <div class="row">
      <!-- vai ocupar todo o espaço se a tela for pequena -->
      <!-- col-lg-6 para telas grandes -->
      <div class="col-12 col-lg-6">
        <h1 class="text-center pt-5 mt-4">WELCOME TO MBIP LOW CARBON MONITORING SYSTEM!</h1>
        <div class="text-center text-md-center">
          <button type="button" class="btn btn-outline-success mt-2 ms-4" style="font-size: 2rem;">button
          </button>

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
        
<!--   Mundo Inteiro       -->
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
        </div>

<!-- Experiência Personalizada -->
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
        </div>

<!-- Atendimento 24h  -->
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

        </div>
      </div>
    </div>
  </section>


  <!-- REDES SOCIAIS -->
  <section class=" mt-5 mt-5 pt-8 pb-4">
    <div class="container">
      <div class="row">
        <div class="offset-lg-2 col-lg-8 col-md-12 col-12">
          <div class="text-center px-lg-18 mb-8">
            <p class="text-sucess"><strong><i class="bi bi-airplane"></i></strong> Viajar é Preciso <i
                class="bi bi-globe"></i></strong></p>
            <p class="mb-0">
              Viajar é preciso sempre! Deixe que a gente cuide desses momentos únicos para você.
            </p>
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




  <footer class="mt-3 text-center bg-body-tertiary">
    <h2 style="font-size: 1rem;">Referências</h2>
    <ul style="list-style-type: none;">
      <li style="font-size: 0.9rem;">Imagem de <a
          href="https://pixabay.com/pt/users/pamjpat-6320763/?utm_source=link-attribution&utm_medium=referral&utm_campaign=image&utm_content=2714675"
          target="_blank" style="text-decoration: none;">Pam Patterson</a> por <a
          href="https://pixabay.com/pt//?utm_source=link-attribution&utm_medium=referral&utm_campaign=image&utm_content=2714675"
          target="_blank" style="text-decoration: none;">Pixabay</a>
      </li>

      <li style="font-size: 0.9rem;">Baseado em: <a href="https://www.youtube.com/watch?v=_TyXLKNvk1Y" target="_blank"
          style="text-decoration: none;">Construindo um site completo com Bootstrap 5</a> por Diego Mariano</li>

      <li style="font-size: 0.9rem;">Baseado em: <a href="https://themes.getbootstrap.com/preview/?theme_id=61529"
          target="_blank" style="text-decoration: none;">Tema Geeks</a></li>

      <li style="font-size: 0.9rem;">Baseado em: <a href="https://themes.getbootstrap.com/preview/?theme_id=23273"
          target="_blank" style="text-decoration: none;">Tema LandKit</a></li>

      <li style="font-size: 0.9rem";>Dark mode de <a href="https://youtu.be/9VDsk-wU_Yo?si=DIjETqE3seR8BlxW" target="_blank" style="text-decoration: none;">Modo Dark e Modo Light por Estudante dev | Escola de Programação</a></li>

      <li style="font-size: 0.9rem;">Imagem de <a
          href="https://pixabay.com/pt/users/tneto-13097599/?utm_source=link-attribution&utm_medium=referral&utm_campaign=image&utm_content=4769367"
          target="_blank" style="text-decoration: none;">Turiano L P Neto</a> por <a
          href="https://pixabay.com/pt//?utm_source=link-attribution&utm_medium=referral&utm_campaign=image&utm_content=4769367"
          target="_blank" style="text-decoration: none;">Pixabay</a></li>

      <li style="font-size: 0.9rem;">Imagem de <a
          href="https://pixabay.com/pt/users/12019-12019/?utm_source=link-attribution&utm_medium=referral&utm_campaign=image&utm_content=1963744"
          target="_blank" style="text-decoration: none;">12019</a>
        por <a
          href="https://pixabay.com/pt//?utm_source=link-attribution&utm_medium=referral&utm_campaign=image&utm_content=1963744"
          target="_blank" style="text-decoration: none;">Pixabay</a>
      </li>

      <li style="font-size: 0.9rem;">Imagem de <a
          href="https://pixabay.com/pt/users/babelphotography-155772/?utm_source=link-attribution&utm_medium=referral&utm_campaign=image&utm_content=279013" target="_blank" style="text-decoration: none;">Bela Balla</a> por <a
          href="https://pixabay.com/pt//?utm_source=link-attribution&utm_medium=referral&utm_campaign=image&utm_content=279013"
          target="_blank" style="text-decoration: none;">Pixabay</a>
      </li>

      <li style="font-size: 0.9rem;">Imagem de <a
          href="https://pixabay.com/pt/users/fonthipward-119618/?utm_source=link-attribution&utm_medium=referral&utm_campaign=image&utm_content=261506" target="_blank" style="text-decoration: none;">Fonthip
        Ward</a> por <a href="https://pixabay.com/pt//?utm_source=link-attribution&utm_medium=referral&utm_campaign=image&utm_content=261506"
          target="_blank" style="text-decoration: none;">Pixabay</a>
      </li>
      <li style="font-size: 0.9rem;">Imagem de <a
          href="https://pixabay.com/pt/users/noel_bauza-2019050/?utm_source=link-attribution&utm_medium=referral&utm_campaign=image&utm_content=1197753"
          target="_blank" style="text-decoration: none;">Noel
        Bauza</a> por <a
          href="https://pixabay.com/pt//?utm_source=link-attribution&utm_medium=referral&utm_campaign=image&utm_content=1197753"
          target="_blank" style="text-decoration: none;">Pixabay</a>
      </li>
      <li style="font-size: 0.9rem;">Imagem de <a
          href="https://pixabay.com/pt/users/wallula-3205382/?utm_source=link-attribution&utm_medium=referral&utm_campaign=image&utm_content=2835995"
          target="_blank" style="text-decoration: none;">Wallula</a>
        por <a
          href="https://pixabay.com/pt//?utm_source=link-attribution&utm_medium=referral&utm_campaign=image&utm_content=2835995"
          target="_blank" style="text-decoration: none;">Pixabay</a>
      </li>


      <li style="font-size: 0.9rem;">Imagem de <a
          href="https://pixabay.com/pt/users/nonmisvegliate-7011191/?utm_source=link-attribution&utm_medium=referral&utm_campaign=image&utm_content=3654227"
          target="_blank" style="text-decoration: none;">Luca</a>
        por <a
          href="https://pixabay.com/pt//?utm_source=link-attribution&utm_medium=referral&utm_campaign=image&utm_content=3654227"
          target="_blank" style="text-decoration: none;">Pixabay</a>
      </li>

      <li style="font-size: 0.9rem;">Imagem de <a
          href="https://pixabay.com/pt/users/cezzare-5062712/?utm_source=link-attribution&utm_medium=referral&utm_campaign=image&utm_content=2267089"
          target="_blank" style="text-decoration: none;">Cesar
          Salazar</a> por <a
          href="https://pixabay.com/pt//?utm_source=link-attribution&utm_medium=referral&utm_campaign=image&utm_content=2267089"
          target="_blank" style="text-decoration: none;">Pixabay</a>
      </li>
    </ul>
    <span>&copy; 2023 Desenvolvido por Jéssica Ferraz</span>
  </footer>


  <!-- BOOTSTRAP JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
    crossorigin="anonymous"></script>


</html>