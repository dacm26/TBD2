$(function() {
	$('#datetime_regreso').attr('disabled',true);
	$('#datetime_ida').datepicker();
	$('#datetime_regreso').datepicker();
	$('#multi_1_1').datepicker();
	$('#multi_2_1').datepicker();
	$('#multi_3_1').datepicker();
	$('#multi_4_1').datepicker();
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
			$('#datetime_regreso').attr('disabled',false);
			$('.more').show();
			$('.case_1').hide();
			$('.case_3').show();
			break;
	}
});

$('.more').on('click',function(){
	$('.case_3').children().each(function()
	{
		if( $(this).css('display') === 'none')
		{
			$(this).show();
		}
	});
	$(this).hide();
});