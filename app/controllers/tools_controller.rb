class ToolsController < ApplicationController

  # Get/tools
  def index
<<<<<<< HEAD
    @tool = Tool.find(params[:id])
=======


    # @tool = Tool.find(params[:id])

>>>>>>> a17fcfa746d289cfe7f6d8f6c10f83c31ad55fdc
    @tools = Tool.all
  end

  # Get/tools/1

  def show

    @tool = Tool.new
  end

  # private

  # def set_tool
  #   @tool = Tool.find(params[:id])
  # end

<<<<<<< HEAD
   def params
     params.require(:tool).permit(:name, :details, :price_by_day, :picture, :category, :user_id)
   end
=======

   

  # def tool_params
  #   params.require(:tool).permit(:name, :details, :price_by_day, :picture, :category, :user_id)
  # end

>>>>>>> a17fcfa746d289cfe7f6d8f6c10f83c31ad55fdc
end
