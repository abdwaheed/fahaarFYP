@extends('layouts.head')

@section('content')


<section class="mianContainer">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<h2>Leave Request Form</h2>
				<div class="grey-box">
					<form class="form-gry" action="{{ route('leave_store') }}" method="GET">
                        @csrf
						<div class="row">
							<div class="col-lg-6">
								<label>Start Date <span>*</span></label>
								<input type="date" required name="start_date" id="startdate" min=""/>
							</div>
							<div class="col-lg-6">
								<label>End Date <span>*</span></label>
								<input type="date" required name="end_date" id="enddate" min=""/>
							</div>
                            <div class="col-lg-6">
								<label>Leave Type <span>*</span></label>
								<select name="type">
									<option>Select any option</option>
									<option value="Half Day">Half Day</option>
									<option value="Full Day">Full Day</option>
								</select>
							</div>
							<div class="col-lg-12">
								<label>Reason <span>*</span></label>
								<select name="reason">
									<option>Select any option</option>
									<option value="Marriage Leave">Marriage Leave</option>
									<option value="Sick Leave" >Sick Leave</option>
									<option value="Casual Leave">Casual Leave</option>
									<option value="Urgent Leave">Urgent Leave</option>
									<option value="Vacation Leave" >Vacation Leave</option>
								</select>
							</div>

							<div class="col-lg-12">
								<label>Description<span>*</span></label>
								<textarea name="description"></textarea>
								<input type="submit" class="btn" value="Submit" name="">
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

<script>
    // Get current date and time

    var dateObj = new Date();

    const month   = String(dateObj.getUTCMonth() + 1).padStart(2, '0'); // months from 1-12
    const day     = dateObj.getUTCDate();
    const year    = dateObj.getUTCFullYear();

    const newDate = year + "-" + month + "-" + day;


    // var datetime = now.toLocaleString();

    // Insert date and time into HTML
    // document.getElementById("datetime").innerHTML = newDate;
    document.getElementById("startdate").setAttribute("min", newDate);
    document.getElementById("enddate").setAttribute("min", newDate);

  </script>
@endsection
