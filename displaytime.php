<?php
    session_start();
    $from_time1 =date('Y-m-d H:i:s');
    $to_time1=$_SESSION["end_time"];

    $timefirst = strtotime($from_time1);
    $timesecond = strtotime($to_time1);

    $differenceinseconds=$timesecond-$timefirst;

    //echo gmdate("H:i:s", $differenceinseconds);

    $time_lapse=gmdate("H:i:s",$differenceinseconds); 
    if($time_lapse=='00:00:00')
    {  
    session_abort(
            $_SESSION['start_time'],
            $_SESSION['end_time'],
            $_SESSION['duration']
    );
        echo '<script> alert("Data Saved"); </script>';
        header('Location: ThankyouPage.html');
    }
    else
    {
    echo $time_lapse;
    }

?>
	