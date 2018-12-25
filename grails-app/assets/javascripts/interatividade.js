$("document").ready(function(){
	animacao_menu();
	animacao_logo();
	mensagens();
	menu_fixo();
}
);
function animacao_logo(){
	var cssSelector = anime({
		targets: '#logo',
		translateX: 250,
		delay: 1000
	});

}
function animacao_menu(){
	$("nav td:odd").addClass("efeito-1");
	$("nav td:even").addClass("efeito-2");
	$("nav td").hover(function(){
	var link = $("#menu a:eq("+($(this).index())+")")
		$(link).toggleClass("sel_a");
	});
}

function menu_fixo(){
	var offset = $('#meuMenu').offset().top;
	var $meuMenu = $('#meuMenu');
	$(document).on('scroll', function () {
		if (offset <= $(window).scrollTop()) {
			$meuMenu.addClass('fixar');
		} else {
			$meuMenu.removeClass('fixar');
		}
	});
}
function mensagens(){
	var lis = $('#bts_estrelas li');
	var as = $('#bts_estrelas li a');
	var divs = $('#avaliacoes div[id]');
	lis.click(function () {
		var i = $(this).index();
		$(lis).removeClass("active");
		$(as).removeClass("active");
		$(divs).removeClass("active");
		$(divs).removeClass("show");
		$(divs).removeClass("in");
		var a = $("#bts_estrelas li a:eq("+i+")");
		var div = $("#avaliacoes div[id]:eq("+i+")");
		$(a).addClass("active show");
		$(div).addClass("active");
        $(div).addClass("show");
        $(div).addClass("in");
		$(this).addClass("active");
	});

}
function limparConteudo() {
	$('main').html("");
}

