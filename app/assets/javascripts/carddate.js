$(function() {

  for(var i = 19; i <= 30; i++){
    $('#id_year').append(`<option value=20${i}>${i}</option>`);
  }

  for(var i = 1; i <= 12; i++){
    $('#id_month').append(`<option value=${i}>${i}</option>`);
  }
})
