<div id ="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
              <?php
                include "config.php";

                $sql = "SELECT * FROM settings";

                $result = mysqli_query($conn, $sql) or die("Query Failed.");
                if(mysqli_num_rows($result) > 0){
                  while($row = mysqli_fetch_assoc($result)) {
              ?>
                <span><?php echo $row['footerdesc']; ?></span>
              <?php
                }
              }
              ?>
            </div>
        </div>
    </div>
</div>

<!--facebook page connection-->
<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v8.0" nonce="BhyuJcAK"></script>

</body>
</html>
