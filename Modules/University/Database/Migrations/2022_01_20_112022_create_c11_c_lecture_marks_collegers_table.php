<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateC11CLectureMarksCollegersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('c11_c_lecture_marks_collegers', function (Blueprint $table) {
            $table->uuid('id')->primary();

            $table->uuid('m_course_works_id');
            $table->uuid('m_cw_detail_id');
            $table->uuid('c_lecture_class_id');
            $table->uuid('m_colleger_id');
            $table->float('student_marks'); 
            $table->float('cw_detail_marks');

            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('c11_c_lecture_marks_collegers');
    }
}
