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
    @booking = Booking.new(all_params)
    # which person is booking the tool?

    if @booking.save
      # if @booking.free?
      #   redirect_to @booking
      # else
      #   redirect_to new_payment_path(@booking)
      # end
    else
      render :new
    end
  end
  def all_params
    params.require(:booking).permit(:start_date, :end_date, :total_amounts, :tool_id, :user_id)
  end
  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
