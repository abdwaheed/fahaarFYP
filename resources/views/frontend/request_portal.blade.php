
@extends('layouts.head')

@section('content')

<section class="mianContainer">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<h2>Request Portal</h2>
				<div class="grey-box">
					<form class="form-gry" action="{{ route('requestportal_save') }}" method="GET" >
                        @csrf
						<div class="row">
                            <div class="col-lg-4">
								<label>Type <span>*</span></label>
								<select name="type">
									<option>Select any option</option>
									<option>Electronic</option>
									<option>Fruniture</option>
								</select>
							</div>

							<div class="col-lg-4">
								<label>Requested Item <span>*</span></label>
								<select name="item">
									<option>Select any option</option>
									<option>Laptop</option>
									<option>Mouse</option>
                                    <option>Key Board</option>
								</select>
							</div>
							<div class="col-lg-12">
								<label>Building <span>*</span></label>
								<select name="building">
									<option>Select any option</option>
									<option>1</option>
									<option>2</option>
								</select>
							</div>
							<div class="col-lg-12">
								<label>Floor <span>*</span></label>
								<select name="floor">
									<option>Select any option</option>
									<option>1</option>
									<option>2</option>
								</select>
							</div>
							<div class="col-lg-12">
								<label>Room <span>*</span></label>
								<select name="room">
									<option>Select any option</option>
									<option>1</option>
									<option>2</option>
								</select>
							</div>
							<div class="col-lg-12">
								<label>Apply Date <span>*</span></label>
                                <input type="date" required name="apply_date" id="startdate" min="">
							</div>
							<div class="col-lg-12">
								<label>Description <span>*</span></label>
								<textarea name="description"></textarea>
							</div>
                            <div class="col-lg-12">
                                <input type="submit" value="Submit">
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

  </script>
@endsection
