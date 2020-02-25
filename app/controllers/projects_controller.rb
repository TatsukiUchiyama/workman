class ProjectsController < ApplicationController


  def index
    @project = Project.new
    @corporation = Corporation.find(params[:corporation_id])
    @projects = @corporation.projects.all
  end

  def new
    @corporation = Corporation.find(params[:corporation_id])
    @project = Project.new
  end

  def create
    # @corporation = Corporation.find(params[:corporation_id])
    Project.create(project_params)
    # binding.pry
    # redirect_to corporation_projects_path(params[:corporation_id])
    # @corporation = Corporation.find(params[:corporation_id])
    # @project = @corporation.projects.new(project_params)
    # @project.save
    redirect_to corporation_projects_path(params[:corporation_id])

  end


  def show
    @project = Project.find(params[:id])
    @corporation = Corporation.find(params[:corporation_id])
  end



  private
  def project_params
    params.require(:project).permit(:name, :member, :time, :address, :text).merge(corporation_id: params[:corporation_id])
  end
end
