<?php

namespace App\Policies;

use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class SliderPolicy
{
    use HandlesAuthorization;

    /**
     * Create a new policy instance.
     *
     * @return void
     */

    public function list(User $user){
        return $user->checkPermissionAccess(config('permissions.access.listSlider'));
    }
    public function add(User $user){
        return $user->checkPermissionAccess(config('permissions.access.addSlider'));
    }
    public function edit(User $user){
        return $user->checkPermissionAccess(config('permissions.access.editSlider'));
    }
    public function delete(User $user){
        return $user->checkPermissionAccess(config('permissions.access.deleteSlider'));
    }

}
