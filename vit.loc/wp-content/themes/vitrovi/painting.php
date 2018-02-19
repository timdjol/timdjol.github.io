<?php
/***
 *Template name: Painting
 */
?>

<?php get_header(); ?>

<?php get_template_part('partials/head2'); ?>

<div class="container">
	<div class="row">
		<div class="col-md-9 main-lov">
			<div class="row">
				<div class="col-md-12">
					<?php if (have_posts()) :  while (have_posts()) : the_post(); ?>
                            
                            <h3><?php the_content(); ?></h3>
                         <?php endwhile; ?>
                        <?php endif; ?>
				</div>
			</div>

			<div class="row items">
				
					<?php
					$parent_id = 16;


					# получаем дочерние рубрики
					$sub_cats = get_categories( array(
						'child_of' => $parent_id,
						'hide_empty' => 0
					) );
					if( $sub_cats ){
						foreach( $sub_cats as $cat ){  ?>
							<div class="col-md-4 col-sm-4">
								<a href="#">
									<img src="<?php echo z_taxonomy_image_url(6); ?>" alt="<?php echo $cat->name;?>">
									<p><?php echo $cat->name; ?></p>
								</a>
							</div>
							
							<?php
							wp_reset_postdata(); // сбрасываем глобальную переменную пост

						}
					}?>
				
				
			</div>

			<div class="row order df">
				<div class="col-sm-4">
					<p><?php the_field('paint_title');?></p>
					<a href="#" class="button">Заказать</a>
				</div>
				
				<div class="col-sm-8">
					<ul>
						
						<?php
		                // check if the repeater field has rows of data
		                if( have_rows('paint') ): 

		                    // loop through the rows of data
		                    while ( have_rows('paint') ) : the_row(); ?>

			                
								<li class="gradient"><span class="overlay"></span><a href="#"><img src="<?php the_sub_field('image'); ?>" alt="Alt"></a></li>
								
							

		                   <?php endwhile; ?>
		                <?php endif; ?>
						
						
					</ul>
				</div>
			</div>

			<div class="row portret">
				<div class="col-md-12">
					<h2><?php echo get_cat_name(28);?></h2>
					<p><?php echo category_description(28); ?></p>
					<div class="row">
						<?php
						// параметры по умолчанию
						$args = array(
							'numberposts' => 6,
							'category'    => 28,
							'orderby'     => 'date',
							'order'       => 'DESC',
							'include'     => array(),
							'exclude'     => array(),
							'meta_key'    => '',
							'meta_value'  =>'',
							'post_type'   => 'post',
							'suppress_filters' => true, // подавление работы фильтров изменения SQL запроса
						);

						$posts = get_posts( $args );

						foreach($posts as $post){ setup_postdata($post); ?>
						    <div class="col-sm-4 item">
								<a href="<?php echo get_post_permalink();?>">
									<?php the_post_thumbnail();?>
									<p><?php the_title();?></p>
								</a>
							</div>
						<?php }

						wp_reset_postdata(); // сброс?>

					</div>

					<div class="row">
						<div class="col-sm-9">
							<div class="bg-item">
								<div class="row">
									<div class="col-sm-8 col-xs-12 cont">
										<p><?php the_field('order_title');?></p>
										<a href="#" class="button">Заказать</a>
									</div>
									<div class="col-sm-4 flr">
										<img src="<?php the_field('order-simple-image');?>" alt="Alt">
									</div>
								</div>
								
							</div>
							<div class="price">
								<p>Цена от <span><?php the_field('order-price');?> сом</span></p>
								<img src="<?php echo get_stylesheet_directory_uri(); ?>/img/lovart/arrow.png" alt="Alt">
							</div>
						</div>
						<div class="col-sm-3">
							<img src="<?php the_field('order-draw-image');?>" alt="Alt">
						</div>
					</div>
				</div>

			</div>
		</div>

		<!--sidebar-->
		<div class="col-md-3">
			<div class="sidebar">
				<h1><?php the_title();?></h1>
				<?php get_template_part('partials/sidebar'); ?>
			</div>
		</div>
	</div>
</div>

<?php get_footer(); ?>