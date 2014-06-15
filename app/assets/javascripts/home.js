$(function() {
	$('#datetime_ida').datepicker();
	$('#datetime_regreso').datepicker();
  });


$('.type').change(function(){
	switch ($(this).val()){
		case "1":
			$('#datetime_regreso').attr('disabled',true);
			break;
		case "2":
			$('#datetime_regreso').attr('disabled',false);
			break;
		case "3":
			$('#datetime_regreso').attr('disabled',false);
			break;
	}
});