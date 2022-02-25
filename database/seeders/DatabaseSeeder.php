<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

use App\Models\Permission;
use App\Models\Role;
use App\Models\User;

use Hash;

use App\Models\Modules\MInstitutionCategory;
use App\Models\Modules\MInstitutionLevel;

use App\Models\Modules\CUserInstitution;
use App\Models\Modules\AInstitution;

use App\Models\Modules\MAuthRoute;

use Carbon\Carbon;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        app()[\Spatie\Permission\PermissionRegistrar::class]->forgetCachedPermissions();

        // Ask for db migration refresh, default is no
        $this->command->call('migrate:refresh');
        $this->command->warn("Data cleared, starting from blank database.");

        // Seed the default permissions
        $permissions = Permission::defaultPermissions();

        foreach ($permissions as $perms) {
            if(str_contains($perms, 'users') || str_contains($perms, 'roles')){
                Permission::firstOrCreate(['name' => $perms]);
            }else{
                Permission::firstOrCreate(['name' => $perms, 'm_institution_categories_id'=>1]);
            }
            
        }

        $this->command->info('Default Permissions added.');

        // Confirm roles needed
        if ($this->command->confirm('Create Roles for user, default is admin and user? [y|N]', true)) {

            // Ask for roles from input
            $input_roles = 'Admin,User'; //$this->command->ask('Enter roles in comma separate format.', 'Admin,User');

            // Explode roles
            $roles_array = explode(',', $input_roles);

            // add roles
            foreach($roles_array as $role) {
                $role = Role::firstOrCreate(['name' => trim($role)]);                
                if( $role->name == 'Admin' ) {
                    // assign all permissions
                    $role->syncPermissions(Permission::all());
                    $this->command->info('Admin granted all the permissions');
                } else {
                    // for others by default only read access
                    $role->syncPermissions(
                        Permission::where('name', 'ILIKE', '%view%')
                                   ->where('name', 'ILIKE', '%assesment%')->get()
                    );
                }

                // create one user for each role
                $this->createUser($role);
            }

            $this->command->info('Roles ' . $input_roles . ' added successfully');

        } else {
            Role::firstOrCreate(['name' => 'User']);
            $this->command->info('Added only default user role.');
        }
        
        $this->create_inst_category();
        $this->create_inst_level();
        $this->generate_auth_route();

        $this->command->warn('All done :)');
    }

    /**
     * Create a user with given role
     *
     * @param $role
     */
    private function createUser($role)
    {
        $user = User::factory()->create();
        $user->assignRole($role);

        $this->create_inst($user->id);
    
        if( $role->name == 'Admin' ) {
            $this->command->info('Here is your admin details to login:');
            $this->command->warn($user->email);
            $this->command->warn('Password is "password"');
        }
    }

    private function create_inst($user_id){
        $inst = AInstitution::factory()->create([
            'created_by' => $user_id
        ]);
        $this->command->warn('AInstitution Done Seeded...');

        $this->create_user_inst($inst->id, $user_id);
    }

    private function create_user_inst($inst_id, $user_id){
        $user_inst = array(
            'institution_id' => $inst_id,
            'user_id' => $user_id,
            'assigned_by' => $user_id
        );
        
        CUserInstitution::factory()->create($user_inst);
        // CUserInstitution::insert($user_inst);

        $this->command->warn('CUserInstitution Done Seeded...');
    }

    private function create_inst_category(){
        $inst_category_seed_data = array(
            array(
                "category" => "Education",
                "created_at" => Carbon::now()
            ),
            array(
                "category" => "Industry",
                "created_at" => Carbon::now()
            )            
        );
        MInstitutionCategory::truncate();
        MInstitutionCategory::insert($inst_category_seed_data);

        $this->command->warn('MInstitutionCategory Done Seeded...');
    }

    private function create_inst_level(){
        $inst_level_seed_data = array(            
            array(
                "level" => "University",
                "institution_category_id" => 1,
                "created_at" => Carbon::now()
            ),
            array(
                "level" => "Senior High School",
                "institution_category_id" => 1,
                "created_at" => Carbon::now()
            ),
            array(
                "level" => "Junior High School",
                "institution_category_id" => 1,
                "created_at" => Carbon::now()
            ),
            array(
                "level" => "Elementary School",
                "institution_category_id" => 1,
                "created_at" => Carbon::now()
            ),
            array(
                "level" => "(1 - 100) Employees",
                "institution_category_id" => 2,
                "created_at" => Carbon::now()
            ),
            array(
                "level" => "(100 - 200) Employees",
                "institution_category_id" => 2,
                "created_at" => Carbon::now()
            ),
            array(
                "level" => "(200 - 300) Employees",
                "institution_category_id" => 2,
                "created_at" => Carbon::now()
            ),
        );
        MInstitutionLevel::truncate();
        MInstitutionLevel::insert($inst_level_seed_data);

        $this->command->warn('MInstitutionLevel Done Seeded...');
    }


    function generate_auth_route(){
        for($i=1; $i<5; $i++){
            $inst_auth_route_seed_data = array(
                "inst_category" => 1, // Education
                "inst_level" => $i,
                "created_at" => Carbon::now()
            );
            MAuthRoute::factory()->create($inst_auth_route_seed_data);
        }
        
        for($i=5; $i<8; $i++){
            $inst_auth_route_seed_data = array(
                "inst_category" => 2, // Education
                "inst_level" => $i,
                "created_at" => Carbon::now()
            );
            MAuthRoute::factory()->create($inst_auth_route_seed_data);
        }
        
        $this->command->warn('MAuthRoute Done Seeded...');
    }
}
