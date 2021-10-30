<?php

namespace App\Policies;

use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class RolePolicy
{
    use HandlesAuthorization;

    /**
     * Create a new policy instance.
     *
     * @return void
     */

    public function list(User $user){
        return $user->checkPermissionAccess(config('permissions.access.listRole'));
    }
    public function add(User $user){
        return $user->checkPermissionAccess(config('permissions.access.addRole'));
    }
    public function edit(User $user){
        return $user->checkPermissionAccess(config('permissions.access.editRole'));
    }
    public function delete(User $user){
        return $user->checkPermissionAccess(config('permissions.access.deleteRole'));
    }

}
