class Menu
  def initialize
    @dishes = { 'Halloumi' => 5, 'Shish' => 12, 'Calamari' => 5 }
  end

  def list_dishes
    @dishes.map { |k, v| "#{k}: £#{v}" }.join(", ")
  end
end
