<?php
$action = $_GET['action'];
include 'admin_class.php';
$crud = new Action();


if($action == 'get_all_alumni'){
	$userID = $_GET['current_user'];
	$data = $crud->getAllAlumnis($userID);
	
		echo json_encode($data);
}

if($action == 'get_all_senior'){
	$userID = $_GET['current_user'];
	$data = $crud->getAllSenior($userID);
	
		echo json_encode($data);
}
if($action == 'getProfile'){
	$userID = $_GET['current_user'];
	$data = $crud->getProfile($userID);
	
		echo json_encode($data);
}

if($action == 'login'){
	$username = $_POST['email'];
	$password = $_POST['password'];
	$data = $crud->mobileLogin($username,$password);
	
		echo json_encode($data);
}
if($action == 'getcourse'){
	$data = $crud->getAllCourses();
		echo json_encode($data);
}
if($action == 'upload_csv'){
	$crud->loadCSV();
}
if($action=='registration'){
	$email = $_POST['email'];
	$password = $_POST['password'];
	$firstname = $_POST['firstname'];
	$lastname = $_POST['lastname'];
	$course = $_POST['course'];
	$phone = $_POST['phone'];
	$batch = $_POST['batch'];

	$data=$crud->mobileRegistration($password,$firstname,$lastname,$email,$course,$phone,$batch);	
	echo json_encode($data);
}
if($action == 'getjobcategory'){
	$data = $crud->getAllJobsCategory();
		echo json_encode($data);
}
if($action == 'getalljobcategory'){
	$cat=strtolower($_GET['category']);
	$data = $crud->getAllJobsByName($cat);
		echo urlencode(json_encode($data));
}
if($action == 'getallscholarship'){
	$data = $crud->getAllScholarships();
		echo urlencode(json_encode($data));
}
if($action == 'getallevent'){
	$data = $crud->getAllEvents();
		echo urlencode(json_encode($data));
}

?>
