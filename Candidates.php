<!DOCTYPE html>
<html lang="en" dir="ltr">
 
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="./CSS/Candidates.css">

    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title> Candidates </title>

     <style>
         
        th {     
        background-color: #393E46;
        color: white;
        padding: 15px;
        text-align: center;
        border:1px solid black;
        border-collapse: collapse;
        font-size: 1.3rem;
        }
        
        tr:hover {
            background-color: white;
        }
        
        td {
        background-color: #222831;        
        padding: 15px;
        text-align: center;
        border:1px solid black;
        border-collapse: collapse;
        font-size: 1.2rem;
        }

        .table {
        width:100%;
        border:1px solid black;
        border-collapse: collapse;
        background-color: #1B1717;
        color:white;
        }

     </style>
</head>

<body>
  <div class="sidebar">
    <div class="logo-details">
      <img src="./images/JMW-White-logo.png" width="70" height="70" alt="">
      <span class="logo_name"> JWA </span>
    </div>
      <ul class="nav-links">
        <li>
          <a href="#" class="active">
            <i class='bx bx-grid-alt' ></i>
            <span class="links_name">Dashboard</span>
          </a>
        </li>
        <li>
          <a href="./Home.html">
            <i class='bx bx-home' ></i>
            <span class="links_name"> Home</span>
          </a>
        </li>
        <li>
          <a href="./Candidates.php">
            <i class='bx bx-user' ></i>
            <span class="links_name"> Candidates</span>
          </a>
        </li>
        <li>
          <a href="./game.html">
            <i class='bx bx-book-alt' ></i>
            <span class="links_name"> Quiz </span>
          </a>
        </li>
        <li>
          <a href="#">
            <i class='bx bx-coin-stack' ></i>
            <span class="links_name">*****</span>
          </a>
        </li>
        <li>
          <a href="#">
            <i class='bx bx-book-alt' ></i>
            <span class="links_name"> ***** </span>
          </a>
        </li>
        
        <li>
          <a href="#">
            <i class='bx bx-cog' ></i>
            <span class="links_name">Setting</span>
          </a>
        </li>
        <li class="log_out">
            <a href="#">
              <i class='bx bx-log-out'></i>
              <span class="links_name">Log out</span>
            </a>
          </li>
      </ul>
  </div>

  <section class="home-section">
    <nav>
      <div class="sidebar-button">
        <i class='bx bx-menu sidebarBtn'></i>
         <span class="dashboard"> Candidates </span>
      </div>
   
      <div class="profile-details">
        <i class='bx bx-user' ></i>
        <span class="admin_name"> Admin </span>

      </div>
    </nav>

    <div class="home-content">
        <div class="overview-boxes">
    
    <?php
    
    include 'DBConnection.php';

    $conn = OpenCon();

    $query = "SELECT * FROM candidates";
    $query_run = mysqli_query($conn, $query);
    
    ?>

        <table class="table">
            <tr>
                <th> ID </th>
                <th> Name </th>
                <th> Email </th>
            </tr>
        
        <?php
            if($query_run)
        {
        foreach($query_run as $row)
        {
          ?>
            <tr>
                <td> <?php echo $row['id']; ?> </td>
                <td> <?php echo $row['userName']; ?> </td>
                <td> <?php echo $row['email']; ?> </td>
                
            </tr>      
        <?php
        }
      }
          else
          {
              echo "<script>
              alert('No Record Found.');
              window.location.href='Candidates.php';
              </script>";
          }

          CloseCon($conn);

          ?>
          
        </table>
        </div>
      </div>

      
  <script>
   let sidebar = document.querySelector(".sidebar");
   let sidebarBtn = document.querySelector(".sidebarBtn");
   sidebarBtn.onclick = function() {
   sidebar.classList.toggle("active");
   if(sidebar.classList.contains("active")){
   sidebarBtn.classList.replace("bx-menu" ,"bx-menu-alt-right");
}else
  sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
}
 </script>

</body>
</html>

