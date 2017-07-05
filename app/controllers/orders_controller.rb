class OrdersContoller < ApplicationController

  def index
    render json: { data: Order.all }
  end
end
