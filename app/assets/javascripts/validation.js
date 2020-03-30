$(function(){
  // 案件編集ページ
  $('.edit_project').submit(function(){
    // 案件編集ボタンを押された時のメソッドです

    // まずはエラーメッセージを全て初期化
    $('.new__search__name__form__error').text("");

    // 送信可否フラグ
    let submit_flag = true;

    // ユーザー名
    let name = $(".new__search__name__form--box").val();
    if(name == ""){
      // エラーメッセージ設定
      $(".new__search__name__form__error").text("案件名を入力してください");
      
      // 送信可否フラグを設定
      submit_flag = false;
    }
  return submit_flag;
  })

  // 案件新規登録
  $('.new_project').submit(function(){
    // 案件新規登録ボタンを押された時のメソッドです

    // まずはエラーメッセージを全て初期化
    $('.new__search__name__form__error').text("");

    // 送信可否フラグ
    let submit_flag = true;

    // ユーザー名
    let name = $(".new__search__name__form--box").val();
    if(name == ""){
      // エラーメッセージ設定
      $(".new__search__name__form__error").text("案件名を入力してください");
      
      // 送信可否フラグを設定
      submit_flag = false;
    }
  return submit_flag;
  })
  // 会社新規登録
  $('#new_corporation').submit(function(){
    // 会社新規登録ボタンを押された時のメソッドです

    // まずはエラーメッセージを全て初期化
    $('.search-form__name-area__error').text("");

    // 送信可否フラグ
    let submit_flag = true;

    // 会社名
    let name = $("#corporation_name").val();
    if(name == ""){
      // エラーメッセージ設定
      $(".search-form__name-area__error").text("会社名を入力してください");
      
      // 送信可否フラグを設定
      submit_flag = false;
    }
  return submit_flag;
  })

    // 会社編集
    $('.edit_corporation').submit(function(){
      // 会社編集ボタンを押された時のメソッドです
  
      // まずはエラーメッセージを全て初期化
      $('.search-form__name-area__error').text("");
  
      // 送信可否フラグ
      let submit_flag = true;
  
      // 会社名
      let name = $("#corporation_name").val();
      if(name == ""){
        // エラーメッセージ設定
        $(".search-form__name-area__error").text("会社名を入力してください");
        
        // 送信可否フラグを設定
        submit_flag = false;
      }
    return submit_flag;
    })
  
});

