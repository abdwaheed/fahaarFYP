@extends('layouts.head')

@section('content')
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    .checked {
      color: orange;
    }
    </style>


<div class="mianContainer">
    <div class="container"><h1>Dashboard</h1>
		<div class="content">
            <div class="cards">
                <div class="card">
                    <div class="box">
                        <h1>@php echo $resourceCount ;  @endphp </h1>
                        <a href="{{ route('myresources') }}"><h3 style="color: white;">My Resources</h3></a>
                    </div>
                    <div class="icon-case">
                        <img src="img/more.png" alt="">
                    </div>
                </div>
                <div class="card">
                    <div class="box">
                        {{-- leaveCount','taskCount','teamCount --}}
                        <h1>                        <h1>@php echo $leaveCount ;  @endphp </h1>
                    </h1>
                        <a href="{{ route('leave') }}"><h3 style="color: white;">Leave</h3></a>
                    </div>
                    <div class="icon-case">
                        <img style="width: 40px;" src="img/leave.png" alt="">
                    </div>
                </div>
                <div class="card">
                    <div class="box">
                        <h1> @php echo $taskCount ;  @endphp </h1>
                        <a href="{{ route('task') }}"><h3 style="color: white;">Task List</h3></a>
                    </div>
                    <div class="icon-case">
                        <img style="width: 40px;" src="img/task.png" alt="">
                    </div>
                </div>
                <div class="card">
                    <div class="box">
                        <h1>@php echo $teamCount ;  @endphp</h1>
                        <a href="{{ route('team') }}"><h3 style="color: white;">Team</h3></a>
                    </div>
                    <div class="icon-case">
                        <img style="width: 50px;" src="img/team.png" alt="">
                    </div>
                </div>
            </div>



	        <div class="content-2">
                <div class="recent-payments">
                    <div class="white-bx">
                        <span>
                            <h3>My Task</h3>
                        </span>
                        <span><a href="{{ route('task') }}" class="btn">View All</a></span>
                    </div>
                    <table class="dash-table">
                        <thead>
                            <tr>
                                <th>Task No</th>
                                <th>start_date</th>
                                <th>End_date</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($tasks as $list)
                                <tr>
                                    <td> <?php echo $list->task_name;  ?></td>
                                    <td><?php echo $list->start_date;  ?></td>
                                    <td><?php echo $list->end_date;  ?></td>
                                    <td>
                                        @if($list->task_status == 'Open' )
                                            <span style="color: red"><?php echo $list->task_status;  ?></span>
                                        @else
                                            <span style="color: green"><?php echo $list->task_status;  ?></span>
                                        @endif
                                    </td>
                                </tr>
                            @endforeach


                        </tbody>
                    </table>
                </div>
                <div class="new-students">
                    <div class="white-bx">
                        <span>
                            <h3>Performance</h3>
                        </span>
                        <span><a href="{{ route('performance') }}" class="btn">View All</a></span>
                    </div>
                    <table class="dash-table">
                            <thead>
                                <tr>
                                    <th>Task</th>
                                    <th>Employee</th>
                                    <th>Date</th>
                                    <th>Evaluator Rank</th>
                                    <th>Comments</th>
                                    </tr>
                            </thead>
                            <tbody>
                                @foreach ($performances as $list)
                                <tr>
                                    <td> @php echo $list->task ?? '';@endphp </td>
                                    <td> @php echo $list->name ?? '';@endphp </td>
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
	<script src="js/dashboard.js"></script>
{{-- </body>
</html> --}}


@endsection
