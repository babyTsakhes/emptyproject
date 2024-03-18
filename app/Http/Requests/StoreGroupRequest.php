<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreGroupRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
                    'name'=>'required|string|max:255|min:1',
                    'description'=>'nullable',
                ];
        //https://laravel.su/docs/10.x/validation
    }

    public function messages()
{
    return [
        'name.required' => 'HEY! :attribute is required',

    ];
}


}
