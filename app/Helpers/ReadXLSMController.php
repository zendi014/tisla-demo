<?php

namespace App\Http\Controllers\Test;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Http\Controllers\Test\IReadFilterController;

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\IOFactory;


class ReadXLSMController extends Controller
{
    private $path       = "";
    private $sheet      = [];
    private $row_start  = 0;
    private $row_end    = 0;
    private $cols       = [];

    public function __construct($path, $sheet, $row_start, $row_end, $cols) {
        $this->path         = public_path($path);
        $this->sheet        = $sheet;
        $this->row_start    = $row_start;
        $this->row_end      = $row_end;
        $this->cols         = $cols;

        // dd($this->sheet);
    }

    public function ReadXLSM(){
        $inputFileName = $this->path;
        $inputFileType = IOFactory::identify($inputFileName);
        $reader = IOFactory::createReader($inputFileType);

        $active_sheet = $this->sheet;
        $reader = IOFactory::createReader($inputFileType);
        $reader->setLoadSheetsOnly($active_sheet);

        $filters = new IReadFilterController(
            $this->row_start, $this->row_end, 
            $this->cols
        );
        
        $reader->setReadFilter($filters);
        $spreadsheet = $reader->load($inputFileName);
        
        if(count($active_sheet) > 1){
            $spreadsheet->setActiveSheetIndexByName($active_sheet[0]);
        }

        return $spreadsheet->getActiveSheet()->toArray(null, true, true, true);
    }

}
