@extends('layouts.head')

@section('content')

<section class="mianContainer">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<h2>My Task</h2>
				<div class="grey-box">
					<div class="white-bx">
						<span><h3>My Task</h3></span>
						<span><a href="{{ route('taskupload') }}"><button class="btn">Upload</button></a></span>
						<span><button class="btn">Refresh</button></span>
					</div>
					<div class="data_tables">
						<div class="table-responsive">
							<table class="table">
								<thead>
									<tr>
                                        <th>Task Image</th>
                                        <th>Task</th>
										<th>Description</th>
										<th>Start_date</th>
										<th>End_date</th>
										<th>Type</th>
										<th>Status</th>
										<th>Complete</th>
									</tr>
								</thead>
								<tbody>
                                     @foreach ($results as $list)
                                     <tr>
                                        <td> <img src="@php echo url('images/tasks').'/'.$list->task_image ?? 'N/A' ;@endphp"
                                            width="50" height="50" target="_blank">
                                        </td>
                                        <td> @php echo $list->name ?? 'N/A' ;@endphp </td>
                                        <td> @php echo $list->description ?? '' ;@endphp </td>
                                        <td> @php echo $list->start_date ?? '';@endphp </td>
                                        <td> @php echo $list->end_date ?? '';@endphp </td>
                                        <td> @php echo $list->type ?? '';@endphp </td>
                                        <td> @php echo $list->task_status ?? ''; @endphp </td>
                                        <td>
                                            @if($list->task_status == 'open' || $list->task_status =='Open')
                                            <form action="{{ route('task_status') }}" method="POST"
                                            files=true enctype="multipart/form-data">
                                                @csrf
                                                <input type="file" name="image" class="form-control">
                                                <input type="hidden" name="id" value="@php echo $list->id;  @endphp" >
                                             <input class="btn-success" type="submit" value="Completed">
                                            </form>
                                            @else
                                                <span style="color: green">Submitted</span>
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
