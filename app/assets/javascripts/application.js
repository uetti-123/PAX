// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require activestorage
//= require jquery
//= require rails-ujs
//= require cocoon
//= require bxslider
//= require bootstrap-sprockets
//= require underscore
//= require gmaps/google
//= require_tree .



$(function(){
	$('.link-modal').click(function(){
			var target = $(this).data('target');
			var modal = document.getElementById(target);
			$(modal).fadeIn();
			return false;
	});

	$('.close').on('click',function(){
        $(".modal").fadeOut();
        return false;
    });
})
//$('#').on('show.bs.modal', function (event) {
  //var button = $(event.relatedTarget) //モーダルを呼び出すときに使われたボタンを取得
  //var recipient = button.data('whatever') //data-whatever の値を取得

  //Ajaxの処理はここに

  //var modal = $(this)  //モーダルを取得
  //modal.find('.modal-title').text('New message to ' + recipient) //モーダルのタイトルに値を表示
  //modal.find('.modal-body input#recipient-name').val(recipient) //inputタグにも表示
//})
