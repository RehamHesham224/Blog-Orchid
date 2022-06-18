<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class PopularArticlesResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return  [
            'id' => (string)$this->id,
            'type' => "popular_articles",
            'attribute' => [
                'name' => $this->name,
                "body" => $this->body,
                "image" => $this->image,
                "slug" => $this->slug,
                "created_at" => $this->created_at,
            ]
        ];;
    }
}
