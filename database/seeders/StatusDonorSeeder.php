<?php

namespace Database\Seeders;

use App\Models\StatusDonor;
use Illuminate\Database\Seeder;

class StatusDonorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        StatusDonor::create([
            'id_status_donor' => '1',
            'name_status_donor' => 'Waiting for confirmation'
        ]);

        StatusDonor::create([
            'id_status_donor' => '2',
            'name_status_donor' => 'Scheduled'
        ]);

        StatusDonor::create([
            'id_status_donor' => '3',
            'name_status_donor' => 'Accepted'
        ]);

        StatusDonor::create([
            'id_status_donor' => '4',
            'name_status_donor' => 'Declined'
        ]);
    }
}
