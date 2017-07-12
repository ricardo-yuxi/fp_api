class Order < ApplicationRecord
  has_many :positions
  def self.pusher_prueba 
    Pusher.trigger('test_channel_ng', 'assign_position', {:status => true,
       :data =>[{
                    type: "load",
                    color: "MAGNETA",
                    animation: "",
                    order: {
                        id: "5",
                        deliver_order_number: "100108633",
                        local_status: 2,
                        cook:  {
                           code: "2",
                           name: "Maria Rios",
                           used: true
                        },
                        created_at: "2017-06-29 07:10:09",
                        products: [
                            {
                              quantity: 5,
                              name: "Kroger Meal Deal"
                            },
                            {
                              quantity: 2,
                              name: "Italian Sausage"
                            },
                            {
                              quantity: 5,
                              name: "beer"
                            }
                        ],
                        positions:[ {
                            number: "5",
                            quantity: 0
                          }
                        ]
                    }
                }
               ]
      })

      sleep(5)

      Pusher.trigger('test_channel_ng', 'stock', {:status => true,
       :data =>[
          {
                    id: "5",
                    deliver_order_number: "100108633",
                    local_status: 2,
                    cook:  {
                        code: "2",
                        name: "Maria Rios",
                        used: true
                    },
                    created_at: "2017-06-29 07:10:09",
                    products: [
                        {
                          quantity: 5,
                          name: "Kroger Meal Deal"
                        },
                        {
                          quantity: 2,
                          name: "Italian Sausage"
                        },
                        {
                          quantity: 5,
                          name: "beer"
                        }
                    ],
                    positions:[ {
                        number: "5",
                        quantity: 1 
                      }
                    ]
                }
               ]
      })

  end
end
