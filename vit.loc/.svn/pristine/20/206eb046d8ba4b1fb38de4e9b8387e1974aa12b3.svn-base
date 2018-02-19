<!--footer-->
<footer class="main-footer">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h2>Услуги</h2>
			</div>
		</div>
		<div class="row">
			<div class="line"></div>
		</div>
		<div class="row foot-links">
			<div class="col-md-3 col-sm-6">
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

			<div class="col-md-3 col-sm-6">
				<ul>
					<?php
					$parent_id = 3;
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

			<div class="col-md-3 col-sm-6">
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
			
			<div class="col-md-3 col-sm-6">
				<div class="contacts">
					
					<div class="row">
						<div class="col-md-9">
							<h2>Контакты</h2>
							<p><?php echo get_theme_mod('number1', '');?></p>
							<p><?php echo get_theme_mod('number2', '');?></p>
						</div>
						<div class="col-md-3">
							<ul>
								<li><a href="<?php echo get_theme_mod('insta', '');?>" target="_blank"><img src="<?php echo get_stylesheet_directory_uri(); ?>/img/insta.png" alt="Alt"></a></li>
								<li><a href="<?php echo get_theme_mod('email', '');?>" target="_blank"><img src="<?php echo get_stylesheet_directory_uri(); ?>/img/email.png" alt="Alt"></a></li>
								<li><a href="<?php echo get_theme_mod('whatsapp', '');?>" target="_blank"><img src="<?php echo get_stylesheet_directory_uri(); ?>/img/whatsapp.png" alt="Alt"></a></li>
								<li><a href="<?php echo get_theme_mod('facebook', '');?>" target="_blank"><img src="<?php echo get_stylesheet_directory_uri(); ?>/img/facebook.png" alt="Alt"></a></li>
							</ul>
						</div>
					</div>		
				</div>
			</div>
		</div>

		<div class="row">
			<div class="line"></div>
		</div>

		<div class="row">
			<div class="col-md-12 copy">
				<p>&copy; 2018 <span>Vitrovi.com</span></p>
			</div>
		</div>
	</div>
</footer>

<div class="footer-bottom">
</div>




<?php wp_footer(); ?>
</body>
</html>