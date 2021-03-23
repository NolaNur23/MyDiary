<?php
    include 'koneksi.php';
    $judul= $_POST["judul"];
    $tanggal= $_POST["tanggal"];
    $username= $_POST["username"];
    
    $stmt = $conn->prepare("SELECT judul,id,username,isi,tanggal FROM diary WHERE username='$username' AND judul LIKE %'$judul'%");

$stmt->execute();
$stmt->bind_result($judul,$id, $username, $isi, $tanggal);
$listdiary = array();
while ($stmt->fetch()) {
    $temp = array();
    $temp['judul']=$judul;
    $temp['id'] = $id;
    $temp['username'] = $username;
    $temp['isi'] = $isi;
    $temp['tanggal'] = $tanggal;

    array_push($listdiary, $temp);
}
echo json_encode($listdiary);
?>


