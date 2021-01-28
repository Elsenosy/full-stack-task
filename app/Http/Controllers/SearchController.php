<?php

namespace App\Http\Controllers;

use App\Category;
use App\Http\Resources\UserResource;
use App\User;
use App\UserCategory;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    /**
     * To return search view..
     */
    public function index()
    {
        $categories = Category::all();
        $searchCriteria = User::searchCriteria();

        return view('website.index', compact('categories', 'searchCriteria'));
    }

    
    public function getUsers(Request $request){
        $usersQuery = User::query();
        
        $usersQuery = $usersQuery->when($request->has('name') && !empty($request->name), function($query) use($request){
            return $query->where('name', 'like', "%{$request->name}%");
        });
        
        $usersQuery = $usersQuery->when($request->has('category') && !empty($request->category), function($query) use($request){
            return $query->join('user_categories', 'users.id', 'user_categories.user_id')
                        ->select('users.*')
                        ->where('user_categories.category_id', '=', $request->category);
        });

        if($request->has('order') && in_array($request->order, array_keys(User::searchCriteria()))){
            switch($request->order){
                case 'price-low':
                    $usersQuery = $usersQuery->orderBy('session_cost');
                break;

                case 'price-high':
                    $usersQuery = $usersQuery->orderByDesc('session_cost');
                break;
                
                case 'top-rated':
                    $usersQuery = $usersQuery->orderByDesc('rating');
                break;
            }
        }

        $users = $usersQuery->paginate(10);
        
        if($users->isEmpty()){
            return $this->returnError('لا توجد بيانات');
        }

        return $this->returnSuccess('users', UserResource::collection($users->items()));
    }
    
    public function getUser($id){
        $user = User::find($id);
        
        if(!$user){
            return $this->returnError('لا توجد بيانات');
        }
        
        return $this->returnSuccess('users', new UserResource($user));
    }


}
