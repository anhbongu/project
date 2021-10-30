<?php

namespace App\Policies;

use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class MenuPolicy
{
    use HandlesAuthorization;

    /**
     * Create a new policy instance.
     *
     * @return void
     */

    public function list(User $user){
        return $user->checkPermissionAccess(config('permissions.access.listMenu'));
    }
    public function add(User $user){
        return $user->checkPermissionAccess(config('permissions.access.addMenu'));
    }
    public function edit(User $user){
        return $user->checkPermissionAccess(config('permissions.access.editMenu'));
    }
    public function delete(User $user){
        return $user->checkPermissionAccess(config('permissions.access.deleteMenu'));
    }

}
