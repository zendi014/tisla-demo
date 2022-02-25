<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateC11CDepartmentCollegersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('c11_c_department_collegers', function (Blueprint $table) {
            $table->uuid('id')->primary();

            $table->uuid('m_department_id'); 
            $table->uuid('m_colleger_id');

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
        Schema::dropIfExists('c11_c_department_collegers');
    }
}
