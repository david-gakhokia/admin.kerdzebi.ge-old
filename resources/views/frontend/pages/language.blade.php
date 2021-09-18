<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>QR MENU | Kerdzebi.ge</title>

    <!-- Load Facebook SDK for JavaScript -->
    <meta property="og:type"          content="website" />
    <meta property="og:title"         content="bwp.kerdzebi.ge" />
    <meta property="og:image"         content="https://cafe.diem.ge/frontend/images/logo/Wi-Fi-menu.png" />
    <meta property="og:site_name"     content="www.bwp.kerdzebi.ge" />

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">
        <link rel="stylesheet" href="//cdn.web-fonts.ge/fonts/alk-rounded-mtav-med/css/alk-rounded-mtav-med.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="//cdn.web-fonts.ge/fonts/bpg-mikheil-stefane/css/bpg-mikheil-stefane.min.css">
        <link rel="stylesheet" href="//cdn.web-fonts.ge/fonts/bpg-classic-medium/css/bpg-classic-medium.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Tangerine">
        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Comfortaa&subset=latin,cyrillic">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" >
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Lovers+Quarrel" rel="stylesheet">
        <!-- Styles -->
<style>
  body{
    height:100vh;
    align-items: center;
    display: flex;
    font-family: "BPG Arial Caps", sans-serif !important;

    /*background: url("https://wyndhambatumihotel.com/frontend/images/bg.jpg");*/
  }

  .container{
    text-align: center;
    margin-top:-50px;
    /* display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh; */
  }
  .col{
    margin-bottom:40px;
  }
  .demo-bg {
  opacity: 0.3;
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100vh;
  object-fit: cover;
}
.title{
    font-weight: bold;
    color:#007dc3;
    font-family:Lovers Quarrel;
    font-size:80px
}

</style>
    </head>
    <body>
<img class="demo-bg" src="{{ asset('frontend/images/bg.jpg') }}">
    <div class="container">
      <div class="row" style="margin-bottom:120px">
        <div class="col-md-12">
          {{-- <h1 class="title">QR MENU</h1> --}}
          <h1>@if($setting) {{$setting->title}} @endif</h1>
          {{-- <img src="{{ asset('frontend/images/logo/meduza.png') }} "  style="opacity: 70%" width="20%"> --}}
          <img src="@if($setting) {{ asset('/backend/images/settings/'.$setting->logo) }} @endif"  style="opacity: 80%" width="20%">


        </div>
      </div>
      <div class="row">
        <div class="col">
          <a href="{{ url('language/ka')}}">
              <img src="{{ asset('frontend/images/flags/ka.png') }}" width="100px">
          </a>
        </div>
        <div class="col">
          <a href="{{ url('language/en')}}">
              <img src="{{ asset('frontend/images/flags/us.png') }}" width="100px">
          </a>
        </div>

        <div class="col">
          <a href="{{ url('language/zh-TW')}}">
              <img src="{{ asset('frontend/images/flags/ch.png') }}" width="100px">
          </a>
        </div>
      </div>
    </div>


  <script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert-dev.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css">


    </body>
</html>
