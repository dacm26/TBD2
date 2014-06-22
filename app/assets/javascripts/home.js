var current = 2;
$(function() {
	$('#datetime_regreso').attr('disabled',true);
  });


$('.type').change(function(){
	switch ($(this).val()){
		case "1":
			$('#datetime_regreso').attr('disabled',true);
			$('.more').hide();
			$('.case_1').show();
			$('.case_3').hide();
			break;
		case "2":
			$('#datetime_regreso').attr('disabled',false);
			$('.more').hide();
			$('.case_1').show();
			$('.case_3').hide();
			break;
		case "3":
			$('.more').show();
			if (current === 4) {
				$('.more').hide();
			}
			$('.case_1').hide();
			$('.case_3').show();
			break;
	}
});


$('.more').on('click',function(){
	
	current++;
	$('.multi_' + current).show();
	if (current === 4) {	
		$(this).hide();
	};
});

/*$('.search_flights').on('click', function(){
	//validar que toda la informacion este correcta

	var to_send = {};
	to_send.push({type: $('.type').val()})

	$.ajax(
		{type: 'POST',
		url: '/',
		data: to_send
		}).done(function(data){
			console.log(data);
		})
});

*/