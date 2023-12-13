<?php

namespace Database\Seeders;

use App\Models\BookBank;
use Illuminate\Database\Seeder;

class BookBankSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        BookBank::factory(15)->create();
    }
}
