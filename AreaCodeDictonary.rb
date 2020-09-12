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
   
  def get_city_names(somehash)
    somehash.keys
  end
   
  def get_area_code(somehash, key)
    somehash[key]
  end
   
  loop do
    puts "Do you want to lookup an area code based on a city name?(Y/N)"
    20.times{print "-"}
    puts
    answer = gets.chomp.downcase
    break if answer != "y"
    puts "Which city do you want the area code for?"
    20.times{print "-"}
    puts
    puts get_city_names(dial_book)
    puts
    puts "Enter your selection"
    20.times{print "-"}
    puts
    prompt = gets.chomp
    if dial_book.include?(prompt)
      puts "The area code for #{prompt} is #{get_area_code(dial_book, prompt)}"
      puts
    else
      puts "You entered a city name not in the dictionary"
      puts
    end
  end