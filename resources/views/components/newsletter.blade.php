<div class="subscribe-form">
    <form action="/newsletter" class="mc-form" method="POST"  class="group" novalidate="true">
        @csrf

        <input type="email" value="" name="email" class="email"  placeholder="Email Address" required="">

        <input type="submit" name="subscribe" value="Send">
        @error('email')
        <label class="subscribe-message text-danger">{{$message}}</label>
        @enderror
        @if(session()->has('success'))
        <div class="alert alert-success">
            {{ session()->get('success') }}
        </div>

        @endif


    </form>
</div>
