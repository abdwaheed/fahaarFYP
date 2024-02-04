<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>E-Active Workplace</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
  {{-- <link href="assets/img/E-Active.PNG" rel="icon">
  <link href="assets/img/E-Active.PNG" rel="apple-touch-icon"> --}}
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Roboto:100,300,400,500,700|Philosopher:400,400i,700,700i" rel="stylesheet">
  {{-- <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet"> --}}
  <link href="css/home.css" rel="stylesheet">
</head>
<body>
  <header id="header" class="header fixed-top d-flex align-items-center">
    <img class="wave" src="img/wave.png">
    <div class="container width=30px align-items-center justify-content-between">
      <div id="logo">
        <h1><a href="index.html"></a><img src="img/logo.png" width="120" height="40"></h1>
      </div>
    </div>
  </header>
  <section id="hero">
    <div class="hero-container" data-aos="fade-out">
      <h1>Welcome to E-Active Workplace</h1>
      <img src="img/bg.svg" width="500" height="250">
      {{-- <a href="login.html" class="btn-get-started scrollto">Get Started</a> --}}
    @if (Route::has('login'))
          <a class="nav-link btn-get-started scrollto" href="{{ route('login') }}">Get Started</a>
    @endif
    </section>
  {{-- <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/js/main.js"></script> --}}
</body>
</html>
