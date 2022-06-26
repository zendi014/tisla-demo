<!doctype html>
<!-- <html lang="en"> -->
<html lang="<?php echo e(str_replace('_', '-', app()->getLocale())); ?>">
    <head>
    
        <meta charset="utf-8" />
        <title> <?php echo $__env->yieldContent('title'); ?> | <?php echo app('translator')->get('dashboard.app_name'); ?> - <?php echo app('translator')->get('dashboard.app_name_detail'); ?></title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- CSRF Token -->
        <meta name="csrf-token" content="<?php echo e(csrf_token()); ?>"/>
        
        <meta content="<?php echo app('translator')->get('dashboard.app_name_detail'); ?>" name="description" />
        <meta content="<?php echo app('translator')->get('dashboard.app_name'); ?>" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="<?php echo e(url('assets/images/umb/tisla-logo.png')); ?>">

        <?php echo $__env->make('layouts.head-css', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
  </head>

    <?php echo $__env->yieldContent('body'); ?>
    
    <?php echo $__env->yieldContent('content'); ?>

    <!-- JAVASCRIPT -->
    <script src="<?php echo e(URL::asset('assets/libs/jquery/jquery.min.js')); ?>"></script>
    <script src="<?php echo e(URL::asset('assets/libs/bootstrap/js/bootstrap.bundle.min.js')); ?>"></script>

    <!-- pace js -->
    <script src="<?php echo e(URL::asset('assets/libs/pace-js/pace.min.js')); ?>"></script>

    <?php echo $__env->yieldContent('script'); ?>

    </body>
</html><?php /**PATH C:\Users\ZenZen\Documents\GitHub\tisla-demo\resources\views/layouts/master-without-nav.blade.php ENDPATH**/ ?>