<?php

namespace Modules\University\Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;

use App\Helpers\Helper;

use Modules\University\Entities\C11MCurricullum;


class UniversityDatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Model::unguard();
        
        $this->create_base_curricullum();
    }

    private function create_base_curricullum(){
        try{
            $name = "Outcome-based Education &  Merdeka Belajar Kampus Merdeka";
            $flag = Helper::text_preg_flag($name);
            
            $user_inst_id = "95a2c3bf-8c71-4371-96cb-8884c57155cf";
            $inst_id = "95a2c3bf-493d-4c40-8a25-cb420d4fd087";

            $mcurricullum = C11MCurricullum::firstOrCreate(
                [
                    "flag" => $flag,
                    "institution_id" => $inst_id
                ],
                [
                    "flag" => $flag,
                    "code" => Helper::TextAliases($name),
                    "name" => strtoupper($name),
                    "year" => 2020,
                    "created_by" => $user_inst_id,
                    "institution_id" => $inst_id
                ]
            );

            if($mcurricullum){
                $this->command->warn('Mcurricullum Done Seeded...');
            }
            
        }catch (Throwable $e) {
            report($e);
            return false;
        }
    }
}
