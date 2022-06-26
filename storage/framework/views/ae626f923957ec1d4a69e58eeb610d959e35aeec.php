

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
            Assesment Detail
        <?php $__env->endSlot(); ?>
    <?php echo $__env->renderComponent(); ?>



    
    
    <div class="row" id="assesment_detail_content" file_id="<?php echo e($assesment_identity[0]->assement_file_id); ?>">

        <div class="col-12">

            <div id="lecture_info_content" style="display:none">
                
            </div>
            <!-- end card -->



            <div  id="assesment_map_content" style="display:none">
                
            </div>
            <!-- end card -->


            <div  id="assesment_chart_content" style="display:none">
                <div class="card">
                    <div class="card-header">                    
                        <h4 class="font-size-16 mb-1">
                        Assesment Statistic 
                        </h4>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-12 col-lg-12">
                                <div id="chart_caompetencies" class="mt-3"></div>
                            </div>

                            <div class="col-12 col-lg-6">
                                <div id="chart_total_cpl_marks" class="mt-3"></div>
                            </div>
                            <div class="col-12 col-lg-6">
                                <div id="chart_total_cpmk_marks" class="mt-3"></div>
                            </div>

                            <div class="col-12 col-lg-6">
                                <div id="chart_cpl_by_cw" class="mt-3"></div>                                                
                            </div>
                            <div class="col-12 col-lg-6">
                                <div id="chart_cpmk_by_cw" class="mt-3"></div>                                                
                            </div>

                            <div class="col-12 col-lg-12">
                                <div id="chart_grades" class="mt-3"></div>                                                
                            </div>
                            <div class="col-12 col-lg-12">
                                <div id="chart_grades_by_cpl" class="mt-3"></div>                                                
                            </div>

                            <div class="col-12 col-lg-12">
                                <div id="chart_grades_by_cpmk" class="mt-3"></div>                                                
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
            <!-- end card -->


            <div  id="student_marks_content" style="display:none">
                
            </div>


            <div id="latest_rendered_content" style="display:none">
                <div class="card">
                    <div class="card-header">
                        <div class="d-flex">
                            <div class="flex-grow-1">
                                <h5 class="card-title mb-0">Rendered Assesment</h5>
                            </div>
                            <div class="flex-shrink-0">
                                <a href="#post">View All</a>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div>
                            <div class="row">

                                <?php for($i=0; $i<=2; $i++): ?>
                                <!-- end col -->
                                <div class="col-xl-4 col-sm-6">
                                    <div class="card">
                                        <div class="card-body overflow-hidden position-relative">
                                            <div>
                                                <i class="bx bxl-slack widget-box-1-icon text-primary"></i>
                                            </div>
                                            <div class="faq-count">
                                                <h5 class="text-primary">Assesment...</h5>
                                            </div>
                                            <h5 class="mt-3">
                                                ..... <br/> ....
                                            </h5>
                                            <p class="text-muted mt-3 mb-0">
                                                <h4 class="card-title">
                                                    Dosen
                                                </h4>
                                                <p class="card-title-desc">
                                                    .... | ...
                                                </p>

                                                <h4 class="card-title mt-3 mb-0">
                                                    Level / SKS
                                                </h4>
                                                <p class="card-title-desc">
                                                    ....
                                                </p>

                                                <h4 class="card-title mt-3 mb-0">
                                                    Semester
                                                </h4>
                                                <p class="card-title-desc">
                                                    ....
                                                </p>
                                            </p>                                      
                                            
                                            <hr class="my-4">

                                            <a type="button" class="btn btn-soft-dark waves-effect waves-light float-end"
                                                    href="#">
                                                <i class="bx bx-detail font-size-16 align-middle me-2"></i> Details
                                            </a>                                

                                        </div>
                                        <!-- end card body -->
                                    </div>
                                    <!-- end card  84c225--> 
                                </div>
                                <?php endfor; ?>

                            </div>
                            <!-- end row -->
                        </div>
                    </div>
                    <!-- end card body -->
                </div>
            </div>
            <!-- end card -->


        </div>
        <!-- end col -->



        <div class="col-xl-2 col-lg-4 mini_sidebar_content" style="display:none">


            <div class="card" id="cpmk_list_content">
                <div class="card-body">
                    <h5 class="card-title mb-3">CPMKs</h5>

                    <div class="d-flex flex-wrap gap-2 font-size-16">
                        <?php $__currentLoopData = $stat_cqi_cmpk; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $val): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <a href="#" class="badge badge-soft-primary" m_cpmk_id = "<?php echo e($val->cpmk_id); ?>">
                                <?php echo e($val->cpmk_name); ?>

                            </a>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </div>

                    <a href="#" class="badge badge-soft-dark mt-3">Expand CPMKs >></a>
                </div>
                <!-- end card body -->
            </div>
            <!-- end card -->


            <div class="card" id="cpk_list_content">
                <div class="card-body">
                    <h5 class="card-title mb-3">CPLs</h5>

                    <div class="d-flex flex-wrap gap-2 font-size-16">
                        <?php $__currentLoopData = $stat_cqi_cpls; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $val): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <a href="#" class="badge badge-soft-danger" m_cpl_id = "<?php echo e($val->cpl_id); ?>">
                                <?php echo e($val->cpl_name); ?>

                            </a>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </div>

                    <a href="#" class="badge badge-soft-dark mt-3">Expand CPLs >></a>
                </div>
                <!-- end card body -->
            </div>
            <!-- end card -->



            <div class="card" id="grade_list_content">
                <div class="card-body">
                    <h5 class="card-title mb-3">Grades</h5>

                    <div class="row text-center">

                        <?php $__currentLoopData = $cqi_stat_grades; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $val): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <div class="col-6">
                            <h4 class="font-size-16 mb-1">
                                <?php echo e($val->total_grade); ?>

                            </h4>
                            <p class="text-muted font-size-13">
                                Grade <?php echo e($val->grade); ?>

                            </p>
                        </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                        
                    </div>

                    <a href="#" class="badge badge-soft-dark">Expand Grades >></a>
                </div>
                <!-- end card body -->
            </div>
            <!-- end card -->


        </div>
        <!-- end col -->



    </div>
    <!-- end row -->
    






<?php $__env->stopSection(); ?>


<?php $__env->startSection('script'); ?>
    <script src="<?php echo e(URL::asset('assets/js/pages/highchart-variable-pie.js')); ?>"></script>

    <script src="<?php echo e(URL::asset('assets/js/modules/master_swal.js')); ?>"></script>

    <script src="<?php echo e(URL::asset('assets/js/modules/master_chart.js')); ?>"></script>

    <script src="<?php echo e(URL::asset('assets/js/modules/detail_assesment.js')); ?>"></script> 

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\ZenZen\Documents\GitHub\tisla-demo\Modules/University\Resources/views/assesment_detail.blade.php ENDPATH**/ ?>