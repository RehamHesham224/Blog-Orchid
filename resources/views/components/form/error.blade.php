@props(['name'])
@error($name)
    <p style="color:rgb(227, 49, 49)" class="text-red-500 text-xs mt-2">{{$message}}</p>
@enderror
