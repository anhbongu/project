<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class RequestProduct extends FormRequest
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
            'name'=>'required|min:2|max:100|unique:products,name',
            'price'=>'required|numeric|between:50000,100000000',
            'category_id'=>'not_in:0',
            'content'=>'required|min:10',
        ];
    }

    public function messages(){
        return [
            'name.required' => 'Dữ liệu không được rỗng!',
            'name.min' => 'Dữ liệu quá ngắn!',
            'name.max' => 'Dữ liệu quá dài!',
            'name.unique' => 'Dữ liệu không được trùng!',
            'price.required' => 'Dữ liệu không được trống!',
            'price.numeric' => 'Gía phải là số!',
            'price.between' => 'Gía không hợp lý!',
            'category_id.not_in' => 'Bắt buộc!',
            'content.required' => 'Nội dung không được rỗng!',
            'content.min' => 'Nội dung quá ngắn!',

        ];
    }
}
