<?php
  //user login and homepage

  require 'core/session.php';
  require 'core/config.php';
    require 'core/redirect.php';

  $message="";

  if(empty($_POST)===false){
  $username = mysql_real_escape_string($_POST['username']);
  $password = mysql_real_escape_string($_POST['password']);
    if(empty($username) || empty($password)){
          header('Location:admin-login.php');
    }else{
        $query1=mysql_query("SELECT * FROM `admin` WHERE id AND username='$username' and password='$password'") or die(mysql_error());
        if(mysql_num_rows($query1)>0){
            $_SESSION['username'] = $_REQUEST['username'];
            header('Location:admin/admin-profile.php');
        }else{
          $message="Admin username and password is incorrect";
        }
      }
  }
 ?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>CPMS</title>
    <link rel="shortcut icon" href="files/img/ico.ico">
    <link rel="stylesheet" href="files/css/bootstrap.css">
    <link rel="stylesheet" href="files/css/custom.css">
  </head>
  <body>
  <div class="animated fadeIn">

    <div class="cover admin text-center">

    <svg fill="#fff" height="148" viewBox="0 0 24 24" width="148" xmlns="http://www.w3.org/2000/svg" class="shad">
          <path d="M0 0h24v24H0z" fill="none"/>
          <path d="M5 16c0 3.87 3.13 7 7 7s7-3.13 7-7v-4H5v4zM16.12 4.37l2.1-2.1-.82-.83-2.3 2.31C14.16 3.28 13.12 3 12 3s-2.16.28-3.09.75L6.6 1.44l-.82.83 2.1 2.1C6.14 5.64 5 7.68 5 10v1h14v-1c0-2.32-1.14-4.36-2.88-5.63zM9 9c-.55 0-1-.45-1-1s.45-1 1-1 1 .45 1 1-.45 1-1 1zm6 0c-.55 0-1-.45-1-1s.45-1 1-1 1 .45 1 1-.45 1-1 1z"/>
      </svg>

      <br>
      <h2>ADMIN LOGIN</h2>
    </div>


      <div class="padd">

        <div class="col-lg-12 text-center">
              <form class="" method="post" autocomplete="off">
                <label for="username"></label>
                <input type="text" name="username" placeholder="Admin username" id="email">
                <br><br>
                <label for="password"></label>
                <input type="password" name="password" placeholder="Password" id="pass">
                <br><br>
                <button type="submit" class="log">Login</button>
                <br><br>
                <span class="red"><?php echo $message; ?></span>
              </form>
              <br>
        </div>
      </div>
      <div class="links">
        <a href="dummy-login.php">Engineer </a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="index.php">User </a>
      </div>
  </div>
      <?php
      include 'footer.php';
      include 'core/jsscript.php';
      ?>

  </body>
</html>
