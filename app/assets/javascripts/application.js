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
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

$(document).ready(function(){

 var $menu = $(".menu-list");
 var $post = $(".post-window");
 var $wrapper = $(".wrapper");
 var $favo = $(".fa-heart");

 // メニューバーを開くメソッド
 $(".menu-button").click(function(){
   $menu.show();
   $menu.addClass(".open-nav");
   $wrapper.show();
 });

 // メニューバーを閉じるメソッド
 $(".wrapper").click(function(){

   // メニューバーを表示されているとき
   if($menu.hasClass(".open-nav")){
     $menu.removeClass(".open-nav");
     $wrapper.hide();
     $menu.hide();
   }

   // 投稿モーダルが表示されているとき
   if($post.hasClass(".open-modal")){
     $post.removeClass(".open-modal");
     $wrapper.hide();
     $post.hide();
   }

 });

 // 投稿をした時
 $("#post-send, #post-cancel").click(function(){

   if($post.hasClass(".open-modal")){
     $post.removeClass(".open-modal");
     $wrapper.hide();
     $post.hide();
 　}　　
 });

// いいねした時にハートのアニメーションが動く
 $(".heart-button").click(function(){
   var $favo = $(this).children(".fa-heart");
   if($favo.hasClass("fas")){
     $favo.removeClass("fas");
     $favo.addClass("far");
   }else{
     $favo.removeClass("far");
     $favo.addClass("fas");
   }
 });


 // 投稿モーダルに関する設定
 var $postarea = $(".modal-body").children("textarea");

 $postarea.height(30);//init
 $postarea.css("lineHeight","20px");//init


 $postarea.on("input",function(evt){
    // textareaの高さが改行によって増える
    if(evt.target.scrollHeight > evt.target.offsetHeight){
        $(evt.target).height(evt.target.scrollHeight);
    }else{
        var lineHeight = Number($(evt.target).css("lineHeight").split("px")[0]);
        while (true){
            $(evt.target).height($(evt.target).height() - lineHeight);
            if(evt.target.scrollHeight > evt.target.offsetHeight){
                $(evt.target).height(evt.target.scrollHeight);
                break;
            }
        }
    }

    // textareaの字数が140字を超えた時にアラートを表示
    var $content = $postarea.val();
    var $notice  = $(".notice-length");

    if($content.length >= 140){
      $notice.text("140字以内で入力してください");
      $notice.show();
      $(".modal-post-button").prop("disabled", true);

    }else if ($content.length >= 120 && $content.length < 140) {
      var $num = 140 - $content.length;
      $notice.text("あと" + $num + "文字までです");
      $notice.show();

    }else{
      $notice.hide();
    }

 });





});
