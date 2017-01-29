# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end

reservation = HotelReservation.new({customer_name: "Lion", date:"2017/Jan/29", room_number: "021"})
puts 'Testing hotel reservation class'
p reservation
puts 
puts 'Testing to change a room number'
result = reservation.room_number=('012')
puts 'Your method returned...'
puts result
puts 
if result == '012'
  puts 'PASS'
else 
  puts 'FAIL'
end
puts
puts 'Testing adding fridge method'
result = reservation.add_a_fridge
puts 'Your method returned...'
puts result
if reservation.amenities.include?("fridge")
  puts 'PASS'
else 
  puts 'FAIL'
end
puts 
puts 'Testing adding cribe method'
result = reservation.add_a_crib
puts 'Your method returned...'
puts result
if reservation.amenities.include?("crib")
  puts 'PASS'
else 
  puts 'FAIL'
end
puts 
if reservation.amenities.include?("crib")
  puts 'PASS'
else 
  puts 'FAIL'
end
puts 
result = reservation.add_a_custom_amenity('TV')
puts 'Your method returned...'
puts result 
if reservation.amenities.include?('TV')
  puts 'PASS'
else
  puts 'FAIL'
end



# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method

