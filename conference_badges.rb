# Write your code here.
def badge_maker (name)
    "Hello, my name is #{name}."
end

def batch_badge_creator (names)
    #using map because we want to return an array for "each" name
  names.map do |name|
    "Hello, my name is #{name}."
  end
end

def assign_rooms (names)
    #use with_index when iterating through an array and you need to keep track of index number of current iteration 
    names.map.with_index(1) do |name, index|
        "Hello, #{name}! You'll be assigned to room #{index}!"  
    end
end

def printer (names)
    #in order to print each item, we need to iterate over the method itself. 
    batch_badge_creator(names).each do |badge|
        puts badge
    end
    assign_rooms(names).each do |room|
        puts room
    end
end