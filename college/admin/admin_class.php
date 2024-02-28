<?php
session_start();
ini_set('display_errors', 1);
Class Action {
	private $db;

	public function __construct() {
		ob_start();
   	include 'db_connect.php';
    
    $this->db = $conn;
	}
	function __destruct() {
	    $this->db->close();
	    ob_end_flush();
	}

	function login(){
		
			extract($_POST);		
			$qry = $this->db->query("SELECT * FROM users where username = '".$username."' and password = '".md5($password)."'");
			if($qry->num_rows > 0){
				foreach ($qry->fetch_array() as $key => $value) {
					if($key != 'passwors' && !is_numeric($key))
						$_SESSION['login_'.$key] = $value;
				}
				// if($_SESSION['login_type'] != 1){
				// 	foreach ($_SESSION as $key => $value) {
				// 		unset($_SESSION[$key]);
				// 	}
				// 	return 2;
				// 	exit;
				// }
					return 1;
			}else{
				return 3;
			}
	}




	function login2(){
		
			extract($_POST);
			if(isset($email))
				$username = $email;
		$qry = $this->db->query("SELECT * FROM users where username = '".$username."' and password = '".md5($password)."' ");
		if($qry->num_rows > 0){
			foreach ($qry->fetch_array() as $key => $value) {
				if($key != 'passwors' && !is_numeric($key))
					$_SESSION['login_'.$key] = $value;
			}
			if($_SESSION['login_alumnus_id'] > 0){
				$bio = $this->db->query("SELECT * FROM alumnus_bio where id = ".$_SESSION['login_alumnus_id']);
				if($bio->num_rows > 0){
					foreach ($bio->fetch_array() as $key => $value) {
						if($key != 'passwors' && !is_numeric($key))
							$_SESSION['bio'][$key] = $value;
					}
				}
			}
			if($_SESSION['bio']['status'] != 1){
					foreach ($_SESSION as $key => $value) {
						unset($_SESSION[$key]);
					}
					return 2 ;
					exit;
				}
				return 1;
		}else{
			return 3;
		}
	}
	function logout(){
		session_destroy();
		foreach ($_SESSION as $key => $value) {
			unset($_SESSION[$key]);
		}
		header("location:login.php");
	}
	function logout2(){
		session_destroy();
		foreach ($_SESSION as $key => $value) {
			unset($_SESSION[$key]);
		}
		header("location:../index.php");
	}

	function save_user(){
		extract($_POST);
		$data = " name = '$name' ";
		$data .= ", username = '$username' ";
		if(!empty($password))
		$data .= ", password = '".md5($password)."' ";
		$data .= ", type = '$type' ";
		if($type == 1)
			$establishment_id = 0;
		$data .= ", establishment_id = '$establishment_id' ";
		$chk = $this->db->query("Select * from users where username = '$username' and id !='$id' ")->num_rows;
		if($chk > 0){
			return 2;
			exit;
		}
		if(empty($id)){
			$save = $this->db->query("INSERT INTO users set ".$data);
		}else{
			$save = $this->db->query("UPDATE users set ".$data." where id = ".$id);
		}
		if($save){
			return 1;
		}
	}
	function delete_user(){
		extract($_POST);
		$delete = $this->db->query("DELETE FROM users where id = ".$id);
		if($delete)
			return 1;
	}
	function signup(){
		extract($_POST);
		$data = " name = '".$firstname.' '.$lastname."' ";
		$data .= ", username = '$email' ";
		$data .= ", password = '".md5($password)."' ";
		$data .= ", type = '2' ";
		$data .= ", alumnus_id = '0' ";
		$chk = $this->db->query("SELECT * FROM users where username = '$email'")->num_rows;
		if($chk > 0){
			return 2;
			exit;
		}
			$save = $this->db->query("INSERT INTO users set ".$data);
		if($save){
			$uid = $this->db->insert_id;
			$data = '';
			foreach($_POST as $k => $v){
				if($k =='password')
					continue;
				if(empty($data) && !is_numeric($k) )
					$data = " $k = '$v' ";
				else
					$data .= ", $k = '$v' ";
			}
			if($_FILES['img']['tmp_name'] != ''){
							$fname = strtotime(date('y-m-d H:i')).'_'.$_FILES['img']['name'];
							$move = move_uploaded_file($_FILES['img']['tmp_name'],'assets/uploads/'. $fname);
							$data .= ", avatar = '$fname' ";

			}
			$save_alumni = $this->db->query("INSERT INTO alumnus_bio set $data ");
			if($save_alumni){
				$aid = $this->db->insert_id;
				$this->db->query("UPDATE users set alumnus_id = $aid where id = $uid ");
				// $login = $this->login2();
				// if($login)
				return 1;
			};
		};
	}
	function update_account(){
		extract($_POST);
		$data = " name = '".$firstname.' '.$lastname."' ";
		$data .= ", username = '$email' ";
		if(!empty($password))
		$data .= ", password = '".md5($password)."' ";
		$chk = $this->db->query("SELECT * FROM users where username = '$email' and id != '{$_SESSION['login_id']}' ")->num_rows;
		if($chk > 0){
			return 2;
			exit;
		}
			$save = $this->db->query("UPDATE users set $data where id = '{$_SESSION['login_id']}' ");
		if($save){
			$data = '';
			foreach($_POST as $k => $v){
				if($k =='password')
					continue;
				if(empty($data) && !is_numeric($k) )
					$data = " $k = '$v' ";
				else
					$data .= ", $k = '$v' ";
			}
			if($_FILES['img']['tmp_name'] != ''){
							$fname = strtotime(date('y-m-d H:i')).'_'.$_FILES['img']['name'];
							$move = move_uploaded_file($_FILES['img']['tmp_name'],'assets/uploads/'. $fname);
							$data .= ", avatar = '$fname' ";

			}
			$save_alumni = $this->db->query("UPDATE alumnus_bio set $data where id = '{$_SESSION['bio']['id']}' ");
			if($data){
				foreach ($_SESSION as $key => $value) {
					unset($_SESSION[$key]);
				}
				$login = $this->login2();
				if($login)
				return 1;
			}
		}
	}

	function save_settings(){
		extract($_POST);
		$data = " name = '".str_replace("'","&#x2019;",$name)."' ";
		$data .= ", email = '$email' ";
		$data .= ", contact = '$contact' ";
		$data .= ", about_content = '".htmlentities(str_replace("'","&#x2019;",$about))."' ";
		if($_FILES['img']['tmp_name'] != ''){
						$fname = strtotime(date('y-m-d H:i')).'_'.$_FILES['img']['name'];
						$move = move_uploaded_file($_FILES['img']['tmp_name'],'assets/uploads/'. $fname);
					$data .= ", cover_img = '$fname' ";

		}
		
		// echo "INSERT INTO system_settings set ".$data;
		$chk = $this->db->query("SELECT * FROM system_settings");
		if($chk->num_rows > 0){
			$save = $this->db->query("UPDATE system_settings set ".$data);
		}else{
			$save = $this->db->query("INSERT INTO system_settings set ".$data);
		}
		if($save){
		$query = $this->db->query("SELECT * FROM system_settings limit 1")->fetch_array();
		foreach ($query as $key => $value) {
			if(!is_numeric($key))
				$_SESSION['settings'][$key] = $value;
		}

			return 1;
				}
	}

	
	function save_course(){
		extract($_POST);
		$data = " course = '$course' ";
			if(empty($id)){
				$save = $this->db->query("INSERT INTO courses set $data");
			}else{
				$save = $this->db->query("UPDATE courses set $data where id = $id");
			}
		if($save)
			return 1;
	}
	function delete_course(){
		extract($_POST);
		$delete = $this->db->query("DELETE FROM courses where id = ".$id);
		if($delete){
			return 1;
		}
	}
	function update_alumni_acc(){
		extract($_POST);
		$update = $this->db->query("UPDATE alumnus_bio set status = $status where id = $id");
		if($update)
			return 1;
	}
	function save_gallery(){
		extract($_POST);
		$img = array();
  		$fpath = 'assets/uploads/gallery';
		$files= is_dir($fpath) ? scandir($fpath) : array();
		foreach($files as $val){
			if(!in_array($val, array('.','..'))){
				$n = explode('_',$val);
				$img[$n[0]] = $val;
			}
		}
		if(empty($id)){
			$save = $this->db->query("INSERT INTO gallery set about = '$about' ");
			if($save){
				$id = $this->db->insert_id;
				$folder = "assets/uploads/gallery/";
				$file = explode('.',$_FILES['img']['name']);
				$file = end($file);
				if(is_file($folder.$id.'/_img'.'.'.$file))
					unlink($folder.$id.'/_img'.'.'.$file);
				if(isset($img[$id]))
						unlink($folder.$img[$id]);
				if($_FILES['img']['tmp_name'] != ''){
					$fname = $id.'_img'.'.'.$file;
					$move = move_uploaded_file($_FILES['img']['tmp_name'],'assets/uploads/gallery/'. $fname);
				}
			}
		}else{
			$save = $this->db->query("UPDATE gallery set about = '$about' where id=".$id);
			if($save){
				if($_FILES['img']['tmp_name'] != ''){
					$folder = "assets/uploads/gallery/";
					$file = explode('.',$_FILES['img']['name']);
					$file = end($file);
					if(is_file($folder.$id.'/_img'.'.'.$file))
						unlink($folder.$id.'/_img'.'.'.$file);
					if(isset($img[$id]))
						unlink($folder.$img[$id]);
					$fname = $id.'_img'.'.'.$file;
					$move = move_uploaded_file($_FILES['img']['tmp_name'],'assets/uploads/gallery/'. $fname);
				}
			}
		}
		if($save)
			return 1;
	}
	function delete_gallery(){
		extract($_POST);
		$delete = $this->db->query("DELETE FROM gallery where id = ".$id);
		if($delete){
			return 1;
		}
	}
	function save_career(){
		extract($_POST);
		$data = " company = '$company' ";
		$data .= ", job_title = '$title' ";
		$data .= ", location = '$location' ";
		$data .= ", job_category = '$category' ";
		$data .= ", job_type = '$type' ";
		$data .= ", salary_min = '$minimum_salary' ";
		$data .= ", salary_max = '$maximum_salary' ";
		$data .= ", no_of_vacancy = '$vacancy' ";
		$data .= ", expiration_date = '$expiration_date' ";
		$data .= ", skills = '".htmlentities(str_replace("'","&#x2019;",$skills))."' ";
		$data .= ", description = '".htmlentities(str_replace("'","&#x2019;",$description))."' ";

		if(empty($id)){
			// echo "INSERT INTO careers set ".$data;
		$data .= ", user_id = '{$_SESSION['login_id']}' ";
			$save = $this->db->query("INSERT INTO careers set ".$data);
		}else{
			$save = $this->db->query("UPDATE careers set ".$data." where id=".$id);
		}
		if($save)
			return 1;
	}
	function delete_career(){
		extract($_POST);
		$delete = $this->db->query("DELETE FROM careers where id = ".$id);
		if($delete){
			return 1;
		}
	}
	function save_forum(){
		extract($_POST);
		$data = " title = '$title' ";
		$data .= ", award = '$award' ";
		$data .= ", deadline = '$deadline' ";
		$data .= ", sc_link = '$sc_link' ";
		$data .= ", description = '".htmlentities(str_replace("'","&#x2019;",$description))."' ";

		if(empty($id)){
		$data .= ", user_id = '{$_SESSION['login_id']}' ";
			$save = $this->db->query("INSERT INTO forum_topics set ".$data);
		}else{
			$save = $this->db->query("UPDATE forum_topics set ".$data." where id=".$id);
		}
		if($save)
			return 1;
	}
	function delete_forum(){
		extract($_POST);
		$delete = $this->db->query("DELETE FROM forum_topics where id = ".$id);
		if($delete){
			return 1;
		}
	}
	function save_comment(){
		extract($_POST);
		$data = " comment = '".htmlentities(str_replace("'","&#x2019;",$comment))."' ";

		if(empty($id)){
			$data .= ", topic_id = '$topic_id' ";
			$data .= ", user_id = '{$_SESSION['login_id']}' ";
			$save = $this->db->query("INSERT INTO forum_comments set ".$data);
		}else{
			$save = $this->db->query("UPDATE forum_comments set ".$data." where id=".$id);
		}
		if($save)
			return 1;
	}
	function delete_comment(){
		extract($_POST);
		$delete = $this->db->query("DELETE FROM forum_comments where id = ".$id);
		if($delete){
			return 1;
		}
	}
	function save_event(){
		extract($_POST);
		$data = " title = '$title' ";
		$data .= ", schedule = '$schedule' ";
		$data .= ", content = '".htmlentities(str_replace("'","&#x2019;",$content))."' ";
		if($_FILES['banner']['tmp_name'] != ''){
						$_FILES['banner']['name'] = str_replace(array("(",")"," "), '', $_FILES['banner']['name']);
						$fname = strtotime(date('y-m-d H:i')).'_'.$_FILES['banner']['name'];
						$move = move_uploaded_file($_FILES['banner']['tmp_name'],'assets/uploads/'. $fname);
					$data .= ", banner = '$fname' ";

		}
		if(empty($id)){

			$save = $this->db->query("INSERT INTO events set ".$data);
		}else{
			$save = $this->db->query("UPDATE events set ".$data." where id=".$id);
		}
		if($save)
			return 1;
	}
	function delete_event(){
		extract($_POST);
		$delete = $this->db->query("DELETE FROM events where id = ".$id);
		if($delete){
			return 1;
		}
	}
	
	function participate(){
		extract($_POST);
		$data = " event_id = '$event_id' ";
		$data .= ", user_id = '{$_SESSION['login_id']}' ";
		$commit = $this->db->query("INSERT INTO event_commits set $data ");
		if($commit)
			return 1;

	}


	//API METHODS
	function getAllAlumnis($userID){
		$qry = $this->db->query("SELECT a.id as alu_id,c.id as course_id,firstname,middlename,lastname,course,email,phone,connected_to,avatar,gender,batch,u.type,skills FROM alumnus_bio a join users u on a.id=u.alumnus_id join courses c on a.course_id=c.id where a.id not in ('$userID') and u.type='3'");
		if($qry->num_rows > 0){
			while ($row = mysqli_fetch_assoc($qry)) {
				$resultarray[] = $row;
			}
			return $resultarray;
		}
	}

	function getAllJunior($userID){
		$qry = $this->db->query("SELECT a.id as alu_id,c.id as course_id,firstname,middlename,lastname,course,email,phone,connected_to,avatar,gender,batch,u.type,skills FROM alumnus_bio a join users u on a.id=u.alumnus_id join courses c on a.course_id=c.id where a.id not in ('$userID') and u.type='1'");
		if($qry->num_rows > 0){
			while ($row = mysqli_fetch_assoc($qry)) {
				$resultarray[] = $row;
			}
			return $resultarray;
		}
	}

	function getAllSenior($userID){
		$qry = $this->db->query("SELECT a.id as alu_id,c.id as course_id,firstname,middlename,lastname,course,email,phone,connected_to,avatar,gender,batch,u.type,skills FROM alumnus_bio a join users u on a.id=u.alumnus_id join courses c on a.course_id=c.id where a.id not in ('$userID') and u.type='2'");
		if($qry->num_rows > 0){
			while ($row = mysqli_fetch_assoc($qry)) {
				$resultarray[] = $row;
			}
			return $resultarray;
		}
	}
	function getProfile($userID){
		$qry = $this->db->query("SELECT a.id as alu_id,c.id as course_id,firstname,middlename,lastname,course,email,phone,connected_to,avatar,gender,batch,u.type,skills FROM alumnus_bio a join users u on a.id=u.alumnus_id join courses c on a.course_id=c.id where a.id ='$userID'");
		if($qry->num_rows > 0){
			while ($row = mysqli_fetch_assoc($qry)) {
				$resultarray[] = $row;
			}
			return $resultarray;
		}
	}
	function getAllCourses(){
		$qry = $this->db->query("SELECT * from courses");
		if($qry->num_rows > 0){
			while ($row = mysqli_fetch_assoc($qry)) {
				$resultarray[] = $row;
			}
			return $resultarray;
		}
	}

	function getAllJobsCategory(){
		$qry = $this->db->query("SELECT * FROM careers");
		if($qry->num_rows > 0){
			while ($row = mysqli_fetch_assoc($qry)) {
				$resultarray[] = $row;
			}
			return $resultarray;
		}
	}
	function getAllJobsByName($name){
		$qry = $this->db->query("SELECT * from careers where job_category='$name'");
		if($qry->num_rows > 0){
			while ($row = mysqli_fetch_assoc($qry)) {
				$resultarray[] = $row;
			}
			return $resultarray;
		}
	}
	function getAllScholarships(){
		$qry = $this->db->query("SELECT * from forum_topics");
		if($qry->num_rows > 0){
			while ($row = mysqli_fetch_assoc($qry)) {
				$resultarray[] = $row;
			}
			return $resultarray;
		}
	}
	function getAllEvents(){
		$qry = $this->db->query("SELECT * from events");
		if($qry->num_rows > 0){
			while ($row = mysqli_fetch_assoc($qry)) {
				$resultarray[] = $row;
			}
			return $resultarray;
		}
	}

	function mobileLogin($username,$password){		

		$qry1 = $this->db->query("SELECT * FROM alumnus_bio where email = '".$username."' and status = '1' ");
			
		if($qry1->num_rows > 0){
			
			$qry = $this->db->query("SELECT u.*,a.batch,a.gender FROM users u join alumnus_bio a on u.alumnus_id=a.id where u.username = '".$username."' and u.password = '".md5($password)."' ");
			if($qry->num_rows > 0){
				$data['response']['user'] = mysqli_fetch_assoc($qry);
				$data['response']['status'] = 200;
				
			}else{
				$data['response']['user'] = mysqli_fetch_assoc($qry);
				$data['response']['status'] = 404;
			}
		}else{
				$data['response']['user'] = mysqli_fetch_assoc($qry1);
				$data['response']['status'] = 401;
		}
			return $data;
	}

	function loadCSV(){		

		$qry = $this->db->query("SELECT * FROM alumnus_bio");
		while ($row = mysqli_fetch_array($qry)) {
			$id = $row["id"];
			$d = explode("-",$row['batch']);
			echo $d[0];

			if($d[0]<2022)$this->db->query("update users set type='2' where alumnus_id='$id'"); 
		}

		
		
	
		// Get csv file 
    //     if(($handle = fopen("dataset.csv",  
    //                     "r")) !== FALSE) { 
    //         $n = 1; 
	// 		$data="";
	// 		while(($row = fgetcsv($handle))  
    //                             !== FALSE) { 
	// 		$data .= " ('$row[0]','','$row[1]','Female','$row[3]-$row[4]',(select id from courses where course='$row[5]'),'$row[6]','$row[7]','$row[8]','1602730260_avatar.jpg','1','$row[9]'), "; 
	// 			$n++; 				
    //         }
	// 		echo $data;
	// 		$this->db->query('INSERT INTO alumnus_bio (firstname,middlename,lastname,gender,batch,course_id,email,phone,connected_to,avtar,status,skills) values '.$data); 
              
    //     // Closing the file 
    //     fclose($handle); 
    // }else echo "No Data Found"; 

	
	}

	//New API

	function mobileRegistration($password,$firstname,$lastname,$email,$course,$phone,$batch){		
		
		
		$s= ($batch=="2020-2024")?"0":"1";
		$p = md5($password);
		$type=($s=="1")?"2":"3";
		$data = "firstname = '$firstname' ";
		$data .= ", middlename = '' ";
		$data .= ", lastname = '$lastname' ";
		$data .= ", gender = 'Female' ";
		$data .= ", batch = '$batch' ";
		$data .= ", course_id = '$course' ";
		$data .= ", email = '$email' ";
		$data .= ", phone = '$phone' ";
		$data .= ", connected_to = '' ";
		$data .= ", avatar = '1602730260_avatar.jpg' ";
		$data .= ", status = '$s' ";
		$data .= ", skills = '' ";
		
		$save = $this->db->query("INSERT INTO alumnus_bio set ".$data);

		if($save){
			$id = $this->db->insert_id;
			$d = "name = '$firstname' ";
			$d .= ", username = '$email' ";
			$d .= ", password = '$p' ";
			$d .= ", type = '$type' ";
			$d .= ", alumnus_id = '$id' ";
			
			$this->db->query("INSERT INTO users set ".$d);

		}
	
		return $save;
}

}