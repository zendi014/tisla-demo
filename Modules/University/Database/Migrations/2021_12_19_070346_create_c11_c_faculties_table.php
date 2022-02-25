<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateC11CFacultiesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('c11_c_faculties', function (Blueprint $table) {
            $table->uuid('id')->primary()->index("idx_c11_c_faculties");

            $table->uuid('m_faculty_id')
                  ->index("idx_c11_c_faculties_m_faculty_id");

            $table->uuid('institution_id')
                  ->index("idx_c11_c_faculties_institution_id");

            $table->uuid('created_by')
                  ->index("idx_c11_c_faculties_created_by");

            $table->timestamps();
            $table->softDeletes();


            // $table->foreign('fkey_c11_c_faculties_m_faculty_id')
            //        ->references('id')
            //        ->on('c11_m_faculties')
            //        ->onDelete('CASCADE');

            // $table->foreign('fkey_c11_c_faculties_institution_id')
            //        ->references('institution_id')
            //        ->on('c_user_institutions')
            //        ->onDelete('NO ACTION');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('c11_c_faculties');
    }
}
