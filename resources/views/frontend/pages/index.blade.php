@extends('frontend.layouts.app')

@section('title', 'Home')

@section('content')
<style>
      .demo-bg {
  opacity: 0.3;
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100vh;
  object-fit: cover;
}
</style>

<section class="ftco-section bg-light">
    <img class="demo-bg" src="{{ asset('frontend/images/bg.jpg') }}">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center mb-3">
                {{-- <h1>@if($setting) {{$setting->title}} @endif</h1> --}}
                <img src="@if($setting) {{ asset('/backend/images/settings/'.$setting->logo) }} @endif"  style="opacity: 80%" width="20%">
            </div>

            <div class="col-md-6 ftco-animate">
                <div class="blog-entry">
                <a href="/home" class="block-20" style="background-image: url('frontend/images/home/image_1.jpg');">
                </a>
                <div class="text px-4 pt-3 pb-4">
                    <h3 class="heading text-center"><a href="#">ქართულ&ევროპული სამზარეულო <br> / Georgian&European Cuisine / 格鲁吉亚&西餐</a></h3>
                </div>
                </div>
            </div>
            <div class="col-md-6 ftco-animate">
                <div class="blog-entry">
                <a href="#0" class="block-20" style="background-image: url('frontend/images/home/image_2.jpg');">
                </a>
                <div class="text px-4 pt-3 pb-4">
                    <h3 class="heading text-center"><a href="#">ჩინური სამზარეულო <br> / Chinese Cuisine / 中餐
                    </a></h3>
                </div>
                </div>
            </div>
        </div>
    </div>
</section>

@endsection
