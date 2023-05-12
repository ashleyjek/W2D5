class Flight

    attr_reader :passengers, :capacity, :flight_number

    def initialize(flightnum, capacity)
        @flight_number = flightnum
        @capacity = capacity
        @passengers = []

    end

    def full?
        if @passengers.length >= capacity
            return true
        else return false
        end
    end

    def board_passenger(pass)
        if pass.has_flight?(flight_number) && !full?
            @passengers << pass
        end
    end

    def list_passengers
        list = []
        @passengers.each do |instance|
            list << instance.name
        end
        list
    end

    def [](index)
        return @passengers[index]
    end

    def <<(pass_instance)
        self.board_passenger(pass_instance)
    end

end