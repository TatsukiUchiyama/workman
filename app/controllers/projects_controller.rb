class ProjectsController < ApplicationController
  before_action :move_to_index
  before_action :move_to_corporation, only: [:show, :edit]
  before_action :corporation, only: [:index, :new, :show, :edit]

  def index
    @project = Project.new
    @projects = @corporation.projects.all
  end

  def new
    @project = Project.new
    return nil if params[:keyword] == ""
    @users = @corporation.users.where(['name LIKE ?', "%#{params[:keyword]}%"] ).where.not(id: current_user.id).limit(10)
    respond_to do |format|
      format.html
      format.json
    end
  end

  def create
    Project.create(project_params)
    redirect_to corporation_projects_path(params[:corporation_id])
  end

  def show
    @project = Project.find(params[:id])
  end

  def edit
    @project = Project.find(params[:id])
    return nil if params[:keyword] == ""
    @users = @corporation.users.where(['name LIKE ?', "%#{params[:keyword]}%"] ).where.not(id: current_user.id).limit(10)
    respond_to do |format|
      format.html
      format.json
    end
  end

  def update
    @project = Project.find(params[:id])
    @project.update(project_params)
    redirect_to corporation_project_path(params[:corporation_id], params[:id])
  end

  def destroy
    project = Project.find(params[:id])
    project.destroy
    redirect_to corporation_projects_path(params[:corporation_id])
  end


  private
  def project_params
    params.require(:project).permit(:name, :member, :time, :address, :text,  user_ids: []).merge(corporation_id: params[:corporation_id])
  end

  def move_to_index
    corporation = Corporation.find(params[:corporation_id])
    redirect = false
    corporation.user_ids.each do |corporation_user_id|
      if current_user.id == corporation_user_id
        redirect = true
      end
    end
    redirect_to root_path if redirect == false
  end

  def move_to_corporation
    project = Project.find(params[:id])
    redirect = false
    project.user_ids.each do |project_user_id|
      if current_user.id == project_user_id
        redirect = true
      end
    end
    redirect_to root_path if redirect == false
  end

  def corporation
    @corporation = Corporation.find(params[:corporation_id])
  end


end