@extends('layouts.head')

@section('content')

	<!-------------------------------main-------------------------------->
	<div class="mianContainer">
		<div class="container"><h1>Feedback Form</h1>
			<div class="grey-box">
		<form action="mailto:simon.long@cit.ie" method="post" enctype="text/plain" class="form-gry">
            <div class="id">
            <label>Employee ID: </label>
            <input type="text" name="Employee ID" placeholder="Enter ID"></div>

            <!--This uses the new HTML "email" input type which will automatically validates the email address when the SUBMIT button is clicked-->
            <div class="date">
            <label>Date:</label>
            <input type="date" name="date" placeholder="">
            </div>
            <div class="text">
              <label>Text :</label>
              <textarea rows="6" cols="50" name="commentfield"></textarea></div>

							<div class="form-btns">
								<span><input class="btn" type="submit" value="Send Feedback"></span>
								<span><input class="btn" type="reset" value="Reset"></span>
							</div>
          </form>
        </div>
	</div>
	</div>
	<script src="js/dashboard.js"></script>
@endsection
