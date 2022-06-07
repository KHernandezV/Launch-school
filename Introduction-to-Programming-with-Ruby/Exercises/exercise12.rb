contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }
x = 0
contacts.each do |person, field|
  contacts[person][:email] = contact_data[x][0]
  contacts[person][:address] = contact_data[x][1]
  contacts[person][:phone] = contact_data[x][2]
  x+= 1
end

puts contacts["Joe Smith"][:email]
puts contacts["Sally Johnson"][:phone]