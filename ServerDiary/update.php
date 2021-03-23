<?php
include 'koneksi.php';
$id=$_POST['id'];
        $judul=$_POST['judul'];
        $isi=$_POST['isi'];
       
        $sqlquery="UPDATE `diary` SET `judul` = '$judul',`isi` = '$isi',"
        ."`tanggal` =  CURRENT_TIME() WHERE `diary`.`id` = '$id';";
        if(mysqli_query($conn,$sqlquery)){
        echo'Diary tersimpan';
        }else{
        echo'Gagal Menyimpan!!!';
        }
        mysqli_close($conn);
        ?>

