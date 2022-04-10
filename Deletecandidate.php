<?php
    
    include 'DBConnection.php';

    $conn = OpenCon();
    
    if(isset($_GET['deleteid'])) {
        $id=$_GET['deleteid'];

        $sql = "delete from `candidatedetails` where id=$id";
        $result = mysqli_query($conn,$sql);
        if($result) {
            echo "<script>
              window.location.href='./seecandidatedetails.php';
              </script>";
        }
    }else
            echo "<script>
            alert('Error!.');
            window.location.href='./seecandidatedetails.php';
            </script>";
?>