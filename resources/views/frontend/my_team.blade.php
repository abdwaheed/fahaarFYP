@extends('layouts.head')

@section('content')

<section class="mianContainer">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<h2>My Team</h2>
				<div class="grey-box">
					<div class="white-bx">
						<span><h3>My Team</h3></span>
						<span><button class="btn">Refresh</button></span>
					</div>
					<div class="data_tables">
						<div class="table-responsive">
							<table class="table">
								<thead>
									<tr>
										<th>Team</th>
										<th>Members</th>
										<th>Joining Date</th>
										<th>Role</th>
										<th>No of Tasks</th>

									</tr>
								</thead>
								<tbody>
                                     @foreach ($results as $list)
                                     <tr>
                                        <td> @php echo $list->team_code ?? '' ;@endphp </td>
                                        <td> @php echo $list->name ?? '';@endphp </td>
                                        <td> @php echo $list->joining_date ?? '';@endphp </td>
                                        <td> @php echo $list->role ?? '';@endphp </td>
                                        <td> @php echo $list->no_of_task ?? '';@endphp </td>
                                     </tr>
                                     @endforeach
								</tbody>
							</table>
						</div>
					</div>
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

@endsection
