<div class="dropdown d-inline-block">
    <button type="button" class="btn header-item bg-soft-light border-start border-end" id="page-header-user-dropdown"
    data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <img class="rounded-circle header-profile-user" src="<?php echo e(isset(Auth::user()->avatar) ? asset(Auth::user()->avatar) : asset('/assets/images/users/avatar-1.jpg')); ?>"
            alt="Header Avatar">
        <span class="d-none d-xl-inline-block ms-1 fw-medium"><?php echo e(ucfirst(Auth::user()->name)); ?></span>
        <i class="mdi mdi-chevron-down d-none d-xl-inline-block"></i>
    </button>
    <div class="dropdown-menu dropdown-menu-end">
        <!-- item-->
        <a class="dropdown-item" href="apps-contacts-profile">
            <i class="mdi mdi-face-profile font-size-16 align-middle me-1"></i> 
                <?php echo app('translator')->get('translation.Profile'); ?>
        </a>
        
        <a class="dropdown-item" href="#">
            <i class="mdi mdi-account-settings font-size-16 align-middle me-1"></i> 
                <?php echo app('translator')->get('translation.Settings'); ?>
        </a>
        
        <div class="dropdown-divider"></div>
        <a class="dropdown-item text-danger" href="javascript:void();" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
            <i class="mdi mdi-logout font-size-16 align-middle me-1"></i> 
            <span key="t-logout"><?php echo app('translator')->get('translation.Logout'); ?></span>
        </a>
        <form id="logout-form" action="<?php echo e(route('logout')); ?>" method="POST" style="display: none;">
            <?php echo csrf_field(); ?>
        </form>
    </div>
</div><?php /**PATH C:\Users\ZenZen\Documents\GitHub\tisla-demo\resources\views/layouts/top-nav-profile.blade.php ENDPATH**/ ?>