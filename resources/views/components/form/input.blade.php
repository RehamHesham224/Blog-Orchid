@props(['name'])
<x-form.field>
    <input name="{{$name}}" type="text" class="full-width" placeholder="Your {{$name}}" value="{{old($name)}}">
</x-form.field>
<x-form.error name="{{$name}}"/>
