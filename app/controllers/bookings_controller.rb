class BookingsController < ApplicationController
  before_action :authenticate_user!

  def new
    # GET /tools/:tool_id/bookings/new
    @booking = Booking.new
    @tool = Tool.find(params[:tool_id])
    # @booking = @tool.booking.new(user: current_user)

  end

  def create
    @tool = Tool.find(params[:tool_id])
    @booking = @tool.bookings.new(booking_params) do |book|
      book.user = current_user
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
  end

  def booking_params
    params.require(:booking).permit(items_attributes: [:start_date, :end_date, :total_amounts, :tool_id])
  end
end
