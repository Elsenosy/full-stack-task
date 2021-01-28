<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class UserResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'name' => $this->name,
            'avatar' => $this->avatar,
            'desc' => $this->desc,
            'rating' => $this->rating,
            'session_count' => $this->session_count,
            'session_cost' => $this->session_cost,
            'job' => $this->job,
            // 'categories' => $this->categories,
            'categoriesFormatted' => $this->categoryFormatted(),
        ];
    }
}
