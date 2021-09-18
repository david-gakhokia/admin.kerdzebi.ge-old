@extends('backend.layouts.app')

@section('title', 'კატეგორიის რედაქტირება')

@section('content')

    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="text-left">კატეგორიის რედაქტირება</h4>
                </div>
                <div class="card-body">
                    <form action="{{ url('admin/category/update/'.$category->id) }}" class="needs-validation" novalidate="" method="POST"  enctype="multipart/form-data" >
                        @csrf
                        <input type="hidden"  name="old_image" value="{{ $category->image }}">

                        <div class="form-group">
                            <select class="form-control select2" name="parent_id">
                                <option value="">მშობელი კატეგორია</option>
                                @foreach($categories as $key => $cat)

                                    <option value="{{$cat->id}}"  {{$category->parent_id === $cat->id ? 'selected':''}}>{{$cat->name}}</option>
                                @endforeach
                            </select>

                        </div>
                        <div class="form-group">
                            <input type="file" name="image" class="form-control" value="{{ $category->image }}" placeholder="სურათი" >
                        </div>
                        <div class="form-group">
                          <img src="{{ asset($category->image) }}" width="50%" alt="">
                        </div>
                        <div class="form-group">
                            <input type="text" name="name" class="form-control" value="{{ $category->name }}" placeholder="კატეგორიის სახელი">
                        </div>


                        <div class="form-group text-right">
                            <button type="submit" class="btn btn-success"><i class="fas fa-check"></i> განახლება</button>

                            <a href="{{ url('/admin/categories')}}" class="btn btn-icon icon-left btn-secondary"><i class="fas fa-backward"></i> გაუქმება </a>
                        </div>

                        <input type="hidden"  name="category_id" value="{{ $category->id }}">
                        @csrf
                    </form>
                </div>
            </div>
        </div>
    </div>

@endsection
