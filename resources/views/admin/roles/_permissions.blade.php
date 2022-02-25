<div class="row">
    <?php $count = 0; ?>
    @if(isset($permissions))
        @foreach($permissions as $perm)
            <?php
                $per_found = 0;            
                if( isset($user)) {                
                //     $per_found = $user->hasDirectPermission($perm->name);
                    if( !is_null($user->hasPermissionTo($perm->name)) ){
                        $per_found = $user->hasPermissionTo($perm->name);
                    }
                    if( !is_null($user->hasDirectPermission($perm->name)) ){
                        $per_found = $user->hasPermissionTo($perm->name);
                    }
                    $count ++;  
                }

                if( isset($role) ) {
                    if( !is_null($role->hasPermissionTo($perm->name)) ){
                        $per_found = $role->hasPermissionTo($perm->name);
                    }        
                }

                $labelName = Str::of($perm->name)->replace('_', ' ');
            ?>
            <div class="col-sm-4">
                <div class="form-check">
                    <input 
                        class="form-check-input" 
                        type="checkbox" name="permissions[]" 
                        id="{{ $perm->id }}" value="{{ $perm->name }}" 
                        {{  $per_found != 0 ? 'checked' : '' }}
                    >
                    <label class="form-check-label {{ Str::contains($perm->name, 'delete') ? 'text-danger' : '' }}" for="{{ $perm->id }}">
                        {{ $labelName }}
                    </label>
                </div>
            </div>
        @endforeach
    @else
        No Permission...
    @endif
    
</div>

<!-- {{ $count }} -->