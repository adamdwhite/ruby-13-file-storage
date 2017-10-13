# File.open.each("car-makes.txt", "a") do |line|
#     line.puts.("car-models").each 
# end

makes = File.readlines("car-makes.txt")
#puts makes.read 
models = File.readlines("car-models.txt")
#puts makes.model 

hash = Hash.new

# puts makes.to_s 
# puts models.to_s
#this will split the models into array of arrays:  

for x in makes
    hash[x.chomp] = Array.new
    
    for i in models
        new_i = i.chomp

        if new_i[0] === x[0]    
            # puts new_i.chomp
            hash[x.chomp] << new_i.split('=')[1]
        end
    end
end

puts "New Car Hashies: #{hash}"

# split the car_models at the = 
# and then .each through makes first see if == index[0]
# model and assign to hash (hash[make = model])