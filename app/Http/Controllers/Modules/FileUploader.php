<?php

namespace App\Http\Controllers\Modules;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;


use App\Models\Modules\FileUpload;

use Modules\University\Http\Controllers\C11AssesmentFileController;

class FileUploader extends Controller
{
    
    public function store_file(Request $request){

        try {

            $assesment_extension = ['xlsx', 'xlsm', 'xls'];
            // dd($request);
            if( in_array($request->file->extension(), $assesment_extension) ){
                $validator = Validator::make($request->all(), [
                    'file' => 'required|mimes:.xlsm|max:5120'
                ]);

                if($validator->fails() == false) {
                    $this->data['success'] = 0;
                    $this->data['error'] = $validator->errors()->first('file');// Error response
                }else{
                    $path = 'files/uploads/';
                    $file_name = $request->file->getClientOriginalName(); //time().'.'.$file->extension();
    
                    $file_data = array(
                        'file_name' => $file_name,
                        'file_path' => $path,
                        'file_size' => $request->file->getSize() / (1000000) .' MB',
                        'mime_type' => $request->file->getClientMimeType(),
                        'collection_type' => "assesment"
                    );
                    // dd($file_data);

                    if($request->file->move(public_path($path), $file_name)){
                        $res_file_upload = FileUpload::create($file_data);
                        
                        $res_assesment_file = C11AssesmentFileController::create([
                            'file_id' => $res_file_upload->id
                        ]);

                        if($res_assesment_file){
                            $this->data['success'] = 1;
                            $this->data['data'] = $file_data;// Error response
                        }

                    }else{
                        $this->data['success'] = 0;
                        $this->data['error'] = "File Cant Uploaded";// Error response
                    }
                }
            }else{
                $this->data['success'] = 0;
                $this->data['error'] = "File Type Not Supported";// Error response
            }

            return response()->json($this->data);

        } catch (Throwable $e) {
            report($e);
    
            return false;
        }
        
    }

    public function remove_file(Request $request){
        try {
            $filename =  $request->get('filename');
            $res_file_upload = FileUpload::where('file_name', $filename)->first();
            $path = public_path().'/files/uploads/'.$filename;

            if (file_exists($path)) {
                // if(unlink($path)){
                    if(FileUpload::where('file_name', $filename)->delete()){
                        if(C11AssesmentFileController::delete($res_file_upload->id)){
                            $this->data['success'] = 1;
                            $this->data['data'] = $filename;// Error response
                        }

                    }else{
                        $this->data['success'] = 0;
                        $this->data['error'] = "Error";// Error response
                    }
                // }
            }
            return response()->json($this->data);
            
        } catch (Throwable $e) {
            report($e);
    
            return false;
        }        
    }


    public function remove_file_by_id(Request $request){
        try {
            $file_id =  $request->get('file_id');
            $res_file_upload = FileUpload::where('id', $file_id)->first();
            $path = public_path().'/files/uploads/'.$res_file_upload->file_name;

            if (file_exists($path)) {
                if(isset($file_id)){
                    if(FileUpload::where('id', $file_id)->delete()){
                        if(C11AssesmentFileController::delete($file_id)){
                            $this->data = array(
                                "success"=> 1,
                                "data" => $res_file_upload,
                                "msg" => "Removed Successfully"
                            );
                        }
                    }else{
                        $this->data = array(
                            "success"=> 0,
                            "error" => "Error",
                            "msg" => "Remove Failed"
                        );
                    }
                }
            }
            return response()->json($this->data);
            
        } catch (Throwable $e) {
            report($e);
    
            return false;
        }        
    }

}
