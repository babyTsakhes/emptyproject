<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('part_recipients', function (Blueprint $table) {
            $table->id();
            $table->foreignId('donor_id')->constrained('participants')->cascadeOnDelete()->cascadeOnUpdate();
            $table->foreignId('recipient_id')->constrained('participants')->cascadeOnDelete()->cascadeOnUpdate();
           
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('part_recipients');
    }
};
