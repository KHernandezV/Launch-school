def uuid_creator()
  uuid = ''
  36.times do 
    uuid <<  rand(0..15).to_s(16)
  end
  uuid[8]= '-'
  uuid[13]= '-'
  uuid[18]= '-'
  uuid[23]= '-'
  uuid
end

puts uuid_creator
