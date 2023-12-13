<?php

namespace Database\Seeders;

use App\Models\Donators;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Ramsey\Uuid\Uuid;

class DonatorsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Donators::factory(5)->create();


        Donators::create([
            'id_donators' => Uuid::uuid4()->toString() . "\n",
            'name_donators' => 'Diyas Yakluna Baihaqi',
            'email_donators' => 'diyasyakluna@gmail.com',
            'password_donators' => Hash::make(12345),
            'gender_donators' => 'male',
            'status_donators' => 'A',
            'contact_donators' => '087772934259',
            'address_donators' => 'Jln. Isekai, mantep mantep aselole jos jos',
            'point_donators' => mt_rand(0, 100)
        ]);
    }
}