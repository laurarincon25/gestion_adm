<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UsersUpdateRequest extends FormRequest
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
            'cedula'     => 'numeric|unique:users,cedula,'.$this->user,
            'phone'     => 'numeric',
            'email'     => 'unique:users,email,'.$this->user,
            'avatar'     => 'mimes:jpeg,png|max:1024',
        ];
    }
}