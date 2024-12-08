<?php
include 'admin/includes/config.php';
include 'change-password.php';
session_start();
error_reporting(0);
include('includes/config.php');
?>

<!doctype html>
<html lang="en">
<?php include 'include/header.php'; ?>

<head>
   <style>
      /* Style for the popup window */
      .popup {
         display: none;
         position: fixed;
         left: 0;
         top: 0;
         width: 100%;
         height: 100%;
         background-color: rgba(0, 0, 0, 0.5);
         z-index: 9999;
      }

      .popup-content {
         background-color: #fefefe;
         margin: 10% auto;
         padding: 20px;
         border: 1px solid #888;
         width: 400px;
          border-radius: 7px;
      }

      .close {
         float: right;
         font-size: 20px;
         font-weight: bold;
         cursor: pointer;
      }

      .close:hover {
         color: red;
      }
      input{
          width:100%;
      }
      @media only screen and (max-width: 600px) {
      /* Styles for screens with a maximum width of 600px */
      .popup-content {
         max-width: 100%;
      }
      .popup-content input {
         width: 100%;
      }
   }
   .container .col-lg-4 a{
      background-color:#000042;
      color:white;
      padding: 14px 25px;
      text-align:center;
      border-radius:8px;
   }
      
   </style>
</head>

<body>
   <div id="page" class="page">
      <!-- ***site header html start*** -->
      <?php include 'include/navbar.php'; ?>
      <main id="content" class="site-main">
         <!-- Inner Banner html start-->
         <section class="confirm-inner-page">
            <!-- ***Inner Banner html start form here*** -->
            <div class="inner-banner-wrap">
               <div class="inner-baner-container" style="background-image: url(assets/images/img7.jpg);">
                  <div class="container">
                     <div class="inner-banner-content">
                        <h1 class="page-title">Your Profile</h1>
                     </div>
                  </div>
               </div>
            </div>
            <!-- ***Inner Banner html end here*** -->
            <div class="confirmation-outer">
               <div class="container">
                  <div class="confirmation-inner">
                     <div class="row">
                        <?php
                        $id = $_SESSION['id'];
                        $sql = "SELECT * from users where id = $id";
                        $query = $dbh->prepare($sql);
                        $query->execute();
                        $results = $query->fetchAll(PDO::FETCH_OBJ);
                        $cnt = 1;
                        if ($query->rowCount() > 0) {
                           foreach ($results as $result) {
                              //   print_r($result);

                        ?>
                        <?php }
                        }
                        ?>
                        <div class="col-lg-8 right-sidebar">
                           <div class="confirmation-details">
                              <h3>YOUR DETAILS</h3>
                              <table class="table">
                                 <tbody>
                                    <tr>
                                       <td>Name</td>
                                       <td><?php echo htmlentities($result->name); ?></td>
                                    </tr>

                                    <tr>
                                       <td>Email:</td>
                                       <td><?php echo htmlentities($result->email); ?></td>
                                    </tr>
                                    <tr>
                                       <td>Password:</td>
                                       <td>********</td>
                                    </tr>
                                    <tr>
                                       <td>Status:</td>
                                       <td><?php echo htmlentities($result->status); ?></td>
                                    </tr>
                                    <tr>
                                       <td>Registration Date:</td>
                                       <td><?php echo htmlentities($result->RegDate); ?></td>
                                    </tr>


                                 </tbody>
                              </table>
                              <!-- The popup window -->
                              <div id="popup" class="popup">
                                 <div class="popup-content">
                                    <span class="close" onclick="closePopup()">&times;</span>
                                    <h4>Change Password</h4>

                                    <form method="POST" action="">
                                       
                                       <input type="password" id="currentPassword" name="currentPassword" placeholder="Current Password"  required><br><br>

                                      
                                       <input type="password" id="newPassword" name="newPassword" placeholder="New Password" required><br><br>

                                      
                                       <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Confirm Password"  required><br><br>

                                       <input type="submit" value="Submit" name="submit">
                                    </form>
                                 </div>
                              </div>
                              <a onclick="openPopup()"><button class="outline-btn outline-btn-blue" >
                                 Change Password</button></a><br><br>
                              <a href="logout.php"><button class="outline-btn outline-btn-blue" >
                                 Log Out</button></a>


                           </div>

                        </div>


                        <div class="col-lg-4">
                           <div class="price-table-summary">
                              <h4 class="bg-title">
                                 <a href="view-your-bookings.php">View Your Bookings</a></h4>
                           </div>
                           
                           
                        </div>
                     </div>
                  </div>

               </div>
           <br>  
         </section>
      </main>
      <?php include 'include/footer.php'; ?>
      <a id="backTotop" href="#" class="to-top-icon">
         <i class="fas fa-chevron-up"></i>
      </a>
      <!-- ***custom search field html*** -->
      <?php include 'include/custom_search.php'; ?>
      <!-- ***custom search field html*** -->
   </div>
   <!-- JavaScript -->
   <?php
   include 'include/javascript.php';
   ?>
   <script>
      function openPopup() {
         document.getElementById("popup").style.display = "block";
      }

      function closePopup() {
         document.getElementById("popup").style.display = "none";
      }
   </script>
</body>

</html>