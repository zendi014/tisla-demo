<div class="avatar-xl mx-auto mb-4">
    <div class="avatar-title bg-soft-light text-light display-4 m-0 rounded-circle">
        <i class="bx bxs-user-circle"></i>
    </div>
</div>

<form id="edit_colleger">
    <div class="row" style="overflow-x:hidden;">
        <div class="col-md-6">
            <div class="mb-4">
                <label for="example-password-input" class="form-label">Colleger NIM</label>
                <input class="form-control" type="text" 
                        name="colleger_nim" disabled placeholder="NIM"
                        value="{{ $collegers->nim; }}"
                >
            </div>

            <div class="mb-4">
                <label class="form-label">Select Batch</label>
                <select class="form-select" name="batch">
                    <option>Select</option>
                    @foreach($batch as $val)
                        <option value="{{ $val->batch }}" @if(old('batch', $collegers->batch) === $val->batch) selected @endif>{{ $val->batch }}</option>
                    @endforeach
                </select>
            </div>
            
            <div class="mb-4">
                <label class="form-label">Select Category</label>
                <select class="form-select" name="class_pos">
                    <option>Select</option>
                    @foreach($class_pos as $val)
                        <option value="{{ $val->class_pos }}" @if(old('class_pos', $collegers->class_pos) === $val->class_pos) selected @endif>{{ $val->class_pos }}</option>
                    @endforeach
                </select>
            </div>

        </div>



        <div class="col-md-6">
            <div class="mb-4">
                <label for="example-password-input" class="form-label">Colleger Name</label>
                <input class="form-control" type="text" 
                        name="name" placeholder="NAME"
                        value="{{ $collegers->name; }}"
                        >
            </div>            

            <div class="mb-4">
                <label class="form-label">Select Campus Location</label>
                <select class="form-select" name="campus_loc">
                    <option>Select</option>
                    @foreach($campus_loc as $val)
                        <option value="{{ $val->campus_loc }}" @if(old('campus_loc', $collegers->campus_loc) === $val->campus_loc) selected @endif>{{ $val->campus_loc }}</option>
                    @endforeach
                </select>
            </div>

            <div class="mb-4">
            <label for="example-password-input" class="form-label">Colleger Status</label>
                <input class="form-control" type="text" 
                        name="colleger_status" placeholder="STATUS" disabled
                        value="{{ $collegers->status; }}"
                        >
            </div>

            <div class="mb-4">
                <input class="form-control" type="text" name="m_colleger_id" value="{{ isset($collegers->id) ? $collegers->id : null }}" style="display:none">
            </div>
        </div>
        <div class="col-md-6">
        </div>
        <div class="col-md-3 d-grid">
            <button type="button" class="btn btn-soft-primary waves-effect waves-light" onclick="save_edit_colleger()">Save</button>
        </div>
        <div class="col-md-3 d-grid">
            <button type="button" class="btn btn-soft-danger waves-effect waves-light" onclick="Swal.close()">Cancel</button>
        </div>
    </div>
</form>
