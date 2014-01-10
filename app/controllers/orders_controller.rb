class OrdersController < ApplicationController

  def new
    @order = Order.new
  end

  def create
   @order = Order.new(order_params)

    if @order.save
      flash[:notice] = "Your order has been submitted."
      redirect_to root_path
    else
      flash[:alert] = "Your order has not been submitted."

      render "new"
    end
  end

  private

  def order_params
    params.require(:order).permit(:first_name, :last_name, :phone, :address,
                                 :city, :state, :zip, :email, :event_date,
                                 :event_time, :comments)
  end
end
