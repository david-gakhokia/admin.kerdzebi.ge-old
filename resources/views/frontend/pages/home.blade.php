@extends('frontend.layouts.app')

@section('title', 'Home')

@section('content')

<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet" />


<section class="ftco-section">
    <div class="container">
        <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4">
          <a href="/" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
            {{-- <img src="{{ asset('frontend/images/logo/kerdzebi-dark.png') }} "  width="100%"> --}}
          </a>

          <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
            <li><a href="#" class="nav-link px-2 link-dark"><img src="{{ asset('frontend/images/flags/ka.png') }}" width="64px" alt=""></a></li>
            <li><a href="#" class="nav-link px-2 link-dark"><img src="{{ asset('frontend/images/flags/us.png') }}" width="64px" alt=""></a></li>
            <li><a href="#" class="nav-link px-2 link-dark"><img src="{{ asset('frontend/images/flags/ch.png') }}" width="64px" alt=""></a></li>
          </ul>

          <div class="col-md-3 text-end ">
            {{-- <button type="button" class="btn btn-outline-primary me-2">Login</button>
            <button type="button" class="btn btn-primary">Sign-up</button> --}}
          </div>
        </header>
      </div>
    <div class="container">

        <div class="row justify-content-center mb-5">
            <div class="btn btn-outline" style="border-radius: 25px" >
                <form action="/search"  style="border-radius: 25px"  method="GET"  class="search-form">
                    <div class="col-auto my-1">
                        <label class="mr-sm-6 sr-only" for="query">Preference</label>
                        <select class="custom-select custom-select" id="query" name="query">
                            <option selected>ძიება...</option>
                            @foreach ($products as $product)
                                <option value="{{$product->name}}">{{$product->name}}</option>
                            @endforeach
                        </select>
                    </div>
                    <button type="submit" class="btn btn-info" style="border-radius: 8px" >ძებნა</button>


                </form>
            </div>
        </div>

         @foreach ($categories as $category)

        <div class="row justify-content-center" style="margin-bottom:40px">
            <div class="col-md-7 text-center heading-section ftco-animate">
                <h3 class="subheading" >• {{$category->name}} •</h3>
            </div>
        </div>

        <div class="row justify-content-center" style="margin-bottom:100px">
            @foreach ($category->children as $child)
            <div class="col-md-4 mt-5" style="text-align:center">
	            <div class="heading-menu text-center ftco-animate">
	                <h3>{{ $child->name }}</h3>
	            </div>
	            <a href="{{'/products/'.$child->id }}">
	                <img src="{{ asset($child->image) }}" alt="" style="border-radius:200px;object-fit:cover;width:200px;" >
	            </a>
	            <div class="col-md-12 text-center ftco-animate fadeInUp ftco-animated">
	                <p>
                        <a href="{{ '/products/'.$child->id }}" style="border-radius: 8px ; margin-top: 15px;" class="btn btn-info py-3 px-5">ვრცლად</a>
                    </p>
	            </div>
            </div>
            @endforeach

        </div>
         @endforeach
    </div>
</section>


    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!-- Select2 -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>
    <script>
      $("#query").select2({
          placeholder: "ძიება",
          allowClear: true
      });
    </script>

@endsection
