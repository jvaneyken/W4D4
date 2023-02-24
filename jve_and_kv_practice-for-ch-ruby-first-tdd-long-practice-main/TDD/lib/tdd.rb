class Array
    def uniq
        new_arr = []
        self.each do |ele|
            new_arr << ele unless new_arr.include?(ele)
        end
        new_arr
    end


    def two_sum
        pairs = []
        (0...self.length).each do |i|
            (0...self.length).each do |j|
                pairs << [i, j] if j > i && self[i] + self[j] == 0
            end
        end
        pairs
    end

    def my_transpose
        self.transpose
        new_matrix = Array.new(self.length) {Array.new(self.length)}
        (0...self.length).each do |i|
            (0...self.length).each do |j|
                new_matrix[i][j] = self[j][i]
            end
        end
        new_matrix
    end
end


