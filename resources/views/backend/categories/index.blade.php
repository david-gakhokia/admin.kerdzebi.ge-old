@extends('backend.layouts.app')

@section('title', 'კატეგორიები')

@section('content')
    @if(session('success'))
    <div class="alert alert-success alert-dismissible fade show mb-2 " role="alert">
        <strong>{{ session('success') }}</strong>
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
    @endif

    <div class="row">

        <div class="col-12 col-md-6 col-lg-6">
            <div class="card">
                <div class="card-header">
                    <h4>კატეგორიები</h4>
                </div>
                <div class="card-body">
                    <ul class="list-group">
                    @foreach ($categories as $key => $category)
                        <li class="list-group-item">
                        <div class="d-flex justify-content-between">
                            {{ $category->name }}
                            <img src="{{ asset($category->image) }}" alt="" width="10%">

                            @auth
                            <div class="button-group ">
                                <a href="{{ url('admin/category/edit/'.$category->id) }}">
                                    <button type="button" class="btn btn-sm btn-primary mr-1 edit-category"><i class="far fa-edit"></i>
                                    </button>
                                </a>

                                <a href="{{ url('admin/category/destroy/'.$category->id) }}"  class="btn btn-danger btn-sm">
                                    <i class="fas fa-times"></i> წაშლა
                                </a>
                            </div>
                            @endauth
                        </div>

                        @if ($category->children)
                            <ul class="list-group mt-2">
                            @foreach ($category->children  as $childKey => $child)
                                <li class="list-group-item">
                                <div class="d-flex justify-content-between">
                                    {{ $child->name }}
                                    <img src="{{ asset($child->image) }}" alt="" width="10%">

                                    @auth
                                    <div class="button-group">

                                    <a href="{{ url('admin/category/edit/'.$child->id) }}">
                                        <button type="button" class="btn btn-sm btn-primary mr-1 edit-category"><i class="far fa-edit"></i>
                                        </button>
                                    </a>
                                        <a href="{{ url('admin/category/destroy/'.$child->id) }}"  onclick="return confirm('ნამდვილად წავშალო?')"  class="btn btn-sm btn-danger">
                                            <i class="fas fa-times"></i> წაშლა
                                        </a>
                                    </div>
                                    @endauth
                                </div>
                                </li>

                            @endforeach
                            </ul>
                        @endif
                        </li>

                    @endforeach
                    </ul>
                </div>
            </div>
        </div>

        <div class="col-12 col-md-6 col-lg-6">
            <div class="card">
                <div class="card-header">
                <h4>ახალი კატეგორია</h4>
                </div>

                <div class="card-body">
                @auth

                        <form action="{{  route ('store.category') }}" class="needs-validation" novalidate="" method="POST"  enctype="multipart/form-data" >
                            @csrf
                            <div class="form-group">
                                <select class="form-control" name="parent_id">
                                    <option value="">შეარჩიე კატეგორია</option>
                                    @foreach ($categories as $category)
                                        <option value="{{ $category->id }}">{{ $category->name }}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="form-group">
                                <input type="text" name="name" class="form-control" value="{{ old('name') }}" placeholder="კატეგორიის სახელი" required>
                            </div>

                            <div class="form-group">
                                <input type="file" name="image" class="form-control" value="{{ old('image') }}" placeholder="სურათი" >
                            </div>


                            <div class="form-group">
                                <button type="submit" class="btn btn-primary">დამატება</button>
                            </div>
                        </form>


                @endauth
                </div>
            </div>
        </div>

    </div>



@endsection
