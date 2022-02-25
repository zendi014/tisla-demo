@extends('layouts.master-without-nav')

@section('title')
@lang('translation.Register')
@endsection

@section('css')

<link href="{{ URL::asset('/assets/libs/bootstrap-datepicker/bootstrap-datepicker.min.css') }}" rel="stylesheet" type="text/css">

@endsection

@section('body')

<body>
    @endsection

    @section('content')
    <div class="auth-page">
        <div class="container-fluid p-0">
            <div class="row g-0">
                <div class="col-xxl-3 col-lg-4 col-md-5">
                    <div class="auth-full-page-content d-flex p-sm-5 p-4">
                        <div class="w-100">
                            <div class="d-flex flex-column h-100">
                                <div class="mb-3 mb-md-3 text-center">
                                    <a href="index" class="d-block auth-logo">
                                        <img src="assets/images/umb/tisla-logo.png" alt="" style="height:auto; max-width: 55%;"> 
                                    </a>
                                </div>
                                <div class="auth-content my-auto">
                                    <div class="text-center">
                                        <h5 class="mb-0">Register Account</h5>
                                        <p class="text-muted mt-2"> 
                                            @error('global_error')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $errors->first() }}</strong>
                                                </span>
                                            @enderror
                                            
                                            @if($errors->any())
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $errors->first() }}</strong>
                                                </span>
                                            @endif
                                        </p>
                                    </div>
                                    <form class="needs-validation custom-form mt-4 pt-2" method="POST" action="{{ route('register') }}" enctype="multipart/form-data">
                                    @csrf    
                                        <div class="mb-3">
                                            <label for="useremail" class="form-label">Email</label>
                                            <input type="email" class="form-control @error('email') is-invalid @enderror" id="useremail"
                                                value="{{ old('email') }}" name="email" placeholder="Enter email" autofocus required>
                                                @error('email')
                                                    <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                                                @enderror
                                        </div>

                                        <div class="mb-3">
                                            <label for="institution_name" class="form-label">Institution Name</label>
                                            <input type="text" class="form-control @error('institutionname') is-invalid @enderror"
                                                value="{{ old('institution_name') }}" id="institution_name" name="institution_name" autofocus required
                                                    placeholder="Enter Institution Name">
                                                @error('institution_name')
                                                    <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                                                @enderror
                                        </div>


                                        <div class="mb-3">
                                            <label for="institution_domain" class="form-label">Institution Domain</label>
                                            <input type="text" class="form-control @error('institutionname') is-invalid @enderror"
                                                value="{{ old('institution_domain') }}" id="institution_domain" name="institution_domain" autofocus required
                                                    placeholder="Enter Institution Domain (eg. insti.org; insti.co.id)">
                                                @error('institution_domain')
                                                    <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                                                @enderror
                                        </div>

                                        <div class="mb-3">                                            
                                            <label class="form-label">Institution Location</label>                                            
                                            <select class="form-select" id="institution_location" name="institution_location">
                                                <option>Select</option>
                                                @foreach($province_city as $val)                                                      
                                                    <option value="{{ $val->province }} | {{ $val->city_name }}">{{ $val->province }} | {{ $val->city_name }}</option>
                                                @endforeach
                                                
                                            </select>
                                        </div>

                                        <div class="mb-3">                                            
                                            <label class="form-label">Institution Category</label>                                            
                                            <select class="form-select" id="institution_category" name="institution_category" onchange="getval(this, 'institution_category')">
                                                <option>Select</option>
                                                @foreach($institution_category as $val)                                                      
                                                    <option value="{{ $val->id }}">{{ $val->category }}</option>
                                                @endforeach
                                                
                                            </select>
                                        </div>

                                        <div class="mb-3" style="display: show;">
                                            <label class="form-label">Institution Level</label>
                                            <select class="form-select" id="institution_level" name="institution_level" onchange="getval(this, 'institution_level')">
                                                <option>Select</option>
                                                @foreach($institution_level as $val)   
                                                    <option value="{{ $val->id }}" style="display:none;" dt-cat-id="{{ $val->institution_category_id }}">{{ $val->level }}</option> 
                                                @endforeach
                                            </select>
                                        </div>

                                        <div class="mb-3">
                                            <label for="userpassword" class="form-label">Password</label>
                                            <input type="password" class="form-control @error('password') is-invalid @enderror" id="userpassword" name="password"
                                                placeholder="Enter password" autofocus required>
                                                @error('password')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                        </div>

                                        <div class="mb-3">
                                            <label for="confirmpassword" class="form-label">Confirm Password</label>
                                            <input type="password" class="form-control @error('password_confirmation') is-invalid @enderror" id="confirmpassword"
                                            name="password_confirmation" placeholder="Enter Confirm password" autofocus required>
                                            @error('password_confirmation')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                        </div>

                                        <!-- <div class="mb-3">
                                            <label for="userdob">Date of Birth</label>
                                            <div class="input-group" id="datepicker1">
                                                <input type="text" class="form-control @error('dob') is-invalid @enderror" placeholder="dd-mm-yyyy"
                                                    data-date-format="dd-mm-yyyy" data-date-container='#datepicker1' data-date-end-date="0d" value="{{ old('dob') }}"
                                                    data-provide="datepicker" name="dob" autofocus required>
                                                <span class="input-group-text"><i class="mdi mdi-calendar"></i></span>
                                                @error('dob')
                                                    <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                                                @enderror
                                            </div>
                                        </div>

                                        <div class="mb-3">
                                            <label for="avatar">Profile Picture</label>
                                            <div class="input-group">
                                                <input type="file" class="form-control @error('avatar') is-invalid @enderror" id="inputGroupFile02" name="avatar" autofocus required>
                                                <label class="input-group-text" for="inputGroupFile02">Upload</label>
                                            </div>
                                            @error('avatar')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                        </div> -->
                                        
                                        <div class="mb-3">
                                            <p class="mb-0">By registering you agree to the TISLA <a href="#" class="text-primary">Terms of Use</a></p>
                                        </div>
                                        <div class="mb-2">
                                            <button class="btn btn-primary w-100 waves-effect waves-light" type="submit">Register</button>
                                        </div>
                                    </form>

                                    <div class="mt-2 text-center">
                                        <p class="text-muted mb-0">Already have an account ? <a href="{{ url('login') }}" class="text-primary fw-semibold"> Login </a> </p>
                                    </div>
                                </div>
                                <div class="mt-2 mt-md-2 text-center">
                                    <p class="mb-0 card-title"><span>@lang('dashboard.app_name')</span> ©
                                        <script>
                                            document.write(new Date().getFullYear())
                                        </script>
                                    </p>
                                    <p>
                                        <span class="card-title-desc">@lang('dashboard.app_name_detail')</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end auth full page content -->
                </div>
                <!-- end col -->








                <div class="col-xxl-9 col-lg-8 col-md-7">
                    <div class="auth-bg pt-md-5 p-4 d-flex">
                        <div class="bg-overlay bg-primary"></div>
                        <ul class="bg-bubbles">
                            <li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                        </ul>
                        <!-- end bubble effect -->
                        <div class="row justify-content-center align-items-center">
                            <div class="col-xl-7">
                                <div class="p-0 p-sm-4 px-xl-0">
                                    <div id="reviewcarouselIndicators" class="carousel slide" data-bs-ride="carousel">
                                        <div class="carousel-indicators carousel-indicators-rounded justify-content-start ms-0 mb-0">
                                            <button type="button" data-bs-target="#reviewcarouselIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                                            <button type="button" data-bs-target="#reviewcarouselIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                                            <button type="button" data-bs-target="#reviewcarouselIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                                        </div>
                                        <!-- end carouselIndicators -->
                                        <div class="carousel-inner">
                                            <div class="carousel-item active">
                                                <div class="testi-contain text-white">
                                                    <i class="bx bxs-quote-alt-left display-6" style="color: #84c225!important;"></i>

                                                    <h4 class="mt-4 fw-medium lh-base text-white" style="margin-bottom:+15px"> 
                                                        “Jika Anda mengalami permasalahan dengan sistem ini, silahkan emailkan ke sia@mercubuana.ac.id. 
                                                        Bagi mahasiswa diharap menyertakan NIM dan nama lengkap untuk dapat ditanggapi. 
                                                        Sebelum mengirimkan email, harap dipelajari FAQs terlebih dahulu.”
                                                    </h4>
                                                    
                                                    <img src="{{ URL::asset('assets/images/svg/orange/svg55.svg') }}" alt="" style="height:auto; max-width: 75%;">
                                                    <div class="mt-4 pt-3 pb-5">
                                                        <div class="d-flex align-items-start">
                                                            <!-- <div class="flex-shrink-0">
                                                                <img src="assets/images/users/avatar-1.jpg" class="avatar-md img-fluid rounded-circle" alt="...">
                                                            </div>
                                                            <div class="flex-grow-1 ms-3 mb-4">
                                                                <h5 class="font-size-18 text-white">Richard Drews
                                                                </h5>
                                                                <p class="mb-0 text-white-50">Web Designer</p>
                                                            </div> -->
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="carousel-item">
                                                <div class="testi-contain text-white">
                                                <i class="bx bxs-quote-alt-left display-6" style="color: #84c225!important;"></i>

                                                    <h4 class="mt-4 fw-medium lh-base text-white" style="margin-bottom:+15px">
                                                        <i>
                                                            “If you experience any problem with this system, please send an email to sia@mercubuana.ac.id. 
                                                            Put your question/complain/request can be responded immediately. 
                                                            Before doing so, please kindly study the FAQs thoroughly.”
                                                        </i>
                                                    </h4>
                                                    <img src="{{ URL::asset('assets/images/svg/orange/svg606.svg') }}" alt="" style="height:auto; max-width: 75%;">
                                                    <div class="mt-4 pt-3 pb-5">
                                                        <div class="d-flex align-items-start">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="carousel-item">
                                                <div class="testi-contain text-white">
                                                <i class="bx bxs-quote-alt-left display-6" style="color: #84c225!important;"></i>

                                                    <h4 class="mt-4 fw-medium lh-base text-white" style="margin-bottom:+15px">
                                                        <i>
                                                            “If you experience any problem with this system, please send an email to sia@mercubuana.ac.id. 
                                                            Put your question/complain/request can be responded immediately. 
                                                            Before doing so, please kindly study the FAQs thoroughly.”
                                                        </i>
                                                    </h4>
                                                    <img src="{{ URL::asset('assets/images/svg/orange/svg600.svg') }}" alt="" style="height:auto; max-width: 75%;">
                                                    <div class="mt-4 pt-3 pb-5">
                                                        <div class="d-flex align-items-start">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                        </div>
                                        <!-- end carousel-inner -->
                                    </div>
                                    <!-- end review carousel -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end col -->


            </div>
            <!-- end row -->
        </div>
        <!-- end container fluid -->
    </div>


    @endsection

    @section('script')

    <script src="{{ URL::asset('/assets/libs/bootstrap-datepicker/bootstrap-datepicker.min.js') }}"></script>

    <!-- validation init -->
    <script src="{{ URL::asset('/assets/js/pages/validation.init.js') }}"></script>

    <script>
        const getval = (sel, cfg) => {
            console.log(sel.value);
            $("#institution_level").children().hide();
            if(cfg == 'institution_category'){
                $("#institution_level").children("option[dt-cat-id="+sel.value+"]").show();
            }
        }
        // $('option:selected', this).attr('mytag');
        
    </script>

    @endsection

