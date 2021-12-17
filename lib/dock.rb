class Dock
  attr_reader :name, :max_rental_time, :rental_log
  def initialize(name, max_rental_time)
    @name = name
    @max_rental_time = max_rental_time
    @rental_log = {}
  end

  def rent(boat, renter)
    @rental_log[boat] = renter
  end

  def charge(boat)
    charge = {}
    @rental_log.each do |key, value|
      charge[:card_number] = @rental_log[boat].credit_card_number
      charge[:amount] = boat.hours_rented * boat.price_per_hour
      if charge[:amount] > @max_rental_time * boat.price_per_hour
        charge[:amount] = @max_rental_time * boat.price_per_hour
      end
    end
    charge
  end
end
