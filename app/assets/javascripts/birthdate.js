$(function(){
  
  var time = new Date();
  var year = time.getFullYear();
  for (var i = year; i >= 1900; i--){
    var giga = `<option value"' i '">' i '</option>`;
    $('#year').append(giga);
  }
  for (var i = 1; i <= 12; i++){
    var jaga = '<option value"' + i + '">' + i + '</option>';
    $('#month').append(jaga);
  }
  for (var i = 1; i <= 31; i++){
    var haja = '<option value"' + i + '">' + i + '</option>';
    $('#date').append(haja);
  }
})