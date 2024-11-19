<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../vendor/bootstrap-5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../vendor/font/bootstrap-icons.css">
    <link rel="stylesheet" href="includes/style.css">
    <title>Rentbox</title>

</head>
<body>
    <?php
    require_once 'navbar.html';
    ?>
    <div class="container-fluid bg-body-secondary">
        <div class="container pt-5">
            <form class="d-flex my-lg-0">
                <input class="form-control me-sm-2 rounded-pill ps-4" type="text" placeholder="Search"/>
                <button class="btn btn-outline-success my-2 my-sm-0 rounded-circle d-flex align-items-center" type="submit">
                <i class="bi bi-search"></i>
                </button>
            </form>
        </div>
    <?//php
    //require_once 'includes/side.html';
    ?>
<main>
  <section class="py-5 text-center container">
    <div class="row py-lg-5">
      <div class="col-lg-6 col-md-8 mx-auto">
        <h1 class="fw-light">Rent your way.</h1>
        <p class="lead text-body-secondary">Something short and leading about the collection below—its contents, the creator, etc. Make it short and sweet, but not too short so folks don’t simply skip over it entirely.</p>
        <p>
          <a href="#" class="btn btn-success my-2">Main call to action</a>
        </p>
      </div>
    </div>
  </section>

  <div class="album py-5 rounded-4 bg-body-tertiary">
    <div class="container">

      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">

      <div class="col">
        <a href="item.php" class="card rounded-5 text-decoration-none">
          <svg class="bd-placeholder-img rounded-top-5 card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
          <div class="card-body">
            <div class="d-flex justify-content-between align-items-center">
              <div class="d-flex align-items-end">
              <h5 class="card-title mb-0 me-2">ACER Swift 3</h5>
              <small class="text-body-secondary ms-0">Laptop</small>  
              </div>
              <img class="pfp rounded-circle img-thumbnail" src="rb logo white.jpg" alt="pfp">
            </div>
              <h6 class="card-subtitle mb-2 text-success">PHP 200
              <small class="text-body-secondary">/day</small>
              </h6>
            <div class="d-flex gap-1 align-items-center">
              <i class="bi bi-star-fill text-warning"></i>
              <small class="text-body-secondary border-end pe-2">5</small>
              <i class="bi bi-geo-alt-fill ps-2 text-warning"></i>
              <small class="text-body-secondary">Tetuan, Zamboanga City</small>
            </div>
          </div>
        </a>
      </div>

      <div class="col">
        <a href="" class="card rounded-5 text-decoration-none">
          <svg class="bd-placeholder-img rounded-top-5 card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
          <div class="card-body">
            <div class="d-flex justify-content-between align-items-center">
              <div class="d-flex align-items-end">
              <h5 class="card-title mb-0 me-2">ACER Swift 3</h5>
              <small class="text-body-secondary ms-0">Laptop</small>  
              </div>
              <img class="pfp rounded-circle img-thumbnail" src="rb logo white.jpg" alt="pfp">
            </div>
              <h6 class="card-subtitle mb-2 text-success me-0">PHP 200
                <small class="text-body-secondary">/day</small>
              </h6>
            <div class="d-flex gap-1 align-items-center">
              <i class="bi bi-star-fill text-warning"></i>
              <small class="text-body-secondary border-end pe-2">5</small>
              <i class="bi bi-geo-alt-fill ps-2 text-warning"></i>
              <small class="text-body-secondary">Tetuan, Zamboanga City</small>
            </div>
          </div>
        </a>
      </div>

      <div class="col">
        <a href="" class="card rounded-5 text-decoration-none">
          <svg class="bd-placeholder-img rounded-top-5 card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
          <div class="card-body">
            <div class="d-flex justify-content-between align-items-center">
              <div class="d-flex align-items-end">
              <h5 class="card-title mb-0 me-2">ACER Swift 3</h5>
              <small class="text-body-secondary ms-0">Laptop</small>  
              </div>
              <img class="pfp rounded-circle img-thumbnail" src="rb logo white.jpg" alt="pfp">
            </div>
              <h6 class="card-subtitle mb-2 text-success">PHP 200
              <small class="text-body-secondary">/day</small>
              </h6>
            <div class="d-flex gap-1 align-items-center">
              <i class="bi bi-star-fill text-warning"></i>
              <small class="text-body-secondary border-end pe-2">5</small>
              <i class="bi bi-geo-alt-fill ps-2 text-warning"></i>
              <small class="text-body-secondary">Tetuan, Zamboanga City</small>
            </div>
          </div>
        </a>
      </div>
      

      

      </div>
    </div>
  </div>
</main>

<?php
require_once 'includes/footer.html';
?>

</body>
<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

</html>