class OrdersController < ApplicationController

  def index
    render json: { data: Order.all }
  end
 def pusher_prueba
    Order.pusher_prueba
    puts '#'*60
    puts 'SIIIII'
    render json: { requested: true }
  end
end
