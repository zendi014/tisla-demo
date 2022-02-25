<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateC11AssesmentFilesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('c11_assesment_files', function (Blueprint $table) {
            $table->uuid('id')->primary()
                 ->index("idx_c11_assesment_files");

            $table->uuid('file_id')
                   ->index("idx_c11_assesment_files_file_id");

            $table->uuid('created_by')
                  ->index("idx_c11_assesment_files_created_by");

            $table->text('error_message')->default(NULL)->nullable();      

            $table->integer('is_rendered')->default(0);

            $table->timestamps();
            $table->softDeletes();


            // $table->foreign('fkey_c11_assesment_files_file_id')
            //        ->references('id')
            //        ->on('file_uploads')
            //        ->onDelete('CASCADE');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {        
        Schema::dropIfExists('c11_assesment_files');
    }
}