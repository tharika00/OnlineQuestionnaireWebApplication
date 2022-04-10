<!DOCTYPE html>
<html lang="en">
  <head> 
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Rules </title>

    <link rel="stylesheet" href="./CSS/Style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

  </head>

  <body>  
  <section class="home-section">

    <nav>

        <div class="logo">
            <img src="./images/white-logo.svg" alt="logo">
        </div>
        
        <ul class="nav-links">

        <div class="menu">

        <li><a href="/">Home</a></li>
        <li><a href="./Rules.php"> Rules </a></li>
        
        
        </div>
        </ul>

        <div class="login"> 
            <a href="./admin.php"> Login </a> 
        </div>

    </nav>

<div class="home-content">

            <p class="appitudetest"> Online Aptitude Test </p> 

                    <div class="tabnlogo">
                        <img src="./images/TabImage.png" alt="" width="600" height="400" class="tabimage"> 
                        <img src="./images/JMW-White-logo.png" alt="Welcome" width="220" height="220" class="jmwlogo">
                     

        <div class="Instructions-card">
                
                <header class="card-container">
                    <h3>Instructions</h3>
                </header>
            
                <div class="card-container p-3">
                    <p>Exam contains 10 questions </p>
                    <p>Time Allot 10 Minutes </p>
                    <p>Each Question Carry 1 mark. No Negative Mark</p>
                    <p>Do not Refresh the Page</p>           
                </div>

                <footer class="card-container">
                    <h5>All the Best</h5>
                </footer>

                <button type="button" id="rulesnextbutton"> Next </button>
        </div>
        </div>
</div>
        </div>
</div>
            
        <script type="text/javascript">
            document.getElementById("rulesnextbutton").onclick = function () {
            location.href = "./welcome.php";
            };
</script>

        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    </body>
 </html>

