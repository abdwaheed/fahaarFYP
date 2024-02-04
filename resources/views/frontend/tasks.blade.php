@extends('layouts.head')

@section('content')

<section class="mianContainer">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<h2>Task</h2>
				<div class="grey-box">
					<div class="white-bx">
						<span><h3>Tasks</h3></span>
						 <span><a href="{{ route('task_create') }}"><button class="btn">Create</button></a></span>
						<span><button class="btn">Refresh</button></span>
					</div>
					<div class="data_tables">
						<div class="table-responsive">
							<table class="table">
								<thead>
									<tr>
										<th>Task</th>
										<th>Description</th>
										<th>Start_date</th>
										<th>End_date</th>
										<th>Type</th>
										<th>Status</th>
										<th>Assign To</th>
                                        <th>ReAssign To</th>
									</tr>
								</thead>
								<tbody>
                                     @foreach ($results as $list)
                                     <tr>
									 	<td> @php echo $list->name ?? '';@endphp </td>
                                         <td> @php echo $list->description ?? '';@endphp </td>
                                         <td> @php echo $list->start_date ?? '';@endphp </td>
                                         <td> @php echo $list->end_date ?? '';@endphp </td>
                                         <td> @php echo $list->type ?? '';@endphp </td>
                                         <td> @php echo $list->task_status ?? ''; @endphp </td>
                                         <td> @php echo $list->username ?? ''  ;@endphp </td>
                                         <td>
                                            @if (Auth::user()->role == 'Admin')
                                                @isset($list->task_status)
                                                    @if ($list->task_status == 'Open')
                                                        <form action="{{ route('task_reassign') }}" method="POST">
                                                            @csrf
                                                            <select name="reAssignUser" class="form-control">
                                                                <option selected disabled>Select User</option>
                                                            @foreach ($users as $user)
                                                                <option value=<?php echo $user->id; ?>><?php echo $user->name ; ?></option>
                                                            @endforeach
                                                        </select>
                                                        <input type="hidden" value="<?php echo $list->id;?>" name="taskid">
                                                        <input class="btn btn-primary" type="submit" value="ReAssign">
                                                    </form>

                                                    @else
                                                        <span style="color:red">Submitted </span>
                                                @endif

                                                @endisset
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
