<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateC11MLecturersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('c11_m_lecturers', function (Blueprint $table) {
            $table->uuid('id')->primary();

            $table->string('name'); 
            $table->string('nik')->nullable();
            $table->string('nidn')->nullable();
            $table->string('flag');
            $table->uuid('created_by');

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
        Schema::dropIfExists('c11_m_lecturers');
    }
}
