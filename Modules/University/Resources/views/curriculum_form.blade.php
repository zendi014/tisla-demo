
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
                            <@foreach($faculty as $key => $val)
                                <option value="{{ $val->id }}">{{ $val->name }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="mb-3">
                        <label class="form-label" >Select Department</label>
                        <select class="form-select" name="department_id">
                            <option>Select</option>
                            @foreach($department as $key => $val)
                                <option value="{{ $val->id }}">{{ $val->name }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>


                <div class="col-md-6">
                    <div class="mb-3">
                        <label class="form-label" >Select Year</label>
                        <select class="form-select" name="year">
                            <option>Select</option>
                            @for ($i = now()->year; $i > (now()->year - 20); $i--)
                                <option value="{{ $i }}">{{ $i }}</option>
                            @endfor
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

