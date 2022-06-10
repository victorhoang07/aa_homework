require "byebug"

class Map
    attr_reader :map
    def initialize
        @map = []
    end

    def set(key, value)
        if @map.length == 0
            @map << [key,value]
        end

        @map.each do |pair|
            if pair[0] == key
                @map.delete(pair)
            end
        end
        @map << [key,value]
    end

    def get(key)
        @map.each do |pair|
            if pair[0] == key
                return pair
            end
        end
    end

    def delete(key)

     @map.each do |pair|
            if pair[0] == key
                @map.delete(pair)
            end
        end
    end
    
    def show
        @map
    end
end

m = Map.new

m.set(1,2)
m.set(2,3)
m.set(3,2)
m.set(1,4)
p m.map