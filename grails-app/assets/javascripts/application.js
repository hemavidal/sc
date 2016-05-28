// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better
// to create separate JavaScript files as needed.
//
//= require jquery-2.1.3.js
//= require_self
//= require bootstrap-all
//= require classie
//= require mlpushmenu
//= require modernizr.custom
//= require jquery.dataTables.min
//= require jquery.tabletoCSV
//= require dataTables.buttons.min
//= require buttons.flash.min
//= require jszip.min
//= require pdfmake.min
//= require vfs_fonts
//= require buttons.html5.min
//= require buttons.print.min
//= require accent-neutralise


if (typeof jQuery !== 'undefined') {
    (function($) {
        $('#spinner').ajaxStart(function() {
            $(this).fadeIn();
        }).ajaxStop(function() {
            $(this).fadeOut();
        });
    })(jQuery);
}

$(document).ready(function() {
	$(".editable, .creatable").find(".glyphicon-plus, .glyphicon-edit").click(function(){
		window.location = $(this).attr("data-href");
		return false;
	});

	$(".editable, .creatable").hover(
		function() {
			$(this).find(".glyphicon-plus, .glyphicon-edit").show();
			return false;
		},
		function() {
			$(this).find(".glyphicon-plus, .glyphicon-edit").hide();
			return false;
		}
	);
});

 
