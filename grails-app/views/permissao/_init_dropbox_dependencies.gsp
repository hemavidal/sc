		<asset:script type="text/javascript">
			$(document).ready(function(){
			$("#igrejas").hide();
			$("#setores").hide();
			$("#gruposCaseiros").hide();

			$("#tipo").change(function() {
				if($(this).val().toLowerCase() == "igreja") {
					$("#igrejas").show();
					$("#setores").hide();
					$("#gruposCaseiros").hide();
				} else if ($(this).val().toLowerCase() == "setor") {
					$("#igrejas").show();
					$("#setores").show();
					$("#gruposCaseiros").hide();
				} else if ($(this).val().toLowerCase() == "grupocaseiro") {
					$("#igrejas").show();
					$("#setores").show();
					$("#gruposCaseiros").show();
				} else if ($(this).val().toLowerCase() == "pessoa" || $(this).val().toLowerCase() == "admin") {
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

			if ($("#extra-data").attr('data-igreja') != "") {
				$("#igrejas").val($("#extra-data").attr('data-igreja'));
			}
			$("#igrejas").change();
			if ($("#extra-data").attr('data-setor') != "") {
				$("#setores").val($("#extra-data").attr('data-setor'));
			}
			$("#setores").change();
			if ($("#extra-data").attr('data-grupoCaseiro') != "") {
				$("#gruposCaseiros").val($("#extra-data").attr('data-grupoCaseiro'));
			}
			$("#gruposCaseiros").change();

			$("#tipo").change();
		});
	    </asset:script>