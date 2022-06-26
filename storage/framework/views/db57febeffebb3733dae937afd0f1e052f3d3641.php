<!-- start page title -->
<div class="row">
    <div class="col-12">
        <div class="page-title-box d-sm-flex align-items-center justify-content-between">
            <h4 class="mb-sm-0 font-size-18"><?php echo e(isset($child_3_menu) ? $child_3_menu : ( isset($child_2_menu) ? $child_2_menu : $child_menu)); ?></h4>

            <div class="page-title-right">
                <ol class="breadcrumb m-0">
                    <li class="breadcrumb-item"><a href="<?php echo e(isset($link_prarent_menu) ? url($link_prarent_menu) : '#'); ?>"><?php echo e($prarent_menu); ?></a></li>
                    <?php if(isset($child_menu)): ?>
                        <li class="breadcrumb-item active"><a href="<?php echo e(isset($link_child_menu) ? url($link_child_menu) : '#'); ?>"><?php echo e($child_menu); ?></a></li>
                    <?php endif; ?>

                    <?php if(isset($child_2_menu)): ?>
                        <li class="breadcrumb-item active"><a href="<?php echo e(isset($link_child_2_menu) ? url($link_child_2_menu) : '#'); ?>"><?php echo e($child_2_menu); ?></a></li>                
                    <?php endif; ?>

                    <?php if(isset($child_3_menu)): ?>
                        <li class="breadcrumb-item active"><?php echo e($child_3_menu); ?></li>
                    <?php endif; ?>
                    
                </ol>
            </div>

        </div>
    </div>
</div>
<!-- end page title --><?php /**PATH C:\Users\ZenZen\Documents\GitHub\tisla-demo\resources\views/components/breadcrumb.blade.php ENDPATH**/ ?>