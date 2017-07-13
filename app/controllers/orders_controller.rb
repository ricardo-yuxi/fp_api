class OrdersController < ApplicationController

  def index
    render json: { data: Order.all }
  end
 def pusher_prueba
    Order.pusher_prueba
    render json: { requested: true }
  end
  def end_session_stock
    Order.end_session_stock
    render json: { requested: true }
  end
end
