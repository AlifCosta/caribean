$("document").ready(function(){
	animacao_menu();
	menu_fixo();
	animacao_logo();
	mensagens();
	mascara_CPF();
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
function mascara_CPF(){
	$("#cpfcnpj").keydown(function(){
        try {
        	$("#cpfcnpj").unmask();
        } catch (e) {}

        var tamanho = $("#cpfcnpj").val().length;

        if(tamanho < 11){
            $("#cpfcnpj").mask("999.999.999-99");
        } else if(tamanho >= 11){
            $("#cpfcnpj").mask("99.999.999/9999-99");
        }

        // ajustando foco
        var elem = this;
        setTimeout(function(){
        	// mudo a posição do seletor
        	elem.selectionStart = elem.selectionEnd = 10000;
        }, 0);
        // reaplico o valor para mudar o foco
        var currentValue = $(this).val();
        $(this).val('');
        $(this).val(currentValue);
    });
}
