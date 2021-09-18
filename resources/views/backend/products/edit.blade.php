@extends('backend.layouts.app')

@section('title', 'პროდუქციის რედაქტირება')

@section('content')
            <div class="row">
              <div class="col-12 col-md-12 col-lg-12">
                <div class="card">
                    <form action="{{ url('admin/product/update/'.$products->id) }}" class="needs-validation" novalidate="" method="POST"  enctype="multipart/form-data" >
                        @csrf
                        <input type="hidden"  name="old_image" value="{{ $products->image }}">
                        <div class="card-header">
                        <h4>პროდუქციის რედაქტირება</h4>
                        </div>
                        <div class="card-body">
                        <div class="form-row">

                            <div class="col-6 form-group">
                            <label>დასახელება</label>
                            <input type="text"  name="name"  value="{{ $products->name }}" class="form-control" placeholder="დასახელება" required="">
                            <div class="invalid-feedback">
                                უპსს! დასახელება სავალდებულოა!
                            </div>
                            </div>

                            <div class="col-3 form-group">
                            <label>სტატუსი</label>
                                <select name="status"  value="{{$products->status }}" class="form-control" required="">
                                <option value="1">აქტიური</option>
                                <option value="0">არა აქტიური</option>
                                </select>
                            <div class="invalid-feedback">
                                უპსს! სტატუსი სავალდებულოა!
                            </div>
                            </div>

                            <div class="col-3 form-group">
                            <label>ფასი</label>
                            <input type="number" step="0.01" name="price" value="{{ $products->price }}" class="form-control" placeholder="ფასი" required="">
                            <div class="invalid-feedback">
                                უპსს! ფასი სავალდებულოა!
                            </div>
                            </div>

                            <div class="col-4 form-group">
                                <label for="category_id">კატეგორია</label>
                                <select class="form-control select2" name="category_id" required>
                                    <option value="">აირჩიეთ კატეგორია</option>

                                    @foreach ($categories as $category)
                                        <option value="{{ $category->id }}" {{ $category->id === $products->category_id ? 'selected' : '' }}>{{ $category->name }}</option>
                                        @if ($category->children)
                                            @foreach ($category->children as $child)
                                                <option value="{{ $child->id }}" {{ $child->id === $products->category_id ? 'selected' : '' }}>&nbsp;&nbsp;{{ $child->name }}</option>
                                            @endforeach
                                        @endif
                                    @endforeach
                                </select>
                                <div class="invalid-feedback">
                                უპსს ! კატეგორია სავალდებულოა!
                                </div>
                            </div>

                            <div class="col-4 form-group">
                            <label>სურათი</label>
                            <div class="custom-file">
                                <input type="file" name="image"  id="image"  value="{{ $products->image }}" class="custom-file-input">
                                <label class="custom-file-label" for="image">ფოტოს ატვირთვა</label>
                            </div>
                            </div>

                            <div class="col-4 form-group">
                            <img src="{{ asset($products->image) }}" width="50%" alt="">
                            </div>

                            <div class="col-12 form-group">
                                <label>აღწერა</label>
                                <textarea type="text" class="summernote"  name="description">
                                    {{$products['description']}}
                                </textarea>
                                <div class="invalid-feedback">
                                უპსს ! აღწერა სავალდებულოა!
                                </div>
                            </div>

                        </div>
                        </div>
                        <div class="card-footer text-right">
                            <button type="submit" class="btn btn-success"><i class="fas fa-check"></i> განახლება</button>

                            <a href="{{ url('/admin/products')}}" class="btn btn-icon icon-left btn-secondary"><i class="fas fa-backward"></i> გაუქმება </a>
                        </div>
                  </form>
                </div>
              </div>
            </div>
@endsection
