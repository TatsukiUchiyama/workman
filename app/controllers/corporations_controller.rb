class CorporationsController < ApplicationController

  def index
    @corporation = Corporation.all
  end

  def new
    @corporation = Corporation.new
    return nil if params[:keyword] == ""
    @users = User.where(['name LIKE ?', "%#{params[:keyword]}%"] ).where.not(id: current_user.id).limit(10)
    respond_to do |format|
      format.html
      format.json
    end
  end

  def create
    Corporation.create(corporation_params)
    redirect_to root_path
  end

  def edit
    @corporation = Corporation.find(params[:id])
    return nil if params[:keyword] == ""
    @users = User.where(['name LIKE ?', "%#{params[:keyword]}%"] ).where.not(id: current_user.id).limit(10)
    respond_to do |format|
      format.html
      format.json
    end

  end

  def update
    @corporation = Corporation.find(params[:id])
    @corporation.update(corporation_params)
    redirect_to corporation_projects_path(@corporation.id)
  end

  private
  def corporation_params
    params.require(:corporation).permit(:name, user_ids: [])
  end

  # def move_to_index
  #   redirect_to root_path if current_user.id != params[:id]
  # end

end




