class ProjectsController < ApplicationController


  def index
    @project = Project.new
    @corporation = Corporation.find(params[:corporation_id])
    @projects = @corporation.projects.all
    @id = (params[:corporation_id])
  end

  def new
    @corporation = Corporation.find(params[:corporation_id])
    @project = Project.new
  end

  def create
    Project.create(project_params)
    redirect_to corporation_projects_path(params[:corporation_id])

  end


  def show
    @project = Project.find(params[:id])
    @corporation = Corporation.find(params[:corporation_id])
  end

  # def edit

  # end

  # def update

  # end

  private
  def project_params
    params.require(:project).permit(:name, :member, :time, :address, :text).merge(corporation_id: params[:corporation_id])
  end

  private
  def corporation_params
    params.require(:corporation).permit(:name, user_ids: [])
  end
end