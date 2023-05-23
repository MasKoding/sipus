<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class AkunSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        $user = [
            [
                'username'=>'admin',
                'name'=>'AkunAdmin',
                'email'=>'admin@gmail.com',
                'level'=>'admin',
                'password'=>bcrypt('123456')
            ],
            
            [
                'username'=>'user1',
                'name'=>'AkunUser1',
                'email'=>'user1@gmail.com',
                'level'=>'user',
                'password'=>bcrypt('123456')
            ],
           

        ];

        foreach ($user as $key => $value) {
            User::create($value);
        }
    }
}
