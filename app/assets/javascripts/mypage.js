$(function() {
  $('#practice').on('click', function(){
    $('.news-box2').hide();
    $('.news-box').show();
    return false;
  })

  $('#play').on('click', function(){
    $('.news-box').hide();
    $('.news-box2').show();
  })

  $('.delete').on('click', function(){
    const hu = $(this).parent().hide();
    $('.bitcoin').show();
  

    $('.bitcoin').on('click', function(){
      $(hu).show('.news-box2');
      $('.bitcoin').hide();
    })
  })
})