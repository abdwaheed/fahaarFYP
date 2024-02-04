@extends('layouts.head')

@section('content')


<section class="mianContainer">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<h2>Edit Profile</h2>
				<div class="grey-box">
                    @php // dd($results);
                     @endphp
					<form class="form-gry" action="{{ route('profile_update') }}" method="POST"
                    files=true enctype="multipart/form-data">
                        @csrf
						<div class="row">
                            <div class="col-lg-6">

                            {{-- TYPE task_status  --}}
                                <div class="col-lg">
                                    <label>CNIC <span>*</span></label>
                                    <input type="text" name="cnic" value="@php echo $results[0]->cnic; @endphp"/>
                                </div>
                                <div class="col-lg">
                                    <label>phone <span>*</span></label>
                                    <input type="text" name="phone" value="@php echo $results[0]->phone; @endphp"/>
                                </div>

                                <div class="col-lg">
                                    <label>Address<span>*</span></label>
                                    <input type="text" name="address" value="@php echo $results[0]->address; @endphp"/>
                                </div>
                                <div class="col-lg">
                                    <label>Email<span>*</span></label>
                                    <input type="text" name="email" value="@php echo $results[0]->email; @endphp" />
                                </div>
                                <div class="col-lg">
                                    <label>Site URL <span>*</span></label>
                                    <input type="text" name="site_url" value="@php echo $results[0]->site_url; @endphp"/>

                                </div>

                                <div class="col-lg">
                                    <label>Birth Day (2020-05-20)<span>*</span></label>
                                    <input type="varchar" name="birthday" value="@php echo $results[0]->dob; @endphp"/>

                                </div>
                                <div class="col-lg">
                                    <label>Gender <span>*</span></label>
                                    <input type="text" name="gender" value="@php echo $results[0]->gender; @endphp"/>

                                </div>
                            </div>

                            <div class="col-lg-6">
							@php // dd($skill_list)
                            @endphp

                            <div class="col-lg">
                                <label>Profile Image </label>
                                <input type="file" name="image" class="form-control">
                            </div>

                            <div class="col-lg">
								<label>Selected kills </label>
                            @isset($skills)
                                @foreach($skills as $list)
                                    @php echo $list->skill; @endphp
                                @endforeach
                            @endisset

							</div>


                            <div class="col-lg">
								<label>Skills <span>*</span></label>
                                @php // echo $skill_list['title'];
                                @endphp

                            @foreach($skill_list as $skill)
                                <div class="row">
                                    <div class="col-md-2">
                                    <div class="form-group">
                                        <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="gridCheck" name="skills[]" value="@php echo $skill->title @endphp" >

                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-5">

                                    <label class="form-check-label" for="gridCheck">
                                        @php echo $skill->title; @endphp
                                    </label>
                                </div>
                                </div>
                            @endforeach

							</div>


                        </div>

                            <div class="col-lg-6">
                                <input type="submit" value="Submit"/>

							</div>

						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>


</body>
<script>
	var menuIcon = document.querySelector(".menu-icon");
	var sidebar = document.querySelector(".sidebar");
	var mainContainer = document.querySelector(".mianContainer");

	menuIcon.onclick = function(){
	    sidebar.classList.toggle("small-slidebar");
	    mainContainer.classList.toggle("full-wide");
	}

</script>


<script type="text/javascript" src="./script/jquery-2.2.4.min.js"></script>
<script type="text/javascript" src="./script/owl.carousel.js"></script>
<script type="text/javascript" src="./script/aos.js"></script>
<script type="text/javascript" src="./script/bootstrap.min.js"></script>
<script type="text/javascript" src="./script/site-script.js"></script>
<script>
	AOS.init();
	</script>


@endsection
