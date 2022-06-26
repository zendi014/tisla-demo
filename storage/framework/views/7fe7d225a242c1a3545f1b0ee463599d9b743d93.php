<div class="card">
    <div class="card-body">
        <div class="row">

            <div class="col-sm order-3 order-sm-1">
                <div class="d-flex align-items-start mt-3 mt-sm-0">
                    <div class="flex-grow-1">
                        <div>
                            <h4 class="font-size-16 mb-1">
                                <?php echo e($assesment_identity[0]->lecture_name); ?> 
                            </h4>
                            <p class="text-muted font-size-13">
                                <?php echo e($assesment_identity[0]->lecture_code); ?>

                            </p>

                            <h4 class="font-size-16 mb-1">
                                <?php echo e($assesment_identity[0]->lecturer_name); ?>

                            </h4>
                            <p class="text-muted font-size-13">
                                <?php echo e($assesment_identity[0]->lecturer_nidn); ?>

                            </p>

                            <div class="row">

                                <div class="col-md-3">
                                    <h5 class="font-size-16 mb-1">
                                        DEPARTMENT
                                    </h5>
                                    <p class="text-muted font-size-13">
                                        <?php echo e($assesment_identity[0]->department_name); ?>

                                    </p>
                                </div>

                                <div class="col-md-3">
                                    <h5 class="font-size-16 mb-1">
                                        LEVEL / CREDITs
                                    </h5>
                                    <p class="text-muted font-size-13">
                                        <?php echo e($assesment_identity[0]->level_marks); ?>

                                    </p>
                                </div>

                                <div class="col-md-3">
                                    <h5 class="font-size-16 mb-1">
                                        SEMESTER
                                    </h5>
                                    <p class="text-muted font-size-13">
                                        <?php echo e($assesment_identity[0]->semester); ?>

                                    </p>
                                </div>

                                <div class="col-md-3">
                                    <h5 class="font-size-16 mb-1">
                                        PERIOD
                                    </h5>
                                    <p class="text-muted font-size-13">
                                        <?php echo e($assesment_identity[0]->tahun_ajaran); ?>

                                    </p>
                                </div>
                            </div>
                            

                            <hr/>

                            <div class="d-flex flex-wrap align-items-start gap-2 gap-lg-3 text-muted font-size-13">
                                <div>
                                    <i class="mdi mdi-circle-medium me-1 text-success align-middle"></i>
                                    Rendered Lecture Code :: <code><?php echo e($assesment_identity[0]->lecture_id); ?></code>
                                </div>                                            
                            </div>

                            <div class="card border border-danger" style="display:none">
                                <div class="card-header bg-transparent border-danger">
                                    <h5 class="my-0 text-danger"><i class="mdi mdi-block-helper me-3"></i>
                                        Attention!
                                    </h5>
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title">card title</h5>
                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>


        </div>                   

    </div>
    <!-- end card body -->
</div><?php /**PATH C:\Users\ZenZen\Documents\GitHub\tisla-demo\Modules/University\Resources/views/lecture_info_content.blade.php ENDPATH**/ ?>