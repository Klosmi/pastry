class BookingsController < ApplicationController
  before_action :authenticate_user!

  def new
    # GET /tools/:tool_id/bookings/new
    @booking = Booking.new
    @tool = Tool.find(params[:tool_id])
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

  def create

    @tool = Tool.find(params[:tool_id])
    @booking = Booking.new(booking_params)
    # which person is booking the tool?
    @booking.tool = @tool
    @booking.user = current_user
    @booking.total_amounts = @tool.price_by_day * ((@booking.end_date - @booking.start_date).to_i + 1)

    if @booking.save
      redirect_to @tool, notice: "Booking is saved"
    else
      render :new
    end
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
