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
        it 'returns an empty array if no pairs are found' do
            expect(array.two_sum).to eq([])
        end

        # if subarrays sum to zero
        it 'returns an array of pairs that sum to zero' do
            expect(array.two_sum.length).to eq(2)
        end

        it 'returns an array sorted "dictionary-wise"' do
            expect(array.two_sum).to eq([[0, 4], [2, 3]])
        end

    end
end


# Write a new Array#two_sum method that finds all pairs of positions where the elements at those positions sum to zero.

# N.B.: Ordering matters. You want each of the pairs to be sorted with the smaller index before the bigger index. You then want the array of pairs to be sorted "dictionary-wise":

# [-1, 0, 2, -2, 1].two_sum # => [[0, 4], [2, 3]]
# [0, 2] before [2, 1] (smaller first elements come first)
# [0, 1] before [0, 2] (then smaller second elements come first)


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




