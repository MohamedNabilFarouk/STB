@extends('admin.layouts.app')


@section('toolbar')
    <div class="toolbar" id="kt_toolbar">
        <!--begin::Container-->
        <div id="kt_toolbar_container" class="container-fluid d-flex flex-stack">
            <!--begin::Page title-->
            <div class="d-flex align-items-center me-3">
                <!--begin::Title-->
                <h1 class="d-flex align-items-center text-dark fw-bolder my-1 fs-3">@lang('site.product')
                    <!--begin::Separator-->
                    <span class="h-20px border-gray-200 border-start ms-3 mx-2"></span>
                    <!--end::Separator-->
                    <!--begin::Description-->
                    <small class="text-muted fs-7 fw-bold my-1 ms-1">@lang('site.Edit')</small>
                    <!--end::Description-->
                </h1>
                <!--end::Title-->
            </div>
            <!--end::Page title-->

        </div>
        <!--end::Container-->
    </div>
@endsection

@section('content')

    @include('admin.includes.messages')

    <div class="container-fluid page__container p-2">

        <div class="card rounded card-form__body card-body shadow-lg">
            <form method="post" action="{{ route('product.update', $product->id) }}" enctype="multipart/form-data">
                @csrf
                @method('put')

                <div class="form-group mb-10">
                    <label for="exampleFormControlInput1" class="required form-label">@lang('site.name') @lang('site.in
                        English')</label>
                    <input type='text' name="name_en" class="form-control" value="{{ $product->name_en }}" />
                </div>
                <div class="form-group mb-10">
                    <label for="exampleFormControlInput1" class="required form-label">@lang('site.name') @lang('site.in
                        Arabic')</label>
                    <input type='text' name="name_ar" class="form-control" value="{{ $product->name_ar }}" />
                </div>

                <div class="form-group mb-10">
                    <label for="exampleFormControlInput1" class="required form-label">@lang('site.Description')
                        @lang('site.in English')</label>
                    <input type='text' name="des_en" class="form-control" value="{{ $product->des_en }}" />
                </div>
                <div class="form-group mb-10">
                    <label for="exampleFormControlInput1" class="required form-label">@lang('site.Description')
                        @lang('site.in Arabic')</label>
                    <input type='text' name="des_ar" class="form-control" value="{{ $product->des_ar }}" />
                </div>
                <div class="form-group mb-10">
                    <label for="exampleFormControlInput1" class="required form-label">@lang('site.category')</label>
                    <select class="form-select" name='category_id' aria-label="Select example">
                        @foreach ($categories as $c)
                            <option value="{{ $c->id }}" @if ($c->id == $product->category_id) selected @endif>{{ $c->name_en }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group mb-10">
                    <label for="exampleFormControlInput1" class="required form-label">@lang('site.Price')</label>
                    <input type='number' name="price" class="form-control" value="{{ $product->price }}" />
                </div>

                <!-- <div class="form-group mb-10">
                    <label for="exampleFormControlInput1" class="required form-label">@lang('site.calories')</label>
                    <input type='number' name="cal" class="form-control" value="{{ $product->cal }}" />
                </div>

                <div class="form-group mb-10">
                    <div class="form-check form-check-custom form-check-solid">
                        <input class="form-check-input" type="checkbox" value="1" name='veg' id="veg" @if ($product->veg == 1) checked @endif />
                        <label class="form-check-label" for="flexCheckDefault">
                            @lang('site.Vegetarian')
                        </label>
                    </div>
                </div> -->
                <!-- <div class="form-group mb-10">
                    <div class="form-check form-check-custom form-check-solid">
                        <input class="form-check-input" type="checkbox" value="1" name='promotional' id="promotional" @if ($product->promotional == 1) checked @endif />
                        <label class="form-check-label" for="flexCheckDefault">
                            @lang('site.promotional')
                        </label>
                    </div>
                </div> -->
                <!-- <div class="form-check form-check-custom form-check-solid">
                            <input class="form-check-input" type="checkbox" value="1" name='status'  id="status"/>
                            <label class="form-check-label" for="flexCheckDefault">
                                Status
                            </label>
                        </div> -->

                <div class="form-group mb-10">
                    <div class="form-check form-switch form-check-custom form-check-solid">
                        <input class="form-check-input" type="checkbox" value="1" name='status' id="status" @if ($product->status == 1) checked @endif />
                        <label class="form-check-label" for="flexSwitchDefault">
                            @lang('site.status')
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput1" class="required form-label">@lang('site.Image') </label>
                    <input class="image_name" type="file" name="image" value="">
                </div>



                <div class="text-right mb-5">
                    <input type="submit" name="add" class="btn btn-success" value="@lang('site.add')">
                </div>
            </form>
        </div>
    </div>
    <!-- // END drawer-layout__content -->
    </div>
@stop