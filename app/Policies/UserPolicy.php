<?php

namespace App\Policies;

use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class UserPolicy
{
    use HandlesAuthorization;

    /**
     * Create a new policy instance.
     *
     * @return void
     */

    public function list(User $user){
        return $user->checkPermissionAccess(config('permissions.access.listUser'));
    }
    public function add(User $user){
        return $user->checkPermissionAccess(config('permissions.access.addUser'));
    }
    public function edit(User $user){
        return $user->checkPermissionAccess(config('permissions.access.editUser'));
    }
    public function delete(User $user){
        return $user->checkPermissionAccess(config('permissions.access.deleteUser'));
    }

}
