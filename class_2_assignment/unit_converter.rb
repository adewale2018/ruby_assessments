# Unit can be weight, distance or temperature
#  weight => kg -- pound or vise versa
#  distance => miles -- km or vise versa
#  temperature => celcius -- kelvin or vise versa

def units_converter(unit, value, from, to)
  case unit
  when 'weight'
    converting_factor = 2.20462
    if from == 'kg'
      (value * converting_factor).round(5)
    else
      (value / converting_factor).round(5)
    end
  when 'distance'
    converting_factor = 1.60934
    if from == 'mile'
      (value * converting_factor).round(5)
    else
      (value / converting_factor).round(5)
    end
  else
    converting_factor = 273.15
    if from == 'celcius'
      value + converting_factor
    else
      value - converting_factor
    end
  end
end

# puts units_converter('weight', 20, 'kg', 'pound')
# puts units_converter('weight', 6, 'pound', 'kg')

# puts units_converter('distance', 50, 'mile', 'km')
# puts units_converter('distance', 75, 'km', 'mile')

# puts units_converter('temperature', 30, 'kelvin', 'celcius')
# puts units_converter('temperature', 108, 'celcius', 'kelvin')