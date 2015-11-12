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
		//$("#igrejas").change();
		// $("#setores").change();
		// $("#gruposCaseiros").change();
	});

	$("#igrejas").change(function(){
		var igreja = $(this);
		var firstOptionToSelect = true;
		$("#setores").find("option").each(function(){
			if ($(this).attr("data-igreja") != igreja.find('option:selected').val()) {
				$(this).hide();
			} else {
				if (firstOptionToSelect) {
					firstOptionToSelect = false;
					$("#setores").val($(this).val());
				}
				$(this).show();
			}
		});
		$("#setores").change();
	});

	$("#setores").change(function(){
		var setor = $(this);
		var firstOptionToSelect = true;
		$("#gruposCaseiros").find("option").each(function(){
			if ($(this).attr("data-setor") != setor.find('option:selected').val()) {
				$(this).hide();
			} else {
				if (firstOptionToSelect) {
					firstOptionToSelect = false;
					$("#gruposCaseiros").val($(this).val());
				}
				$(this).show();
			}
		});
		
	});

	if ($("#extra-data").attr('data-igreja').trim() != "") {
		$("#igrejas").val($("#extra-data").attr('data-igreja'));
	}
	$("#igrejas").change();
	if ($("#extra-data").attr('data-setor').trim() != "") {
		$("#setores").val($("#extra-data").attr('data-setor'));
	}
	$("#setores").change();
	if ($("#extra-data").attr('data-grupoCaseiro').trim() != "") {
		$("#gruposCaseiros").val($("#extra-data").attr('data-grupoCaseiro'));
	}
	$("#gruposCaseiros").change();

	$("#tipo").change();


});