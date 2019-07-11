$(function(){
  $('#price').on('keyup',function(){
   var price = $(this).val();
   var margin = Math.floor(price*0.1);
   $(".js_display").text(price);
   $(".js_display_margin").text(margin);
  })
})
