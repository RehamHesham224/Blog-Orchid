
@props(['name', 'placeholder'=>'message'])
<x-form.field>
    <textarea name="{{$name}}" type="text" class="full-width" placeholder="Your {{$placeholder}}" >{{old($name)}}</textarea>
</x-form.field>
<x-form.error name="{{$name}}"/>
