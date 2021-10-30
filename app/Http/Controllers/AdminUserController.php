<?php

namespace App\Http\Controllers;
use App\Models\User;
use App\Models\Role;
use App\Models\Role_user;
use Illuminate\Http\Request;
use DB;
class AdminUserController extends Controller
{
    protected $user;

    public function __construct(User $user){
        $this->user = $user;
    }
    public function index(){
        $user = $this->user->all();
        return view('admin.user.index', [
            'user'=>$user
        ]);
    }

    public function create(){
        $roles = Role::all();
        return view('admin.user.create', [
            'roles'=>$roles
        ]);
    }

    public function store(Request $request){
        try{
            DB::beginTransaction();
            $dataUser = $this->user->create([
                'name'=>$request->name,
                'email'=>$request->email,
                'password'=> bcrypt($request->password)
            ]);

            $roleIds = $request->role_id;
         
            $dataUser->roles()->attach($roleIds);
            DB::commit();
            return redirect()->route('admin.user');
        }catch(\Exception $exception){
            DB::rollback();
            return redirect()->back()->with('error', 'Lối!');
        }

    }
    public function edit($id){
        $roles = Role::all();
        $user = $this->user->find($id);
        $roleOfUser = $user->roles;
        return view('admin.user.update', [
            'roles'=>$roles,
            'item'=>$user,
            'roleOfUser'=>$roleOfUser
        ]);
    }

    public function update(Request $request, $id){
        try{
            DB::beginTransaction();
            $user = $this->user->find($id);
            $user->update([                   //chỉ trả về true/ false
                'name'=>$request->name,
                'email'=>$request->email,
                'password'=> bcrypt($request->password)
            ]);
            
            $user = $this->user->find($id);
            $roleIds = $request->role_id;
   
         
            $user->roles()->sync($roleIds);
            DB::commit();
            return redirect()->route('admin.user');
        }catch(\Exception $exception){
            DB::rollback();
            return redirect()->back()->with('error', 'Lối!');
        }
    }

    public function delete(Request $request, $id){
        $this->user->find($id)->delete();
        DB::table('role_user')->where('user_id', $id)->delete();
        return response()->json([
            'code'=>200
        ]);
    }
}
