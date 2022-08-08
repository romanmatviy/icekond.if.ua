// active butt-s
$(".order-type .type").click(function (e) {
	e.preventDefault();
	if (!$(this).hasClass("active")) {
		$(".type").removeClass("active");
		$(this).addClass("active");
	}
});
$(".room-size-r").click(function (e) {
	e.preventDefault();
	if (!$(this).hasClass("active")) {
		$(".room-size-r").removeClass("active");
		$(this).addClass("active");
	}
});
$(".room-size-c").click(function (e) {
	e.preventDefault();
	if (!$(this).hasClass("active")) {
		$(".room-size-c").removeClass("active");
		$(this).addClass("active");
	}
});
// conditioners vs recuperators
$(".conditioner").click(function (e) {
	console.log('work1')
	e.preventDefault();
	$(".air-conditioners").css("display", "block");
	$(".recuperators").css("display", "none");
	$('.air-conditioners p + .room-size').trigger('click');
});

$(".recuperator").click(function (e) {
	console.log('work2')
	e.preventDefault();
	$(".recuperators").css("display", "block");
	$(".air-conditioners").css("display", "none");
	$('.recuperators p + .room-size').trigger('click');
});

// conditioners square

$('.room-size').on('click', function () {
	$(".cond").css("display", "none");
	$(`#cond-${$(this).attr('id')}`).css("display", "flex");
	$(`#r-${$(this).attr('id')}`).css("display", "flex");
})

// recuperators square
$(".to-21-r").click(function (e) {
	e.preventDefault();
	$(".rec21").css("display", "flex");
	$(".rec25, .rec35").css("display", "none");
});
$(".to-25-r").click(function (e) {
	e.preventDefault();
	$(".rec25").css("display", "flex");
	$(".rec21, .rec35").css("display", "none");
});
$(".to-35-r").click(function (e) {
	e.preventDefault();
	$(".rec35").css("display", "flex");
	$(".rec21, .rec25").css("display", "none");
});

// input "square"
const rangeInputs = document.querySelectorAll(".range-input");
const numberInput = document.querySelector(".square-input");

function handleInputChange(e) {
	let target = e.target;
	if (e.target.type !== "range") {
		target = document.getElementById("range");
	}
	const min = target.min;
	const max = target.max;
	const val = target.value;

	target.style.backgroundSize = ((val - min) * 100) / (max - min) + "% 100%";
}

rangeInputs.forEach((input) => {
	input.addEventListener("input", handleInputChange);
});

numberInput.addEventListener("input", handleInputChange);

// slider
let swiper = new Swiper(".mySwiper", {
	allowTouchMove: false,
	spaceBetween: 30,

	navigation: {
		prevEl: ".swiper-prev",
		nextEl: ".swiper-next",
	},
	pagination: {
		el: ".swiper-pagination",
	},
});

// change slider title
let count = 0;

$(".swiper-prev, .swiper-next").on("click", function (e) {
	// $(".swiper-next, .swiper-prev").css("pointer-events", "none");
	if (e.target.classList.contains("swiper-next")) {
		if (count < $(".rhomb-green").length - 1) {
			++count;
			$(".rhomb-grey")[count].classList.add("form__element-hide");
			$(".rhomb-green")[count].classList.remove("form__element-hide");
			$(".form__title").addClass("form__element-hide");
			$(".form__title")[count].classList.remove("form__element-hide");
		}
	}

	if (e.target.classList.contains("swiper-prev")) {
		if (count !== 0) {
			$(".rhomb-grey")[count].classList.remove("form__element-hide");
			$(".rhomb-green")[count].classList.add("form__element-hide");
			$(".form__title").addClass("form__element-hide");

			count--;
			$(".form__title")[count].classList.remove("form__element-hide");
		}
	}

	// setTimeout(() => {
	// 	$(".swiper-next, .swiper-prev").css("pointer-events", "auto");
	// }, 600);
});

// fixed right buttons
$(window).on("scroll", function () {
	if ($(document).scrollTop() < $(window).height()) {
		$(".fixed-butts-wrapper").hide();
	} else {
		$(".fixed-butts-wrapper").show();
	}
});

// blur for button next
$(".one-block-input, .two-block-input, .three-block-input").change(function () {
	$(".swiper-next").removeClass("blur-for-button");

	console.log($("#remember")[0].checked);
});

let check_slide = 0;
$(".swiper-next").click(function () {
	if (check_slide < 3) {
		$(this).addClass("blur-for-button");
		check_slide++;
	}
});

$(".swiper-prev").click(function () {
	$(".swiper-next").removeClass("blur-for-button");
});
if ($(".two-block-input").is(":checked")) {
	$(".swiper-next").removeClass("blur-for-button");
}

$(".call-pop-up-phone").click(function (e) {
	e.preventDefault();
	$(".pop-up-phone").fadeToggle(200);
	$(".pop-up-back").fadeToggle(200);
});

$(".pop-up-back, .close-pop-up").click(function (e) {
	e.preventDefault();
	$(".pop-up-phone").fadeOut(200);
	$(".pop-up-back").fadeOut(200);
	$(".pop-up-thanks").fadeOut(200);
});

$("form.ajax").submit(function (e) {
	var form = $(this);
	var url = form.data('action');
	if (url == undefined)
		url = form.attr('action');
	if (url) {
		$.ajax({
			type: "POST",
			url: url,
			data: form.serialize(),
			complete: function () {
				$("div#divLoading").removeClass('show');
			},

			success: function (res) {
				toggle_tnx_popap();
				$('.form__wrap').html('');
				$('.form__wrap').append('<h1 class="ready">Форма вже відправдена</h1>');
				$('.form__btn-wrap button').addClass('blur-for-button');
				var text = '';
				if (res['success']) {
					text = res['success'];
				} else if (res['errors']) {
					text = res['errors'];
				}
			},
			error: function () {
				e.preventDefault();
				$('#ajaxFormResult p').html('РџРѕРјРёР»РєР°! РЎРїСЂРѕР±СѓР№С‚Рµ Р·Р° 2С…РІ С‰Рµ СЂР°Р·');
				$("#ajaxFormResult").addClass('show');
			}
		});
		return false;
	}
});

$("#ajaxFormResult").click(function () {
	$("div#ajaxFormResult").removeClass('show');
	$('#modal-bg, .modal').slideUp();
	$('html').css('overflow-y', 'auto');
});

function toggle_tnx_popap() {
	$('.pop-up-back').fadeToggle();
	$('.pop-up-thanks').fadeToggle()
}


