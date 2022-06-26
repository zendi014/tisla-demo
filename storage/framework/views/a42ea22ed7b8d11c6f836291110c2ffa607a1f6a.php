<!-- JAVASCRIPT -->
<script src="<?php echo e(URL::asset('assets/libs/jquery/jquery.min.js')); ?>"></script>
<script src="<?php echo e(URL::asset('assets/libs/bootstrap/js/bootstrap.bundle.min.js')); ?>"></script>
<script src="<?php echo e(URL::asset('assets/libs/metismenu/metisMenu.min.js')); ?>"></script>
<script src="<?php echo e(URL::asset('assets/libs/simplebar/simplebar.min.js')); ?>"></script>
<script src="<?php echo e(URL::asset('assets/libs/node-waves/waves.min.js')); ?>"></script>
<script src="<?php echo e(URL::asset('assets/libs/feather-icons/feather.min.js')); ?>"></script>
<script src="<?php echo e(URL::asset('assets/js/pages/axios.min.js')); ?>"></script>
<script src="<?php echo e(URL::asset('assets/js/pages/jquery.serializejson.js')); ?>"></script>
<script src="<?php echo e(URL::asset('assets/js/pages/highcharts.js')); ?>"></script>
<script src="<?php echo e(URL::asset('assets/js/pages/highcharts-more.js')); ?>"></script>
<script src="<?php echo e(URL::asset('assets/js/pages/highcharts-data-module.js')); ?>"></script>
<script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>


<!-- pace js -->
<script src="<?php echo e(URL::asset('assets/libs/pace-js/pace.min.js')); ?>"></script>

<!-- sweetalert -->
<!-- <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script> -->
<script src="<?php echo e(URL::asset('assets/libs/swal2/dist/sweetalert2.min.js')); ?>"></script>

<script>
    $('#change-password').on('submit',function(event){
        event.preventDefault();
        var Id = $('#data_id').val();
        var current_password = $('#current-password').val();
        var password = $('#password').val();
        var password_confirm = $('#password-confirm').val();
        $('#current_passwordError').text('');
        $('#passwordError').text('');
        $('#password_confirmError').text('');
        $.ajax({
            url: "<?php echo e(url('update-password')); ?>" + "/" + Id,
            type:"POST",
            data:{
                "current_password": current_password,
                "password": password,
                "password_confirmation": password_confirm,
                "_token": "<?php echo e(csrf_token()); ?>",
            },
            success:function(response){
                $('#current_passwordError').text('');
                $('#passwordError').text('');
                $('#password_confirmError').text('');
                if(response.isSuccess == false){ 
                    $('#current_passwordError').text(response.Message);
                }else if(response.isSuccess == true){
                    setTimeout(function () {   
                        window.location.href = "<?php echo e(route('root')); ?>"; 
                    }, 1000);
                }
            },
            error: function(response) {
                $('#current_passwordError').text(response.responseJSON.errors.current_password);
                $('#passwordError').text(response.responseJSON.errors.password);
                $('#password_confirmError').text(response.responseJSON.errors.password_confirmation);
            }
        });
    });
</script>

<!-- App js LOADED-->
<script src="<?php echo e(URL::asset('assets/js/app.js')); ?>"></script>


<?php echo $__env->yieldContent('script-bottom'); ?><?php /**PATH C:\Users\ZenZen\Documents\GitHub\tisla-demo\resources\views/layouts/vendor-scripts.blade.php ENDPATH**/ ?>