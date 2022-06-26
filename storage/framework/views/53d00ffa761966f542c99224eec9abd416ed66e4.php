

<?php $__env->startSection('title'); ?> 
    <?php echo app('translator')->get('dashboard.app_name'); ?> 
<?php $__env->stopSection(); ?>

<?php $__env->startSection('title-detail'); ?> 
    <?php echo app('translator')->get('dashboard.app_name_detail'); ?> 
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <?php $__env->startComponent('components.breadcrumb'); ?>
        <?php $__env->slot('prarent_menu'); ?> 
            <?php echo app('translator')->get('dashboard.pages'); ?> 
        <?php $__env->endSlot(); ?>
        
        <?php $__env->slot('child_menu'); ?>
            Activity
        <?php $__env->endSlot(); ?>
    <?php echo $__env->renderComponent(); ?>

    


    <div class="row mt-3" id="dashboard_statistics_content" style="visibility:hidden">

    </div><!-- end row-->

    <div class="row mt-3" id="dashboard_file_upload_content">
        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('upload_assesment')): ?>
            <?php echo $__env->make('modules.file_uploader', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <?php endif; ?>
    </div><!-- end row-->


    <div class="row mt-3" id="dashboard_last_assesment_content" style="visibility:hidden">
        
    </div>
    <!-- end row -->


    <div class="row mt-3" id="dashboard_last_cqi_content" style="visibility:hidden">
        <div class="card">

            <div class="card-header">
                <h4 class="card-title">Latest CQI</h4>
            </div>
            
            <div class="card-body">
                <div class="row">
                </div>
            </div>

            <div class="card-footer">
                <a type="button"  href="#"
                    id="view_all_assesment_file"
                    class="btn btn-soft-primary waves-effect waves-light float-end">
                    <i class="bx bxs-detail font-size-16 align-middle me-2"></i> 
                    See All CQI Report
                </a>
            </div>

        </div>
    </div>


<?php $__env->stopSection(); ?>


<?php $__env->startSection('script'); ?>
    <!-- apexcharts -->
    <script src="<?php echo e(URL::asset('/assets/libs/apexcharts/apexcharts.min.js')); ?>"></script>

    <!-- dropzone js -->
    <script src="<?php echo e(URL::asset('/assets/libs/dropzone/min/dropzone.min.js')); ?>"></script>
    
    <script src="<?php echo e(URL::asset('assets/js/modules/master_swal.js')); ?>"></script>

    <script src="<?php echo e(URL::asset('assets/js/modules/client_university.js')); ?>"></script>

    <script src="<?php echo e(URL::asset('assets/js/modules/file_uploader.js')); ?>"></script>   

    <!-- <script src="<?php echo e(Module::asset('university:js/assesmentfile.js')); ?>"></script>     -->
<?php $__env->stopSection(); ?>


<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\ZenZen\Documents\GitHub\tisla-demo\resources\views/dashboard/university/client.blade.php ENDPATH**/ ?>