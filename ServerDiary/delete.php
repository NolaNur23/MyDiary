<?php
    include 'koneksi.php';
    $id=$_POST['id'];
    $sqlquery="DELETE FROM `diary` WHERE `diary`.`id` = '$id';";
            if(mysqli_query($conn,$sqlquery)){
                    echo'Diary Berhasil Dihapus';
              }else{
                    echo'Silahkan Coba Lagi';
                    
              }
            mysqli_close($conn);
            ?>
