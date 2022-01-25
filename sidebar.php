<div id="sidebar" class="col-md-4">
    <!-- search box -->
    <div class="search-box-container">
        <h4>Search</h4>
        <form class="search-post" action="search.php" method ="GET">
            <div class="input-group">
                <input type="text" name="search" class="form-control" placeholder="Search .....">
                <span class="input-group-btn">
                    <button type="submit" class="btn btn-danger">Search</button>
                </span>
            </div>
        </form>
    </div>
    <!-- /search box -->
    <!-- recent posts box -->
    <div class="recent-post-container">
        <h4>Recent Posts</h4>
        <?php
        include "config.php";

        /* Calculate Offset Code */
        $limit = 3;

        $sql = "SELECT post.post_id, post.title, post.post_date,
        category.category_name,post.category,post.post_img FROM post
        LEFT JOIN category ON post.category = category.category_id
        ORDER BY post.post_id DESC LIMIT {$limit}";

        $result = mysqli_query($conn, $sql) or die("Query Failed. : Recent Post");
        if(mysqli_num_rows($result) > 0){
          while($row = mysqli_fetch_assoc($result)) {
      ?>
        <div class="recent-post">
            <a class="post-img" href="single.php?id=<?php echo $row['post_id']; ?>">
                <img src="admin/upload/<?php echo $row['post_img']; ?>" alt=""/>
            </a>
            <div class="post-content">
                <h5><a href="single.php?id=<?php echo $row['post_id']; ?>"><?php echo $row['title']; ?></a></h5>
                <span>
                    <i class="fa fa-tags" aria-hidden="true"></i>
                    <a href='category.php?cid=<?php echo $row['category']; ?>'><?php echo $row['category_name']; ?></a>
                </span>
                <span>
                    <i class="fa fa-calendar" aria-hidden="true"></i>
                    <?php echo $row['post_date']; ?>
                </span>
                <a class="read-more" href="single.php?id=<?php echo $row['post_id']; ?>">read more</a>
            </div>
        </div>
    <?php
      }
    }
    ?>
    </div>
    <br>
    <!-- /recent posts box -->
</div>
<!-- facebook page-->
<div class="fb-page" data-href="https://www.facebook.com/biharkranti1905/" data-tabs="" data-width="373" data-height="" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/biharkranti1905/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/biharkranti1905/">Bihar Kranti</a></blockquote>
</div>
<!-- Youtube Channel-->
<div class="col-md-3 col-sm-12 wow fadeInRight delay-02s">
            <div class="vdo">
                            <div><div class="region region-block-last">
  <div id="block-block-146" class="block block-block" role="contentinfo"> 
  <div class="content">
    <div>
    <iframe allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen="" frameborder="0" height="210" width="358" src="https://www.youtube.com/embed/38Qvimt_FAk"></iframe></div>

  </div>
  
</div> <!-- /.block -->
</div>
 <!-- /.region -->
        </div>
    </div>
</div>

