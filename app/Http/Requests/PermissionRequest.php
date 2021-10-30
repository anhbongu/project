<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class PermissionRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name'=>'not_in:0|unique:permissions,name'
        ];
    }

    public function messages(){
        return [
            'name.not_in'=>'Tên không được bỏ trống',
            'name.unique'=>'Tên không được trùng',
        ];
    }
}
