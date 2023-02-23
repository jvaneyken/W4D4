class Array
    def uniq
        new_arr = []
        self.each do |ele|
            new_arr << ele unless new_arr.include?(ele)
        end
        new_arr
    end


    def two_sum
        # return an array of pairs
        # iterate through all elements
        # check if any two elements sum to zero
            # if true, shovel in indices
    end

end


