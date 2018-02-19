<?php get_header(); ?>
    <div class="container-fluid page">
        <div class="row">
            <div class="container">
                <div class="row">
                     <div class="col-md-12">
                        <?php kama_breadcrumbs(); ?>
                        <?php if (have_posts()) :  while (have_posts()) : the_post(); ?>
                            <h2><?php the_title();?></h2>
                            <?php the_post_thumbnail(); ?>
                            <?php the_content(); ?>
                         <?php endwhile; ?>
                        <?php endif; ?>
                    </div>
                       
                </div>
            </div>
        </div>
    </div>
<?php get_footer(); ?>