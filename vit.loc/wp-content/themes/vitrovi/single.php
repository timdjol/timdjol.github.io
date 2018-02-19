<?php get_header(); ?>
<?php get_template_part('partials/head1'); ?>

<div class="container main">
    <div class="row">
        <div class="col-md-9 single-vit">
            <div class="breadcrumbs">
                <a href="#">Витражи</a> > Витражи > Витраж в окна Номер
            </div>
            <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
            <h2>Витраж в окна, <?php the_title(); ?></h2>
            <div class="row">
                <div class="col-sm-6">
                    <div class="main-img">
                        <?php the_post_thumbnail(); ?>
                    </div>
                    <div class="row">
                        <div class="small-img">
                            <div class="col-sm-4">
                                <?php the_post_thumbnail(); ?>
                            </div>
                        </div>
                    </div>
                </div><!--col-sm-6-->

                <div class="col-sm-6 details">
                    <p>Под заказ, <?php the_field('post-count-day'); ?> дней</p>
                    <div class="price">от <?php the_field('post-price'); ?> сом</div>
                    <div class="condition"><a href="#">Условия заказа и оплаты</a></div>
                    <div class="button-case">
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="call">
                                        <a href="#">
                                            <img src="<?php echo get_stylesheet_directory_uri(); ?>/img/technolgy/call.png" alt="Alt">
                                            <p>+996 700 09 89 95</p>
                                            <p>+996 588 09 89 95</p>
                                            <p>Перезвонить мне</p>
                                        </a>
                                    </div>
                                </div>

                                <div class="col-sm-4">
                                    <div class="write">
                                        <a href="#">
                                            <img src="<?php echo get_stylesheet_directory_uri(); ?>/img/technolgy/write.png" alt="Alt">
                                            <p>Написать</p>
                                        </a>
                                    </div>
                                </div>

                                <div class="col-sm-4">
                                    <div class="calc">
                                        <a href="#">
                                            <img src="img/technolgy/calc.png" alt="Alt">
                                            <p>Рассчитать</p>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div><!--button-case-->
                </div>
            </div><!--row-->

            <div class="row">
                <div class="col-md-12 description">
                    <?php the_content(); ?>
                    <p>Звоните нам
                    <br>Если у Вас возникли вопросы или Вы хотите заказать создание витража, пожалуйста, обращайтесь по телефону +996 700 09 89 95 +996 558 09 89 95</p>
                </div>
            </div>
            <?php endwhile; ?>
                <!-- post navigation -->
            <?php else: ?>
                <!-- no posts found -->
            <?php endif; ?>
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