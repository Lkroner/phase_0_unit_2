# U2.W4: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

# Person 1

# def my_array_finding_method(source, thing_to_find)
#   # Your code here!
# end

# def my_hash_finding_method(source, thing_to_find)
#   # Your code here!
# end

# Identify and describe the ruby method you implemented. 


# Person 2

# def my_array_modification_method(source, thing_to_modify)
#   # Your code here!
# end

# def my_hash_modification_method(source, thing_to_modify)
#   # Your code here!
# end

# Identify and describe the ruby method you implemented. 


# Person 3

# I want to create a sorting method that alphabetizes an array. 
# I also want to create a sorting method that arranges the data in my hash by age (starting with the youngest first). 
# This should not modify the existing data structure.

my_array_sorting_method(i_want_pets, "pets") #=>
["3", "4", "I", "but", "have", "only", "pets", "want"]

my_hash_sorting_method(my_family_pets_ages, age) #=>
[["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# This may be false depending on how your method deals with ordering the animals with the same ages

# Intial Code
def my_array_sorting_method(array)
    sorted = array.partition{|x| x.is_a? Integer}.map(&:sort).flatten
    return sorted
end

def my_hash_sorting_method(hash)
  sorted = hash.sort_by{|key, value| value}
  return sorted
end

# Identify and describe the ruby method you implemented. 
# 
# 1. my_array_sorting_method:
#
# I started with .partition method which returns two arrays: one containing all the array elements that pass true for 
# the enumerator block and a second array for the elements that pass false. 
# 
# Example returns --> [3, 2] and ["I", "want", "pets", "but", "I", "only", "have"]
# 
# So now I have my Integers and Stings seperated into different arrays. Now I can can store them in their own arrays(using .map), 
# sort them alphabetically(using &:sort).
# 
# Example returns --> [2, 3] and ["I", "I", "but", "have", "only", "pets", "want"].
# 
# Then combined them back into one array(using .flatten).
#
# Example returns --> [2, 3, "I", "I", "but", "have", "only", "pets", "want"].
# Sort success!
#
# 2. my_hash_sorting_method:
# 
# For this method I did not need to seperate the data into two arrays since I could sort by just the value, which are all numbers, 
# and could ignore the keys. I used a variation of the sort method which I used in the first sorting method, sort_by and 
# isolated the value of the hash to sort by.
# 
# Example returns --> [["Annabelle", 0], ["Ditto", 3], ["Hoobie", 3], ["Poly", 4], ["Bogart", 4], ["Evi", 6], ["George", 12]]
# Sort success!
# 

# Person 4

# def my_array_deletion_method(source, thing_to_delete)
#   #Your code here!
# end

# def my_hash_deletion_method(source, thing_to_delete)
#   #Your code here!
# end

# Identify and describe the ruby method you implemented. 


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

# p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
# p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
# p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
# p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
p my_array_sorting_method(i_want_pets) == ["3", "4", "I", "but", "have", "only", "pets", "want"]
p my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# This may be false depending on how your method deals with ordering the animals with the same ages.
# p my_array_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
# p my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!
# 
# What parts of your strategy worked? What problems did you face?
# What questions did you have while coding? What resources did you find to help you answer them?
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# Did you learn any new skills or tricks?
# How confident are you with each of the Learning Competencies?
# Which parts of the challenge did you enjoy?
# Which parts of the challenge did you find tedious?
# 
# 