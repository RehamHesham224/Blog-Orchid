<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ContactResource extends JsonResource
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
            'type' => "contact",
            'attribute' => [
                'name' => $this->name,
                "body" => $this->body,
                "subject" => $this->subject,
                "email" => $this->email,
                "created_at" => $this->created_at
            ]
        ];
    }
}
