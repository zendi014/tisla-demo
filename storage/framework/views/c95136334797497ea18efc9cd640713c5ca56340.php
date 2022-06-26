<div class="card">
    <div class="card-body">
        <!-- Nav tabs -->
        <ul class="nav nav-tabs" role="tablist">
            <li class="nav-item">
                <a class="nav-link active" data-bs-toggle="tab" href="#assesment_design" role="tab" aria-selected="false">
                    <span class="d-block d-sm-none"><i class="fas fa-home"></i></span>
                    <span class="d-none d-sm-block">Assesment Design</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#cw_cpmk_mark" role="tab" aria-selected="true">
                    <span class="d-block d-sm-none"><i class="far fa-user"></i></span>
                    <span class="d-none d-sm-block">CW-CPMK Map</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#cw_cpl_mark" role="tab">
                    <span class="d-block d-sm-none"><i class="far fa-envelope"></i></span>
                    <span class="d-none d-sm-block">CW-CPL Map</span>
                </a>
            </li>
        </ul>

        <!-- Tab panes -->
        <div class="tab-content p-3 text-muted">

            <div class="tab-pane active" id="assesment_design" role="tabpanel">
                <div class="table-responsive">
                    <table class="table table-bordered mb-0 text-center table-striped">
                        <thead>
                        <tr class="">
                                <th colspan="10">Learning Outcomes</th>
                            </tr>
                            <tr class="">
                                <th>Course Work</th>
                                <th>Marks</th>
                                <?php $__currentLoopData = $stat_cqi_cmpk; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $val): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <th>
                                        <?php echo e($val->cpmk_name); ?>

                                </th>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </tr>
                        </thead>
                        <tbody>

                            <?php $__currentLoopData = $mapping_course_work_marks; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $val): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <tr>
                                    <td>
                                        <?php echo e($val-> cw_description); ?>

                                    </td>
                                    <td>
                                        <?php echo e($val-> marks); ?>

                                    </td>

                                    <?php $__currentLoopData = $stat_cqi_cmpk; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $k => $v): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <td>
                                        <?php if(in_array($v->cpmk_name, $val->CPMKs)): ?>
                                            <input class="form-check-input" type="checkbox" checked disabled>
                                        <?php else: ?>
                                            <input class="form-check-input" type="checkbox" disabled>
                                        <?php endif; ?>
                                    </td>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                                </tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            
                        </tbody>
                    </table>
                </div>
            </div>
            
            <div class="tab-pane" id="cw_cpmk_mark" role="tabpanel">

                <?php $__currentLoopData = $mapping_course_work_marks; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $val): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="table-responsive">
                        <table class="table table-bordered mb-0 text-center table-striped">
                            <thead>
                            <tr class="">
                                    <th colspan="10"><?php echo e($val->cw_name); ?> | <?php echo e($val->cw_description); ?></th>
                                </tr>

                                <tr class="">
                                    <th rowspan= "2" class="text-center">CPMKs</th>
                                    <?php $__currentLoopData = $val->questions_cpmk; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $k=>$v): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <th><?php echo e($v->question_name); ?></th>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </tr>
                                <tr class="">
                                    <?php $__currentLoopData = $val->questions_cpmk; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $k=>$v): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <th><?php echo e($v->question_marks); ?></th>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </tr>

                            </thead>
                            <tbody>
                                
                                <?php $__currentLoopData = $val->CPMKs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $k => $v): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    
                                    <tr>
                                        <td><?php echo e($v); ?></td>

                                        <?php $__currentLoopData = $val->questions_cpmk; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $kk=>$vv): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <?php if($vv->cpmk_name == $v): ?>
                                                <td><?php echo e($vv->question_marks); ?></td>
                                            <?php else: ?>
                                                <td> </td>
                                            <?php endif; ?>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                                    </tr>  

                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>      

                            </tbody>
                        </table>
                    </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

            </div>

            <div class="tab-pane" id="cw_cpl_mark" role="tabpanel">
                
                <?php $__currentLoopData = $mapping_course_work_marks; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $val): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="table-responsive">
                        <table class="table table-bordered mb-0 text-center table-striped">
                            <thead>
                            <tr class="">
                                    <th colspan="10"><?php echo e($val->cw_name); ?> | <?php echo e($val->cw_description); ?></th>
                                </tr>

                                <tr class="">
                                    <th rowspan= "2" class="text-center">CPLs</th>
                                    <?php $__currentLoopData = $val->map_question_mark; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $k=>$v): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <th><?php echo e($v->question_name); ?></th>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </tr>
                                <tr class="">
                                    <?php $__currentLoopData = $val->map_question_mark; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $k=>$v): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <th><?php echo e($v->question_marks); ?></th>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </tr>

                            </thead>
                            <tbody>

                                <?php $__currentLoopData = $val->CPLs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $k => $v): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>                                                
                                    <tr>                                                    
                                        <td><?php echo e($v); ?></td>   
                                        
                                        <?php $__currentLoopData = $val->map_question_mark; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $kk => $vv): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <td>
                                            <?php $__currentLoopData = $val->questions_cpl; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $kkk => $vvv): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <?php if($vvv->question_name == $vv->question_name): ?>
                                                    <?php if($vvv->cpl_name == $v): ?>
                                                        <?php echo e($vvv->question_marks); ?>

                                                    <?php else: ?>
                                                        
                                                    <?php endif; ?>
                                                <?php endif; ?>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>  
                                        </td>   
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                                            
                                    </tr>  
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                            </tbody>
                        </table>
                    </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

            </div>
            
        </div>
    </div>
</div><?php /**PATH C:\Users\ZenZen\Documents\GitHub\tisla-demo\Modules/University\Resources/views/assesment_map_content.blade.php ENDPATH**/ ?>