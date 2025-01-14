class Vehicle
    attr_reader :year, 
                :make, 
                :model, 
                :speeding, 
                :passengers

    def initialize(year, make, model)
        @year = year.to_i
        @make = make.to_s
        @model = model.to_s
        @speeding = false
        @passengers = []
    end

    def speed
        @speeding = true
    end

    def speeding?
        @speeding
    end

    def add_passenger(passenger)
        @passengers << passenger
    end

    def num_adults
        adults = 0
        @passengers.map do |passenger|
            adults += 1 if passenger.adult?
        end
        adults
    end

end
