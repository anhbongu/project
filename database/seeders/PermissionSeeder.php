<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use DB;
class PermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('permissions')->insert([
            ['id'=>1,'name'=>'Sản phẩm', 'display_name'=>'Sản phẩm', 'parent_id'=>0],
            ['id'=>2,'name'=>'Thêm Sản phẩm', 'display_name'=>'Thêm Sản phẩm', 'parent_id'=>1],
            ['id'=>3,'name'=>'Sữa Sản phẩm', 'display_name'=>'Sữa Sản phẩm', 'parent_id'=>1],
            ['id'=>4,'name'=>'Xóa Sản phẩm', 'display_name'=>'Xóa Sản phẩm', 'parent_id'=>1],
   
        ]);
    }
}
