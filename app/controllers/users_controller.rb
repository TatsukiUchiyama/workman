class UsersController < ApplicationController
  def index
    @corporation = Corporation.find(params[:corporation_id])
    @user = User.new
    @project = Project.find(params[:id])
    # return nil if params[:keyword] == ""
    # @users = User.where(['name LIKE ?', "%#{params[:keyword]}%"] ).where.not(id: current_user.id).limit(10)
    # respond_to do |format|
    #   format.html
    #   format.json
    # end
  end
  def create
    @user = User.new(role_params)
    @user.save
  end

  def show
    @user = User.find(params[:id])
    # binding.pry
    # @corporation = Corporation.find(params[:corporation_id])
    # @project = Project.find(params[:project_id])
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

  private

  def user_params
    params.require(:user).permit(:name, :email, :Tell, :text)
  end
  def role_params
    params.require(:user).permit(corporation_ids: [], role_ids: [])
  end

end