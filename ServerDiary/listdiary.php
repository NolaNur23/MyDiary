<?php
    include 'koneksi.php';
    $username = $_POST['username'];
    
    $stmt = $conn->prepare("SELECT judul,id,username,isi,tanggal FROM diary WHERE username='$username' ORDER BY tanggal DESC");
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


