<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateC11CLectureClassesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('c11_c_lecture_classes', function (Blueprint $table) {
            $table->uuid('id')->primary();

            $table->uuid('m_faculty_id');
            $table->uuid('m_department_id');
            $table->uuid('m_lecture_id');
            $table->uuid('m_lecturer_id');
            $table->uuid('assement_file_id');

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
        Schema::dropIfExists('c11_c_lecture_classes');
    }
}
