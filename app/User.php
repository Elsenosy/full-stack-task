<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function categories()
    {
        return $this->belongsToMany(Category::class, 'user_categories');
    }

    public function categoryFormatted(){
        $categoryFormatted = "";
        if(!empty($this->categories)){
            foreach($this->categories as $cat){
                $categoryFormatted .= $cat->name.', ';
            }
        }

        $categoryFormatted = rtrim($categoryFormatted, ', ');

        return $categoryFormatted;
    }

    /**
     * Static function for search criteria
     */
    public static function searchCriteria()
    {
        return [
            'price-low' => 'السعر من الأقل للأعلى',
            'price-high' => 'السعر من الأعلى للأقل',
            'top-rated' => 'الأعلى تقييم'
        ];
    }
}
