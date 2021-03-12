class ToolsController < ApplicationController

   # Get/tools
  def index
    @tools = Tool.all
        @markers = @tools.geocoded.map do |map|
      {
        lat: map.latitude,
        lng: map.longitude
      }
    end
  end

  # Get/tools/:id
  def show
    @tool = Tool.find(params[:id])
    @booking = Booking.new

    # @booking = @tool.booking.new(user: current_user)
      #@tool = Tool.find(params[:tool_id])
      @bookings = Booking.where(tool_id: @tool.id)
      @bookings_dates = @bookings.map do |booking|
      {
        from: booking.start_date,
        to:   booking.end_date
      }
      end
  end

  def new
    @tool = Tool.new
  end

  def edit
  end

  def create
    @tool = Tool.new(tool_params)

    respond_to do |format|
      if @tool.save
        format.html { redirect_to @tool, notice: "Tool was successfully created." }
       # format.json { render :show, status: :created, location: @tool }
      else
        format.html { render :new, status: :unprocessable_entity }
       # format.json { render json: @tool.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @tool.update(tool_params)
        format.html { redirect_to @tool, notice: "Tool was successfully updated." }
       # format.json { render :show, status: :ok, location: @tool }
      else
        format.html { render :edit, status: :unprocessable_entity }
      #  format.json { render json: @tool.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @tool.destroy
    respond_to do |format|
      format.html { redirect_to tools_url, notice: "Tool was successfully destroyed." }
    #  format.json { head :no_content }
    end
  end

  private

  def tool_params
    params.require(:tool).permit(:name, :address, :details, :price_by_day, :picture, :category, :user_id)
  end
end

