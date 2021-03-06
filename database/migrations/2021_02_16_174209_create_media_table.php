<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMediaTable extends Migration
{
    public function up()
    {
        Schema::create('media', function (Blueprint $table) {
            $table->uuid('id')->primary();
            $table->string('model_type');
            $table->uuid('model_id');
            $table->index(['model_type', 'model_id']);
            $table->uuid('uuid')->nullable()->unique();

            $table->string('collection_name');
            $table->string('name');
            $table->string('file_name');
            $table->string('mime_type')->nullable();
            $table->unsignedBigInteger('size')->nullable();
            $table->json('generated_conversions')->nullable();
            
            $table->string('disk');
            $table->string('conversions_disk')->nullable();
            
            $table->json('manipulations');
            $table->json('custom_properties');
            
            $table->json('responsive_images');
            $table->unsignedInteger('order_column')->nullable();

            $table->timestamps();
            
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('media');
    }
}
