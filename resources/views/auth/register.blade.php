<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<link rel="stylesheet" type="text/css" href="css/login.css">
	<link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
	<script src="https://kit.fontawesome.com/a81368914c.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<img class="wave" src="img/wave.png">
	<div class="container">
		<div class="img">
			<img src="img/bg.svg">
		</div>
		<div class="login-content">

        @if (Auth::check())
            <form method="POST" action="{{ route('registerusercreate') }}">
        @else
            <form method="POST" action="{{ route('register') }}">
        @endif

                @csrf
                <img class="avatar" src="img/avatar.svg">
				<h2 class="title">Welcome</h2>
           		<div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-user"></i>
           		   </div>
                      @error('name')
                      <span class="invalid-feedback" role="alert">
                          <strong>{{ $message }}</strong>
                      </span>
                  @enderror
           		   <div class="div">
           		   		{{-- <h5>Username</h5> --}}
                              <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name"
                               value="{{ old('name') }}" required autocomplete="name" autofocus placeholder="User Name">


                  </div>
           		</div>
           		<div class="input-div two">
           		   <div class="i">
           		    	<i class="fas fa-lock"></i>
           		   </div>
                      @error('email')
                      <span class="invalid-feedback" role="alert">
                          <strong>{{ $message }}</strong>
                      </span>
                  @enderror
           		   <div class="div">
           		    	{{-- <h5>Email</h5> --}}
                           <input id="email" type="email" class="form-control @error('email') is-invalid @enderror"
                           name="email" value="{{ old('email') }}" required autocomplete="email" placeholder="Email">


              </div>
                </div>
                @error('password')
                <span class="invalid-feedback" role="alert">
                    <strong style="color:red"> {{ $message }}</strong>
                </span>
            @enderror
                <div class="input-div two">

                <div class="i">
                    <i class="fas fa-lock"></i>
               </div>

               <div class="div">

                {{-- <h5>Password </h5> --}}
                <input id="password" type="password" class="form-control @error('password') is-invalid @enderror"
                name="password" required autocomplete="new-password" placeholder="Password">



              </div>
            </div>


            @error('password')
            <span class="invalid-feedback" role="alert">
                <strong style="color:red">{{ $message }}</strong>
            </span>
          @enderror

            <div class="input-div two">

                <div class="i">
                    <i class="fas fa-lock"></i>
               </div>
               <div class="div">

                {{-- <h5>Password </h5> --}}
                <input id="password-confirm" type="password" class="form-control"
                name="password_confirmation" required autocomplete="new-password" placeholder="Confirm Password">



              </div>
            </div>


            @if (Auth::check())
                <div class="input-div two">
                    <div class="i">
                        <i class="fas fa-user"></i>
                </div>
                <div class="div">
                    <input id="department" readonly type="text" class="form-control"
                    name="dept_id"   placeholder="Department" value="{{ Auth::user()->dept->title }}">
                </div>
                </div>
            @endif

            {{-- <div class="div">
            </div> --}}

                <button type="submit" class="btn btn-primary">
                    {{ __('Register') }}
                </button>
            </div>

            </form>
        </div>
    </div>
    <script type="text/javascript" src="js/main.js"></script>
</body>
</html>
