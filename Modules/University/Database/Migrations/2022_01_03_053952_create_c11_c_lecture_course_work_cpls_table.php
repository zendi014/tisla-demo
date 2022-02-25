<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateC11CLectureCourseWorkCplsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('c11_c_lecture_course_work_cpls', function (Blueprint $table) {
            $table->uuid('id')->primary();

            $table->integer('marks'); 
            $table->uuid('m_cpl_id');
            $table->uuid('m_cw_detail_id');
            $table->uuid('c_lecture_class_id');

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
        Schema::dropIfExists('c11_c_lecture_course_work_cpls');
    }
}
