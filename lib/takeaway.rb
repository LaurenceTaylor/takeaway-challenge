class Takeaway
  def initialize(menu = Menu.new)
    @menu = menu
    @order = Hash.new { |h, k| h[k] = 0 }
  end

  def list_dishes
    @menu.list_dishes
  end

  def add_to_order(dish)
    @order[dish] += 1
  end

  def order_so_far
    @order
  end
end
