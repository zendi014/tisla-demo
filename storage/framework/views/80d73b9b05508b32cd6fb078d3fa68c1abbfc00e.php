

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
            <?php echo e($currentAdminMenu); ?>

        <?php $__env->endSlot(); ?>
    <?php echo $__env->renderComponent(); ?>

    


    
    <div class="row mt-3" id="detail_colleger" colleger_id="<?php echo e($colleger->id); ?>">
    

        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title"><?php echo e($colleger->name); ?> Competencies Summary</h4>
                </div><!-- end card header -->

                <div class="card-body">
                    <!-- <div class="d-flex flex-wrap gap-2" style="text-align:center"> -->
                        
                        <div class="row">

                        <div class="col-md-6">
                                <div id="spider_competencies_collegers_detail" class="mt-3"><div class="bg-soft-secondary p-2"></div></div>
                            </div>

                            <div class="col-md-6">
                                <div id="chart_competencies_collegers_detail" class="mt-3"><div class="bg-soft-secondary p-2"></div></div>
                            </div>

                            <div class="col-md-6">
                                <div id="spider_cpls_collegers_detail" class="mt-3"><div class="bg-soft-secondary p-2"></div></div>
                            </div>

                            <div class="col-md-6">
                                <div id="chart_cpls_collegers_detail" class="mt-3"><div class="bg-soft-secondary p-2"></div></div>
                            </div>

                        </div>

                    <!-- </div> -->
                </div><!-- end card-body -->
            </div><!-- end card -->
        </div><!-- end col -->


        <?php $__currentLoopData = $total_semester_colleger["lecture_semester"]; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $val): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <div class="col-md-12 ct_semester" semester="<?php echo e($val->semester_mk); ?>">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Semester (<?php echo e($val->semester_mk); ?>)</h4>
                </div><!-- end card header -->

                <div class="card-body">
                    <!-- <div class="d-flex flex-wrap gap-2" style="text-align:center"> -->
                        
                        <div class="row">

                        <?php $__currentLoopData = $total_semester_colleger["lecture_semester_lists"]; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $kk => $vv): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <?php if($vv->semester_mk == $val->semester_mk): ?>
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-body overflow-hidden position-relative">
                                        <div>
                                            <i class="bx bxl-slack widget-box-1-icon text-primary"></i>
                                        </div>
                                        <div class="row">
                                            <h5 class="mt-3">
                                                <a href="<?php echo e(url('c11/detail_rendered_assesment_file')); ?>/<?php echo e($vv->assement_file_id); ?>">
                                                    <?php echo e($vv->code); ?>

                                                </a>
                                            </h5>
                                            <p style="margin-bottom:-10px">
                                                <a href="<?php echo e(url('c11/detail_rendered_assesment_file')); ?>/<?php echo e($vv->assement_file_id); ?>">
                                                    <?php echo e($vv->name); ?>

                                                </a>
                                            </p>
                                        </div>
                                        <hr/>
                                        <div class="row graph_content_colleger_lectures" id="<?php echo e($vv->lecture_id); ?>">
                                            <div class="col-md-6">
                                                <div id="cmlcbs_spider_<?php echo e($vv->lecture_id); ?>">
                                                    <div class="bg-soft-primary p-2"></div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div id="cmlcbs_chart_<?php echo e($vv->lecture_id); ?>">
                                                    <div class="bg-soft-primary p-2"></div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div id="clcbs_spider_<?php echo e($vv->lecture_id); ?>">
                                                    <div class="bg-soft-primary p-2"></div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div id="clcbs_chart_<?php echo e($vv->lecture_id); ?>">
                                                    <div class="bg-soft-primary p-2"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <?php endif; ?>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                        </div>

                    <!-- </div> -->
                </div><!-- end card-body -->
            </div><!-- end card -->
        </div><!-- end col -->
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>


    </div>

<?php $__env->stopSection(); ?>


<?php $__env->startSection('script'); ?>
    <!-- apexcharts -->
    <script src="<?php echo e(URL::asset('/assets/libs/apexcharts/apexcharts.min.js')); ?>"></script>

    <script src="<?php echo e(URL::asset('assets/js/modules/master_chart.js')); ?>"></script>
    <script src="<?php echo e(URL::asset('assets/js/modules/master_swal.js')); ?>"></script>

    <script src="<?php echo e(URL::asset('assets/js/modules/recap_assesment_colleger_detail.js')); ?>"></script> 

<?php $__env->stopSection(); ?>


<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\ZenZen\Documents\GitHub\tisla-demo\Modules/University\Resources/views/recap_assesment_detail_by_colleger.blade.php ENDPATH**/ ?>