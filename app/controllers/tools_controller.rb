class ToolsController < ApplicationController
before_action :set_tool, only: [:show]
  # Get/tools
  def index



    # @tool = Tool.find(params[:id])

    @tools = Tool.all
  end

  # Get/tools/1

  def show
  end



  private

  def set_tool
    @tool = Tool.find(params[:id])
  end





  def tool_params
    params.require(:tool).permit(:name, :details, :price_by_day, :picture, :category, :user_id)
  end
end


