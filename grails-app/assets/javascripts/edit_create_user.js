$(document).ready(function(){
	$("#igrejas").hide();
	$("#setores").hide();
	$("#gruposCaseiros").hide();

	$("#tipo").change(function(){
		if($(this).val() == "igreja") {
			$("#igrejas").show();
			$("#setores").hide();
			$("#gruposCaseiros").hide();
		} else if ($(this).val() == "setor") {
			$("#igrejas").show();
			$("#setores").show();
			$("#gruposCaseiros").hide();
		} else if ($(this).val() == "grupoCaseiro") {
			$("#igrejas").show();
			$("#setores").show();
			$("#gruposCaseiros").show();
		} else if ($(this).val() == "pessoa" || $(this).val() == "admin") {
			$("#igrejas").hide();
			$("#setores").hide();
			$("#gruposCaseiros").hide();
		}
	});

	$("#igrejas").change(function(){
		$("#setores option[data-igreja!=" + $(this).find('option:selected').attr('data-igreja') + "]").hide();
		alert("ok");

	});

});