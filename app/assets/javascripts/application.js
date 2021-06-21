// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require jquery/dist/jquery.js
//= require bootstrap/dist/js/bootstrap.min
//= require_directory ./vendor
//= require turbolinks
//= require_tree .

// Loading
window.onload = function() {
	const spinner = document.getElementById('loading');
	spinner.classList.add('loaded');
}

$(function() {

// fixed_header

	//ロード or スクロールされると実行
	$(window).on('load scroll', function(){
		//ヘッダーの高さ分スクロールするとfixedクラスを追加
		if ($(window).scrollTop() > 30) {
			$('.fixed_header').addClass('fixed');
		} else {
			//80px以下だとfixedクラスを削除
			$('.fixed_header').removeClass('fixed');
		}
	});


// tops_index
// Vegas setting

	var windowwidth = window.innerWidth || document.documentElement.clientWidth || 0;
			if (windowwidth > 768){
				var responsiveImage = [//PC用の画像
					{ src: '/assets/tops_index_img_1.jpg'},
					{ src: '/assets/tops_index_img_2.jpg'},
					{ src: '/assets/tops_index_img_3.jpg'},
					{ src: '/assets/tops_index_img_4.jpg'}
				];
			} else {
				var responsiveImage = [//タブレットサイズ（768px）以下用の画像
					{ src: '/assets/tops_index_img_1.jpg' },
					{ src: '/assets/tops_index_img_2.jpg' },
					{ src: '/assets/tops_index_img_3.jpg' },
					{ src: '/assets/tops_index_img_4.jpg' }
				];
			}

	$('.tops_index #slider').vegas({
			overlay: 'https://cdnjs.cloudflare.com/ajax/libs/vegas/2.4.4/overlays/06.png',//画像の上に網線やドットのオーバーレイパターン画像を指定。
			transition: 'blur',//切り替わりのアニメーション。http://vegas.jaysalvat.com/documentation/transitions/参照。fade、fade2、slideLeft、slideLeft2、slideRight、slideRight2、slideUp、slideUp2、slideDown、slideDown2、zoomIn、zoomIn2、zoomOut、zoomOut2、swirlLeft、swirlLeft2、swirlRight、swirlRight2、burnburn2、blurblur2、flash、flash2が設定可能。
			transitionDuration: 2000,//切り替わりのアニメーション時間をミリ秒単位で設定
			delay: 10000,//スライド間の遅延をミリ秒単位で。
			animationDuration: 10000,//スライドアニメーション時間をミリ秒単位で設定
			animation: 'kenburns',//スライドアニメーションの種類。http://vegas.jaysalvat.com/documentation/transitions/参照。kenburns、kenburnsUp、kenburnsDown、kenburnsRight、kenburnsLeft、kenburnsUpLeft、kenburnsUpRight、kenburnsDownLeft、kenburnsDownRight、randomが設定可能。
			slides: responsiveImage,//画像設定を読む
		});

		var position = $(".tops_index article").offset().top;
		$(".tops_index #slider .scroll").click(function(){
		    $("html,body").animate({ scrollTop : position }, 800, 'swing');
		});


});
