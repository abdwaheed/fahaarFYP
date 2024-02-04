@extends('layouts.head')

@section('content')


<section class="mianContainer">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<h2>My Leave</h2>
				<div class="grey-box">
					<div class="white-bx">
						<span><h3>My Leaves</h3></span>
						<span><a href="{{ route('leave_create') }}"><button class="btn">Request</button></a></span>
						<span><button class="btn">Refresh</button></span>
					</div>
					<div class="data_tables">
						<div class="table-responsive">
							<table class="table">
								<thead>
									<tr>
										<th>Leave ID</th>
                                        <th>User</th>
                                        <th>Department</th>
                                        <th>Reason</th>
										<th>Apply Date</th>
										<th>From Date</th>
										<th>To Date</th>
										<th>Type</th>
										<th>Description</th>
										<th>Status</th>
                                        @if(Auth::user()->role == 'Admin' )
                                            <th>Admin Approval</th>
                                        @endif
									</tr>
								</thead>
								<tbody>
                                    @foreach ($results as $list)
                                    <tr>
                                        @php if($list->status == 'Rejected') {$color = 'red'; } else {$color='green';} @endphp
										<td> @php echo $list->id ?? '' ; @endphp </td>
                                        <td> @php echo $list->name ?? '' ; @endphp </td>
                                        <td> @php echo $list->title ?? '' ; @endphp </td>
                                        <td> @php echo $list->reason ?? '' ;  @endphp </td>
                                        <td> @php echo $list->apply_date ?? '' ; @endphp </td>
                                        <td> @php echo $list->start_date ?? '' ; @endphp </td>
                                        <td> @php echo $list->end_date ?? '' ; @endphp </td>
                                        <td> @php echo $list->type ?? '' ; @endphp </td>
                                        <td> @php echo $list->description ?? '' ; @endphp </td>
                                        <td><span style="color: @php echo $color; @endphp  "> @php echo $list->status ?? '' ; @endphp </span></td>
                                       <td>
                                        @if($list->status == 'Pending' || $list->status == 'pending')
                                        @if(Auth::user()->role == 'Admin' )
                                                <form action="{{ route('leave_status') }}" method="GET"> @csrf
                                                <input type="hidden" name="id" value="@php echo $list->id @endphp">
                                                <input type="hidden" name="status" value="Approved">
                                                <input class="btn-success" type="submit" value="Approve">
                                                </form>
                                                <form action="{{ route('leave_status') }}" method="GET"> @csrf
                                                    <input type="hidden" name="id" value="@php echo $list->id @endphp">
                                                    <input type="hidden" name="status" value="Rejected">
                                                    <input class="btn-danger" type="submit" value="Rejected">
                                                </form>
                                        @endif
                                        @endif

                                            </td>
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