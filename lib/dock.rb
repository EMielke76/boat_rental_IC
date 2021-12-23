class Dock
  attr_reader :name,
              :max_rental_time,
              :rental_log

  def initialize(name, max_rental_time)
    @name            = name
    @max_rental_time = max_rental_time
    @rental_log      = {}
                        # Hash.new(0) #Sets default values for integers
  end

  def rent(boat, renter)
    @rental_log[boat] = renter
  end
end
