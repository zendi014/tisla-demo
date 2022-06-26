<div class="card">
    <div class="card-body">
        


        <!-- Nav tabs -->
        <ul class="nav nav-tabs" role="tablist">
            <li class="nav-item">
                <a class="nav-link active" data-bs-toggle="tab" href="#tab_1" role="tab" aria-selected="false">
                    <span class="d-block d-sm-none"><i class="fas fa-home"></i></span>
                    <span class="d-none d-sm-block">Student Marks</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#tab_2" role="tab" aria-selected="true">
                    <span class="d-block d-sm-none"><i class="far fa-user"></i></span>
                    <span class="d-none d-sm-block">Student Marks by Courseworks and CMPKs </span>
                </a>
            </li>
            <!-- <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#tab_3" role="tab">
                    <span class="d-block d-sm-none"><i class="far fa-envelope"></i></span>
                    <span class="d-none d-sm-block">Student Marks by CPLs</span>
                </a>
            </li> -->
            <!-- <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#tab_4" role="tab">
                    <span class="d-block d-sm-none"><i class="fas fa-cog"></i></span>
                    <span class="d-none d-sm-block">CQI Report</span>
                </a>
            </li> -->
        </ul>



        <!-- Tab panes -->
        <div class="tab-content p-3 text-muted">
            
            <div class="tab-pane active" id="tab_1" role="tabpanel">
                
            <?php if(isset($student_marks)): ?>
                <div class="table-responsive">
                    <table class="table table-bordered mb-0 table-striped">
                        <thead>                                    
                            <tr>
                                <th rowspan= "2">NIM</th>
                                <th rowspan= "2">Name</th>
                                <th colspan="2">Course Work</th>
                                <th colspan="2">Examination</th>
                                <th rowspan= "2">Final Score</th>
                                <th rowspan= "2">Grade</th>
                            </tr>
                            <tr>                                            
                                <th>100%</th>
                                <th>60%</th>
                                <th>100%</th>
                                <th>40%</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $__currentLoopData = $student_marks; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $k => $val): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <tr>
                                <td class="text-center">
                                    <a href="/c11/recap_assesment/detail_by_colleger/<?php echo e($val->m_colleger_id); ?>" target="__blank">
                                        <?php echo e($val->nim); ?>

                                    </a>
                                </td>
                                <td class="text-left">
                                    <a href="/c11/recap_assesment/detail_by_colleger/<?php echo e($val->m_colleger_id); ?>" target="__blank">
                                        <?php echo e($val->student_name); ?>

                                    </a>
                                    <?php if($k < 3): ?>
                                        <span class="badge bg-soft-success text-success">
                                            T
                                        </span>
                                    <?php elseif($k >= count($student_marks) - 3): ?>
                                        <span class="badge bg-soft-danger text-danger">
                                            B
                                        </span>
                                    <?php else: ?>
                                        <?php if(isset($student_marks)): ?>
                                            <?php if( $val->total_final_marks > (($student_marks_stddevavg['student_mark_grades_stddevavg'][0]->avg_final_marks) - 0.01*$student_marks_stddevavg['student_mark_grades_stddevavg'][0]->avg_final_marks) && $val->total_final_marks < ($student_marks_stddevavg['student_mark_grades_stddevavg'][0]->avg_final_marks + 0.01*$student_marks_stddevavg['student_mark_grades_stddevavg'][0]->avg_final_marks)): ?>
                                                <span class="badge bg-soft-warning text-warning">
                                                    M
                                                </span>
                                            <?php endif; ?>
                                        <?php endif; ?>
                                    <?php endif; ?>
                                </td>
                                <td style="text-align: right;">                                                
                                    <?php echo e(number_format((float)$val->avg_course_work_marks, 2, '.', '')); ?>

                                </td>
                                <td style="text-align: right;">
                                    <?php echo e(number_format((float)$val->final_course_work_marks, 2, '.', '')); ?>

                                </td>
                                <td style="text-align: right;">
                                    <?php echo e(number_format((float)$val->avg_exam_marks, 2, '.', '')); ?>

                                </td>
                                <td style="text-align: right;">
                                    <?php echo e(number_format((float)$val->final_exam_marks, 2, '.', '')); ?>

                                </td>
                                <td style="text-align: right;">
                                    <?php echo e(number_format((float)$val->total_final_marks, 2, '.', '')); ?>

                                </td>
                                <td class="text-center">
                                    <?php echo e($val->grade); ?>

                                </td>
                            </tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                            <?php if(isset($student_marks)): ?>
                            <tr style="font-weight: bold;">
                                <td class="text-center">
                                </td>
                                <td class="text-center">
                                    AVERAGE
                                </td>

                                <td style="text-align: right;">
                                    <?php echo e(round($student_marks_stddevavg['student_mark_course_work_stddevavg'][0]->avg_course_work_marks, 2)); ?>

                                </td>
                                <td style="text-align: right;">
                                    <?php echo e(round($student_marks_stddevavg['student_mark_course_work_stddevavg'][0]->avg_final_course_work_marks, 2)); ?>

                                </td>

                                <td style="text-align: right;">
                                    <?php echo e(round($student_marks_stddevavg['student_mark_final_exam_stddevavg'][0]->avg_exam_marks, 2)); ?>

                                </td>
                                <td style="text-align: right;">
                                    <?php echo e(round($student_marks_stddevavg['student_mark_final_exam_stddevavg'][0]->avg_final_exam_marks, 2)); ?>

                                </td>

                                <td style="text-align: right;">
                                    <?php echo e(round($student_marks_stddevavg['student_mark_grades_stddevavg'][0]->avg_final_marks, 2)); ?>

                                </td>
                            </tr> 
                            <tr style="font-weight: bold;">
                                <td class="text-center">
                                </td>
                                <td class="text-center">
                                    STDDEV
                                </td>

                                <td style="text-align: right;">
                                    <?php echo e(round($student_marks_stddevavg['student_mark_course_work_stddevavg'][0]->stdev_avg_course_work_marks, 2)); ?>

                                </td>
                                <td style="text-align: right;">
                                    <?php echo e(round($student_marks_stddevavg['student_mark_course_work_stddevavg'][0]->stdev_final_course_work_marks, 2)); ?>

                                </td>

                                <td style="text-align: right;">
                                    <?php echo e(round($student_marks_stddevavg['student_mark_final_exam_stddevavg'][0]->stdev_avg_exam_marks, 2)); ?>

                                </td>
                                <td style="text-align: right;">
                                    <?php echo e(round($student_marks_stddevavg['student_mark_final_exam_stddevavg'][0]->stdev_final_exam_marks, 2)); ?>

                                </td>

                                <td style="text-align: right;">
                                    <?php echo e(round($student_marks_stddevavg['student_mark_grades_stddevavg'][0]->stdev_final_marks, 2)); ?>

                                </td>
                            </tr> 
                            <?php endif; ?>

                        </tbody>
                    </table>
                </div>
                
            <?php endif; ?>
            </div>
            <!-- end tab pane -->


            <div class="tab-pane" id="tab_2" role="tabpane2">

            <?php if(isset($pivot_student_mark_by_cpmk)): ?>
                <?php $__currentLoopData = $pivot_student_mark_by_cpmk; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $k => $val): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                    <div class="table-responsive" style="margin-bottom:+40px">
                        <table class="table table-bordered mb-0 table-striped">
                            <thead>
                                <tr class="text-center">
                                    <th colspan="10"><?php echo e($val['cw_name']); ?> | <?php echo e($val['cw_description']); ?></th>
                                </tr>
                                <tr class="">
                                    <?php if(isset($val['pivot_data'][0])): ?>                        
                                        <?php $__currentLoopData = $val['pivot_data'][0]; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $kk => $vv): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <?php if(!empty($vv)): ?>
                                                <?php if($kk != 'student_name'): ?>
                                                    <th class="text-center"><?php echo e(str_replace("_", " ", strtoupper($kk))); ?></th>
                                                <?php else: ?>
                                                    <th><?php echo e(str_replace("_", " ", strtoupper($kk))); ?></th>
                                                <?php endif; ?>
                                            <?php endif; ?>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    <?php endif; ?>
                                </tr>
                            </thead>
                            <tbody>
                                
                                <?php $__currentLoopData = $val['pivot_data']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $kk => $vv): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <tr>
                                        <?php $__currentLoopData = $vv; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $kkk => $vvv): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>                           
                                            <?php if(!empty($vvv)): ?>
                                                <?php if($kkk != 'student_name'): ?>
                                                    <td style="text-align: right;"><?php echo e($vvv); ?></td>
                                                <?php else: ?>
                                                    <td><?php echo e($vvv); ?></td>
                                                <?php endif; ?>
                                            <?php endif; ?>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </tr>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                                <?php if(isset($val['pivot_data_stddevavg'])): ?>
                                    <tr style="font-weight: bold;">
                                        <td class="text-center">
                                        </td>
                                        <td class="text-center">
                                            AVERAGE
                                        </td>
                                        <?php $__currentLoopData = $val['pivot_data_stddevavg']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $kk => $vv): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <?php $__currentLoopData = $vv; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $kkk => $vvv): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>                           
                                                <?php if(in_array($kkk, array('avg_cpmk1', 'avg_cpmk2', 'avg_cpmk3', 'avg_cpmk4', 'avg_cpmk5', 'avg_cpmk6', 'avg_cpmk7', 'avg_cpmk8'))): ?>
                                                    <?php if(!empty($vvv)): ?>
                                                        <td style="text-align: right;"><?php echo e(round($vvv, 2)); ?></td>
                                                    <?php endif; ?>
                                                <?php endif; ?>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </tr>

                                    <tr style="font-weight: bold;">
                                        <td class="text-center">
                                        </td>
                                        <td class="text-center">
                                            STDDEV
                                        </td>
                                        <?php $__currentLoopData = $val['pivot_data_stddevavg']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $kk => $vv): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <?php $__currentLoopData = $vv; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $kkk => $vvv): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>                           
                                                <?php if(in_array($kkk, array('stdev_cpmk1', 'stdev_cpmk2', 'stdev_cpmk3', 'stdev_cpmk4', 'stdev_cpmk5', 'stdev_cpmk6', 'stdev_cpmk7', 'stdev_cpmk8'))): ?>
                                                    <?php if(!empty($vvv)): ?>
                                                        <td style="text-align: right;"><?php echo e(round($vvv, 2)); ?></td>
                                                    <?php endif; ?>
                                                <?php endif; ?>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </tr>
                                <?php endif; ?>

                            </tbody>
                        </table>
                    </div>

                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                
            <?php endif; ?>

            </div>
            <!-- end tab pane -->



            <!-- <div class="tab-pane" id="tab_3" role="tabpane3">
                    
            </div> -->
            <!-- end tab pane -->


            <!-- <div class="tab-pane" id="tab_4" role="tabpane4">
                <div class="row">
                    CQI Report
                </div>                                                                        
            </div> -->
            <!-- end tab pane -->

        </div>

    </div>
</div><?php /**PATH C:\Users\ZenZen\Documents\GitHub\tisla-demo\Modules/University\Resources/views/student_marks_content.blade.php ENDPATH**/ ?>