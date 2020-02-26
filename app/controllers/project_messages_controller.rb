class ProjectMessagesController < ApplicationController

  def index
    @project = Project.find(params[:project_id])
    @messages = @project.project_messages.all.order(id: "DESC")
    @message = ProjectMessage.new
    @corporation = Corporation.find(params[:corporation_id])
    
  end

  def create
    ProjectMessage.create(message_params)
    redirect_to corporation_project_project_messages_path(params[:corporation_id], params[:project_id])
  end


  private
  def message_params
    params.require(:project_message).permit(:message).merge(user_id: current_user.id, project_id: params[:project_id])
  end

end
