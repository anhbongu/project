<?php

namespace App\Policies;

use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class SettingPolicy
{
    use HandlesAuthorization;

    /**
     * Create a new policy instance.
     *
     * @return void
     */

    public function list(User $user){
        return $user->checkPermissionAccess(config('permissions.access.listSetting'));
    }
    public function add(User $user){
        return $user->checkPermissionAccess(config('permissions.access.addSetting'));
    }
    public function edit(User $user){
        return $user->checkPermissionAccess(config('permissions.access.editSetting'));
    }
    public function delete(User $user){
        return $user->checkPermissionAccess(config('permissions.access.deleteSetting'));
    }

}
