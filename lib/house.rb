class House
    attr_reader :address,
                :rooms

    def initialize(price, address)
        @price_unformatted = price
        @address = address
        @rooms = []
    end

    def price
        @price_unformatted.delete("$").to_i
    end

    def add_room(room)
        @rooms << room
        # @rooms.push(room)
    end

    def above_market_average?
        price > 500000
    end
end