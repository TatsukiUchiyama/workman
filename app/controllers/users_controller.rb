class UsersController < ApplicationController
  def index
    @corporation = Corporation.find(params[:corporation_id])
    @user = User.new
    @project = Project.find(params[:id])
  end
  def create
    @user = User.new(role_params)
    @user.save
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def unique
    # 全ユーザーデータのメールアドレスと新規ユーザーの入力したメールアドレスを比較するメソッド
    users = User.all

    users.each do |user|

      if user.email == params[:keyword]
        @email = 'a'
      end
    end

    respond_to do |format|
      format.json
    end

  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :Tell, :text)
  end
  def role_params
    params.require(:user).permit(corporation_ids: [], role_ids: [])
  end

end