@extends('frontend.layouts.app')

@section('title', 'Product')

@section('content')


<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center mb-5 pb-2">
            <div class="col-md-7 text-center heading-section ftco-animate">
                <span class="subheading mb-2">{{ $category->name }}</span>
                <p class="breadcrumbs"><span class="mr-2">
                    <a href="{{ url('/home')}}"><i class="ion-ios-home"></i> მთავარი <i class="ion-ios-arrow-forward"></i></a></span>
                    <span> {{ $category->name }} </span>
                </p>
                @if($errors->any())
                <div class="alert alert-success" role="alert">
                    <h4>{{$errors->first()}} 👨‍🍳</h4>
                </div>
                @endif
            </div>
        </div>

        <div class="row">
            @foreach ($products as $product)
            <div class="col-md-6 col-lg-6 menu-wrap">
                <div class="menus d-flex ftco-animate">
                    @if($product->image)
                        <div class="menu-img img" style="background-image: url({{ asset($product->image) }});"></div>
                    @else
                        <div class="menu-img img" style="background-image: url('/frontend/images/no-image.png');"></div>
                    @endif
                    <div class="text">
                        <div class="d-flex">
                            <div class="one-half">
                                <h3>{{$product->name}}</h3>
                            </div>
                            <div class="one-forth">
                                <span class="price">{{ $product->price }} ₾</span>
                            </div>
                        </div>
                        <p>{!! $product->description !!}</p>
                    </div>
                </div>
            </div>
            @endforeach
        </div>

    </div>
</section>

@endsection
