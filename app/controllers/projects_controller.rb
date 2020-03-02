class ProjectsController < ApplicationController


  def index
    @project = Project.new
    @corporation = Corporation.find(params[:corporation_id])
    @projects = @corporation.projects.all
  end

  def new
    @corporation = Corporation.find(params[:corporation_id])
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
    @corporation = Corporation.find(params[:corporation_id])
  end

  def edit
    @corporation = Corporation.find(params[:corporation_id])
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

  private
  def project_params
    params.require(:project).permit(:name, :member, :time, :address, :text,  user_ids: []).merge(corporation_id: params[:corporation_id])
  end
end