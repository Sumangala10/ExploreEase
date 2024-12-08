<?php
session_start();
error_reporting(0);
include('include/config.php');
?>

<!doctype html>
<html lang="en">
<?php include 'include/header.php'; ?>

<body class="home">

   <div id="page" class="page">
      <!-- site header html start  -->
      <?php include 'include/navbar.php'; ?>
      <!-- site header html end  -->
      <main id="content" class="site-main">
         <!-- ***home banner html start form here*** -->
         <section class="home-banner-section home-banner-slider">
            <div class="home-banner d-flex flex-wrap align-items-center" style="background-image: url(assets/images/Kapu.jpg);">
               <div class="overlay"></div>
               <div class="container">
                  <div class="banner-content text-center">
                     <div class="row">
                        <div class="col-lg-8 offset-lg-2">
                           <h2 class="banner-title">JOURNEY TO EXPLORE KARNATAKA</h2>
                           <p>Traveling allows you to experience different parts of the places and immerse yourself in new cultures. You can try new foods, learn new customs, and see things you've never seen before.</p>
                           <div class="banner-btn">
                              <a href="./package.php" class="round-btn">EXPLORE MORE</a>
                              <a href="./package.php" class="outline-btn outline-btn-white">BOOK NOW</a>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </section>
         <!-- ***home banner html end here*** -->
         <!-- ***Home package html start from here*** -->
         <section class="home-package">
            <div class="container">
               <div class="row">
                  <div class="col-lg-8 offset-lg-2 text-sm-center">
                     <div class="section-heading">
                        <h5 class="sub-title">POPULAR PACKAGES</h5>
                        <h2 class="section-title">CHECKOUT OUR PACKAGES</h2>
                        <p>you're looking for, such as the destination, travel dates, budget, and any specific preferences you have, I can try to provide you with some general advice or recommendations.</p>
                     </div>
                  </div>
               </div>
               <div class="package-section">
                  <?php $sql = "SELECT * from tbltourpackages order by rand() limit 3";
                  $query = $dbh->prepare($sql);
                  $query->execute();
                  $results = $query->fetchAll(PDO::FETCH_OBJ);
                  $cnt = 1;
                  if ($query->rowCount() > 0) {
                     foreach ($results as $result) {
                        //   print_r($result); 
                  ?>
                        <article class="package-item">
                           <figure class="package-image" style="background-image: url(admin/packageimages/<?php echo htmlentities($result->PackageImage); ?>);"></figure>
                           <div class="package-content">
                              <h3>
                                 <a href="package-detail.php?pkgid=<?php echo htmlentities($result->PackageId); ?>">
                                    <?php echo htmlentities($result->PackageName); ?>
                                 </a>
                              </h3>
                              <p> <?php echo substr($result->PackageDetails, 0, 250); ?></p>
                           </div>
                           <div class="package-price">
                              <div class="review-area">
                                 <span class="review-text">(25 reviews)</span>
                                 <div class="rating-start-wrap d-inline-block">
                                    <div class="rating-start">
                                       <span style="width: 80%"></span>
                                    </div>
                                 </div>
                              </div>
                              <h6 class="price-list">
                                 <span>₹<?php echo htmlentities($result->PackagePrice); ?></span>
                                 / per person
                              </h6>
                              <a href="package-detail.php?pkgid=<?php echo htmlentities($result->PackageId); ?>" class="outline-btn outline-btn-white">Details</a>
                           </div>
                        </article>
                  <?php }
                  } ?>
                  <br>
                  <div class="section-btn-wrap text-center">
                     <a href="package.php" class="round-btn">VIEW ALL PACKAGES</a>
                  </div>
               </div>
            </div>
         </section>
         <!-- ***Home package html end here*** -->
         <!-- ***Home callback html start from here*** -->
         <section class="home-callback bg-img-fullcallback" style="background-image: url(assets/images/img7.jpg);">
            <div class="overlay"></div>
            <div class="container">
               <div class="row">
                  <div class="col-lg-8 offset-lg-2 text-center">
                     <div class="callback-content">
                        <h2 class="section-title">ARE YOU READY TO TRAVEL? REMEMBER US !!</h2>
                        <p>Traveling allows you to experience different parts of the world and immerse yourself in new cultures. You can try new foods, learn new customs, and see things you've never seen before.</p>
                        <div class="callback-btn">
                           <a href="package.php" class="round-btn">View Packages</a>
                           <a href="about.php" class="outline-btn outline-btn-white">Learn More</a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </section>
         
         <!-- ***Home offer html start from here*** -->
         <section class="home-offer">
            <div class="container">
               <div class="row">
                  <div class="col-lg-8 offset-lg-2 text-sm-center">
                     <div class="section-heading">
                        <h5 class="sub-title">OFFER & DISCOUNT</h5>
                        <h2 class="section-title">OUR SPECIAL PACKAGES</h2>
                        <p>Traveling allows you to experience different parts of the world and immerse yourself in new cultures. You can try new foods, learn new customs, and see things you've never seen before.</p>
                     </div>
                  </div>
               </div>
               <div class="offer-section">
                  <div class="row gx-5">
                     <?php $sql = "SELECT * from packageoffer order by rand() limit 2";
                     $query = $dbh->prepare($sql);
                     $query->execute();
                     $results = $query->fetchAll(PDO::FETCH_OBJ);
                     $cnt = 1;
                     if ($query->rowCount() > 0) {
                        foreach ($results as $result) {
                           //   print_r($result); 
                     ?>
                           <div class="col-md-6">
                              <article class="offer-item" style="background-image: url(admin/offerimages/<?php echo htmlentities($result->OfferImage); ?>);">
                                 <div class="offer-badge">
                                    UPTO <span><?php echo htmlentities($result->PercentageOff); ?></span> off
                                 </div>
                                 <div class="offer-content">
                                    <div class="package-meta">
                                       <ul>
                                          <li>
                                             <i class="fas fa-map-marker-alt"></i>
                                             <?php echo htmlentities($result->OfferLocation); ?>
                                          </li>
                                       </ul>
                                    </div>
                                    <h3>
                                       <a href="package-offer-details.php?pkgid=<?php echo htmlentities($result->OfferId); ?>">
                                          <?php echo htmlentities($result->OfferName); ?></a>
                                    </h3>
                                    <p>
                                       <?php echo substr($result->OfferDetails, 0, 50); ?>
                                    </p>
                                    <div class="price-list">
                                       Price:
                                       <del>₹<?php echo htmlentities($result->ActualPrice); ?></del>
                                       <ins>₹<?php echo htmlentities($result->OfferPrice); ?></ins>
                                    </div>
                                    <a href="package-offer-details.php?pkgid=<?php echo htmlentities($result->OfferId); ?>" class="round-btn">Details</a>
                                 </div>
                              </article>
                           </div>
                     <?php }
                     } ?>
                  </div>
                  <div class="section-btn-wrap text-center">
                     <a href="package-offer.php" class="round-btn">VIEW ALL PACKAGES</a>
                  </div>
               </div>
            </div>
         </section>
         <!-- ***Home offer html end here*** -->

         <!-- ***Home client html start from here*** -->
         <section class="home-client client-section" style="background-image: url(assets/images/Kapu.jpg);">
            <div class="container">
               <div class="row align-items-center">
                  <div class="col-lg-6">
                     <div class="client-content">
                        <h5 class="sub-title">DISCOUNT OFFER</h5>
                        <?php if ($_SESSION['email']) { ?>
                        <h2 class="section-title">GET SPECIAL DISCOUNT !</h2>
                        <?php } else { ?>
                           <h2 class="section-title">GET SPECIAL DISCOUNT ON SIGN UP !</h2>
                           <?php } ?>
                        <p>Traveling allows you to experience different parts of the world and immerse yourself in new cultures. You can try new foods, learn new customs, and see things you've never seen before.</p>
                        <!-- <a href="./booking.php" class="round-btn">Book Now</a> -->
                        <?php if ($_SESSION['email']) { ?>
                                          <a href="package-offer.php" class="round-btn">Get Offers</a>
                                       <?php } else { ?>
                                          <a href="sign-in.php" class="round-btn">Book now</a>
                                       <?php } ?>
                     </div>
                  </div>
                  <div class="col-lg-6">
                      
                  </div>
               </div>
            </div>
            <div class="overlay"></div>
         </section>
         
         <!-- ***Home callback html start from here*** -->
         <section class="home-callback bg-color-callback primary-bg">
            <div class="container">
               <div class="row align-items-center">
                  <div class="col-md-8">
                     <h5 class="sub-title">CALL TO ACTION</h5>
                     <h2 class="section-title">READY FOR UNFORGATABLE TRAVEL. REMEMBER US!</h2>
                     <p>Traveling allows you to experience different parts of the world and immerse yourself in new cultures. You can try new foods.</p>
                  </div>
                  <div class="col-md-4 text-md-end">
                     <a href="contact.php" class="outline-btn outline-btn-white">Contact Us !</a>
                  </div>
               </div>
            </div>
         </section>
         <!-- ***Home callback html end here*** -->
      </main>
      <!-- ***site footer html start form here*** -->
      <?php include 'include/footer.php'; ?>
      <a id="backTotop" href="#" class="to-top-icon">
         <i class="fas fa-chevron-up"></i>
      </a>
      <!-- ***custom search field html*** -->
      <?php include 'include/custom_search.php'; ?>

   </div>
   <?php
   include 'include/javascript.php';
   ?>
</body>

</html>