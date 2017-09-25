    <!-- start main -->
    <div class="container-fluid bg-main">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <main class="marg-top main">
                        <!-- start slider -->
                        <div class="owl-carousel owl-theme">
						<?php foreach ($banners as $banner) { ?>
                            <div><a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>"></a></div>
						<?php } ?>
                        </div>
                        <!-- end slider -->
                    </main>
                </div>
            </div>
        </div>
    </div>
    <!-- end main -->

<script>
    $(document).ready(function(){
        $('.owl-carousel').owlCarousel({
            items:1,
            navigation:true,
            loop:true,
            navigationText: ["", ""]
        })
    });
</script>