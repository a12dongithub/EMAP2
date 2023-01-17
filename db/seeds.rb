5.times do |i|
order = Order.create(price: 100 * i, status: 'dispatched')
order.update(created_at: order.created_at - i.day)
end
   
5.times do |i|
order = Order.create(price: 100 * i, status: 'pending')
order.update(created_at: order.created_at - i.day)
end

5.times do |i|
order = Order.create(price: 100 * i, status: 'delivered')
order.update(created_at: order.created_at - i.day)
end