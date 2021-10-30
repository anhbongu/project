<?php

namespace App\Policies;

use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class ProductPolicy
{
    use HandlesAuthorization;

    /**
     * Create a new policy instance.
     *
     * @return void
     */

    public function list(User $user){
        return $user->checkPermissionAccess(config('permissions.access.listProduct'));
    }
    public function add(User $user){
        return $user->checkPermissionAccess(config('permissions.access.addProduct'));
    }
    public function edit(User $user){
        return $user->checkPermissionAccess(config('permissions.access.editProduct'));
    }
    public function delete(User $user){
        return $user->checkPermissionAccess(config('permissions.access.deleteProduct'));
    }

}
