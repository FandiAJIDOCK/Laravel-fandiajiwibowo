<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'email' =>'fndwbw688@gmail.com',
            'name' =>'fandi',
            'password' => Hash::make('1234567'),
            'status' => 'aktif',
        ]);
    }
}
