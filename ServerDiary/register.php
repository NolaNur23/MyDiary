<?php
include 'koneksi.php';

class usr{}

$username=$_POST["username"];
$email=$_POST["email"];
$password=$_POST["password"];

if((empty($username))){
    $response=new usr();
    $response->success=0;
    $response->message="Kolom Username Tidak Boleh Kosong";
    die(json_encode($response));
}else if((empty ($password))){
     $response=new usr();
    $response->success=0;
    $response->message="Kolom Password Tidak Boleh Kosong";
    die(json_encode($response));
}else if((empty ($email))){
     $response=new usr();
    $response->success=0;
    $response->message="Kolom Email Tidak Boleh Kosong";
    die(json_encode($response));
}else{
    if(!empty($username) && (!empty($password) && !empty($email))){
       $num_rows = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM user WHERE username='".$username."'"));
     	
       if ($num_rows == 0){
           $query = mysqli_query($conn, "INSERT INTO user (username,email, password) VALUES('".$username."','".$email."','".$password."')");
            if ($query){
		 			$response = new usr();
		 			$response->success = 1;
		 			$response->message = "Register berhasil, silahkan login.";
		 			die(json_encode($response));

		 		} else {
		 			$response = new usr();
		 			$response->success = 0;
		 			$response->message = "Username sudah ada";
		 			die(json_encode($response));
		 		}
		 	} else {
		 		$response = new usr();
		 		$response->success = 0;
		 		$response->message = "Username sudah ada";
		 		die(json_encode($response));
		 	}
		 }
	 }

	 mysqli_close($conn);

?>	