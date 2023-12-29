<!DOCTYPE html>
<html lang="en">
<head>
    <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="{{asset('template/docs/css/main.css')}}">
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Simpeg</title>
  </head>
</head>
<body>
    <section class="material-half-bg">
      <div class="cover">
      </div>
    </section>
    <section class="login-content">
      <div class="login-box rounded shadow">
        @if ($errors->any())
        <div class="alert alert-danger">
          <ul>
            @foreach ($errors->all() as $error)
            <li>{{ $error }}</li>
            @endforeach
          </ul>
        </div>
        @endif
        @if(session()->has('status'))
        <div class="alert alert-succes">
          <div class="alert alert-success">
            {{ session()->get('status') }}
          </div>
        </div>
        @endif
        <form class="login-form" method="POST" action="{{ route('password.email') }}">
        @csrf
        <h3 class="login-head">Link Reset</h3>

        <!-- Email Address -->
        <div class="form-group">
            <label class="control-label" for="email" :value="__('Email')" >Email</label>
            <x-text-input class="form-control" id="email" type="email" name="email" :value="old('email')" required autofocus />
        </div>

        <div class="flex items-center justify-end mt-4">
            <x-primary-button class="btn btn-primary btn-block">
                {{ __('Email Password Reset Link') }}
            </x-primary-button>
        </div>
    </form>
      </div>
    </section>
    <script src="{{asset('template/docs/js/jquery-3.2.1.min.js') }}"></script>
    <script src="{{asset('template/docs/js/popper.min.js') }}"></script>
    <script src="{{asset('template/docs/js/bootstrap.min.js') }}"></script>
    <script src="{{asset('template/docs/js/main.js') }}"></script>
    <script type="text/javascript" src="{{asset('template/docs/js/plugins/chart.js') }}"></script>
</body>
</html>