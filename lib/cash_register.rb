require 'pry'
class CashRegister

    attr_accessor :discount, :total

    def initialize(discount = 0)
        @total = 0 
        @discount = discount
    end 

    def add_item (title, price, quantitiy = 1)
        self.total += price * quantitiy
    end 

    def apply_discount
       if @discount == 0 
        return "There is no discount to apply."
       end 
       @total -= @total * @discount / 100
       return "After the discount, the total comes to $#{@total}."
       
    end 

    
end 
