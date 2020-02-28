$(function(){
  var input_text = $("#user-search-field")

  function addUser(user){
        let html = `
          <div class="corporation_member-user">
            <div class="corporation_member-user__name">
              <p class="corporation_member-user__name--text">${user.name}</p>
            </div>
            <div class="user-search-add corporation_member-user__btn corporation_member-user__btn--add" data-user-id="${user.id}" data-user-name="${user.name}">追加</div>
          </div>
        `;
        $("#user-search-result").append(html);
      }
    
      function addNoUser() {
        let html = `
          <div class="corporation_member-user">
            <p class="corporation_member-user__name">ユーザーが見つかりません</p>
          </div>
        `;
        $("#user-search-result").append(html);
      }

      function addDeleteUser(name, id) {
        let html = `
        <div class="corporation_member-user" id="${id}">
          <div class="corporation_member-user__name">
            <p class="corporation_member-user__name--text">${name}</p>
          </div>
          <div class="user-search-remove corporation_member-user__btn corporation_member-user__btn--remove js-remove-btn" data-user-id="${id}" data-user-name="${name}">削除</div>
        </div>`;
        $(".js-add-user").append(html);
      }

      function addMember(userId) {
        let html = `<input value="${userId}" name="corporation[user_ids][]" type="hidden" id="corporation_user_ids_${userId}" />`;
        $(`#${userId}`).append(html);
      }

  input_text.on("keyup",function(){
    var input = input_text.val();
    var path = location.pathname ;
    $.ajax({
      url: path,
      type: 'GET',
      data: { keyword: input },
      dataType: 'json'
    })
    .done(function(users){
      $("#user-search-result").empty();
      if (users.length !== 0){
        users.forEach(function(user){
        addUser(user);
         });
      } else if (input.length == 0) {
        return false;
      }else{
        addNoUser();
      }

    })
    .fail(function(user){
      alert('通信エラーです。ユーザーを表示できません。');
    });
  });

  $(document).on("click", ".corporation_member-user__btn--add", function() {
    const userName = $(this).attr("data-user-name");
    const userId = $(this).attr("data-user-id");
    $(this).parent().remove();
    addDeleteUser(userName, userId);
    addMember(userId);
  });
  $(document).on("click", ".corporation_member-user__btn--remove", function() {
    $(this).parent().remove();
  });
});

// {/* <p class="corporation_member-user__role">
//             <select name="corporation[role_ids][]" class="corporation_member-user__role--item">
//               <option value= 1 >社長 </option>
//               <option value= 2 >社員</option>
//               <option value= 3 selected>協力会社</option>
//             </select>
//           </p> */}