<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	{{-- <title>Dashboard</title> --}}
	<link rel="stylesheet" type="text/css" href="{{ url('css/dashboard.css') }}">
    <link rel="icon" href="./images/favicon.png" type="image/gif" sizes="16x16">
	<link rel="stylesheet" type="text/css" href="{{ url('/style/bootstrap.min.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ url('/style/owl.carousel.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ url('/style/owl.theme.default.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ url('/style/aos.css') }}">
	<link href="https://fonts.googleapis.com/css2?family=Cormorant:wght@300;400;500;600;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="{{ url('style.css') }}">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.4.2/chosen.css" rel="stylesheet">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />




</head>
<body>



    <nav class="flex-div">
		<div class="nav-left flex-div">
			<img src="img/menu.png" class="menu-icon">
			<img src="img/logo.png" class="logo" >
		</div>
		



		<div class="nav-right flex-div">


            <div class="dropdown">

              <button class=" dropdown-toggle" type="button" data-toggle="dropdown">

                {{-- @dd( auth()->user()->unreadNotifications      ) --}}


                Notifications <span class="badge badge-light bg-success badge-xs">{{auth()->user()->unreadNotifications->count()}}</span>

              <span class="caret"></span></button>
              <ul class="dropdown-menu">

                @if (count(auth()->user()->unreadNotifications) > 0 )
                    <li class="d-flex justify-content-end mx-1 my-2">
                        <a href="{{route('mark-as-read')}}" class="btn btn-success btn-sm">Mark All as Read</a>
                    </li>
                @endif

                @foreach (auth()->user()->unreadNotifications as $notification)
                    <a href="#" class="text-success"><li class="p-1 text-success"> {{$notification->data['data']}}</li></a>
                @endforeach
                {{-- @foreach (auth()->user()->readNotifications as $notification)
                    <a href="#" class="text-secondary"><li class="p-1 text-secondary"> {{$notification->data['data']}}</li></a>
                @endforeach --}}
              </ul>
            </div>


            @php $defaultimg = "image url here"  @endphp

            <a href="{{ route('profile') }}">
                <img src="@php echo url('images/profile').'/'.Auth::user()->image ?? 'N/A' ;@endphp" class="user-icon">
            </a>

          </div>



	</nav>
    {{-- @dd(Auth::user()->role) --}}
	<!---------------------sidebar----------------------->
	<div class="sidebar">

		<div class="profileImg">
		<img src="@php echo url('images/profile').'/'.Auth::user()->image ?? 'N/A' ;@endphp">
		<h1>User: @php echo Auth::user()->name ; @endphp</h1>
		<p style="color: green">Role : @php echo Auth::user()->role;  @endphp </p></div>
		<div class="shortcut-links">
            <a href="{{ route('home') }}"><img src="img/dashboard.png"><p>Dashboard</p></a>
			<a href="{{ route('requestportal') }}"><img src="img/req.png"><p>Request Portal</p></a>
			<a href="{{ route('myresources') }}"><img src="img/req.png"><p>My Resources</p></a>

        @if(Auth::user()->role == 'Admin')
            <a href="{{ route('task') }}"><img src="img/task.png"><p>Task</p></a>
            <a href="{{ route('team') }}"><img src="img/team.png"><p>My Team</p></a>
            <a href="{{ route('registeruser') }}"><img src="img/team.png"><p>Register User</p></a>

        @else
			<a href="{{ route('mytask') }}"><img src="img/task.png"><p>My Task</p></a>
        @endif
			<a href="{{ route('leave') }}"><img src="img/leave.png"><p>My Leave</p></a>
            <a href="{{ route('performance') }}"><img src="img/leave.png"><p>Performance</p></a>
			<hr>
		</div>
		<div class="subscribed-list">
            {{-- <a href="{{ route('logout') }}"><img src="img/logout.png"><p>Log Out</p></a> --}}
            <form method="POST" action="{{ route('logout') }}">
                @csrf
				{{-- <img src="img/logout.png"> --}}
                <div class="input-div two">

                    <div class="i">
                        <i class="fas fa-lock"></i>
                   </div>

                <button type="submit" style="color:#5a5a5a; background-color: #cdcdcd;
                padding-left: 40px; border:none">Logout</button>
                </div>
                        </form>
		</div>
	</div>
	<!-------------------------------main-------------------------------->
	@yield('content')

    <script>
        var menuIcon = document.querySelector(".menu-icon");
        var sidebar = document.querySelector(".sidebar");
        var mainContainer = document.querySelector(".mianContainer");

        menuIcon.onclick = function(){
            sidebar.classList.toggle("small-slidebar");
            mainContainer.classList.toggle("full-wide");
        }

    </script>
    <script type="text/javascript" src="{{ url('script/jquery-2.2.4.min.js') }}"></script>
    <script type="text/javascript" src="{{ url('/script/owl.carousel.js') }}"></script>
    <script type="text/javascript" src="{{ url('/script/aos.js') }}"></script>
    <script type="text/javascript" src="{{ url('/script/bootstrap.min.js') }}"></script>
    <script type="text/javascript" src="{{ url('/script/site-script.js') }}"></script>
    {{-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script> --}}


</body>
</html>
