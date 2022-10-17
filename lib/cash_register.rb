require 'pry'
class CashRegister

    attr_accessor :discount, :total, :items, :last_transaction
    def initialize(discount=0)
        @discount = discount
        @total = 0
        @items = []
    end

    def add_item(title, price, quantity=1)
        self.last_transaction = price * quantity
        self.total += self.last_transaction
        quantity.times do
            self.items << title
        end
    end

    def apply_discount
        if self.discount == 0
            "There is no discount to apply."
        else
            d = self.total * self.discount / 100
            self.total -= d
            "After the discount, the total comes to $#{self.total}."
        end
    end

    def void_last_transaction
        self.total -= self.last_transaction
    end

end