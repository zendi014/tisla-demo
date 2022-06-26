<?php if(isset($latest_assesment_file) == true): ?>
    <div class="card">
        <div class="card-header">
            <h4 class="card-title">Latest Assesment</h4>
            <!-- <button class="btn font-16 btn-outline-primary float-end" onclick="add_assesment()">
                <i class="mdi mdi-plus-circle-outline"></i> 
                Add Assesment
            </button> -->
        </div>
        
        <div class="card-body">
            <div class="row">

                <?php if($latest_assesment_file): ?>
                
                    <?php $__currentLoopData = $latest_assesment_file; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $val): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                        <?php if($val['is_rendered'] == 1): ?>                                                
                            
                            <div class="col-xl-4 col-sm-6">
                                <div class="card">
                                    <div class="card-body overflow-hidden position-relative">
                                        <div>
                                            <i class="bx bxl-slack widget-box-1-icon text-primary"></i>
                                        </div>
                                        <div class="faq-count">
                                            <h5 class="text-primary">Assesment <?php echo e(explode(".", $val['file_name'])[0]); ?></h5>
                                        </div>
                                        <h5 class="mt-3">
                                            <?php echo e($val['assesment_detail'][0]->lecture_code); ?> <br/> <?php echo e($val['assesment_detail'][0]->lecture_name); ?>

                                        </h5>
                                        <p class="text-muted">
                                            <?php echo e(\Carbon\Carbon::parse($val['created_at'])->diffForHumans()); ?>                                   
                                        </p>
                                        <p class="text-muted mt-3 mb-0">
                                            <h4 class="card-title">
                                                Dosen
                                            </h4>
                                            <p class="card-title-desc">
                                                <?php echo e($val['assesment_detail'][0]->lecturer_nidn); ?> | <?php echo e($val['assesment_detail'][0]->lecturer_name); ?>

                                            </p>

                                            <h4 class="card-title mt-3 mb-0">
                                                Level / SKS
                                            </h4>
                                            <p class="card-title-desc">
                                                <?php echo e($val['assesment_detail'][0]->level_marks); ?>

                                            </p>

                                            <h4 class="card-title mt-3 mb-0">
                                                Period (Semester)
                                            </h4>
                                            <p class="card-title-desc">
                                            <?php echo e($val['assesment_detail'][0]->tahun_ajaran); ?> (<?php echo e($val['assesment_detail'][0]->semester); ?>)
                                            </p>
                                        </p>                                      
                                        
                                        <hr class="my-4">

                                        <a type="button" assement_file_id = "<?php echo e($val['assement_file_id']); ?>" 
                                                onclick='detail_rendered_assesment_file("<?php echo e($val["assement_file_id"]); ?>")'
                                                class="btn btn-soft-dark waves-effect waves-light float-end"
                                                href="<?php echo e(url('c11/detail_rendered_assesment_file/'.$val['assement_file_id'])); ?>" target="__blank">
                                            <i class="bx bx-detail font-size-16 align-middle me-2"></i> Details
                                        </a>
                                        <!-- <a type="button" assement_file_id = "<?php echo e($val['assement_file_id']); ?>"  
                                                class="btn btn-soft-success waves-effect waves-light"
                                                href="<?php echo e(Storage::url('/files/uploads/'.$val['file_name'])); ?>">
                                            <i class="bx bxs-file-doc font-size-16 align-middle me-2"></i> Download File
                                        </a>                             -->

                                    </div>
                                    <!-- end card body -->
                                </div>
                                <!-- end card  84c225--> 
                            </div>

                        <?php elseif($val['is_rendered'] == 0): ?>

                            <div class="col-xl-4 col-sm-6">
                                <div class="card">
                                    <div class="card-body overflow-hidden position-relative">
                                        <div>
                                            <i class="bx bxl-slack widget-box-1-icon text-primary"></i>
                                        </div>
                                        <div class="faq-count">
                                            <h5 class="text-primary">Assesment <?php echo e(explode(".", $val['file_name'])[0]); ?></h5>
                                        </div>
                                        <h5 class="mt-3">
                                            UPLOADED
                                        </h5>
                                        <p class="text-muted">
                                            <?php echo e(\Carbon\Carbon::parse($val['created_at'])->diffForHumans()); ?>                                     
                                        </p>
                                        <p class="text-muted mt-3 mb-0">
                                            <img src="<?php echo e(URL::asset('assets/images/svg/blue/svg55.svg')); ?>"  
                                                style="height:50%; margin-left:auto; margin-right:auto; max-width: 60%;display: block;">
                                            <!-- <span class="badge rounded-pill bg-primary">Unrendered</span> -->
                                        </p>
                                        <p class="card-title-desc mt-3">
                                            Click render to extract and map your assesment data ...
                                        </p>
                                        
                                        <hr class="my-4">

                                        <button type="button" assement_file_id = "<?php echo e($val['assement_file_id']); ?>" 
                                                onclick='render_assesment_file("<?php echo e($val["assement_file_id"]); ?>")' 
                                                class="btn btn-soft-primary waves-effect waves-light">
                                            <i class="bx bx-layer font-size-16 align-middle me-2"></i> Render
                                        </button>
                                        <button type="button" assement_file_id = "<?php echo e($val['assement_file_id']); ?>" 
                                                onclick='remove_assesment_file("<?php echo e($val["assement_file_id"]); ?>")'
                                                class="btn btn-soft-danger waves-effect waves-light">
                                            <i class="bx bxs-trash font-size-16 align-middle me-2"></i> Remove
                                        </button>                                

                                    </div>
                                    <!-- end card body -->
                                </div>
                                <!-- end card  84c225--> 
                            </div>


                        <?php elseif($val['is_rendered'] == 2): ?>

                            <div class="col-xl-4 col-sm-6">
                                <div class="card">
                                    <div class="card-body overflow-hidden position-relative">
                                        <div>
                                            <i class="bx bxl-slack widget-box-1-icon text-primary"></i>
                                        </div>
                                        <div class="faq-count">
                                            <h5 class="text-primary">Assesment <?php echo e(explode(".", $val['file_name'])[0]); ?></h5>
                                        </div>
                                        <h5 class="mt-3">
                                            <code>Error Rendered</code>
                                        </h5>
                                        <p class="text-muted">
                                            <?php echo e(\Carbon\Carbon::parse($val['created_at'])->diffForHumans()); ?>                                  
                                        </p>
                                        <p class="text-muted mt-3 mb-0">
                                            <img src="<?php echo e(URL::asset('assets/images/svg/orange/svg507.svg')); ?>" 
                                                style="height:50%; margin-left:auto; margin-right:auto; max-width: 70%;display: block;">
                                            <!-- <span class="badge rounded-pill bg-danger">Error Rendered</span> -->
                                        </p>

                                        <p class="card-title-desc mt-3">
                                            An error occured, please check your template before upload!
                                        </p>
                                        
                                        <hr class="my-4">

                                        <button type="button" assement_file_id = "<?php echo e($val['assement_file_id']); ?>" 
                                                onclick='remove_assesment_file("<?php echo e($val["assement_file_id"]); ?>")'
                                                class="btn btn-soft-danger waves-effect waves-light">
                                            <i class="bx bxs-trash font-size-16 align-middle me-2"></i> Remove
                                        </button>                                    

                                    </div>
                                    <!-- end card body -->
                                </div>
                                <!-- end card  84c225--> 
                            </div>


                        <?php endif; ?>

                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                <?php else: ?>
                    <img src="<?php echo e(URL::asset('/assets/images/svg/blue/svg158.svg')); ?>" alt="My SVG Icon">
                <?php endif; ?>

            </div>
        </div>
    </div>
    
<?php else: ?>
    <div class="card">
        <div class="card-header">
            <h4 class="card-title">Latest Assesment</h4>
            <p class="card-title-desc">You Have No Assesment Activity</p>
        </div>
        <div class="card-body">
            <img src="<?php echo e(URL::asset('/assets/images/svg/blue/svg158.svg')); ?>" alt="My SVG Icon">
        </div>
    </div>
<?php endif; ?><?php /**PATH C:\Users\ZenZen\Documents\GitHub\tisla-demo\Modules/University\Resources/views/latest_assesment_file.blade.php ENDPATH**/ ?>