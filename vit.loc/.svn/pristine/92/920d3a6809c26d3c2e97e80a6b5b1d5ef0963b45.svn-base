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
			<li><a href="#">Витражи в окна</a></li>
			<li><a href="#">Витражи в двери</a></li>
			<li><a href="#">Витражи в перегородки</a></li>
			<li><a href="#">Витражи в бассейны</a></li>
			<li><a href="#">Витражи на потолок</a></li>
			<li><a href="#">Лампы Тиффани</a></li>
		</ul>
	</div>

	<div class="tech-list">
		<h4>Витражные техники</h4>
		<ul>
			<li><a href="#">Витражи Тиффани</a></li>
			<li><a href="#">Заливные витражи</a></li>
			<li><a href="#">Английская технология</a></li>
			<li><a href="#">Арт-матирование</a></li>
			<li><a href="#">Фацетный витраж</a></li>
		</ul>
	</div>
</div>