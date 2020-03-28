$(function(){


  $('#new_user').submit(function(){
    
    // ユーザー新規登録ボタンを押された時のメソッドです

    // まずはエラーメッセージを全て初期化
    $('.name__error').text("");
    $('.email__error').text("");
    $('.password__error').text("");
    $('.password_confirmation__error').text("");

    // 送信可否フラグ
    let submit_flg = true;

    // ユーザー名
    let name = $("#name").val();
    if(name == ""){
      // エラーメッセージ設定
      $(".name__error").text("名前を入力してください");
      
      // 送信可否フラグを設定
       submit_flg = false;

      // ページ上部までスクロール
      $(".header__text")[0].scrollIntoView(true)
    }

      // メールアドレス
      let email = $("#email").val();
      if(email == ""){
        // エラーメッセージ設定
        $(".email__error").text("メールアドレスを入力してください");
        
        // 送信可否フラグを設定
          submit_flg = false;
  
        // ページ上部までスクロール
        $(".header__text")[0].scrollIntoView(true)
      }

      // $('.signin_btn').on('click',function(){

      //   $.ajax({
      //     url: '/users/unique',
      //     type: 'GET',
      //     data: { keyword: email },
      //     dataType: 'json'
      //   })
      //   .done(function(email){
      //     if (email == false){
      //       // エラーメッセージ設定
      //       $(".email__error").text("そのアドレスはすでに利用されています");
  
      //       // 送信可否フラグを設定
      //         submit_flg = false;
      
      //       // ページ上部までスクロール
      //       $(".header__text")[0].scrollIntoView(true)
      //     }
      //   })
      //   .fail(function(email){
      //     console.log('ここやで');
      //   });
      // });
      
      


      // パスワード
      let password = $("#password").val();
      if(password == ""){
        // エラーメッセージ設定
        $(".password__error").text("パスワードを入力してください");
        
        // 送信可否フラグを設定
          submit_flg = false;
  
        // ページ上部までスクロール
        $(".header__text")[0].scrollIntoView(true)
      }
      
      // パスワード確認
      let password_confirmation = $("#password_confirmation").val();
      if(password_confirmation != password){
        // エラーメッセージ設定
        $(".password_confirmation__error").text("確認パスワードが正しくありません");
        
        // 送信可否フラグを設定
          submit_flg = false;
  
        // ページ上部までスクロール
        $(".header__text")[0].scrollIntoView(true)
      }

        return submit_flg;
  })


  $('#new_user').submit(function(){

    let email = $("#email").val();

    $.ajax({
      url: '/users/unique',
      type: 'GET',
      data: { keyword: email },
      dataType: 'json'
    })
    .done(function(mail){
      if (mail.json_email == 'a'){
        // エラーメッセージ設定
        $(".email__error").text("そのアドレスはすでに利用されています");

        // 送信可否フラグを設定
          submit_flg = false;

        // ページ上部までスクロール
        $(".header__text")[0].scrollIntoView(true)
      }
    })
    .fail(function(name){
      console.log(email);
    });
  });

});