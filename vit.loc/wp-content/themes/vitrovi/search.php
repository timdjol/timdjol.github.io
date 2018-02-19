<?php get_header(); ?>
<div class="container search">
    <div class="row">
        <div class="col-md-12">
			 <h2>Поиск по: "<?php echo $_GET['s'];?>"</h2>
			<?php
			$args = array_merge( $wp_query->query, array( 'post_type' => "post") );
			query_posts($args); ?>
			<?php if ( have_posts() ) : ?>
				<?php while (have_posts()) : the_post(); ?>
					<a class="title" href="<?php the_permalink();?>"><?php the_title(); ?></a>
					<div style="padding-bottom:20px"<?php the_content(); ?>
				<?php endwhile; else: ?>
				<p>Поиск не дал результатов.</p>
			<?php endif;?>
		</div>
	</div>
</div>
 <?php get_footer(); ?>