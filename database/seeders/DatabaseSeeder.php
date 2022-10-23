<?php

namespace Database\Seeders;

use App\Models\TaxiFinders;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\User::factory(5)->create();
        TaxiFinders::create([
            'name' => 'taxi1',
            'location' => 'Belgrade',
            'phone_number' => '0648521768'
        ]);

        TaxiFinders::create([
            'name' => 'taxi2',
            'location' => 'Nis',
            'phone_number' => '0648521586'
        ]);

    }
}
