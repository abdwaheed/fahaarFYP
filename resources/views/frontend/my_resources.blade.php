@extends('layouts.head')

@section('content')

<section class="mianContainer">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<h2>My Resources</h2>
				<div class="grey-box">
					<div class="white-bx">
						<span><h3>My Resources</h3></span>
						<span><button class="btn">Refresh</button></span>
					</div>
					<div class="data_tables">
						<div class="table-responsive">
							<table class="table">
								<thead>
									<tr>
										<th>Resource ID</th>
										<th>Resource Name</th>
										<th>Type</th>
										<th>Date</th>
										<th>Description</th>
                                        <th>Building</th>
                                        <th>Floor</th>
                                        <th>Room</th>
                                        <th>Status</th>
                                      @if(Auth::user()->role == 'Admin' )  <th>Action</th> @endif
									</tr>
								</thead>
								<tbody>

                                    @foreach ($results as $list)
                                        <tr>
                                            <td>@php echo $list->id ?? '' ;  @endphp</td>
                                            <td>@php echo $list->item ?? '' ;  @endphp</td>
                                            <td>@php echo $list->type ?? '' ;  @endphp</td>
                                            <td>@php echo $list->apply_date ?? '' ;  @endphp</td>
                                            <td>@php echo $list->description ?? '' ;  @endphp</td>
                                            <td>@php echo $list->building ?? '' ;  @endphp</td>
                                            <td>@php echo $list->floor ?? '' ;  @endphp</td>
                                            <td>@php echo $list->room ?? '' ;  @endphp</td>
                                            <td>
                                                @php if ($list->approval == 'Approved'){
                                                    $color = 'green';
                                                }
                                                elseif ($list->approval == 'Rejected'){
                                                    $color = 'red';
                                                }
                                                else {
                                                    $color = 'grey';
                                                }
                                                @endphp

                                                <span style= "color: @php echo $color ; @endphp" > @php echo $list->approval ?? '' ;  @endphp </span> </td>
                                           <td>
                                            @if(Auth::user()->role == 'Admin' )

                                            @if($list->approval == 'Pending' || $list->approval =='Pending')
                                            <form action="{{ route('resource_status') }}" method="POST"
                                            files=true enctype="multipart/form-data">
                                                @csrf
                                                <input type="hidden" name="status" value="Approved" >
                                                <input type="hidden" name="id" value="@php echo $list->id;  @endphp" >
                                             <input class="btn-success" type="submit" value="Approve">
                                            </form>

                                            <form action="{{ route('resource_status') }}" method="POST"
                                            files=true enctype="multipart/form-data">
                                                @csrf
                                                <input type="hidden" name="status" value="Rejected" >
                                                <input type="hidden" name="id" value="@php echo $list->id;  @endphp" >
                                             <input class="btn-danger" type="submit" value="Reject">
                                            </form>

                                            @else
                                                <span style="color: green">Responded</span>
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
