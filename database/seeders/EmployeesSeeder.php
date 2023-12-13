<?php

namespace Database\Seeders;

use App\Models\Employees;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Ramsey\Uuid\Uuid;

class EmployeesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Employees::factory(5)->create();

        Employees::create([
            'id_employees' => Uuid::uuid4()->toString() . "\n",
            'id_institutions' => '731ef6df-6171-33fd-bd05-93cd76db2cdd',
            'name_employees' => '(Admin) M. HAIKAL ANDRIANSYAH PUTRAA',
            'email_employees' => 'haikal@dobu.co.id',
            'password_employees' => Hash::make(12345),
            'contact_employees' => '085256433390',
            'address_employees' => 'Jln A.Lamaggarung, Makassar'
        ]);

        Employees::create([
            'id_employees' => Uuid::uuid4()->toString() . "\n",
            'id_institutions' => '2217c28f-d59c-3ab1-860c-d2cce27b2a9f',
            'name_employees' => '(Admin) Diyas Yakluna Baihaqi',
            'email_employees' => 'diyasyakluna@dobu.co.id',
            'password_employees' => Hash::make(12345),
            'contact_employees' => '087772934259',
            'address_employees' => 'Jln. Isekai timur, Medan'
        ]);

        Employees::create([
            'id_employees' => Uuid::uuid4()->toString() . "\n",
            'id_institutions' => '0264db2d-0f84-32ef-b732-d56d7b3d0493',
            'name_employees' => '(Admin) FIRAS AL-GHAFFAR NUGRAHA',
            'email_employees' => 'firas@dobu.co.id',
            'password_employees' => Hash::make(12345),
            'contact_employees' => '082145198847',
            'address_employees' => 'Jl bukan jokowi, Bandung'
        ]);

        Employees::create([
            'id_employees' => Uuid::uuid4()->toString() . "\n",
            'id_institutions' => '9e33b53c-d6e2-3b2b-9335-0c6b626981d3',
            'name_employees' => 'FANDI AHMAD ATQAN SETYOSO',
            'email_employees' => 'fandi@dobu.co.id',
            'password_employees' => Hash::make(12345),
            'contact_employees' => '081286226512',
            'address_employees' => 'Jln. aster ter, Batak'
        ]);

        Employees::create([
            'id_employees' => Uuid::uuid4()->toString() . "\n",
            'id_institutions' => '04c10453-6762-3a69-9cd4-fdfc043164bd',
            'name_employees' => 'MUHAMMAD FATIH RAFFIESYA',
            'email_employees' => 'MUHAMMAD FATIH RAFFIESYA',
            'password_employees' => Hash::make(12345),
            'contact_employees' => '(+62) 657 2988 2582',
            'address_employees' => 'Jr. Rajawali No. 155, Cilegon 14431, Sulsel'
        ]);

        Employees::create([
            'id_employees' => Uuid::uuid4()->toString() . "\n",
            'id_institutions' => '05993934-409e-3c74-9559-150c4cee359b',
            'name_employees' => 'ARTHUR',
            'email_employees' => 'arthur@dobu.co.id',
            'password_employees' => Hash::make(12345),
            'contact_employees' => '(+62) 818 3565 9450',
            'address_employees' => 'Ds. Uluwatu No. 86, Semarang 32328, Lampung'
        ]);
    }
}
