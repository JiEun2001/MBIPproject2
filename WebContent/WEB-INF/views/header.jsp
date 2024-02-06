<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<head>
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
              <li><a class="dropdown-item" href="#">Electric</a></li>
              <li><a class="dropdown-item" href="#">Recycle</a></li>
              <li><a class="dropdown-item" href="#">Transportation</a></li>
            </ul>
          </li>     
          </li>
          <li><a class="nav-link" aria-current="page" href="#">Track Progress</a>
          </li>


        </ul>
        <div class="d-flex">
          <a href="/MBIPproject2/Homepage" class="btn btn-success">Log Out</a>
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
  
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
    crossorigin="anonymous"></script>


