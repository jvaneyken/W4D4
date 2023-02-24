require 'tdd'
require 'rspec'

describe Array do
    describe '#uniq' do
        subject(:array) {[1, 2, 1, 3, 3]}
        it 'returns an array' do
            expect(array.uniq).to be_a_kind_of(Array)
        end

        it 'returns unique array' do
            #if length of array == 3 after calling .uniq
            arr_length = array.uniq.length
            expect(arr_length).to eq(3)
        end

        it 'returns in the order in which they first appeared' do
            expect(array.uniq).to eq([1, 2, 3])
        end
    end

    describe '#two_sum' do
        subject(:array) { [-1, 0, 2, -2, 1] }
        subject(:array_none) { [1, 2, 3, 4, 5] }

        it 'returns an empty array if no pairs are found' do
            expect(array_none.two_sum).to eq([])
        end

        it 'returns an array of pairs that sum to zero' do
            expect(array.two_sum.length).to eq(2)
        end

        it 'contains pairs that are sorted smaller index before the bigger index' do
            first_pair = array.two_sum.first
            expect(first_pair).to_not eq([4, 0])
        end

        it 'returns an array sorted "dictionary-wise"' do
            expect(array.two_sum).to eq([[0, 4], [2, 3]])
        end
    end

    describe '#my_transpose' do 
        subject(:array) { [
                [0, 1, 2],
                [3, 4, 5],
                [6, 7, 8]
            ]
        }

        it 'must not use built-in Array#transpose' do
            expect(array).to_not receive(:transpose)
            array.my_transpose
        end

        it 'returns a matrix where rows and columns are switched' do
            expect(array.my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
        end
    end
end

describe StockPicker do
    [10000, 12000, 13000, 14000, 15000, 18000, 10000, 9000, 13000]
    current_diff = 0
    current_pair = []
    #return a pair of days [day x, day y]
    (0...self.length-1).each do |i|
        (i+1...self.length).each do |j|
            # if j > i 
                if self[j] - self[i] > current_diff
                    current_diff = self[j] - self[i]
                    current_pair = [i, j]
                end
    #search for smallest number, look right for biggest number.
    #if not on the right, 

end

# arr_1 = [1,2,3,4]
# it "should not use the built-in Array#map or Array#map!" do
#     expect(arr_1).to_not receive(:map)

# To represent a matrix, or two-dimensional grid of numbers, you can write an array containing arrays which represent rows:

# rows = [
#   [0, 1, 2],
#   [3, 4, 5],
#   [6, 7, 8]
# ]

# row1 = rows[0]
# row2 = rows[1]
# row3 = rows[2]
# You could equivalently have stored the matrix as an array of columns:

# cols = [
#   [0, 3, 6],
#   [1, 4, 7],
#   [2, 5, 8]
# ]
# Write a method, my_transpose, which will convert between the row-oriented and column-oriented representations. You may assume square matrices for simplicity's sake. Usage will look like the following:

# my_transpose([
#   [0, 1, 2],
#   [3, 4, 5],
#   [6, 7, 8]
# ])
#  # => [[0, 3, 6],
#  #     [1, 4, 7],
#  #     [2, 5, 8]]


# describe "#mix!" do
#     it "shuffles the ingredient array" do
#       ingredients = ["chocolate", "flour", "egg", "sugar", "butter"]

#       ingredients.each do |ingredient|
#         brownie.add_ingredient(ingredient)
#       end

#       expect(brownie.ingredients).to eq(ingredients)
#       brownie.mix!
#       expect(brownie.ingredients).not_to eq(ingredients)
#       expect(brownie.ingredients.sort).to eq(ingredients.sort)
#     end
#   end




