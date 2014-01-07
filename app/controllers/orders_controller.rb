class OrdersController < ApplicationController

  def new
    @order = Order.new
  end

  def create
   @order = Order.new(order_params)

    if @order.save
      flash[:notice] = "Your order has been submitted."
      redirect_to root_path
    end
  end

  private

  def order_params
    params.require(:order).permit(:name, :phone)
  end
end
