require_relative "testing_library"

unless File.exists?(".name")
  print "Please enter your name\n"
  name = $stdin.gets.chomp
  File.open((".name"), "w") do |f|
    f.puts name
  end
end

dogs = ["Fido", "Harleigh", "Mali", "Trixie", "Snow", "Victory"]

def how_many_dogs(dogs)
dogs.length
end

def name_lengths(dogs)
  collection_dog_name_lengths = []
  dogs.each do |dog|
  collection_dog_name_lengths.push(dog.length)
  end
  return collection_dog_name_lengths
end


def reverse_dog_names(dogs)
  collection_dog_name_lengths = []
  dogs.each do |dog|
  collection_dog_name_lengths.push(dog.reverse)
end
return collection_dog_name_lengths
end

def first_three_dogs_with_each(dogs)
  dogs[0..2]. each do |dog|
end
return dogs[0..2]
end

def first_three_dogs_without_each(dogs)
  dogs.first(3)
end

def reverse_case_dog_names(dogs)
  dog_name_case =[]
  dogs.each do |dog|
  dog_name_case.push(dog.swapcase)
end
return dog_name_case
end

def sum_of_all_dog_name_lengths(dogs)
  sum = 0
  sum_all = []
  dogs.each do |dog|
    sum_all << dog.length
  end
    sum_all.each do |count|
      sum += count
    end
sum
end


def dogs_with_long_names(dogs)
  dogs.map do |answer|
    if answer.length >4
      true
    else
      false
    end
  end
end

puts "*"*80
puts "Make each method return the correct value"
puts "The check method will run and tell you if the answer is correct"
puts "*"*80


results = []

results << check("how_many_dogs", how_many_dogs(dogs), 6)
results << check("name_lengths", name_lengths(dogs), [4, 8, 4, 6, 4, 7])
results << check("reverse_dog_names", reverse_dog_names(dogs), ["odiF", "hgielraH", "ilaM", "eixirT", "wonS", "yrotciV"])
results << check("first_three_dogs_with_each", first_three_dogs_with_each(dogs), ["Fido", "Harleigh", "Mali"])
results << check("first_three_dogs_without_each", first_three_dogs_without_each(dogs), ["Fido", "Harleigh", "Mali"])
results << check("reverse_case_dog_names", reverse_case_dog_names(dogs), ["fIDO", "hARLEIGH", "mALI", "tRIXIE", "sNOW", "vICTORY"])
results << check("sum_of_all_dog_name_lengths", sum_of_all_dog_name_lengths(dogs), 33)
results << check("dogs_with_long_names", dogs_with_long_names(dogs), [false, true, false, true, false, true])


send_results(results)
