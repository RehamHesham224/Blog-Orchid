<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class CommentsResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'id' => (string)$this->id,
            'type' => "comments",
            'attribute' => [
                'title' => $this->title,
                "body" => $this->body,
                "article_id" => $this->article_id,
                "user" => [
                    "name" => $this->user['name'],
                    "id" => $this->user['id'],
                ],
                "created_at" => $this->created_at
            ]
        ];
    }
}
