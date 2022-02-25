<!-- start page title -->
<div class="row">
    <div class="col-12">
        <div class="page-title-box d-sm-flex align-items-center justify-content-between">
            <h4 class="mb-sm-0 font-size-18">{{ isset($child_3_menu) ? $child_3_menu : ( isset($child_2_menu) ? $child_2_menu : $child_menu) }}</h4>

            <div class="page-title-right">
                <ol class="breadcrumb m-0">
                    <li class="breadcrumb-item"><a href="{{ isset($link_prarent_menu) ? url($link_prarent_menu) : '#' }}">{{ $prarent_menu }}</a></li>
                    @if(isset($child_menu))
                        <li class="breadcrumb-item active"><a href="{{ isset($link_child_menu) ? url($link_child_menu) : '#' }}">{{ $child_menu }}</a></li>
                    @endif

                    @if(isset($child_2_menu))
                        <li class="breadcrumb-item active"><a href="{{ isset($link_child_2_menu) ? url($link_child_2_menu) : '#' }}">{{ $child_2_menu }}</a></li>                
                    @endif

                    @if(isset($child_3_menu))
                        <li class="breadcrumb-item active">{{ $child_3_menu }}</li>
                    @endif
                    
                </ol>
            </div>

        </div>
    </div>
</div>
<!-- end page title -->