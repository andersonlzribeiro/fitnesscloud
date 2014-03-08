// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.maskedinput
//= require jquery-ui-datetimepicker
//= require datepicker-pt-BR
//= require turbolinks
//= require semantic-ui
//= require_tree .


jQuery(function($){
   $(".date").mask("99/99/9999",{placeholder:" "});
   $(".date").datepicker();
   $(".zipcode").mask("99999-999",{placeholder:" "});
   $(".cpf").mask("999.999.999-99",{placeholder:" "});

   $(".phone").mask("(99)9999-9999?9",{placeholder:" "}).focus(function() {
	  $(this).keyup(function() {
	  numeros = $(this).val().replace(/\D/g, '');
	  if(numeros.length == 11) { $(this).mask("(99)99999-9999",{placeholder:" "}); }
	  if(numeros.length == 10) { $(this).mask("(99)9999-9999?9",{placeholder:" "}); }
  	});
});

   
});