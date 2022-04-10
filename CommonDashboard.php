
<!DOCTYPE html>
<html lang="en" dir="ltr">
 
<head>
    <meta charset="UTF-8">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link  rel="stylesheet" href="css/bootstrap.min.css"/>
    <link  rel="stylesheet" href="css/bootstrap-theme.min.css"/>    
    <link rel="stylesheet" href="./css/welcome2.css">
    <link rel="stylesheet" href="./css/Dashboard.css">
    <link  rel="stylesheet" href="css/font.css">
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js"  type="text/javascript"></script>
     <title> Dashboard | JWA ONLINE QUESTIONNAIRE </title>
</head>

<body>
  <div class="sidebar">
    <div class="logo-details">
      <img src="./images/white-logo.svg" width="90" height="90" alt="">
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
          <a href="./index.html">
            <i class='bx bx-home' ></i>
            <span class="links_name"> Home</span>
          </a>
        </li>
        <li>
          <a href="./Addcandidate.php">
            <i class='bx bx-user' ></i>
            <span class="links_name"> Add Candidates</span>
          </a>
        </li>
        <li>
          <a href="./seecandidatedetails.php">
            <i class='bx bx-list-ol' ></i>
            <span class="links_name"> See Candidates</span>
          </a>
        </li>
        <li>
          <a href="./welcome.php">
            <i class='bx bx-category-alt' ></i>
            <span class="links_name"> Quiz </span>      
          </a>
        </li>
        
        <li>
          <a href="dashboard.php?q=2">
            <i class='bx bx-line-chart' ></i>
            <span class="links_name"> Scores </span>
          </a>
        </li>
         
        <li class="log_out">  
          <a href="logout1.php?q=dashboard.php">
            <i class='bx bx-log-out' ></i>
            <span class="links_name"> Logout </span>
          </a>
        </li>        
      </ul>
  </div>

    <?php
    include_once 'database.php';
    session_start();
    if(!(isset($_SESSION['email'])))
    {
        header("location:admin.php");
    }
    else
    {
        $name = $_SESSION['name'];
        $email = $_SESSION['email'];
        include_once 'database.php';
    }
?>

<section class="home-section">

    <nav>  
        <div class="sidebar-button">
            <i class='bx bx-menu sidebarBtn'></i>
        <li class="navbutton" <?php if(@$_GET['q']==0) echo'class="active"'; ?>><a href="dashboard.php?q=0"> Dashboard <span class="sr-only">(current)</span></a></li> 
        </div>

        <div class="sidebar-button">
        <li class="navbutton" <?php if(@$_GET['q']==1) echo'class="active"'; ?>><a href="dashboard.php?q=1">User</a></li>
        </div>

        <div class="sidebar-button">
            <li class="navbutton" <?php if(@$_GET['q']==2) echo'class="active"'; ?>><a href="dashboard.php?q=2">Ranking</a></li>
        </div>
    </nav>

    <div class="home-content">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <?php if(@$_GET['q']==0)
                {
                    echo ' <div class="overview-boxes">
                   
                    <a href="./Addcandidate.php"> 
                      <div class="box">
                        <div class="left-side">
                          <div class="box-topic"> Add Candidates </div>
                         </a>                        
                        </div>   
                      </div>
                      <a href="./seecandidatedetails.php"> 
                      <div class="box">
                        <div class="left-side">
                          <div class="box-topic"> See Candidates </div>
                         </a>                        
                        </div>   
                      </div>
                      <a href="./dashboard.php?q=2.php"> 
                      <div class="box">
                        <div class="left-side">
                          <div class="box-topic"> See Scores </div>
                         </a>                        
                        </div>   
                      </div>
                      <a href="welcome.php?q=1"> 
                      <div class="box">
                        <div class="left-side">
                          <div class="box-topic"> Quiz </div>
                         </a>                        
                        </div>   
                      </div>                   
                    </div>
                    </div>';
                }
                ?>    
                
            </section>
</body>
</html>

      
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

</body>
</html>

