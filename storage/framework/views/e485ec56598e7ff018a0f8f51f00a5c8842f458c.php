

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
            Recap Assesment by Collegers
        <?php $__env->endSlot(); ?>
    <?php echo $__env->renderComponent(); ?>

    

    <div class="row mt-3">
    

        <div class="col-md-12 hide_content">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">University Competencies Summary</h4>
                </div><!-- end card header -->

                <div class="card-body">
                    <!-- <div class="d-flex flex-wrap gap-2" style="text-align:center"> -->
                        
                        <div class="row" style="text-align:center">

                            <div class="col-md-12">
                                Competencies Spider All Colleger
                            </div>

                            <div class="col-md-6">
                                CPL Spider All Colleger
                            </div>

                            <div class="col-md-6">
                                CPL Graph All Colleger
                            </div>

                        </div>

                    <!-- </div> -->
                </div><!-- end card-body -->
            </div><!-- end card -->
        </div><!-- end col -->


        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title"><?php echo e($dept_info[0]->department_name); ?> Competencies Summary</h4>
                </div><!-- end card header -->

                <div class="card-body">
                    <!-- <div class="d-flex flex-wrap gap-2" style="text-align:center"> -->
                        
                        <div class="row">

                            <div class="col-md-6">
                                <div id="spider_competencies_all_collegers_by_department" class="mt-3"><div class="bg-soft-secondary p-2"></div></div>
                            </div>

                            <div class="col-md-6">
                                <div id="chart_competencies_all_collegers_by_department" class="mt-3"><div class="bg-soft-secondary p-2"></div></div>
                            </div>

                            <div class="col-md-6">
                                <div id="spider_cpls_all_collegers_by_department" class="mt-3"><div class="bg-soft-secondary p-2"></div></div>
                            </div>

                            <div class="col-md-6">
                                <div id="chart_cpls_all_collegers_by_department" class="mt-3"><div class="bg-soft-secondary p-2"></div></div>
                            </div>

                        </div>

                    <!-- </div> -->
                </div><!-- end card-body -->
            </div><!-- end card -->
        </div><!-- end col -->


        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Competencies History</h4>
                </div><!-- end card header -->
            
                <div class="card-body">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                        <?php $__currentLoopData = $total_competencies_by_year; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $val): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <li class="nav-item">
                            <a class="nav-link <?php if($key == 0): ?> active <?php endif; ?>" data-bs-toggle="tab" href="#tab_<?php echo e($val->batch); ?>" onclick="update_tab('tab_<?php echo e($key); ?>');" role="tab" aria-selected="true">
                                <span class="d-block d-sm-none"><i class="fas fa-home"></i></span>
                                <span class="d-none d-sm-block"><?php echo e($val->batch); ?></span>    
                            </a>
                        </li>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content p-3 text-muted">
                        <?php $__currentLoopData = $total_competencies_by_year; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $val): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        
                            <div class="tab-pane <?php if($key == 0): ?> active <?php endif; ?>" id="tab_<?php echo e($key); ?>" role="tabpanel">
                                
                                <div class="row">

                                    <div class="col-md-12">
                                        Competencies Summary (<?php echo e($val->batch); ?>)
                                    </div>

                                    <div class="col-md-6">
                                        <div id="spider_competencies_collegers_by_year_<?php echo e($val->batch); ?>" class="mt-3"><div class="bg-soft-secondary p-2"></div></div>
                                    </div>

                                    <div class="col-md-6">
                                        <div id="chart_competencies_collegers_by_year_<?php echo e($val->batch); ?>" class="mt-3"><div class="bg-soft-secondary p-2"></div></div>
                                    </div>

                                    <div class="col-md-6">
                                        <div id="spider_cpls_collegers_by_year_<?php echo e($val->batch); ?>" class="mt-3"><div class="bg-soft-secondary p-2"></div></div>
                                    </div>

                                    <div class="col-md-6">
                                        <div id="chart_cpls_collegers_by_year_<?php echo e($val->batch); ?>" class="mt-3"><div class="bg-soft-secondary p-2"></div></div>
                                    </div>

                                </div>

                            </div>
                        
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </div>

                </div><!-- end card-body -->
            </div><!-- end card -->
        </div>


        <?php $__currentLoopData = $total_competencies_by_year; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $val): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <div class="col-md-12 hide_content">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title total_competencies_by_year" batch="<?php echo e($val->batch); ?>"><?php echo e($dept_info[0]->department_name); ?> Competencies Summary (<?php echo e($val->batch); ?>)</h4>
                </div><!-- end card header -->

                <div class="card-body">
                    <!-- <div class="d-flex flex-wrap gap-2" style="text-align:center"> -->
                        
                        

                    <!-- </div> -->
                </div><!-- end card-body -->
            </div><!-- end card -->
        </div><!-- end col -->
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>



        <!-- PAGINATE -->
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Colleger Competencies</h4>
                </div><!-- end card header -->

                <div class="card-body">
                    <div class="d-flex flex-wrap gap-2">

                        <div class="col-md-12">
                            <div class="row justify-content-center">
                                <div class="col-xl-6">
                                    <form class="app-search d-none d-lg-block" action="./recap_assesment_collegers">
                                        <div class="position-relative">
                                            <input type="text" class="form-control" placeholder="Search..." name="q">
                                            <button class="btn btn-primary" type="submit">
                                                <i class="bx bx-search-alt align-middle"></i>
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>

                        
                        <?php if( $count_query ): ?>
                            <div class="col-md-12">                                
                                <p class="text-muted mt-3 mb-0">
                                    <?php echo e($count_query); ?> Data Found ...
                                </p>
                            </div>
                        
                            <!-- ============================= -->
                            
                            <div class="col-md-12">
                                
                                <!-- <div class="row" id="assesed_all_collegers_lists_content"></div>     -->
                                <div class="row">

                                    <?php if(isset($query_paginate)): ?>

                                        <?php $__currentLoopData = $query_paginate; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $val): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            
                                            <div class="col-md-4">
                                                <div class="card">
                                                    <div class="card-body overflow-hidden position-relative">
                                                        <div>
                                                            <i class="bx bxl-slack widget-box-1-icon text-primary"></i>
                                                        </div>
                                                        <div class="row">
                                                            <a href="./recap_assesment/detail_by_colleger/<?php echo e($val->m_colleger_id); ?>" target="__blank">
                                                                <h5 class="mt-3"><?php echo e($val->nim); ?></h5>
                                                                <p style="margin-bottom:-10px"><?php echo e($val->colleger_name); ?></p>
                                                            </a>
                                                        </div>
                                                        <hr/>
                                                        <div class="row" style="text-align:center">
                                                            <?php if($val->is_assesed == "TRUE"): ?>
                                                                <div class="graph_content_assesment_college" id="<?php echo e($val->m_colleger_id); ?>">
                                                                    <div class="bg-soft-primary p-2"></div>
                                                                </div>
                                                            <?php else: ?>
                                                                <img src="<?php echo e(URL::asset('/assets/images/svg/blue/svg123.svg')); ?>" height="400" alt="My SVG Icon">
                                                            <?php endif; ?>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        
                                        <?php echo e($query_paginate->onEachSide(2)->links()); ?>


                                    <?php else: ?>

                                        <?php for($i = 0; $i < 4; $i++): ?>
                                            <div class="col-md-6">
                                                <div class="card">
                                                    <div class="card-body overflow-hidden position-relative">
                                                        <div>
                                                            <i class="bx bxl-slack widget-box-1-icon text-primary"></i>
                                                        </div>                                                    
                                                        <div class="row">
                                                            <div class="bg-soft-secondary p-2"></div>
                                                        </div>
                                                        <hr/>
                                                        <div class="row" style="text-align:center">
                                                            <div class="bg-soft-secondary p-2"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        <?php endfor; ?>

                                    <?php endif; ?>
                                <!-- sampe sini $query_paginate -->
                                </div>

                            </div>

                            <!-- ============================= -->
                        <?php else: ?>
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h4 class="card-title">Assesment Activity</h4>
                                        <p class="card-title-desc">Assesment activity is not found. Please try another keyword</p>
                                    </div>
                                    <div class="card-body">
                                        <img src="<?php echo e(URL::asset('/assets/images/svg/blue/svg158.svg')); ?>" alt="My SVG Icon">
                                    </div>
                                </div>
                            </div>
                        <?php endif; ?>
                        

                    </div>
                </div><!-- end card-body -->
            </div><!-- end card -->
        </div><!-- end col -->


    </div><!-- end row-->



<?php $__env->stopSection(); ?>


<?php $__env->startSection('script'); ?>
    <!-- apexcharts -->
    <script src="<?php echo e(URL::asset('/assets/libs/apexcharts/apexcharts.min.js')); ?>"></script>

    <script src="<?php echo e(URL::asset('assets/js/modules/master_chart.js')); ?>"></script>
    <script src="<?php echo e(URL::asset('assets/js/modules/master_swal.js')); ?>"></script>

    <script src="<?php echo e(URL::asset('assets/js/modules/recap_assesment_colleger.js')); ?>"></script> 

<?php $__env->stopSection(); ?>


<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\ZenZen\Documents\GitHub\tisla-demo\Modules/University\Resources/views/recap_assesment_collegers.blade.php ENDPATH**/ ?>