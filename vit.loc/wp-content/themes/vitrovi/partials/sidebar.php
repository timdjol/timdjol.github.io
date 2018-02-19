<?php
/**
 * The template part for displaying an Author biography
 *
 * @package WordPress
 * @subpackage Vitrovi
 * @since Vitrovi 1.0
 */
?>
<div class="sidebar">
	<h2>Витрина</h2>
	<div class="cat-items">
		<?php
		// параметры по умолчанию
		$args = array(
			'numberposts' => 7,
			'category'    => 23,
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

		foreach($posts as $post){ setup_postdata($post);?>
		    <div class="item">
				<h4><?php echo get_cat_name(23);?></h4>
				<?php the_post_thumbnail();?>
				<p><?php the_title();?></p>
				<div class="price">Цена: <?php the_field('vitrina_price');?> сом</div>
				<div class="is"><?php the_field('available');?></div>
			</div>
		<?php }

		wp_reset_postdata(); // сброс
		?>
	</div>

	<div class="vit-list">
		<h4>Каталог витражей</h4>
		<ul>
		<?php
			$parent_id = 2;
			# получаем дочерние рубрики
			$sub_cats = get_categories( array(
				'child_of' => $parent_id,
				'hide_empty' => 0
			) );
			if( $sub_cats ){
				foreach( $sub_cats as $cat ){

					echo '<li><a href="' . get_category_link( $cat->term_id ) .'">' . $cat->name . '</a></li>';

					wp_reset_postdata(); // сбрасываем глобальную переменную пост

				}
			}?>
			</ul>
		
	</div>

	<div class="tech-list">
		<h4>Витражные техники</h4>
		<ul>
		<?php
			$parent_id = 24;
			# получаем дочерние рубрики
			$sub_cats = get_categories( array(
				'child_of' => $parent_id,
				'hide_empty' => 0
			) );
			if( $sub_cats ){
				foreach( $sub_cats as $cat ){

					echo '<li><a href="' . get_category_link( $cat->term_id ) .'">' . $cat->name . '</a></li>';

					wp_reset_postdata(); // сбрасываем глобальную переменную пост

				}
			}?>
			</ul>
	</div>
</div>