class CarRepresenter
    def initialize(car)
      @car = car
    end

    def as_json
      {    
        id: car.id,
        name: car.name,
        description: car.description,
        photo: car.photo,
        price: car.price,
        model: car.model,
        user: User.find(car.id).name,
        date_added: car.created_at
      }
    end

    private
    attr_reader :car
   end
end

class CarsRepresenter
    def initialize(cars)
        @cars = cars
    end 

    def as_json
        cars.map do |car|
            {
                user_id: car.id,
                name: car.name,
                description: car.description,
                photo: car.photo,
                price: car.price,
                model: car.model,
                user: User.find(car.id).name,
                date_added: car.created_at
            }
        end
    end
end

private

attr_reader :cars
end