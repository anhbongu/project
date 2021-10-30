<?php

namespace App\Policies;

use App\Models\User;
use App\Models\Category;
use Illuminate\Auth\Access\HandlesAuthorization;
use Auth;


class CategoryPolicy
{
    use HandlesAuthorization;

    /**
     * Create a new policy instance.
     *
     * @return void
     */
    private $user;



    public function list(User $user){
        return $user->checkPermissionAccess(config('permissions.access.listCate'));
    }
    public function add(User $user){
        return $user->checkPermissionAccess(config('permissions.access.addCate'));
    }
    public function edit(User $user){
        return $user->checkPermissionAccess(config('permissions.access.editCate'));
    }
    public function delete(User $user){
        return $user->checkPermissionAccess(config('permissions.access.deleteCate'));
    }





}
