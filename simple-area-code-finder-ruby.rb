
area_code = {
  Abottabad: 992,
  Attock: 57,
  Bahawalnagar: 63,
  Bahawalpur: 62,
  Chakwal: 543,
  Dera_Ghazi_Khan: 64,
  Sukkur:	71,
  Swabi: 938,
  Swat:	946,
  Larkana: 74,
  Lasbela: 853,
  Layyah: 606,
  Lodhran: 608,
  Loralai: 824,
  Malakand: 932,
  Mandi_Bahauddin: 546,
}

# Get city names from the hash
def get_city_names(somehash)
  somehash.each { |city, code| puts city}
end

# get_city_names(area_code)
 
# Get area code based on given hash and key
def get_area_code(somehash, key)
  somehash.each do |city, code| 
    if city.to_s == key
      return code
    end
  end
  'no record found'
end

# puts get_area_code area_code, 'Swat'
 
# Execution flow
loop do
  puts 'Do you want to lookup an area code based on the city (Y/N)'
  respone = gets.chomp.downcase
  break if respone != 'y'
  get_city_names area_code
  puts 'Which city do you want the area code for?'
  city_name = gets.chomp
  puts "The area code for #{city_name} is #{get_area_code area_code, city_name}"
end
