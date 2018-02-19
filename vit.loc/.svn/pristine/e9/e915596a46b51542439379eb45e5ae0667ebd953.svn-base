<?php get_header(); ?>
<?php get_template_part('partials/head1'); ?>

<div class="container main">
    <div class="row">
        <div class="col-md-9">
            <div class="breadcrumbs">
                <a href="#">Витражи</a> > Витражи в двери
            </div>
            <div class="row categ">
                <?php if (have_posts()) :  while (have_posts()) : the_post(); ?>
                    
                    <div class="col-sm-4 item">
                    <h4>Код: <?php the_title();?></h4>
                    <a href="<?php echo get_post_permalink();?>"><?php the_post_thumbnail(); ?></a>
                    <div class="zakaz">
                        под заказ <?php the_field('post-count-day'); ?> дней
                    </div>
                    
                    <p><?php the_category();?></p>
                    <div class="price">
                        от <?php the_field('post-price'); ?> сом/м2
                    </div>
                    <div class="button-case">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="write">
                                    <a href="#">
                                        <img src="<?php echo get_stylesheet_directory_uri(); ?>/img/vitraj/write.png" alt="Alt">
                                        <p>Написать</p>
                                    </a>
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <div class="call">
                                    <a href="#">
                                        <img src="<?php echo get_stylesheet_directory_uri(); ?>/img/vitraj/call.png" alt="Alt">
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--item-->
                 <?php endwhile; ?>
                <?php endif; ?>
                
            </div>
        </div>

        <!--sidebar-->
        <div class="col-md-3">
            <div class="sidebar">
                <?php get_template_part('partials/sidebar'); ?>
            </div>
        </div>
    </div>
</div>


<?php get_footer(); ?>