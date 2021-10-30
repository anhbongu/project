<?php

namespace App\Providers;

use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use App\Policies\CategoryPolicy;
use App\Policies\MenuPolicy;
use App\Policies\ProductPolicy;
use App\Policies\UserPolicy;
use App\Policies\SliderPolicy;
use App\Policies\RolePolicy;
use App\Policies\SettingPolicy;
use Illuminate\Support\Facades\Gate;
use App\Models\User;
use App\Models\Product;
class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        // 'App\Models\Model' => 'App\Policies\ModelPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();
        //permission
        Gate::define('add-permission', function (User $user) {
            return $user->checkPermissionAccess(config('permissions.access.addPermission'));
        });


        //category
        Gate::define('list-category',   [CategoryPolicy::class, 'list']);
        Gate::define('add-category',    [CategoryPolicy::class, 'add']);
        Gate::define('edit-category',   [CategoryPolicy::class, 'edit']);
        Gate::define('delete-category', [CategoryPolicy::class, 'delete']);

        //menu
        Gate::define('list-menu',       [MenuPolicy::class, 'list']);
        Gate::define('add-menu',        [MenuPolicy::class, 'add']);
        Gate::define('edit-menu',       [MenuPolicy::class, 'edit']);
        Gate::define('delete-menu',     [MenuPolicy::class, 'delete']);

        //product
        $this->productPolicy();

        //slider
        Gate::define('list-slider',     [MenuPolicy::class, 'list']);
        Gate::define('add-slider',      [MenuPolicy::class, 'add']);
        Gate::define('edit-slider',     [MenuPolicy::class, 'edit']);
        Gate::define('delete-slider',   [MenuPolicy::class, 'delete']);

        //role
        Gate::define('list-role',       [RolePolicy::class, 'list']);
        Gate::define('add-role',        [RolePolicy::class, 'add']);
        Gate::define('edit-role',       [RolePolicy::class, 'edit']);
        Gate::define('delete-role',     [RolePolicy::class, 'delete']);

        //user
        Gate::define('list-user',       [UserPolicy::class, 'list']);
        Gate::define('add-user',        [UserPolicy::class, 'add']);
        Gate::define('edit-user',       [UserPolicy::class, 'edit']);
        Gate::define('delete-user',     [UserPolicy::class, 'delete']);

        //setting
        Gate::define('list-setting',   [SettingPolicy::class, 'list']);
        Gate::define('add-setting',    [SettingPolicy::class, 'add']);
        Gate::define('edit-setting',   [SettingPolicy::class, 'edit']);
        Gate::define('delete-setting', [SettingPolicy::class, 'delete']);

    }

    //product
    public function productPolicy(){
        Gate::define('list-product',   [ProductPolicy::class, 'list']);
        Gate::define('add-product',    [ProductPolicy::class, 'add']);
        Gate::define('edit-product',   [ProductPolicy::class, 'edit']);
        Gate::define('delete-product', [ProductPolicy::class, 'delete']);
        //check chỉnh sửa bài viết
        Gate::define('check-edit', function (User $user, $id) {
            // dd(request()->id);
            return $user->checkEdit(request()->id);
        });        
    }
}
