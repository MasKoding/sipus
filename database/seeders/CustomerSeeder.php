<?php

namespace Database\Seeders;

use App\Models\Customer;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Testing\Fakes\Fake;

class CustomerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        $user = [
          
          [
              'fullname'=>'Dimas',
              'email'=>'user1@gmail.com',
              'gender'=>'male',
              'address'=>'Bogor'
            
          ],
         

      ];

      foreach ($user as $key => $value) {
          Customer::create($value);
      }
    }
}
