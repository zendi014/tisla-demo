

<?php $__env->startSection('title'); ?>
<?php echo app('translator')->get('translation.Login'); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('body'); ?>

<body>
    <?php $__env->stopSection(); ?>

    <?php $__env->startSection('content'); ?>
    <div class="auth-page">
        <div class="container-fluid p-0">
            <div class="row g-0">
                <div class="col-xxl-3 col-lg-4 col-md-5">
                    <div class="auth-full-page-content d-flex p-sm-5 p-4">
                        <div class="w-100">
                            <div class="d-flex flex-column h-100">
                                <div class="mb-4 mb-md-5 text-center" style="margin-top:+15%">
                                    <a href="<?php echo e(url('')); ?>" class="d-block auth-logo">
                                        <!-- <img src="assets/images/logo-sm.svg" alt="" height="96"> -->                                        
                                        <img src="assets/images/umb/tisla-logo.png" alt="" style="height:auto; max-width: 88%;">
                                    </a>
                                </div>

                                <div class="auth-content" style="margin-bottom: auto!important;"> <!-- my-auto -->
                                    <div class="text-center">                                        
                                    </div>
                                    
                                    <form class="custom-form mt-4 pt-2" method="POST" action="<?php echo e(route('login')); ?>">
                                        <?php echo csrf_field(); ?>
                                        <div class="mb-3">
                                            <label for="username" class="form-label">Email</label>
                                            <input name="email" type="email" class="form-control <?php $__errorArgs = ['email'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" value="<?php echo e(old('email', 'admin@tisla.com')); ?>" id="username" placeholder="Enter Email" autocomplete="email" autofocus>
                                            <?php $__errorArgs = ['email'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                            <span class="invalid-feedback" role="alert">
                                                <strong><?php echo e($message); ?></strong>
                                            </span>
                                            <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                        </div>
                                        <div class="mb-3">
                                            <div class="d-flex align-items-start">
                                                <div class="flex-grow-1">
                                                    <label class="form-label">Password</label>
                                                </div>
                                                <div class="flex-shrink-0">
                                                    <div class="">
                                                        <?php if(Route::has('password.request')): ?>
                                                        <a href="<?php echo e(route('password.request')); ?>" class="text-muted">Forgot password?</a>
                                                        <?php endif; ?>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="input-group auth-pass-inputgroup <?php $__errorArgs = ['password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>">
                                                <input type="password" name="password" class="form-control  <?php $__errorArgs = ['password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" id="userpassword" value="password" placeholder="Enter password" aria-label="Password" aria-describedby="password-addon">
                                                <button class="btn btn-light " type="button" id="password-addon"><i class="mdi mdi-eye-outline"></i></button>
                                                <?php $__errorArgs = ['password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                                <span class="invalid-feedback" role="alert">
                                                    <strong><?php echo e($message); ?></strong>
                                                </span>
                                                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                            </div>
                                        </div>
                                        <div class="row mb-4">
                                            <div class="col">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" id="remember" <?php echo e(old('remember') ? 'checked' : ''); ?>>
                                                    <label class="form-check-label" for="remember">
                                                        Remember me
                                                    </label>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="mb-3">
                                            <button class="btn btn-primary w-100 waves-effect waves-light" type="submit">Log In</button>
                                        </div>
                                    </form>
                                    
                                    <div class="mt-5 text-center" style="display:none">
                                        <p class="text-muted mb-0">Loggin Issue? <a href="<?php echo e(url('register')); ?>" class="text-primary fw-semibold"> Click Here </a> </p>
                                    </div> 
                                    

                                </div>
                                
                                <div class="mt-4 mt-md-5 text-center">
                                    <!-- <img src="assets/images/umb/tisla-logo.png" alt="" style="height:auto; max-width: 30%;"> -->
                                    <!-- <p class="mb-0 card-title"><span><?php echo app('translator')->get('dashboard.app_name'); ?></span> ©
                                        <script>
                                            document.write(new Date().getFullYear())
                                        </script>
                                    </p> -->
                                    <p>
                                        <span class="card-title-desc"><?php echo app('translator')->get('dashboard.app_name_detail'); ?></span> ©
                                        <script>
                                            document.write(new Date().getFullYear())
                                        </script>
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
                                                    
                                                    <img src="<?php echo e(URL::asset('assets/images/svg/orange/svg55.svg')); ?>" alt="" style="height:auto; max-width: 75%;">
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
                                                    <img src="<?php echo e(URL::asset('assets/images/svg/orange/svg606.svg')); ?>" alt="" style="height:auto; max-width: 75%;">
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
                                                    <img src="<?php echo e(URL::asset('assets/images/svg/orange/svg600.svg')); ?>" alt="" style="height:auto; max-width: 75%;">
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

    <?php $__env->stopSection(); ?>
    <?php $__env->startSection('script'); ?>
    <!-- password addon init -->
    <!-- <script src="<?php echo e(URL::asset('/assets/js/pages/pass-addon.init.js')); ?>"></script> -->
    <?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.master-without-nav', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\ZenZen\Documents\GitHub\tisla-demo\resources\views/auth/login.blade.php ENDPATH**/ ?>