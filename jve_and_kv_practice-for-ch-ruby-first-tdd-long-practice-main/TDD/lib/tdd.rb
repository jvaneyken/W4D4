class Array
    def uniq
        new_arr = []
        self.each do |ele|
            new_arr << ele unless new_arr.include?(ele)
        end
        new_arr
    end

end

# Array has a uniq method that removes duplicates from an array. It returns the unique elements in the order in which they first appeared:

# [1, 2, 1, 3, 3].uniq # => [1, 2, 3]
# Write your own version of this method called my_uniq; it should take in an array and return a new array.
