@extends('frontend.layouts.app')

@section('title', 'Home')

@section('content')

<section class="ftco-section">
    	<div class="container">
    		<div class="row justify-content-center mb-5 pb-2">
          <div class="col-md-7 text-center heading-section ftco-animate">
            <a href="{{ url('/home') }}">	<span class="subheading"></span></a>

            <h2 class="mb-4">შეკვეთები</h2>

            <p class="breadcrumbs">
                <span class="mr-2">
                    <a href="{{ url('/home')}}"><i class="ion-ios-home">
                        </i> მთავარი <i class="ion-ios-arrow-forward"></i>
                    </a>
                </span>
                <span> შეკვეთები</span>
            </p>

          </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="table-responsive">
                    <table class="table table-hover w-100">
                        <thead>
                            <tr>
                            <th scope="col">#ID</th>
                            <th scope="col">სურათი</th>
                            <th scope="col">დასახელება</th>
                            <th scope="col">მაგიდის ნომერი</th>
                            <th scope="col">ფასი</th>
                            <th scope="col">რაოდენობა</th>
                            <th scope="col">ჯამი</th>
                            <th scope="col">მოქმედება</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php
                                $sum =0;
                            @endphp
                            @foreach ($orders as $order)
                            @php
                                $sum += $order->price * $order->quantity;
                            @endphp
                            <tr>
                                <th scope="row">{{ $order->id }}</th>
                                <td><img src="{{ asset($order->image)}}" width="10%" /></td>
                                <td>{{ $order->name }}</td>
                                <td>#{{ $order->table_id }}</td>
                                <td>{{ $order->price }}</td>
                                <td>{{ $order->quantity }}</td>
                                <td>{{ $order->price * $order->quantity}}</td>
                                <td scope="row">
                                    <a href="{{ url('order/destroy/'.$order->id) }}"  class="btn btn-icon btn-danger">
                                        <i class="fa fa-trash"></i>
                                    </a>
                                </td>
                            </tr>
                            @endforeach
                            @if($orders->count() != 0)
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>სულ: {{$sum}}</td>
                                <td>
                                    <a href="{{ url('order/clearCart') }}"  class="btn btn-icon btn-danger">
                                        <i class="fa fa-close"></i> გასუფთავება
                                    </a>
                                </td>
                                <td>
                                    <a href="#0"  class="btn btn-icon btn-success">
                                        <i class="fa fa-cart-plus"></i> შეკვეთა
                                    </a>
                                </td>                                
                            </tr>
                            @endif
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    	</div>

    	</section>

@endsection
