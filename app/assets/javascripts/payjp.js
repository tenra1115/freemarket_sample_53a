$(function() {

  
  
  $('#charge-form').on('submit', function(e) {
    e.preventDefault();
    
    Payjp.setPublicKey("pk_test_c1014bdfe3f96e69dbe2b0a2");

    var number = Number($("#card_number").val());
    var cvc = Number($("#cvc").val());
    var exp_month = Number($("#id_month").val());
    var exp_year = Number($("#id_year").val());
    
    // console.log(number)
    // console.log(cvc)
    // console.log(exp_month)
    // console.log(exp_year)
    var card = {
      number: number,
      cvc: cvc,
      exp_month: exp_month,
      exp_year: exp_year
    };
    
    Payjp.createToken(card, function(status, response) {
      if (status == 200) {
        // console.log(response);

        $("#card_number").removeAttr("name");
        // console.log($("#card_number").removeAttr("name"))
        $("#cvc").removeAttr("name");
        $("#exp_month").removeAttr("value");
        $("#exp_year").removeAttr("value"); //データを自サーバにpostしないように削除
        $("#card_token").append(
          $('<input type="hidden" name="payjp-token">').val(response.id)
        ); //取得したトークンを送信できる状態にします
        // debugger;
       $('#charge-form')[0].submit();
            alert("登録が完了しました"); //確認用
        // handle token object and send back to your server. You can get token id from "response.id".
      } else {
        alert("カード情報が正しくありません。"); //確認用
        // handle error like displaying error message.
      };
    });
  })

  $(".pay-by-card-pay").on('submit', function() {
    alert("購入が完了しました");
  })
})