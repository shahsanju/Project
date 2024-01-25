<?php include 'db_connect.php' ?>
<?php
if(isset($_GET['id'])){
	$qry = $conn->query("SELECT * FROM careers where id=".$_GET['id'])->fetch_array();
	foreach($qry as $k =>$v){
		$$k = $v;
	}
}

?>
<div class="container-fluid">
<div class="col-lg-12">
		<div class="card">
			<div class="card-body">
	<form action="" id="manage-career">
				<input type="hidden" name="id" value="<?php echo isset($_GET['id']) ? $_GET['id']:'' ?>" class="form-control">
		<div class="row form-group">
			<div class="col-md-8">
				<label class="control-label">Company Name</label>
				<input type="text" name="company" class="form-control" value="<?php echo isset($company) ? $company:'' ?>">
			</div>
			<div class="col-md-4">
				<label class="control-label">Location</label>
				<input type="text" name="location" class="form-control" value="<?php echo isset($location) ? $location:'' ?>">
			</div>
		</div>
		<div class="row form-group">
			<div class="col-md-4">
				<label class="control-label">Job Title</label>
				<input type="text" name="title" class="form-control" value="<?php echo isset($job_title) ? $job_title:'' ?>">
			</div>
			<div class="col-md-4">
				<label class="control-label">Job Category</label>
				<input type="text" name="category" class="form-control" value="<?php echo isset($job_category) ? $job_category:'' ?>">
			</div>
			<div class="col-md-4">
				<label class="control-label">Job Type</label>
				<select name="type" class="form-control">
					<option value="FULL TIME">Full Time</option>
					<option value="PART TIME">Part Time</option>
				</select>
			</div>
		</div>
		
		<div class="row form-group">
			<div class="col-md-4">
				<label class="control-label">Minimum Salary($)</label>
				<input type="number" name="minimum_salary" class="form-control" value="<?php echo isset($salary_min) ? $salary_min:'' ?>">
			</div>
			<div class="col-md-4">
				<label class="control-label">Maximum Salary($)</label>
				<input type="number" name="maximum_salary" class="form-control" value="<?php echo isset($salary_max) ? $salary_max:'' ?>">
			</div>
			<div class="col-md-4">
				<label class="control-label">No. of vacancy</label>
				<input type="number" name="vacancy" class="form-control" value="<?php echo isset($no_of_vacancy) ? $no_of_vacancy:'' ?>">
			</div>
		</div>
		<div class="form-group row">
						<div class="col-md-5">
							<label class="control-label">Job Expiry Date</label>
							<input type="text" class="form-control datetimepicker" name="expiration_date"  value="<?php echo isset($expiration_date) ? date("Y-m-d",strtotime($expiration_date)) :'' ?>" required autocomplete="off">
						</div>
		</div>
		<div class="row form-group">
			<div class="col-md-6">
				<label class="control-label">Skills</label>
				<textarea name="skills" class="text-jqte"><?php echo isset($skills) ? html_entity_decode($skills) : '' ?></textarea>
			</div>
			<div class="col-md-6">
				<label class="control-label">Description</label>
				<textarea name="description" class="text-jqte"><?php echo isset($description) ? html_entity_decode($description) : '' ?></textarea>
			</div>
		</div>
		<div class="row">
						<div class="col-md-12">
							<button class="btn btn-sm btn-block btn-primary col-sm-2"> Save</button>
						</div>
					</div>
		

	</form>
			</div>
		</div>
</div>
</div>

<script>
	$('.text-jqte').jqte();
	$('#manage-career').submit(function(e){
		e.preventDefault()
		start_load()
		$.ajax({
			url:'ajax.php?action=save_career',
			method:'POST',
			data:$(this).serialize(),
			success:function(resp){
				if(resp == 1){
					alert_toast("Data successfully saved.",'success')
					setTimeout(function(){
						//location.reload()
						location.href = "index.php?page=jobs"
					},1000)
				}
			}
		})
	})
</script>