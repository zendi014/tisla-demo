<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateC11MCurricullumsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('c11_m_curricullums', function (Blueprint $table) {
            $table->uuid('id')->primary();

            $table->string('name');
            $table->string('code');
            $table->string('flag');            
            $table->integer('year'); 
            $table->uuid('created_by');
            $table->uuid('institution_id');

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
        Schema::dropIfExists('c11_m_curricullums');
    }
}
