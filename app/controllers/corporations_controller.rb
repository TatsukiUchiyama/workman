class CorporationsController < ApplicationController
  def index
    @corporation = Corporation.all
  end

  def new
    @corporation = Corporation.new
  end

  def create
    Corporation.create(corporation_params)
    redirect_to root_path
  end

  private
  def corporation_params
    params.require(:corporation).permit(:name)
  end
end
