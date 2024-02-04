@extends('layouts.head')

@section('content')

<section class="mianContainer">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<h2>My Team</h2>

                @foreach ($users as $user)
                   @php  $userperformance = $user->task_status;
                   // echo $user ;
                    @endphp
                {{-- @dd($user->task_status); --}}

                 <?php // var_dump($user ) ; ?>
				<div class="grey-box">
					<div class="team-bx">


						<div class="row">
							<div class="col-lg-2">
								<div class="usr-img">
                                    @if ($user->image)
                                    <img src="@php echo url('images/profile').'/'.$user->image ?? 'N/A' ;@endphp">
                                    @else
									<img src="https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80" alt=""/>
                                    @endif
                                    {{-- public\images\profile\1701010807.jpg --}}
								</div>
							</div>
							<div class="col-lg-6">
								<div class="user-details">
									<h3><?php echo $user->name ; ?></h3>
									<p class="designation">Designation : <?php echo $user->role; ?></p>

                                    <h5>Skills</h5>

                                    <ul>
                                        @foreach ($skills as $list)
                                             @if($list->emp_id == $user->id)
                                                <li>@php echo $list->skill   @endphp</li>
                                            @endif
									    @endforeach
									</ul>
                                    @php

                                     $star = round($user->performance->avg('task_status'));
                                    @endphp
                                    <div class="stars">



										{{-- <span>1</span> --}}

                                        @for ($i = 1; $i <= 5 ; $i++)
                                            @if ($i < $star)
                                                <span class="fa fa-star checked" style="color:orange"></span>
                                            @else
                                                <span class="fa fa-star checked" ></span>
                                            @endif
										@endfor

                                    </div>
								</div>
							</div>


							<div class="col-lg-4">
								<div class="user-contact">
									<div>
										<span class="icon"><img src="./images/location-pin.svg" alt=""/></span>
										<span class="txt"><?php echo $user->address ; ?></span>
									</div>
									<div>
										<span class="icon"><img src="./images/phone.svg" alt=""/></span>
										<span class="txt"><?php echo $user->phone ; ?></span>
									</div>
									<div>
										<span class="icon"><img src="./images/twitter.svg" alt=""/></span>
										<span class="txt"><?php echo $user->site_url ; ?> </span>
									</div>
									<div>
										<span class="icon"><img src="./images/envelope.svg" alt=""/></span>
										<span class="txt"><?php echo $user->email ;  ?></span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
                @endforeach

			</div>
		</div>
	</div>
</section>
@endsection
