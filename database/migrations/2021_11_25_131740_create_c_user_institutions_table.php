<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCUserInstitutionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('c_user_institutions', function (Blueprint $table) {
            $table->uuid('id')->primary();

            $table->uuid('institution_id')->nullable();
            $table->uuid('user_id');
            $table->uuid('faculty_id')->nullable();
            $table->uuid('department_id')->nullable();
            $table->uuid('assigned_by')->nullable();
            
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
        Schema::dropIfExists('c_user_institutions');
    }
}