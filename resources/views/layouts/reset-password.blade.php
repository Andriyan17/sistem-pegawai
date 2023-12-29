<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="{{asset('template/docs/css/main.css')}}">
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    @section('styles')
        <!-- CSS khusus halaman reset-password -->
    @show
    <title>Simpeg</title>
</head>
<body>
     <section class="material-half-bg">
      <div class="cover">
        <x-auth-session-status class="mb-4" :status="session('status')" />
      </div>
     </section>
     <section class="login-content">
             <div class="login-box rounded shadow">
                <form class="login-form" method="POST" action="{{ route('password.store') }}">
            @csrf
            <input type="hidden" name="token" value="{{request()->token}}" >
            <h3 class="login-head">Ubah Password</h3>
            <!-- Email Address -->
            <div class="form-group">
                <label for="email" class="control-label">email</label>
                <input id="email" class="form-control" type="email" name="email" value="{{request()->email}}" required autofocus />
                <x-input-error :messages="$errors->get('email')" class="mt-2" />
            </div>

            <!-- Password -->
            <div class="mt-4">
                <label for="password" class="control-label">Password</label>
                <input id="password" class="form-control" type="password" name="password" required />
                <x-input-error :messages="$errors->get('password')" class="mt-2" />
            </div>

            <!-- Confirm Password -->
            <div class="mt-4">
                <label for="password_confirmation" >Confirm Password</label>
                <input id="password_confirmation" class="form-control"
                                    type="password"
                                    name="password_confirmation" required />
                <x-input-error :messages="$errors->get('password_confirmation')" class="mt-2" />
            </div>

            <div class="flex items-center justify-end mt-4">
                <button type="submit" class="btn btn-primary btn-block">
                    {{ __('Reset Password') }}
                </button>
            </div>
        </form>
             </div>
        </section>

    <script src="{{asset('template/docs/js/jquery-3.2.1.min.js') }}"></script>
    <script src="{{asset('template/docs/js/popper.min.js') }}"></script>
    <script src="{{asset('template/docs/js/bootstrap.min.js') }}"></script>
    <script src="{{asset('template/docs/js/main.js') }}"></script>
    <script type="text/javascript" src="{{asset('template/docs/js/plugins/chart.js') }}"></script>
    @section('scripts')
        <!-- JavaScript khusus halaman reset-password -->
    @show
</body>
</html>
