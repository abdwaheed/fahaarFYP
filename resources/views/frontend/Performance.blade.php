@extends('layouts.head')

@section('content')
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    .checked {
      color: orange;
    }
    </style>
<section class="mianContainer">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<h2>Performance</h2>
				<div class="grey-box">
					<div class="white-bx">
						<span><h3>Performance</h3></span>
						<span><button class="btn">Refresh</button></span>
					</div>
					<div class="data_tables">
						<div class="table-responsive">
							<table class="table">
								<thead>
									<tr>
										<th>Performance ID</th>
										<th>Task</th>
										<th>Date</th>
										<th>Evaluator Rank</th>
										<th>Comments</th>
                                        @if (Auth::user()->role=='Admin')
										  <th>Admin Remarks</th>
                                        @endif
									</tr>
								</thead>
								<tbody>
                                    @foreach ($results as $list)
                                    <tr>
                                        <td> @php echo $list->id ?? '';@endphp </td>
                                        <td> @php echo $list->task ?? '';@endphp </td>
                                        <td> @php echo $list->created_at ?? '';@endphp </td>
                                        <td> @for ($i=1 ;$i<6 ; $i++)
                                             @if ($i<=$list->task_status)
                                               @php
                                                     $checked = 'checked';
                                                    //  echo "12".$checked;
                                                @endphp
                                            @else
                                            @php
                                                    $checked = 'unchecked';
                                                    // echo $checked;
                                            @endphp

                                            @endif
                                            <span class="fa fa-star @php
                                               echo $checked;
                                            @endphp"></span>


                                            @endfor
                                        </td>
                                        <td> @php echo $list->comments ?? ''; @endphp </td>
                                        @if (Auth::user()->role=='Admin')
                                        <td>
                                            <form action="{{ route('performance_status') }}" method="GET">
                                                @csrf
                                                <input type="hidden" name="id" value="@php  echo $list->id @endphp">
                                                <input type="number" name="task_status" min=0 max=5 placeholder="0"><br>
                                                <input type="text" name="comments" placeholder="comments"><br>
                                                <input type="submit" value="Submit Feedback">
                                            </form>
                                            </td>
                                        @endif


                                    </tr>
                                    @endforeach
                                     {{-- <td>
                                        <img src="images/star.png">
                                    </td> --}}

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
