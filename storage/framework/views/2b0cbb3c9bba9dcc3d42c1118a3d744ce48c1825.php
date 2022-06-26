
<div class="card">
    <div class="card-header">
        <h4 class="card-title">
            Add Curriculum
        </h4>
    </div>
    <div class="card-body">

        <form id="form_curriculum">

            <div class="row">

                <div class="col-md-6">
                    <div class="mb-3">
                        <label for="example-text-input" class="form-label">Curriculum Code</label>
                        <input class="form-control" type="text" placeholder="Curriculum Code" name="code">
                    </div>
                </div>
                
                <div class="col-md-6">
                    <div class="mb-3">
                        <label for="example-text-input" class="form-label">Curriculum Name</label>
                        <input class="form-control" type="text" placeholder="Curriculum Name" name="name">
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="mb-3">
                        <label class="form-label" >Select Faculty</label>
                        <select class="form-select" name="faculty_id">
                            <option>Select</option>
                            <<?php $__currentLoopData = $faculty; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $val): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <option value="<?php echo e($val->id); ?>"><?php echo e($val->name); ?></option>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </select>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="mb-3">
                        <label class="form-label" >Select Department</label>
                        <select class="form-select" name="department_id">
                            <option>Select</option>
                            <?php $__currentLoopData = $department; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $val): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <option value="<?php echo e($val->id); ?>"><?php echo e($val->name); ?></option>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </select>
                    </div>
                </div>


                <div class="col-md-6">
                    <div class="mb-3">
                        <label class="form-label" >Select Year</label>
                        <select class="form-select" name="year">
                            <option>Select</option>
                            <?php for($i = now()->year; $i > (now()->year - 20); $i--): ?>
                                <option value="<?php echo e($i); ?>"><?php echo e($i); ?></option>
                            <?php endfor; ?>
                        </select>
                    </div>
                </div>
            
            </div>
        </form>

    </div>

    <div class="card-footer">
        <div class="row">

            <div class="col-md-6">
            </div>
            <div class="col-md-3 d-grid">
                <button type="button" class=" btn btn-soft-success waves-effect waves-light" onclick="save_add_curriculum();">
                    <i class="fas fa-plus-circle"></i> Save
                </button>
            </div>
            <div class="col-md-3 d-grid">
                <button type="button" class=" btn btn-soft-danger waves-effect waves-light" onclick="cancel_add_curriculum();">
                    <i class="fas far fa-window-close"></i> Cancel
                </button>
            </div>

        </div>
    </div>

</div>

<?php /**PATH C:\Users\ZenZen\Documents\GitHub\tisla-demo\Modules/University\Resources/views/curriculum_form.blade.php ENDPATH**/ ?>