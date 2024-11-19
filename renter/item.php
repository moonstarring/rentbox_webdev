<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../vendor/bootstrap-5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../vendor/font/bootstrap-icons.css">
    <link rel="stylesheet" href="includes/style.css">
    <title>Rentbox</title>
    <style>
      .pfp {
        width: 40px; 
        height: 40px;
        border-radius: 50%;
        object-fit: cover;
      }
      .card:hover {
      transform: scale(1.01); 
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
      transition: transform 0.1s ease, box-shadow 0.1s ease;
      }
    </style>
</head>
<body class="">
    <?php
    require_once 'navbar.html';
    ?>

    <div class="container-fluid bg-body-secondary">
    
        <div class="container-fluid bg-body-secondary">
            <div class="container py-5">
                <form class="d-flex my-lg-0">
                    <input class="form-control me-sm-2 rounded-pill ps-4" type="text" placeholder="Search"/>
                    <button class="btn btn-outline-success my-2 my-sm-0 rounded-circle d-flex align-items-center" type="submit">
                    <i class="bi bi-search"></i>
                </button>
                </form>
            </div>
        </div>
        <main class="border bg-body mx-3 p-5 rounded-5 d-flex flex-row">
            <div id="carousel" class="carousel carousel-dark slide border mx-5">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                    <div class="carousel-inner d-flex">
                        <div class="carousel-item active" data-bs-interval="10000">
                            <img src="rb logo white.jpg" class="cover" alt="image">
                        </div>
                        <div class="carousel-item" data-bs-interval="2000">
                            <img src="rb logo white.jpg" class="cover" alt="image">
                        </div>
                        <div class="carousel-item">
                            <img src="rb logo white.jpg" class="cover" alt="image">
                        </div>
                    </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carousel" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon rounded-circle" aria-hidden="true"></span>
                  <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carousel" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Next</span>
                </button>
            </div>



            <div class="container-fluid">
                <div class="d-flex align-items-end gap-2 mb-2">
                <h1>Product Name</h1>  
                <h6 class="text-body-secondary pb-1">Laptop</h6>  
                </div>
                
                <div class="card gap-2 mb-2">
                    <div class="card-body">
                    <i class="bi bi-star-fill text-warning"></i>
                    <h5 class="border-end pe-2">5</h5>

                    <h5 class="text-primary">20</h5>
                    <h5 class="border-end pe-2">Ratings</h5>

                    <h5 class="text-success">21</h5>
                    <h5 class="pe-2">Rentals</h5>
                    </div>
                </div>

                
                <h5 class="mt-3">Condition</h5>
                <div class="d-flex gap-2 mb-2">
                    <h6 class="border rounded bg-outline-success p-1 text-success">Good</h5>
                    <h6 class="border rounded bg-outline-success p-1 text-success">Good</h5>
                    <h6 class="border rounded bg-outline-success p-1 text-success">Good</h5>
                </div>
                <div class="d-flex gap-5">
                    <div class="mb-3">
                        <h5>Specifications:</h5>
                        <h6>Specs</h6>
                        <h6>Specs</h6>
                        <h6>Specs</h6>
                        <h6>Specs</h6>
                    </div>
                    <div class="mb-2">
                        <h5>Accessories:</h5>
                        <h6>Charger</h6>
                        <h6>Mouse</h6>
                        <h6>Headphoness</h6>
                    </div>
                </div>

                <h5>Rental Period</h5>
                <div class="d-flex gap-2 justify-content-start my-1">
                    <button class="btn btn-light rounded-pill px-3" type="button">Light</button>
                </div>

                <button type="button" class="btn bg-light border" href="">Add to Cart</button>
                <button type="button" class="btn btn-success" href="checkout.php">Checkout</button>
            </div>
            

        </main>
    </div>
</body>
<script src="../vendor/bootstrap-5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</html>