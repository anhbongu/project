<?php

namespace App\Models;
use App\Models\Product;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use Auth;
class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */
    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function roles(){
        return $this->belongsToMany(Role::class, 'role_user', 'user_id', 'role_id');
    }
    public function products(){
        return $this->hasMany(Product::class, 'user_id');
    }


    public function checkPermissionAccess($permissionCheck){
       $roles = $this->roles;
       foreach ($roles as $role) {
           $permission = $role->permissions;
           if($permission->contains('key_code', $permissionCheck)){
                return true;
           }
           
       }
       return false;
    }

    public function checkEdit($id){
        $product = Product::find($id);
        if($product->user_id == Auth::id()){
            return true;
        }
        return false;
    }




}
