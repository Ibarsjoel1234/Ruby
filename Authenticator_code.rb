#Question:
    #Its is simple Authentication using some hash values.
    


users = [
    {username: "joel", passowrd: "joel1" },
    {username: "ibars", passowrd: "ibars1" },
    {username: "mike", passowrd: "mike1" },
    {username: "jones", passowrd: "jones1" },
    {username: "john", passowrd: "john1" }
    
]

def auth_user(user_name,pwd,list_of_records)
    list_of_records.each do |user_record|
        if user_record[:username] == user_name && user_record[:passowrd] == pwd
            return user_record
        end
    end
    return "Given data is incorrect"
end


puts "Welcome to the authentication"
25.times {print "-"}
puts
puts "Details"
5.times {print "-"}
puts
puts "The program check the username and password "
puts "If wrong it will exist"
puts


attempt = 1
while attempt < 4

    puts "Enter the Name"
    user_name = gets.chomp.downcase
    puts "Enter the Password"
    pwd = gets.chomp.downcase
    result = auth_user(user_name,pwd,users)
    puts result
    puts "Press n if you want to exist or press any to continue"
    input = gets.chomp.downcase
    break if input == "n"
    attempt += 1

end

puts "You have exceeded the number of attempts" if attempt == 4



