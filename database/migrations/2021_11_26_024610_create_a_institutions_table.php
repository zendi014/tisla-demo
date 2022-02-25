<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAInstitutionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('a_institutions', function (Blueprint $table) {
            $table->uuid('id')->primary();

            $table->string('institution_code')->unique();
            $table->string('institution_name')->unique();
            $table->string('institution_location');
            $table->string('institution_domain')->unique();
            $table->integer('institution_level');
            $table->integer('institution_category');
            $table->string('institution_image');
            $table->string('created_by')->unique();

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
        Schema::dropIfExists('a_institutions');
    }
}
