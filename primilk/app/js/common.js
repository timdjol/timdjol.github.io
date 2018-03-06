$(function() {


	$("a[href='#callback']").magnificPopup({
        mainClass: 'my-mfp-zoom-in',
        removalDelay: 300,
        type: 'inline',
        focus: '#name'
    });  

    $('.top').click(function() {
		$('html, body').stop().animate({scrollTop: 0}, 'slow', 'swing');
	});
	$(window).scroll(function() {
		if ($(this).scrollTop() > $(window).height()) {
			$('.top').addClass("active");
		} else {
			$('.top').removeClass("active");
		};
	});

	$(".gallery, .cert-gal").each(function() {
        $(this).magnificPopup({
            delegate: 'a',
            mainClass: 'mfp-zoom-in',
            type: 'image',
            tLoading: '',
            gallery:{
                enabled: true,
            },
            removalDelay: 300,
            callbacks: {
                beforeChange: function() {
                    this.items[0].src = this.items[0].src + '?=' + Math.random(); 
                },
                open: function() {
                    $.magnificPopup.instance.next = function() {
                        var self = this;
                        self.wrap.removeClass('mfp-image-loaded');
                        setTimeout(function() { $.magnificPopup.proto.next.call(self); }, 120);
                    }
                    $.magnificPopup.instance.prev = function() {
                        var self = this;
                        self.wrap.removeClass('mfp-image-loaded');
                        setTimeout(function() { $.magnificPopup.proto.prev.call(self); }, 120);
                    }
                },
                imageLoadComplete: function() { 
                    var self = this;
                    setTimeout(function() { self.wrap.addClass('mfp-image-loaded'); }, 16);
                }
            }
        });
    });

    $("form").submit(function() { //Change
        var th = $(this);
        $.ajax({
            type: "POST",
            url: "mail.php", //Change
            data: th.serialize()
        }).done(function() {
            th.find(".success").addClass("active");
            setTimeout(function() {
                // Done Functions
                th.find(".success").removeClass("active");
                th.trigger("reset");
                $.magnificPopup.close();
            }, 3000);
        });
        return false;
    });

    $('.news').owlCarousel({
		loop: true,
		smartSpeed: 700,
		navText: ['<i class="fa fa-angle-left"></i>Предыдущая','Следующая<i class="fa fa-angle-right"></i>'],
		nav: true,
		responsiveClass: true,
		responsive: {
			0: {
				items: 1,
			},
			1200: {
				items: 1,
			}
		}
	});

	function heightses() {
		$(".s-direct .item-vertical p").height('auto').equalHeights();
		$(".carousel-text").height('auto').equalHeights();
		$(".testimonials-head").height('auto').equalHeights();
		$(".testimonials-desc").height('auto').equalHeights();
	}

	$(".toggle-mnu").click(function() {
		$(this).toggleClass("on");
		$(this).parent().next().next().find(".main-mnu").slideToggle();
		return false;
	});

	

});
