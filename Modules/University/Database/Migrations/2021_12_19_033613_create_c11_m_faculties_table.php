<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateC11MFacultiesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('c11_m_faculties', function (Blueprint $table) {
            $table->uuid('id')->primary()
                  ->index("idx_c11_m_faculties");

            $table->string('name');
            $table->string('flag');
            $table->uuid('created_by')
                  ->index("idx_c11_m_faculties_created_by");

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
        Schema::dropIfExists('c11_m_faculties');
    }
}
