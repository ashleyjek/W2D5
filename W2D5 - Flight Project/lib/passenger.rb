class Passenger
    
    attr_reader :name 

    def initialize(name)
        @name = name
        @flight_numbers = []
    end



    def has_flight?(flight_num)
        if @flight_numbers.include?(flight_num.upcase)
            return true
        else 
            return false
        end
    end

    def add_flight(new_flight)
        if !self.has_flight?(new_flight.upcase)
            @flight_numbers << new_flight.upcase
        end
    end

end