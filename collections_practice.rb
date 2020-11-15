# Question 1: #sort_array_asc
# Build a method sort_array_asc that takes in an array of integers and returns a copy of the array with the integers in ascending order.
def sort_array_asc(unsorted)
    return unsorted.sort
end

# Question 2: #sort_array_desc
# Build a method sort_array_desc that takes in an array of integers and returns a copy of the array with the integers in descending order. Remember that .sort takes a block in which you can specify how you want your array sorted.
def sort_array_desc(unsorted)
    return unsorted.sort.reverse
end

# Question 3: #sort_array_char_count
# Build a method sort_array_char_count that takes in an array of strings and returns a copy of the array with the strings ordered in ascending order by length. Remember that .sort takes a block in which you can specify how you want your array sorted.
def sort_array_char_count(unsorted)
    return unsorted.sort_by {|x| x.length}
end

# Question 4: #swap_elements
# Build a method swap_elements that takes in an array and swaps the second and third elements. Remember that array indices start at 0, so the second element has an index of 1 and the third element has an index of 2.
# Advanced: Try building a method swap_elements_from_to that takes in three arguments, array, index, destination_index, that will allow you to specify the index of the element you would like to move to a new index. So:
# swap_elements_from_to(["a", "b", "c"],0,2) #=> ["c", "b", "a"]
# swap_elements_from_to(["a", "b", "c"],2,1) #=> ["a", "c", "b"] 
# Advanced #2: Try writing test coverage for it!
def swap_elements(swap_me)
    swap_me[1],swap_me[2] = swap_me[2],swap_me[1]
    return swap_me
end

# Question 5: #reverse_array
# Build a method reverse_array that takes in an array of integers and returns a copy of the array with the elements in reverse order.
def reverse_array(array)
    return array.reverse
end

# Question 6: #kesha_maker
# Build a method called kesha_maker that takes in an array of strings and replaces the third character in each string with a $ ("dollar sign")—Ke$ha style. Use the .each method to iterate and build a new array to return at the end of your method, just like we did in the "My Each" lab.
def kesha_maker(names)
    kesha_names=[]
    names.each do |name|
        name[2.to_i] = '$'
        kesha_names << name
    end
    return kesha_names
end

# Question 7: #find_a
# Build a method find_a that returns all the strings in the array passed to it that start_with? (hint) the letter "a". You'll want to use a high level iterator for this that finds, selects, or detects elements based on a condition.
def find_a(array_of_strings)
    array_of_strings.select{ |name| name.start_with? "a"}
end

# Question 8: #sum_array
# Build a method sum_array that adds together all of the integers in the array and returns their sum.
# Advanced: Try using the .inject method here.
def sum_array(array_of_integers)
    #.inject(0) {|sum, number| sum + number}
    array_of_integers.inject(0) {|sum, number| sum + number}
end


# Question 9: #add_s
# Build a method that adds an "s" to each word in the array except for the second element in the array ("feet" is already plural).
# Advanced: Iterators in Ruby are chainable, see if you can use .each_with_index in addition to .collect to solve this one in an elegant way. What happens if you write: `[1,2].each_with_index.collect{|element, index| }`
def add_s(array_of_strings)
    new_array=[]
    array_of_strings.each_with_index do |item, index|
        if index != 1
            new_array << item + "s"
        else
            new_array << item
        end
    end
    return new_array
end
