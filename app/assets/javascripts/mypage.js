$(function() {
  $('#practice').on('click', function(){
    $('.news-box2').hide();
    $('.news-box').show('.news-box');
    return false;
  })

  $('#play').on('click', function(){
    $('.news-box').hide();
    $('.news-box2').show('.news-box2');
  })


  $('.delete').on('click', function(){
    $(this).parent().hide();
    $('.bitcoin').show('.bitcoin');
  

    $('.bitcoin').on('click', function(){
      $('.news-box2').show('.news-box2');
      $('.bitcoin').hide();
    })
  })
})