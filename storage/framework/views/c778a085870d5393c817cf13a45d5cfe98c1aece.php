

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
            Sync. Curriculum
        <?php $__env->endSlot(); ?>
    <?php echo $__env->renderComponent(); ?>

    


    <div class="row">
        
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">
                        Curriculum
                    </h4>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-8">
                            
                        </div>
                        <div class="col-md-4 d-grid">
                            <button type="button" class=" btn btn-soft-secondary waves-effect waves-light" onclick="add_curriculum();">
                                <i class="fas fa-plus-circle"></i> Add Curriculum
                            </button>
                        </div>

                        <div class="col-lg-12" style="margin-top:+20px">
                            <table class="table table-bordered" id="sync_curriculum_table">
                                <thead>
                                    <tr>
                                        <!-- <th></th> -->
                                        <th>Name</th>
                                        <th>Department</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    
                    

                </div>
            </div>
        </div>

    </div>

<?php $__env->stopSection(); ?>


<?php $__env->startSection('script'); ?>
    <!-- apexcharts -->
    <script src="<?php echo e(URL::asset('/assets/libs/apexcharts/apexcharts.min.js')); ?>"></script>

    <script src="<?php echo e(URL::asset('assets/js/modules/master_swal.js')); ?>"></script>

    <script src="<?php echo e(URL::asset('assets/js/modules/master_sync_curriculum.js')); ?>"></script> 

<?php $__env->stopSection(); ?>


<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\ZenZen\Documents\GitHub\tisla-demo\Modules/University\Resources/views/sync_curriculum.blade.php ENDPATH**/ ?>