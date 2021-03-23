<?php
include 'koneksi.php';
    $username=$_POST['username'];
    $judul=$_POST['judul'];
    $isi=$_POST['isi'];
    
    
    $query="INSERT INTO `diary` (`id`,`username`, `judul`, "
            . "`isi`, `tanggal`) VALUES (NULL, '$username', "
            . "'$judul', '$isi', current_timestamp());";
    
    if ( mysqli_query($conn, $query)){
        echo 'Diari Berhasil Ditambahkan';
    }else{
        echo 'Silahkan Coba Lagi';
    }
    mysqli_close($conn);
?>
