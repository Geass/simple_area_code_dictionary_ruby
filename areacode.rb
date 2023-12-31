dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

# Get city names from the hash
def get_city_names(somehash)
  puts "Which city do you want the area code for?"
  puts "Here are the cities:"
  somehash.each {|k,v| puts k}
  gets.chomp
end

# Get area code based on given hash and key
def get_area_code(somehash, key)
  if somehash.key?(key)
    puts "The area code for #{key} is #{somehash[key]}"
  else
    puts "#{key} not found in the dial book."
  end
end

# Execution flow
loop do
puts "Do you want to lookup an area code based on a city name? (Y/N)"
  if gets.chomp.downcase == "y"
    city_name = get_city_names(dial_book)
    get_area_code(dial_book, city_name)
  else
    puts "Goodbye"
    break
  end
end
