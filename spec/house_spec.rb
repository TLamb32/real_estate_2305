require './lib/room'
require './lib/house'

RSpec.describe House do
    it 'exists and has readable attributes' do
        house = House.new("$400000", "123 sugar lane")

        expect(house).to be_an_instance_of House
        expect(house.price).to eq(400000)
        expect(house.address).to eq("123 sugar lane")
        expect(house.rooms).to eq ([])
    end

    it 'can add rooms' do
        house = House.new("$400000", "123 sugar lane")
        room_1 = Room.new(:bedroom, 10, '13')
        room_2 = Room.new(:bedroom, 11, '15')    

        house.add_room(room_1)
        house.add_room(room_2) 

        expect(house.rooms).to eq [room_1, room_2]
    end

    it 'can determine if its above market average' do
        house = House.new("$400000", "123 sugar lane")

        expect(house.above_market_average?).to eq(false)
    end

    it 'can return rooms in a particular category' do
        
    end
end
